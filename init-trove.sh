echo $'\nHave you sourced your OpenStack creds today???\n'

echo "neutron port-create trove-network --name=trove-demo-port --fixed-ip ip_address=192.168.0.20"

echo $'Let\'s create a Trove Instance using the following syntax...\n'
echo "trove create trove-demo-db mysql56-minimum"
echo "--size 5 --databases django"
echo "--users troveadmin:WhatIsSecurity? --datastore mysql"
echo "--nic port-id=8fac4bbe-ca83-44a4-93d6-4d57203a9bd6"
echo ""
echo "Please enter your MySQL Password: "
read -sr DB_PASSWORD_INPUT

trove create trove-demo-db mysql56-minimum --size 5 --databases django --users troveadmin:$DB_PASSWORD_INPUT --datastore mysql --nic port-id=8fac4bbe-ca83-44a4-93d6-4d57203a9bd6