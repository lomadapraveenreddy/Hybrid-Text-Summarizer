# Generated by Django 4.0.3 on 2022-03-10 11:00

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0003_alter_article_summary'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='article',
            options={'ordering': ['-date']},
        ),
    ]