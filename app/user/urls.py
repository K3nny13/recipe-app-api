from django.urls import path

from . import views


app_name = 'user'

url_patterns = [
    path('create/', views.CreateUserView.as_view(), name='create'),
    path('token/', views.CreateTokenView.as_view(), name='token'),
]
