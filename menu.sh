#!/bin/bash
while true
do
    echo "1. Greet"
    echo "2. Add two integers"
    echo "3. Even or Odd"
    echo "4. Exit"
    read -p "Enter choice: " choice

    case "$choice" in
        1)
            read -p "Enter name: " name
            echo "Hello, $name!"
            ;;
        2)
            read -p "Enter two integers: " a b
            echo "Sum = $((a + b))"
            ;;
        3)
            read -p "Enter an integer: " n
            if (( n % 2 == 0 )); then
                echo "Even"
            else
                echo "Odd"
            fi
            ;;
        4)
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid choice"
            ;;
    esac
done
