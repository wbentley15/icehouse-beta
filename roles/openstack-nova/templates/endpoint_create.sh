keystone endpoint-create \
  --service-id=$(keystone service-list | awk '/ compute / {print $2}') \
  --publicurl=http://{{ hostvars[inventory_hostname]['ansible_eth1']['ipv4']['address'] }}:8774/v2/%\(tenant_id\)s \
  --internalurl=http://{{ hostvars[inventory_hostname]['ansible_eth1']['ipv4']['address'] }}:8774/v2/%\(tenant_id\)s \
  --adminurl=http://{{ hostvars[inventory_hostname]['ansible_eth1']['ipv4']['address'] }}:8774/v2/%\(tenant_id\)s