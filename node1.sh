sudo apt-get update -qq
# sudo apt-get install -qqy vim git python3 python3-pip python3-dev libmysqlclient-dev git
sudo apt-get install -qqy vim git python3 python3-dev libmysqlclient-dev git
# sudo pip3 install -q --upgrade pip3
sudo pip3 install -q mysqlclient django==1.8.4
git clone https://github.com/hjwp/book-example.git /home/ubuntu/sample-app
cd /home/ubuntu/sample-app
git checkout chapter_06
#python3 manage.py runserver 0.0.0.0:8000