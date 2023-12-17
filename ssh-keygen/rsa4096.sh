echo "ssh key generator"


echo "enter a name for ssh key "
read -p "name : "  name


ssh-keygen -t rsa -b 4096 -f ~/.ssh/$name  

