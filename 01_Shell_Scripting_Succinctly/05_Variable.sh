#!/bin/bash
# assign command output to a variable
# `` (backtick) is an older syntax, now replaced by $()
# everything you type between backticks is evaluated (executed) by the shell before the main command, and the output of that execution is used by that command
SERVER_NAME=`hostname`
echo "You are running this script on ${SERVER_NAME}."
