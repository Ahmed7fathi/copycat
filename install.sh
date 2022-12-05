sudo apt install -y xclip;

zshrc="/home/$USER/.zshrc"
bashrc="/home/$USER/.bashrc"

copycat="alias copycat='xclip -selection clipboard'"

if [ -f $zshrc ]; then
    echo "zshrc exists.";
    echo "setting up copycat";
    echo  $copycat | sudo tee -a $zshrc;
    echo "Done !"

elif [ -f $bashrc ]; then
    echo "bashrc exists.";
    echo "setting up copycat";
    echo  $copycat | sudo tee -a $bashrc;
    echo "Done !"

else
    echo "Couldn't find a Shell"
fi
