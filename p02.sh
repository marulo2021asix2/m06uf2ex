#!/bin/bash
#Script p01.sh Marc Rubio Lopez

if [[ $EUID -ne 0 ]]; then
   echo "Has de ser root per executar aquest script"
   exit 1

fi
for dir in $@
do
  if [ -d $dir ]
  then
    echo “La capeta $dir ya existe.”
Else
    mkdir $dir
    if [ $? -eq 0 +
    then
      echo “$dir se ha creaco con éxito”
    else
      echo “La carpeta ya existe $dir”
    fi
  fi
done
