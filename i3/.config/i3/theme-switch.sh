#!/bin/bash

NUMBER=$(( ( RANDOM %4 )  + 1 ))

printf "%i\n" "$NUMBER"


case $NUMBER in
     1)      
          printf "%s\n" "One"
	  wal -g -i ~/Pictures/background.jpg
          ;;
     2)      
          printf "%s\n" "Two"
	  wal -g -i ~/Pictures/background5.jpg
          ;;

     3)	
	  wal -g -i ~/Pictures/background3.jpg
	  ;;
     4) 
	  wal -g -i ~/Pictures/background4.jpg
          ;;

esac

wal-steam -w
