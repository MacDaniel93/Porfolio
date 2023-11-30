#!/usr/bin/env bash
# exit on error

set -o errexit
# poetry install 
pip install -r requirements.txt


pip install --upgrade pip

DJANGO_SUPERUSER_PASSWORD=12345 python manage.py createsuperuser --no-input --username=Julio  --email=joe@example.com

python manage.py collectstatic --no-input
python manage.py migrate
