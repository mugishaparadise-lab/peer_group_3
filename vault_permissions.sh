#!/bin/bash
if [ -d ~/secure_vault ]; then 
echo "Directory exist."
else 
echo "Error"
fi
cd ~/secure_vault
ls -l
read -p "Do you want to update permissions? (Yes/No): " answer
if [ "$answer" = Yes ]; then 
echo "Updating the permissions ...."
read -p "Enter new permission to keys.txt: " perm
read -p "Enter new permission to secrets.txt: " perm
read -p "Enter new permission to logs.txt: " perm
chmod $perm keys.txt
chmod $perm secrets.txt
chmod $perm logs.txt
else 
read -p "Press Enter to apply default permissions"
echo "Applying default permissions ..."
chmod 600 keys.txt
chmod 640 secrets.txt
chmod 544 logs.txt
echo "Permissions added successfully"
fi
ls -l  
