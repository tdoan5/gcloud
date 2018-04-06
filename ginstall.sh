#! /bin/bash 
path=$(pwd)
sudo su -
apt-get update -y
apt-get upgrade -y
apt-get install -y python3-pip
pip3 install --upgrade flask

# add -N so that wget do not duplicate copied files when reset 
# copy necessary files
sudo wget -N --directory-prefix=$path/templates/ \
https://raw.githubusercontent.com/tdoan5/gcloud/master/templates/index.html

sudo wget -N --directory-prefix=$path/ \
https://raw.githubusercontent.com/tdoan5/gcloud/master/todolist.db

sudo wget -N --directory-prefix=$path/ \
https://raw.githubusercontent.com/tdoan5/gcloud/port_5000/todolist.py

# launch the app
python3 todolist.py
