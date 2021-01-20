#!/usr/bin/bash
#
# passwordGenerator.sh
#
#-------------------------------------------------------------------------------
# *** DEFAULTS ***
#allowedChars='1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!@#$%()[]{}.,:;_+*-/'
#allowedChars='1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz$!#%'
allowedChars='1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
length=12
num=1
#-------------------------------------------------------------------------------



while getopts ":a:l:n:" opt
do
  case $opt in
    a)
      allowedChars=$OPTARG
    ;;
    l)
      length=$OPTARG
    ;;
    n)
      num=$OPTARG
    ;;
    \?|:)
      echo "Usage: "`basename $0`" [ -a \"string\"] [ -l lenght ] [ -n iterations ]"
      echo " -a: Allowed characters for password"
      echo " -l: Password length"
      echo " -n: Number of passwords to generate"
      echo ""
      echo " Example: "`basename $0`" -a '12345ABCDabcd#!$' -l 10 -n 3"
      echo ""
      echo " Default values"
      echo " ---------------"
      echo " Allowed characters:  $allowedChars"
      echo " Password length:     $length"
      echo " Number of passwords: $num"
      exit 0
    ;;
  esac
done


for (( i = 1 ; i <= num ; i++ ))
do
  tr -dc "$allowedChars" < /dev/urandom | head -c$length ; echo ""
done

exit 0

#EOF#
