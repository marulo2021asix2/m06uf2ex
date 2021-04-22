#!/bin/bash
#Script p11.sh Marc Rubio Lopez

if [[ $EUID -ne 0 ]]; then
   echo "Has de ser root per executar aquest script"
   exit 1
