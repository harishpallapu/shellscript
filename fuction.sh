#! /bin/bash

#FUNCTIONS(it is code block implements set of operations)

function hello(){
echo $1 $2 # 1,2 are arguments parameters
}

hello a program

# or another format 

ram(){
echo $1
}
ram good

#LOCAL VARIABLES 
 

function hello(){
local name=$1
echo "the name is $name"
}
hello ram 

#FUNCTIONS USING

usage() {
echo "you need to provide arguments : "
echo "usage : $0 file_name"
}

is_file_exist() {
 local file="$1"

}

[[ $# -eq 0 ]] && usage 

if ( is_file_exist "$1" )
then 
echo "file found"
else
echo "file not found"
fi

#READONLY COMMAND
test(){
echo "HI"
}
readonly -f test

test(){
echo"im here"
}
readonly

#or like this

readonly -p
