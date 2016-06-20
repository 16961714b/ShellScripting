#!/bin/bash

read -p "Write name of the file or directory you are looking for: " FILE

if [ -e "$FILE" ]
then
    echo "The following file matches your search enquiry: ${FILE}."
else
    echo "There are no matches for your enquiry. Sorry!"
fi

if [ -f "$FILE" ]
then
    echo "${FILE} is a regular file."
elif [ -d "$FILE" ]
then
    echo "${FILE} is a directory."
else
    echo "${FILE} is neither a regular file nor a directory."
fi

ls -la ${FILE}
