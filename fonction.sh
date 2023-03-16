#!/bin/bash

# definition des fonctions

function coucou {
 echo bonjour
}

function aurevoir {
 echo snif
}

function arguments {
 if [ $# != 1 ]
   then
     echo on continue
   else
     exit 3
 fi  
}


# corps du script

clear
arguments

coucou
coucou
exit


