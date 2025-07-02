#!/bin/bash

# Define the inventory file
inventory_file="./../ansible/inventory"


# Empty the old inventory file
> $inventory_file

# Add the localhost firstly
echo -e "[my_machine]\nlocalhost" >> $inventory_file

# Add master section
echo -e "\n[master]" >> $inventory_file
multipass list | awk 'NR>1 && $1 ~ /Master/ && $2=="Running" {print $3}' >> $inventory_file

# Add worker section
echo -e "\n[worker]" >> $inventory_file
multipass list | awk 'NR>1 && $1 ~ /Worker/ && $2=="Running" {print $3}' >> $inventory_file

echo "Inventory file generated: $inventory_file"