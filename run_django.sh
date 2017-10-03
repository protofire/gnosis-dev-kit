#!/bin/sh
sleep 5
cd gnosisdb
echo "==> Serving documentation on http://localhost:8888 <=="
echo "==> Migrating Django <=="
python manage.py migrate
echo "==> Creating super user <== "
echo "from django.contrib.auth.models import User; User.objects.filter(email='admin@gnosis.pm').delete(); User.objects.create_superuser('admin', 'admin@gnosis.pm', 'admin')" | python manage.py shell
echo "==> Super user credentials:\b\t==> user: admin | password: admin"
echo "==> Starting Django Server <=="
python manage.py runserver 0.0.0.0:8000
