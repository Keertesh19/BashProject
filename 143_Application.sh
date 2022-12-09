#!/bin/bash
task1="*Task 1: Find odd triangular numbers that are smaller than a number
 specified by the user and print them. Also, keeps the count of the
 number of odd and even triangular numbers and print them too.
 (Task Selection Keywords: T, t, or 1).
                               - Coded by Ritik Kamboj - 101411610"

task2="*Task 2: Find number that can be written as the product of two non
 negative odd integers in succession and print them in increasing
 order. Also checks for the number to be factor of a number given
 by user and print the output. Users can also decide how many numbers
 to be printed.
 (Task Selection Keywords: P, p, or 2).
                                   - Coded by Himanshu - 101418143"

task3="*Task 3: Find the terms of a sequence given by the rule
 Term = an^2 + bn + c, where a and b and c are integers specified
 by the user and n is a positive integer. This task should give
 the user two options:

-Option 1) Find a limited number of terms of the sequence and print
 them in order. The user also specifies how many terms the program
 should print. In addition, the program should print the sum of the
 terms found.

-Option 2) Find a term in a position chosen by the user and determine
 whether this term is a multiple of a number chosen also by the user.
 (Task Selection Keywords: Q, q, or 3).
                                     - Coded by Keertesh - 101419658"

echo "Hi there, Welcome to our Application - Created by Group 143.

This Application allow users to perform 3 Tasks as follow:

$task1

$task2

$task3

*To QUIT Press E, e, or 4.

*To get this description use H, h, help."
echo #next line

read -p "Enter keywords to select tasks : " tKeyword

while true;
do
case $tKeyword in 

#TASK 1 - Ritik Kamboj
t | T | 1)
echo #next line
echo "THIS IS TASK1

$task1"
echo #next line
read -p "Choose any positive integer : " n
echo #next line
echo "The odd triangular numbers less than ${n} are : "
echo #next line
i=1
a=2
e=0
o=0

while [ $i -le $n ]; do
  let "m = $i % 2" 
  if [ $m -eq 0 ];
  then


  let "e+=1"

  else

	echo "Number : ${i}"
  let "o+=1"

	fi

  let "i= $i + $a"
	let "a= $a + 1"
done

echo #next line
echo "Total odd triangular numbers till ${n} are : ${o}"
echo "Total even triangular numbers till ${n} are : ${e}"
echo #next line
read -p "Enter keywords to select tasks (To check the tasks keyword description use (h/H/help)) : " tKeyword;;


#TASK 2 - Himanshu
p | P | 2) 
echo #next line
echo "THIS IS TASK2

$task2"
echo #next line
read -p "Choose any positive integer : " num
echo #next line
read -p "Enter how many numbers you want to display : " hnum
echo #next line
a=1
i=1
let "j= $i + 2"
while [ $a -le $hnum ]; do
	let "k= $i * $j"
	echo "The product of $i and $j is $k."
	let "i= $i + 2"
	let "j= $j + 2"
	let "q= $k % $num"
	if [ $q -eq 0 ]; then
		echo "$num is a factor of $k"
    echo #next line
	else
		echo "$num is not a factor of $k"
echo #next line
	fi
	let "a= $a + 1"
done
read -p "Enter keywords to select tasks (To check the tasks keyword description use (h/H/help)) : " tKeyword;;


#TASK 3 - Keertesh
q | Q | 3) 
echo #next line
echo "THIS IS TASK 3.

$task3"

read -p "Please select an option : " o 
read -p "Please enter value for a : " a
read -p "Please enter value for b : " b
read -p "Please enter value for c : " c
echo #next line
sum=0

case $o in

1) read -p "You selected OPTION 1

Kindly specify the number of terms to be printed : " n
echo #next line

for (( x=1; x<=n; x++ ))
do
let "term = $a*$x*$x + $b*$x + $c"
let "sum = $sum + $term"


echo "Term $x is : $term"
echo #next line
done 

echo "The sum of $n terms is : $sum";;

2) echo -n "You selected OPTION 2"
echo #next line
echo #next line
read -p "Enter the position you want to find sequence of : " n
echo #next line
let "nterm = $a*$n*$n + $b*$n + $c"

answer() {
  echo "The answer of position($n) is $nterm"
echo

let "m = $nterm % $f"
if [ $m -eq 0 ];
then
  echo "$nterm is multiple of $f."
else
  echo "$nterm is not a multiple of $f."
fi
}

read -p "Selection to check multiple from your own numbers (select from a, b, c)
or you can enter number of your own choice (For ex. if you select a it will check 
if the answer is multiple of the number you entered in that varibale or if you 
entered some number it will check if the term is multiple of that number) : " f
echo #next line
case $f in
a) let "f = a"
answer;;
b) let "f = b"
answer;;
c) let "f = c"
answer;;
*) answer;;
esac

echo;; #next line

*) echo -n "This is not an VALID option.";;
esac
read -p "Enter keywords to select tasks (To check the tasks keyword description use (h/H/help)) : " tKeyword;;

h | H | help) 
echo #next line
echo "This Application allow users to perform 3 Tasks as follow:

$task1

$task2

$task3

*To QUIT Press E, e, or 4.

*To get this description use H, h, help."

echo #next line
read -p "Enter keywords to select tasks : " tKeyword;;

e | E | 4) 
echo #next line
read -t 1 -p  "Exiting the program..."
sleep 0.5
echo #next line
echo #next line
echo "Goodbye :)"
echo #next line
sleep 1
echo "See you soon!!"
echo #next line
sleep 1
echo "Have a nice day!!"
echo #next line
exit 0;;

*) 
echo #next line
read -p "Invalid INPUT! Kindly read the information and select the right keyword.

To check the tasks keyword description use (h/H/help) or select an valid keyword (t/T/1, p/P/2, q/Q/3) : " tKeyword;;

esac

done
