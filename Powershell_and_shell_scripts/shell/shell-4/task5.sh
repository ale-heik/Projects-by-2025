#!/bin/bash

#folder funktio
mk_folder() {
        set -x

        read -p "Enter the path to create new folder: " folder_path

        mkdir -p "$folder_path"

        echo "folder created at: $folder_path"

        set +x
}

#download funktio
download_image() {
        set -x

        url="https://student.labranet.jamk.fi/~pekkju/script/tux.png"
        wget "$url" -O "$folder_path/linux-tux.png"

        echo "Image downloaded to: $folder_path/linux-tux-png"

        set +x
}

#permissions funktio
change_perm() {
        set -x

        chmod 700 "$folder_path"
        chmod 700 "$folder_path/linux-tux.png"

        echo "Permissions changed to rwx for folder and image"

        set +x
}

#kutsutaan funktioita

mk_folder

download_image

change_perm

