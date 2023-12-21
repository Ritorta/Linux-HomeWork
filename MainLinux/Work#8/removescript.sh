#!/bin/bash

echo "Thes script to remove the next format file: .bak .tmp .backup"

read -p "Enter to path directiry: " directiry

if [ -d $directiry ]; then

	echo "Directiry Find check to directiry: " $directiry		

	read -p "Press 'Y' to confirm or press 'N' to exit: " choice

	if [[ $choice == y || $choice == Y || $choice == yes || $choice == Yes ]]; then

		echo "Processing..."

		rm -v *.bak *.tmp *.backup

		echo "Delete complete"

	else

		echo "Operation cancel"

	fi

else

	echo "Directiry not found"	

fi