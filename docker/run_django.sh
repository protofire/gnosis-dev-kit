#!/bin/sh
set -e
sleep 5
cd gnosisdb
echo "==> Migrating Django <=="
python manage.py migrate
echo "==> Creating super user <== "
echo "from django.contrib.auth.models import User; User.objects.filter(email='admin@gnosis.pm').delete(); User.objects.create_superuser('admin', 'admin@gnosis.pm', 'admin')" | python manage.py shell
echo "==> Super user credentials:\b\t==> user: admin | password: admin"
python manage.py setup
echo "==> Starting Django Server <=="
python manage.py runserver 0.0.0.0:8000
