#!/bin/bash
function exiting() {
    echo "Finalizing program..."
    echo $1
    exit
}

function apt_install() {
    apt-get install -qy $1 && echo "=== $1 installed ==="
}

function install_docker() {
    apt-get install -qy curl linux-image-extra-$(uname -r) linux-image-extra-virtual
    apt-get install -qy apt-transport-https software-properties-common ca-certificates
    curl -fsSL https://yum.dockerproject.org/gpg | sudo apt-key add -
    apt-get install -qy software-properties-common
    add-apt-repository "deb https://apt.dockerproject.org/repo/ ubuntu-$(lsb_release -cs) main"
    apt-get update
    apt-get -qy install docker-engine

    curl -L "https://github.com/docker/compose/releases/download/1.10.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    chmod +x /usr/local/bin/docker-compose
    echo "=== docker & docker-compose installed ==="
}

function install_pip() {
    curl -XGET https://bootstrap.pypa.io/get-pip.py | python -
    echo "=== pip installed ==="
}

function install_virtualenvwrapper() {
    pip install virtualenvwrapper
}

[ "$USER" != root ] && exiting "You are not root!"

apt-get update

apt_install python-software-properties;

apt_install git

apt_install meld

apt_install tree

apt_install htop

apt_install nload

apt_install postgresql

apt_install pgadmin3

install_docker

install_pip

if which pip > /dev/null; then
    pip install ipython
    echo '=== ipython installed ===='
    install_virtualenvwrapper
    echo '=== virtualenvwrapper installed ==='
fi

