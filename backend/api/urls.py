from django.urls import path

from . import views

urlpatterns = [
    path('',views.ArticlesApiView.as_view()),
    path('summary/',views.SummaryApiView.as_view()),
]