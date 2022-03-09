from .models import Article
from .serializers import ArticleSerializer
from rest_framework import generics

class ArticlesApiView(generics.ListAPIView):
    queryset= Article.objects.all()
    serializer_class = ArticleSerializer

class ArticleCreateApiView(generics.CreateAPIView):
    queryset= Article.objects.all()
    serializer_class = ArticleSerializer