keystone endpoint-create \
  --service-id=$(keystone service-list | awk '/ image / {print $2}') \
  --publicurl=http://{{ hostvars[inventory_hostname]['ansible_eth1']['ipv4']['address'] }}:9292 \
  --internalurl=http://{{ hostvars[inventory_hostname]['ansible_eth1']['ipv4']['address'] }}:9292 \
  --adminurl=http://{{ hostvars[inventory_hostname]['ansible_eth1']['ipv4']['address'] }}:9292