import re
from .models import Article
from .serializers import ArticleSerializer
from rest_framework import generics
from rest_framework.views import APIView
from rest_framework.response import Response

from .ml_models import pagerank
class ArticlesApiView(generics.ListAPIView):
    queryset= Article.objects.all()
    serializer_class = ArticleSerializer

class SummaryApiView(APIView):
    serializer_class = ArticleSerializer

    def post(self, request, format=None):
        """
        Return summary.
        """
        return Response({'summary':pagerank.summarize(request.data['text'])})