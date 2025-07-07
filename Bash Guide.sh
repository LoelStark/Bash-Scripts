#!/usr/bin/bash

echo "This is a basic quiz to help and guide you through scripting: "
sleep 2
server_name=$(hostname)
points=0
echo "This quiz was created by the admin: "$server_name
sleep 2
echo "Pick an option from the menu below"
function data_collection()
{
    #username = {$name}
    name=username
    read -p "Enter your name: " username
    echo "Hello $username" #Username created and stored!
    sleep 2
    echo "Do you know your IQ level?"
    read -p "(yes/no) \n" response
    if [[ $response == "yes" ]]; then
        echo "Enter your IQ level below"
        read -p "Enter level " IQ_level
        sleep 1
        echo "Processing"
        sleep 2
        if [[ $IQ_level -lt 50 ]]; then
            echo "You need this quiz then!"
        elif [[ $IQ_level -gt 100 ]]; then
            echo "You don't actually need the quiz"
        fi
    fi
}

function Quiz()
{
    echo "Enter a number from the values given below the quiz:"
    sleep 2
    echo "Who created the first light bulb? "
    echo "1.Nikola Tesla"
    sleep 1
    echo "2.Thomas Edison"
    sleep 1
    echo "3.Albert Einstein"
    read -p "Enter number: " num1
    if [[ $num1 == 1 ]]; then
        echo "Your answer is correct"
        ((points++))
    else
        echo "Your answer is incorrect"
    fi

}

#while 'true'
#do
    data_collection
    Quiz
#done