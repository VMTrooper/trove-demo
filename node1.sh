sudo apt-get update -qq
# sudo apt-get install -qqy vim git python3 python3-pip python3-dev libmysqlclient-dev git
sudo apt-get install -qqy vim git python3 python3-dev libmysqlclient-dev git mysql-client-core-5.6
# sudo pip3 install -q --upgrade pip3
sudo pip3 install -q mysqlclient django==1.8.4
git clone https://github.com/VMTrooper/trove-demo.git /home/ubuntu/trove-demo-lab

##Create the Trove Instance
#neutron port-create demo-network --name=trove-demo-port --fixed-ip ip_address=192.168.0.20
#trove create trove-demo-db mysql56-minimum --size 5 --databases django --users troveadmin:WhatIsSecurity? --datastore mysql --nic port-id=a5b433da-3a66-4702-ba03-3b8c0b7f696e

##Verify Trove Instance Created
#mysql --host 192.168.0.20 -u troveadmin -p django

##Verify Django Can Connect to DB
#source initrc
#python3 manage.py check
#python3 manage.py migrate

##Run the Web App
#python3 manage.py runserver 0.0.0.0:8000