python3 manage.py migrate
gunicorn --bind=0.0.0.0 --log-level debug --timeout 600 django_gui.wsgi:application &
celery -A django_gui worker --loglevel=debug
