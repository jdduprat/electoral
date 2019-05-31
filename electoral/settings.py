"""
Django settings for electoral project.

Generated by 'django-admin startproject' using Django 2.2.

For more information on this file, see
https://docs.djangoproject.com/en/2.2/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/2.2/ref/settings/
"""

import os

# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/2.2/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = '$9j1a9t)ye&#-%@9z#n9uh*+@6po50+(b73@)ll_j#e7$*ti8@'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

ALLOWED_HOSTS = ['*']

# Application definition
INSTALLED_APPS = [
    #JET
    'jet.dashboard',
    'jet',
    #Django
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'django.contrib.humanize',
    #Externas
    'colorfield',
    
    #Mine
    'apps.places',
    'apps.candidates',
    'apps.voto',
    'apps.cities',
    'apps.users'
]

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

ROOT_URLCONF = 'electoral.urls'

SETTINGS_PATH = os.path.dirname(os.path.dirname(__file__))

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [os.path.join(SETTINGS_PATH, "templates")],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

WSGI_APPLICATION = 'electoral.wsgi.application'


# Database
# https://docs.djangoproject.com/en/2.2/ref/settings/#databases

DATABASES = {
    'default': {        
        'ENGINE': 'django.db.backends.postgresql_psycopg2',       
        'NAME': 'electoral',
        'USER': 'postgres',
        'PASSWORD': 'asd846*',
        'HOST': 'localhost',
        'PORT': '',
        'DEFAULT_CHARSET': 'utf-8',
    }
}



# Password validation
# https://docs.djangoproject.com/en/2.2/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
        'OPTIONS': {
            'min_length': 5,
        }
    }
]


# Internationalization
# https://docs.djangoproject.com/en/2.2/topics/i18n/

LANGUAGE_CODE = 'es-ar'

TIME_ZONE = 'America/Argentina/Buenos_Aires'

USE_I18N = True

USE_L10N = True

USE_TZ = True


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/2.2/howto/static-files/

STATIC_URL = '/static/'
STATICFILES_DIRS =  (os.path.join(os.path.dirname(BASE_DIR), "static"), '/Desarrollos/web/electoral/static/')

#JET_SIDE_MENU_COMPACT = True

JET_SIDE_MENU_ITEMS = [  # A list of application or custom item dicts
    # {'label': _('General'), 'app_label': 'core', 'items': [
    #     {'name': 'help.question'},
    #     {'name': 'pages.page', 'label': _('Static page')},
    #     {'name': 'city'},
    #     {'name': 'validationcode'},
    #     {'label': _('Analytics'), 'url': 'http://example.com', 'url_blank': True},
    # ]},
    {'label': 'Usuarios', 'items': [
        {'name': 'auth.user'},
        {'name': 'auth.group'},
    ]},
    {'label': 'Entorno', 'items': [
        {'name': 'candidates.category'},
        {'name': 'candidates.party'},
        {'name': 'candidates.electorallist'},
        {'name': 'candidates.election'},
    ]},
    {'label': 'Ciudades', 'items': [
        {'name': 'cities.city'},
        {'name': 'cities.province'},
    ]},
    {'label': 'Escuelas', 'items': [
        {'name': 'places.school'},
        {'name': 'places.table'},
    ]},
    {'label': 'Reportes', 'items': [
        {'name': 'voto.voto'},
        {'name': 'voto.votosummary'},
        {'name': 'voto.votocharge'},
        {'label': 'Reportes Públicos', 'url': '/', 'url_blank': True},
    ]},
    {'label': 'Ayuda', 'url': '/static/manual.pdf', 'url_blank': True},
]