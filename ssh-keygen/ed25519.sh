echo "ssh key generator"


echo "enter a name for ssh key "
read -p "name : "  name


ssh-keygen -t ed25519 -f ~/.ssh/$name  

