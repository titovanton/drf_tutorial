#!/usr/bin/env bash

# .bashrc
echo "cd $APPDIR/tutorial" >> $USERHOME/.bashrc
echo "source $VAGRANTFILES/env.sh" >> $USERHOME/.bashrc

# python3
add-apt-repository -y ppa:jonathonf/python-3.6
apt-get update
apt-get install -y python3.6
update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.5 1
update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 2
python3 -V

# the following needs tty:
# update-alternatives --config python3

# pip
apt-get install -y python3.6-dev
apt-get install -y python3-pip
pip3 install --upgrade pip

# pip requirements
pip install -r $VAGRANTFILES/requirements.txt


# only first run
# cd $APPDIR
# django-admin.py startproject tutorial
# cd tutorial
# python3 manage.py startapp snippets
