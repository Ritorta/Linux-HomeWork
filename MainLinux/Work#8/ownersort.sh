#!/bin/bash
echo "Thes script copy user file to the specified directory"

echo "Enter the path to the folder from where the copy will be made: "
source_dir="/path/to/source"

echo "The path to the folder where the files will be copied: "
destination_dir="/path/to/destination"

log_file="ownersort.log"

# Check if source directory exists
if [ ! -d "$source_dir" ]; then
    echo "Error: Source directory does not exist."
    exit 1
fi

# Check if destination directory exists
if [ ! -d "$destination_dir" ]; then
    echo "Error: Destination directory does not exist."
    exit 1
fi

cd "$source_dir" || exit

files=$(find . -type f)

for file in $files; do

    owner=$(stat -c %U "$file")

    if [ -d "$destination_dir/$owner" ]; then

        cp "$file" "$destination_dir/$owner/$file" || echo "Error: Failed in copy $file to $destination_dir/$owner"
        echo "$(date) - File '$file' copied in folder '$destination_dir/$owner'" >> "$log_file"

    else

        mkdir -p "$destination_dir/$owner"

        cp "$file" "$destination_dir/$owner/$file" || echo "Error: Failed in copy $file to $destination_dir/$owner"
        echo "$(date) - File '$file' copied in new folder '$destination_dir/$owner'" >> "$log_file"

    fi

    chown $owner "$destination_dir/$owner/$file"

done
