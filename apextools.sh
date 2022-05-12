#!/bin/bash

#DEFAULT LOCATION : $HOME/.local/share/Steam/steamapps/shadercache/1172470/DXVK_state_cache
#Change the location to yours
PATH_SHADER="/run/media/nyx/Warrior/SteamLibrary/steamapps/shadercache/1172470/DXVK_state_cache/"
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
    echo "comming soon..."

else
    exit 0
fi



