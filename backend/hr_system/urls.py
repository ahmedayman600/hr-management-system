from django.urls import path, include
from rest_framework.authtoken.views import obtain_auth_token

urlpatterns = [
    path('admin/', include('admin.site.urls')),  # Admin panel
    path('api/auth/', obtain_auth_token),     # JWT Authentication
    # Add your API endpoints here
]