export OS_USERNAME=admin
export OS_PASSWORD=passwd
export OS_TENANT_NAME=admin
export OS_AUTH_URL=http://{{ hostvars[inventory_hostname]['ansible_eth1']['ipv4']['address'] }}:35357/v2.0