#!/bin/bash

local stat=1
local pass=$1
LEN =${#pass}
echo $LEN

echo "Welcome to the password checker."
echo -n Password:
read -sp password
echo
 if  [[ $pass =~ [0-9] ]] && [[ $pass =~ [a-z] ]] && [[ $pass =~ [A-Z] ]]  && [[ "$LEN" -ge 9 ]];
     stat=$? 
fi
return $stat

if [[ $? -ne 0 ]]; then
	echo "Invalid password"
else
	echo "Password is strong"
fi
