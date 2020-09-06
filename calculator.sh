#!/bin/bash
function input_first_number(){
    read -p "Input first number: " num1
    echo $num1
}
function input_second_number(){
    read -p "Input second number: " num2
    echo $num2
}


while true
do
    echo "1. Add"
    echo "2. Subtract"
    echo "3. Multiply"
    echo "4. Divide"
    echo "5. Exit"

    read -p "What do you want to do?(1-5): " operation

    case $operation in
        1)  num1=$(input_first_number)
            num2=$(input_second_number)
            echo "The sum is: $(( num1 + num2 ))"
            echo -e "\n"
            ;;
        2)  num1=$(input_first_number)
            num2=$(input_second_number)
            echo "The difference is: $(( num1 - num2 ))"
            echo -e "\n"
            ;;
        3)  num1=$(input_first_number)
            num2=$(input_second_number)
            echo "The product is: $(( num1 * num2 ))"
            echo -e "\n"
            ;;
        4)  num1=$(input_first_number)
            num2=$(input_second_number)
            quo=$(echo "scale=2 ; $num1 / $num2" | bc)
            echo "The quotient is: $quo"
            echo -e "\n"
            ;;
        5)  break
            ;;
        *)  continue ;;
    esac
done