#!/bin/bash

# guessinggame.sh

files_count=$(ls | wc -l)

function is_valid_input() {
    if [ "$1" -ge 0 ] 2>/dev/null; then
        return 0
    else
        echo "Invalid input, please enter a number."
        return 1
    fi
}

function check_guess() {
    if [ "$1" -eq "$files_count" ]; then
        echo "Congratulations! You've guessed the correct number of files: $files_count"
        exit 0
    elif [ "$1" -lt "$files_count" ]; then
        echo "Your guess is too low, please try again."
    else
        echo "Your guess is too high, please try again."
    fi
}

echo "How many files are in the current directory?"

while true; do
    read -r guess
    if is_valid_input "$guess"; then
        check_guess "$guess"
    fi
done
