alias rmpyc='find . -name "*.pyc" | xargs rm -v'

# Django aliases
alias drs='python manage.py runserver'
alias ddb='python manage.py syncdb'
alias dtest='python manage.py test'
alias dshell='python manage.py shell'
alias ddump='python manage.py dumpdata'
alias dload='python manage.py loaddata'
# If the South is installed
alias dmigr='python manage.py migrate'
alias dschema='python manage.py schemamigration'
