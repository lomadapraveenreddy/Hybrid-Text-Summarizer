from django.db import models
from django.utils.timezone import now as presentTime 
from django.core.exceptions import ValidationError

class Article(models.Model):
    text = models.TextField(blank=False)
    summary = models.TextField(blank=True)
    date = models.DateTimeField(default= presentTime)

    def clean(self) -> None:
        if self.text is None:
            raise ValidationError(
                {'text': "Text should not be empty."})
    
    def save(self,**kwargs) -> None:
        self.summary = 'summary in save'
        return super(Article,self).save()

    class Meta:
        ordering = ['-date']