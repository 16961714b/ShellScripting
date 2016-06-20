#!/bin/bash

FILE=$1 # The first parameter is the file.

echo "Executing: $0"
echo "Looking for: ${FILE}"

if [ -e "$FILE" ]
then
    echo "The file matches your search enquiry."
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

ls -la $1
