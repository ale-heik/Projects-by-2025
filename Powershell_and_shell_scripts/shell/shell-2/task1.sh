read -p "Give filepath to be removed: " rmfile

if [ -f $rmfile ]; then
        if [ ! -s $rmfile ]; then
                rm "$rmfile"
                echo "file '$rmfile' has been removed"
        else
                echo "File '$rmfile' is not empty"
        fi
else
        echo "File '$rmfile' does not exist"
fi
