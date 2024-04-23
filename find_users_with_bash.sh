#!/bin/bash

# Define the path to the password file
password_file="/etc/passwd"

# Use awk to search for users with /bin/bash as their login shell
users_with_bash=$(awk -F: '$NF=="/bin/bash" {print $1}' "$password_file")

# Print the list of users
echo "Users with /bin/bash as their login shell:"
echo "$users_with_bash"
