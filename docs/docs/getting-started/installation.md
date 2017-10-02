Getting up and running
----------------------

To get the development environment up and running, all you need is <a href="https://www.vagrantup.com/docs/" target="_blank">vagrant/virtualbox</a> combo.
Open a terminal, move to the root folder and run :

    $ cd PATH/TO/PROJECT/ROOT
    $ vagrant up
    
    
You are all set. The provision script will take care of:


* installing python 2.7
* installing postgresql
* creating required database/user
* installing the project requirements declared within requirements.txt
* migrating whatever is needed

To run the Django Server, please SSH into the running vagrant box, then move to /vagrant/alerts/ folder and execute the python manage.py script:

    $ vagrant ssh
    $ cd /vagrant/alerts
    $ python manage.py runserver
    
    
The last command will run an embedded Web server listening to address 127.0.0.1:8000 (values can be changed, please refer to <a href="https://docs.djangoproject.com/en/1.10/ref/django-admin/#django-admin-runserver" target="_blank">Django Documentation</a>).

