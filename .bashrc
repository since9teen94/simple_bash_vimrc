#make a directory and cd into it in one command
mkcd(){ mkdir "$1" && cd "$1"; }
#mysqlconnection.py was premade to handle the database connectivity
#set up a flask project with templates folder, static folder, and the server.py file to start coding in
mkflask(){ mkdir "$1" && cd "$1" && cp ~/mysqlconnection.py . && mkdir templates static && touch server.py ; }
#start a django project with an apps folder and cd into it
mkdjango(){ django-admin startproject "$1" && cd "$1" && mkdir apps && cd apps && touch __init__.py ; }
#when in the app folder, create a new django app
djapp(){ ../manage.py startapp "$1" ; }
#open up a file in the preferred browser
see(){ explorer.exe "$1" ; }
#run a django server
alias djrun='python manage.py runserver'
#make migrations, django
alias djmk='python manage.py makemigrations'
#migrate, django
alias djm8='python manage.py migrate'
#source flask using the absolute path
alias srcflask='source absolute/path/to/flask/bin/activate'
#source django using the absolute path
alias srcdjango='source absolute/path/to/django/bin/activate'
#quickly open up the vimrc
alias vimrc='vim ~/.vimrc'
#quickly open up the bashrc
alias bashrc='vim ~/.bashrc'
#shortcut to clear the screen
alias c='clear'
#shortuct to visit the current directory of your project
alias cur='cd path/to/current/project'
#shortcut to update on mac in terminal
alias softup='softwareupdate -i -a'