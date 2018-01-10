#!/bin/bash
# Bash Menu Script Example

PS3="Please enter your choice: "
options=("Option1" "Option2" "Option3" "Quit")

select opt in "${options[@]}"
do
    case $opt in
        "Option1")
            echo "You chose choice 1"
            ;;
        "Option2")
            echo "You chose choice 2"
            ;;
        "Option3")
            echo "You chose choice 3"
            ;;
        "Quit")
            break
            ;;
        *)
            echo invalid option
            ;;
    esac
done
