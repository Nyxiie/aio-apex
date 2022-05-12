#!/bin/bash

####################

#DEFAULT LOCATIONS
#SHADER : $HOME/.local/share/Steam/steamapps/shadercache/1172470/DXVK_state_cache
#VIDEOCONFIG : $HOME/.local/share/Steam/steamapps/compatdata/1172470/pfx/drive_c/users/steamuser/Saved\ Games/Respawn/Apex/local/
#AUTOEXEC : $HOME/.local/share/Steam/steamapps/common/Apex\ Legends/cfg/

####################

#Change the location(s) to yours
PATH_SHADER="CHANGEME"
PATH_VIDEOCONFIG="CHANGEME"
PATH_AUTOEXEC="CHANGEME"
#Shadercache filename
FILE_SHADER="r5apex.dxvk-cache"

echo "1. Install Community Shadercache"
echo "2. Install More FPS config"
echo "3. Exit"

read option


if [[ $option == 1 ]]; then
    #Deletes file if exists in current directory
    if [[ -e "$FILE_SHADER" ]]; then
        rm $FILE_SHADER
    fi

    #Downloading the shadercache from bcook254
    echo "Downloading Shadercache"
    wget https://github.com/bcook254/apex-legends-cache/raw/main/r5apex.dxvk-cache
    echo "Downloaded Shadercache"

    #Moved shadercache to $PATH_SHADER
    mv r5apex.dxvk-cache $PATH_SHADER
    echo "Shadercache moved to $PATH_SHADER"

elif [[ $option == 2 ]]; then
    echo "Downloading videoconfig and autoexec"
    wget https://github.com/Nyxiie/aio-apex/configs/videoconfig.txt
    wget https://github.com/Nyxiie/aio-apex/configs/autoexec.cfg

    mv videoconfig.txt $PATH_VIDEOCONFIG
    mv autoexec.cfg $PATH_AUTOEXEC

    echo "Installed configs , DONT FORGET TO CHANGE YOUR RESOLUTION IN VIDEOCONFIG.TXT"
    echo "Path : $PATH_VIDEOCONFIG"
else
    exit 0
fi