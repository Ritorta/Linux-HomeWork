#!/bin/bash
echo "Thes script copy user file to the specified directory"

echo "Enter the path to the folder from where the copy will be made: "
source_dir="/path/to/source"

echo "The path to the folder where the files will be copied: "
destination_dir="/path/to/destination"

cd "$source_dir" || exit

files=$(find . -type f)

for file in $files; do

    owner=$(stat -c %U "$file")

    if [ -d "$destination_dir/$owner" ]; then

        cp "$file" "$destination_dir/$owner/$file"
        echo "File '$file' copy in folder '$destination_dir/$owner'"

    else

        mkdir -p "$destination_dir/$owner"

        cp "$file" "$destination_dir/$owner/$file"

        echo "File '$file' copy in new folder '$destination_dir/$owner'"

    fi

    chown $owner "$destination_dir/$owner/$file"

done