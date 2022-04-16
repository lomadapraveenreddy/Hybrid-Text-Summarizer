# !pip install --quiet transformers==4.5.0
# !pip install --quiet torch
# !pip install --quiet pytorch-lightning==1.2.7
# !pip install termcolor

import torch
import pytorch_lightning as pl
from transformers import (AdamW, T5ForConditionalGeneration,T5TokenizerFast as T5Tokenizer)

MODEL_NAME="t5-base"
tokenizer=T5Tokenizer.from_pretrained(MODEL_NAME)

class NewsSummaryModel(pl.LightningModule):

  def __init__(self):
    super().__init__()
    self.model=T5ForConditionalGeneration.from_pretrained(MODEL_NAME,return_dict=True)
  def forward(self,input_ids,attention_mask,decoder_attention_mask,labels=None):

    output=self.model(
        input_ids,
        attention_mask=attention_mask,
        labels=labels,
        decoder_attention_mask=decoder_attention_mask
    )
    return output.loss,output.logits

  def training_step(self,batch,batch_idx):
    input_ids=batch["text_input_ids"]
    attention_mask=batch["text_attention_mask"]
    labels=batch["labels"]
    labels_attention_mask=batch["labels_attention_mask"]
    loss,outputs= self(
        input_ids=input_ids,
        attention_mask=attention_mask,
        decoder_attention_mask=labels_attention_mask,
        labels=labels
    )
    self.log("train_loss",loss,prog_bar=True,logger=True)
    return loss

  def test_step(self,batch,batch_idx):
      input_ids=batch["text_input_ids"]
      attention_mask=batch["text_attention_mask"]
      labels=batch["labels"]
      labels_attention_mask=batch["labels_attention_mask"]
      loss,outputs= self(
          input_ids=input_ids,
          attention_mask=attention_mask,
          decoder_attention_mask=labels_attention_mask,
          labels=labels
      )
      self.log("test_loss",loss,prog_bar=True,logger=True)
      return loss

  def configure_optimizers(self):
      return AdamW(self.parameters(),lr=0.0001)

model = None

def summarize(text):
  text_encoding=tokenizer(
      text,
      max_length=512,
      padding="max_length",
      truncation=True,
      return_attention_mask=True,
      add_special_tokens=True,
      return_tensors="pt"
  )

  generated_ids=model.model.generate(
      input_ids=text_encoding["input_ids"],
      attention_mask=text_encoding["attention_mask"],
      max_length=150,
      num_beams=2,
      repetition_penalty=2.5,
      length_penalty=1.0,
      early_stopping=True
  )

  preds=[
         tokenizer.decode(gen_id,skip_special_tokens=True,clean_up_tokenization_spaces=True)
         for gen_id in generated_ids
  ]

  return "".join(preds)

def abs_summarize(text):
    global model
    model = NewsSummaryModel()
    model.load_state_dict(torch.load("model_file"))
    model.eval()
    return summarize(text)
