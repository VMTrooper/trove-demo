sudo sed -i "s/^127.*/127.0.0.1 localhost webapp/g" /etc/hosts
sudo apt-get update -qq
sudo apt-get install -qq vim git python3 python3-pip python3-dev libmysqlclient-dev git mysql-client-core-5.6
sudo pip3 install -q mysqlclient django==1.8.4
git clone https://github.com/VMTrooper/trove-demo.git /home/ubuntu/trove-demo-lab

##Verify Trove Instance Created
#mysql --host 192.168.0.20 -u troveadmin -p django

##Verify Django Can Connect to DB
#source initrc
#python3 manage.py check
#python3 manage.py migrate

##Run the Web App
#python3 manage.py runserver 0.0.0.0:8000