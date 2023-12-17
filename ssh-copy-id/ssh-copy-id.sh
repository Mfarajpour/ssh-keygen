echo "copy ssh"

echo "enter key name"
read -p "key name : " keyname

pass=$(cat passwd.txt)
servers=$(cat servers.txt)

which sshpass 
if [[ $? -ne 0 ]];then
	echo "please install sshpass"
	exit 1
fi        

for server in $servers ;do
   sshpass -p $pass ssh-copy-id -i ~/.ssh/${keyname}.pub -o StrictHostKeyChecking=no $server

done


