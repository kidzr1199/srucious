#! /bin/bash

# Call func function on exit
trap func exit
# Declare the function
function func() {
 
  echo ""
  echo ""
  echo "Thank you!! $user_name for using the tool"
  echo "tool by kidzr1199"
}


echo "Thank you for using this tool."
echo -n "Your name:" 
read user_name
echo ""
echo ""

#this is the welcome message for the tool
echo "The tool will now start scannig directories"
echo "sit back and relax this will take time $user_name"

echo ""
echo ""


#this line will read from the specified text file.And test for the website,until the text file is over
while read -ru 4 LINE; do
    read -r REP < <(exec curl -IsS --head --request GET "$1$LINE" 2>&1)
    echo "$LINE: $REP"
done 4< "$2"


#Thank you for taking time into reading the code of the program! You are really awesome!