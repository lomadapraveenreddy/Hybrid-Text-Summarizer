import re
from .models import Article
from .serializers import ArticleSerializer
from rest_framework import generics
from rest_framework.views import APIView
from rest_framework.response import Response

from .ml_models import pagerank,rbm
class ArticlesApiView(generics.ListAPIView):
    queryset= Article.objects.all()
    serializer_class = ArticleSerializer

class SummaryApiView(APIView):
    serializer_class = ArticleSerializer

    def post(self, request, format=None):
        """
        Return summary.
        """
        size = float(request.query_params.get('size'))
        if size is None:
            size = 0.4 
        if not (size>0 and size<=1):
            return Response({"error":"size should be between 0 and 1"})
        if request.query_params.get('algo')=='pgr':
            return Response({'summary':pagerank.summarize(text=request.data['text'],size=size)})
        elif request.query_params.get('algo')=='rbm':
            return Response({'summary':rbm.summarize(text=request.data['text'],size=size)})
        else:
            return Response({'error': 'unknown algorithm requested'})