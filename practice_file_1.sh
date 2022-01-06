#!/bin/bash

#Following along with Brad from Traversy media to refresh basic understanding of Bash
# Video link: https://www.youtube.com/watch?v=v-F3YLd6oMw&list=PLHJ98TPNNQbyF48atSJB7OQCeGIFXnM71&index=24&t=1272s

#Echo command
# echo Hi there, no quotes needed?
# echo I guess no quotes are needed for a string with no key words and vars. Oh even keywords work #quotes are good practice. so use them

#Variables - conventional to name them with caps
# FNAME="Tanyi"
#Spaces are taken seriously in bash. I declared the variable above with spaes in between and it threw errors.
# echo "My name is $FNAME ."
#Also putting the variable in curly braces works same
# echo "My name is ${FNAME} ."


#IF statement
# if [ "$FNAME"=="Tanyi" ] #notice space after opening bracket, and space before closing bracket
# then
#     echo "Hi there, I was expecting you Tanyi!"
# fi


#Else if
# read -p "Please enter your name to receive greeting: " FNAME
# if [ "$FNAME" == "Tanyi" ]
# then
#     echo "Hi there, I was expecting you Tanyi!"
# elif [ "$FNAME" == "Tarkang" ]
# then
#     echo "Hi Tanyi, almost didn't recognize!"
# else
#     echo "Hi there $FNAME! Nice to meet some of Tanyi's friends."
# fi


#Comparison
# NUM1=25
# NUM2=16
# if [ "$NUM1" -lt "$NUM2" ]
# then
#     echo "$NUM1 is less than $NUM2"
# elif [ "$NUM2" -lt "$NUM1" ]
# then
#     echo "$NUM1 is less than $NUM2"
# else
#     echo "Either $NUM1 and $NUM2 are equal or there's something else weird going on haha."
# fi

########
# val1 -eq val2 Returns true if the values are equal
# val1 -ne val2 Returns true if the values are not equal
# val1 -gt val2 Returns true if val1 is greater than val2
# val1 -ge val2 Returns true if val1 is greater than or equal to val2
# val1 -lt val2 Returns true if val1 is less than val2
# val1 -le val2 Returns true if val1 is less than or equal to val2
########

#Wed Jan 5th 2022 10:40pm. Getting tired and hungry...


#Case Statements
# read -p "Are you 21 years or older? Answer Y/N: " RESPONSE
# case "$RESPONSE" in
#     [yY] | [yY][eE][sS])
#         echo "You can purchase alcohol in the USA then :)" 
#     ;;  
#     [nN] | [nN][oO])
#         echo "Sorry, you can't purchase alcohol in the USA :("
#     ;;
# *)
#Just realizing I can't put comments above the *) in the case block. Also, the stuff below the *) is the default case(when user doesn't enter specified options)
#Also notice the closing parenthese after th case condition
#     echo "Please follow instructions and enter y/yes or n/no"
#     ;;
# esac

#For loop
# NAME_LIST="Mbeng Tanyi Tanyi2 Tarkang"
# for SINGLE_NAME in $NAME_LIST
#     do
#         echo "Girl with the longest names has $SINGLE_NAME in her name"
#     done

#For loop to rename files
# FILES=$(ls *.txt)
# NEW_FILENAME="new_"
# for FILE in $FILES
#     do
#         # echo "Renaming $FILE to $NEW_FILENAME$FILE"
#         echo "Renaming new_new_$FILE to new_$FILE"
#         mv $FILE "new_$FILE"
#     done
#I was trying to fix this for lop to revert the filenames to their old names, but I failed woefully. Probably need to use some grep combo to cut out the new_new_new_new parts in the filename

#While Loop
# LINE=0
# while read -r CURRENT_LINE
#  do
#  echo "$LINE. $CURRENT_LINE"
#     ((LINE++))
#     #Double parentheses are non-negotiable
# echo
# done < "new_new_input_io.txt"


# function greet(){
   
#     read -p "Enter your name: " FNAME
#     echo "Pleased to meet you dear $FNAME "
# }

# greet


#Create a folder and write and write to a file
# mkdir "Hello Bash"
# touch "hello_world.txt"
# echo "Hello World" >> "hello_world.txt"
# echo "Created hello_world.txt, but I'm not sure how to specify what folder it goes into. For now it is stored in the folder where my script is stored"