from django.urls import path

from . import views

urlpatterns = [
    path('',views.ArticlesApiView.as_view()),
    path('new/',views.ArticleCreateApiView.as_view()),
]