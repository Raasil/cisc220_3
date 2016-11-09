#!/bin/bash
# Stefan Sokic | 10161819 | 14ss95 | Assignment 3
# Question 1:
# A lucky number is one whose individual digits add up to 7, in successive additions.
# For example, 62431 is a lucky number (6 + 2 + 4 + 3 + 1 = 16, 1 + 6 = 7). 
# Write a script to output all the lucky numbers between 1000 and 10000.

# declare some variables
# store single digits of each number in the loop
singleDigit=0
# to store the number of digits
sum=0
# to alias the n variable in order to use it again later
i=0
# seperate variables for each digit in the sum so we can add them together later 
sumFirstDigit=0
sumSecondDigit=0

for n in {1000..10000}; do
  i=$n # alias n variable so we can access it later
  while [ $i -gt 0 ] # while there are digits still left in i
    do
      singleDigit=$(( $i % 10 )) # extracts the last digit from i
      i=$(( $i / 10 )) # removes that letter we just extracted from i
      sum=$(( $sum + $singleDigit )) # adds all the single digits
    done
  # extract each of the two digits in the sum
  sumFirstDigit=$(( $sum / 10 ))
  sumSecondDigit=$(( $sum % 10 ))
  # if adding the first and second digit together returns 7
  if (( $sumFirstDigit + $sumSecondDigit == 7 )) ; then
    echo -e $n # return the original n
  fi
  # reset the sum as we loop to the next number
  sum=0
done

