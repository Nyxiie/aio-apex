#!/bin/bash

####################

#DEFAULT LOCATIONS
#SHADER : $HOME/.local/share/Steam/steamapps/shadercache/1172470/DXVK_state_cache
#VIDEOCONFIG : $HOME/.local/share/Steam/steamapps/compatdata/1172470/pfx/drive_c/users/steamuser/Saved\ Games/Respawn/Apex/local/
#AUTOEXEC : $HOME/.local/share/Steam/steamapps/common/Apex\ Legends/cfg/

####################

#Change the location(s) to yours
PATH_SHADER=""
PATH_VIDEOCONFIG=""
PATH_AUTOEXEC=""

ALIVE=TRUE

while [[ $ALIVE == TRUE ]]; do

echo "1. Install gamemoderun for Apex"
echo "2. Install Community Shadercache"
echo "3. Install More FPS config"
echo "3. Exit"

read option

if [[ $option == 1 ]]; then
    echo "1. Install for Arch based distros"
    echo "2. Install for Debian based distros"
    read distro
    if [[ $distro == 1 ]]; then
        sudo pacman -S --noconfirm gamemode
        echo "Please add ' gamemoderun %command% ' to your Launch options!"
    elif [[ $distro == 2 ]]; then
        apt-get install -y gamemode
        echo "Please add ' gamemoderun %command% ' to your Launch options!"
    fi


elif [[ $option == 2 ]]; then
    #Downloading the shadercache from bcook254
    wget https://github.com/bcook254/apex-legends-cache/raw/main/r5apex.dxvk-cache
    echo "Downloaded Shadercache"

    #Moved shadercache to $PATH_SHADER
    mv r5apex.dxvk-cache $PATH_SHADER
    echo "Shadercache moved to $PATH_SHADER"




elif [[ $option == 3 ]]; then

    echo "Downloading videoconfig and autoexec"
    wget https://github.com/Nyxiie/aio-apex/raw/master/configs/videoconfig.txt
    mv videoconfig.txt $PATH_VIDEOCONFIG

    wget https://github.com/Nyxiie/aio-apex/raw/master/configs/autoexec.cfg
    mv autoexec.cfg $PATH_AUTOEXEC
    
    

    echo "Installed FPS Boost Configs"


#exit programm
else
    exit 0
fi
done