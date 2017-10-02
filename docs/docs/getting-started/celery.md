Setup
--------
Gnosis notifications are sent using <a href="http://www.celeryproject.org/" target="_blank">Celery</a>, a fast and high available asynchronous task queue/job queue based on distributed message passing.
It consists of two main parts: a worker and a scheduler.

In order to execute <a href="http://www.celeryproject.org/" target="_blank">Celery</a> you have to ssh into two separate terminals and type the following:
    
    $ cd /vagrant/
    $ celery -A taskapp.celery beat -S djcelery.schedulers.DatabaseScheduler --loglevel debug --workdir="$PWD/alerts"
    
    $ cd /vagrant/
    $ celery -A taskapp.celery worker --loglevel debug --workdir="$PWD/alerts" -c 1
    
Now declare the 'periodic tasks' executed by Celery. To achieve this please create a Django superuser and access the Admin web page. Once there, click on DJCELERY and then on Periodic tasks.

Create a new object and provide the following values:

* Name: Gnosis Alerts
* Task: eth.tasks.run_bot
* Enabled: checked
* Interval: 10 seconds

You are done, Celery will query the Django Database and execute the task.

