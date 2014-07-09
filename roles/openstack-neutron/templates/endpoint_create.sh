keystone endpoint-create \
  --service-id=$(keystone service-list | awk '/ network / {print $2}') \
  --publicurl=http://{{ hostvars[inventory_hostname]['ansible_eth1']['ipv4']['address'] }}:9696 \
  --internalurl=http://{{ hostvars[inventory_hostname]['ansible_eth1']['ipv4']['address'] }}:9696 \
  --adminurl=http://{{ hostvars[inventory_hostname]['ansible_eth1']['ipv4']['address'] }}:9696