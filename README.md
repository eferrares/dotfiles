dotfiles
========

### @erich's dotfiles

This project is a collections of dotfiles forked from https://github.com/zokis/dotfiles . I used just on Ubuntu.

to download the project:

```bash
git clone https://github.com/eferrares/dotfiles.git
```

or

https://github.com/eferrares/dotfiles/archive/master.zip

###### install system applications:
```bash
cd dotfiles
sudo ./prepare_environment.sh
```
###### install the dotfiles
```bash
./install.sh
source ~/.bashrc
```

-----------
## Aliases:
### Bash Aliases
* rself='source ~/.bashrc'
* ls='ls --color=auto'
* grep='grep --color=auto'
* fgrep='fgrep --color=auto'
* egrep='egrep --color=auto'
* ll='ls -AhlF'
* la='ls -A'
* l='ls -CF'

### Git Aliases
* ga='git add'
* gA='git add .'
* gau='git add -u'
* gb='git branch'
* gc='git checkout'
* gcl='git clone'
* gct='git commit'
* gcm='gct -m'
* gcma='gct -am'
* gcv='gct -v'
* gd='git diff'
* gl='git log'
* glgol='gl --graph --decorate --pretty=oneline --abbrev-commit'
* glgola='gl --graph --decorate --pretty=oneline --abbrev-commit --all'
* gps='git push'
* gpl='git pull'
* gra='git remote add'
* grm='git rm'
* grr='git remote rm'
* gst='git status'
* gpsb='gps origin $(gitbranch)'
* gplb='gpl origin $(gitbranch)'
* gpsm='gps origin master'
* gplm='gpl origin master'
* gpso='gps origin'
* gplo='gpl origin'

### Python Django Aliases
* drs='python manage.py runserver'
* dtest='python manage.py test'
* dshell='python manage.py shell'
* ddump='python manage.py dumpdata'
* dload='python manage.py loaddata'
* dmigr='python manage.py migrate' # If the South is installed

---------------------