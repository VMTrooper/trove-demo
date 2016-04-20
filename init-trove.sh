echo $'\nHave you sourced your OpenStack creds today???\n'

#neutron port-create demo-network --name=trove-demo-port --fixed-ip ip_address=192.168.0.20

echo $'Let\'s create a Trove Instance using the following syntax...\n'
echo "trove create trove-demo-db mysql56-minimum"
echo "--size 5 --databases django"
echo "--users troveadmin:WhatIsSecurity? --datastore mysql"
echo "--nic port-id=a5b433da-3a66-4702-ba03-3b8c0b7f696e"
echo ""
echo "Please enter your MySQL Password: "
read -sr DB_PASSWORD_INPUT

trove create trove-demo-db mysql56-minimum --size 5 --databases django --users troveadmin:$DB_PASSWORD_INPUT --datastore mysql --nic port-id=a5b433da-3a66-4702-ba03-3b8c0b7f696e