#!/bin/bash
# Stefan Sokic | 10161819 | 14ss95

# to store single digits
singleDigit=0

# to store the number of digits
sum=0

for n in {0..100}; do
  echo -e "Number:\t" $n
  
  while [ $n -gt 0 ]
    do
      singleDigit=$(( $n % 10 ))
      n=$(( $n / 10 ))
      sum=$(( $sum + $singleDigit ))
    done
  echo -e "Sum:\t" $sum
  echo -e "\n"
  sum=0
done

