echo "ssh key generation without pass "
echo "No overwrite capability "

echo "enter key name "
read -p "name : "  name

ls ~/.ssh | grep -x $name 

#echo "ppp" $?
if [[ $? -eq 1 ]];then
	ssh-keygen -t rsa -b 4096 -f ~/.ssh/$name -P -N 
	echo "$name was generated" 

else 
  echo "this key name is available , please choose another name "	
fi  
 

