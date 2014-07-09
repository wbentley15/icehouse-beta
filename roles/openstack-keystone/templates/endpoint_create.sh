keystone  --os-endpoint={{ OS_AUTH_URL }} --os-token={{ OS_SERVICE_TOKEN }} endpoint-create \
  --service-id=$(keystone service-list | awk '/ identity / {print $2}') \
  --publicurl=http://{{ hostvars[inventory_hostname]['ansible_eth1']['ipv4']['address'] }}:5000/v2.0 \
  --internalurl=http://{{ hostvars[inventory_hostname]['ansible_eth1']['ipv4']['address'] }}:5000/v2.0 \
  --adminurl=http://{{ hostvars[inventory_hostname]['ansible_eth1']['ipv4']['address'] }}:35357/v2.0