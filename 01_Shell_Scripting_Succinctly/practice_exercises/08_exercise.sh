#!/bin/bash

OBJECTS="$@"
echo "Executing: $0"
echo "Looking for: ${OBJECTS}"

if [ -e "$OBJECTS" ]
then
    echo "The item matches your search enquiry."
else
    echo "There are no matches for your enquiry. Sorry!"
fi

for OBJECT in ${OBJECTS}
do
    if [ -f "$OBJECT" ]
    then
        echo "${OBJECT} is a regular file."
    elif [ -d "$OBJECT" ]
    then
        echo "${OBJECT} is a directory."
    else
        echo "${OBJECT} is neither a regular file nor a directory."
    fi
done

ls -la $OBJECTS
