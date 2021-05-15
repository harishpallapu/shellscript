#! /bin/bash
# this line is commet
echo "hello world"
# below are system variable
echo $HOME
echo $BASH
echo $PWD
# below are the user defined variables

name=harish
echo $name

#read user input
echo "enter name:"
read name
echo "entered name: $name" 

# or to read on same line like (passwaor= -sp , normalname= -p)


read -p 'username:' user_var
read -sp "password:" password
echo
echo "username: $user_var"
echo "password: $password"

# array form

echo "enter names:"
read -a names
echo "name: ${names[0]},${names[1]}"

# PASS ARGUMENTS TO BASH SCRIPT(enter value in ./file - -  -)

echo $0 $1 $2 $3 ' > echo $1 $2 $3'
args=("$@")
echo ${args[o]} ${args[1]} ${args[2]}

#IF STATEMENT (IF THEN, IF THEN ELSE . IF ELIF ELse)

count=10
if [ $count -eq 10 ]
then
  echo "condition is true"
fi

#(in above we can use like [-eq -ne -gt -lt -ge -le or like < <= > >=])

#(string operation [= == != ])

word=abc
if [ $word == "abc" ]
then
 echo "condition is true"
fi

word=a
if [ $word = 'b' ]
then 
echo "condition b is true"
elif [ $word = 'a' ]
then 
echo "condition a is true"
else
echo "condition i flase"
fi


#FILE TEST OPERATION ( \c is coursor on same line )
# (-f shows files -d shows directories )
echo -e "enter the name of file : \c" 
read test
if  [ -e  $test ]
then 
echo "$test is found"
else
echo "$test not found"
fi

#HOW TO APPEND OUTPUT TO END OF THE TEXT FILE

echo -e "enter file name: \c"
read test
if [ -f $test ]
then
  #cheching write permissions
  if [ -w $test ]
  then 
    echo "type some data. to quit press ctrl+d."
    cat >> $test
   else
   echo "file do not have write permission"
   fi
else
echo "$test not exist"
fi	

# LOGICAL AND OPERATOR (&&) we can use in three formats [ -a ] ,  [[ && ]]

age=25
if [ "$age" -gt 18 ] && [ "$age" -lt 30 ]
then 
echo "valid age"
else
echo "invaild age"
fi

#LOGICAL OR OPERATOR (||) we cane use in three formates [ -o ] ,  [[ || ]

age=60
if [[ "$age" -gt 18 || "$age" -lt 30 ]]
then 
echo "valid age"
else
echo "invaild age"
fi

#PERFORM ARITHEMETIC OPERATIONS  LIKE + - * % /

a=20
b=10
echo $((a+b))
echo $((a-b))
echo $((a*b))
echo $((a/b))
echo $((a%b))

#FLOATING POINT MATH OPERATIONS IN BASH | bc (DECIMAL OPERATIONS)
#scale means like eg:4.01

num1=20.5
num2=5
echo "20.5+5" | bc
echo "20.5-5" | bc
echo "20.5*5" | bc
echo "scale=2;20.5/5" | bc
echo "20.5%5" | bc

#SQUARE ROOT OPERATIONS

num=16
echo "scale=2;sqrt($num)" | bc -l
echo "scale=2;3^3" | bc -l

#CASE STATEMENT(it enables several values aganist one value)
# i gave $4 because i have 1-3 as other parameters 

vechile=$4
case $vechile in 
   "car")
    echo "rent of $vechile is 20 dollor";;
    "van")
     echo "rent $vechile is 80 dollor";;
     *)
# *) means  default 
      echo " unknown vechile";;
esac

# ARRAY VARIBALES

os=("ubuntu" "windows")
echo "${os[0]}"

#to print index no.s

echo "${!os[@]}"
 
#lenght

echo "${#os[@]}"

#to add

os[3]="mac"

#to remove

unset os[2]


#WHILE LOOP (loops use to  excute list of commands repeatedly)

n=1
while [ $n -le 10 ]
do 
 echo "$n"
 n=$(( n+1 ))
done

#USING SLEEP WITH WHILE LOOP


n=1
while [ $n -le 10 ]
do
 echo "$n"
 (( n++ ))
 sleep 1
done

#READ FILE CONTENT IN BASH
# try to create another file and try this

cat hello.sh | while read p
do 
echo $p
done < hello.sh

#UNTil LOOP
n=1
until [ $n -gt 10 ]
do 
echo $n
n=$(( n+1  ))
done 

#FOR LOOP 

for i in 1 2 3 4  5 
do 
echo $i
done

#anothe for loop

for i in {0..10}
do 
echo $i
done

#again one  more for loop

for i in {1..10..2}
do
 echo $i
done

#USE FOR LOOP TO EXECUTE COMMAND

for item in *
do 
   if [ -d $item ]
    then 
       echo $item
    fi
done

#SELECT LOOP 
# press ctrl+d to come out

select name in hari nithu sow
do 
echo "$name selected"
done

#BREAK AND CONTINOUS STATEMENT
  
for (( i=1 ; i<=10 ; i++ ))
do
 if [ $i -gt 3  ]
  then 
   break
  fi
   echo $i
done

#CONTINOUS
 
for (( i=1 ; i<=10 ; i++ ))
do
 if [ $i -eq 3 -o $i -eq 6  ]
  then
   continue
  fi
   echo $i
done

