#!usr/bin/env bash 

function countFiles(){
    return $(ls ./ | wc -l)
}

countFiles 
count=$?
echo "how many files are there in the current directory ?"
read guess 
if [[ $guess -lt $count ]]
        then
            echo "too low"

        elif [[ $guess -gt $count ]]
        then
            echo "too high"
        else
        echo "Congratumations! you guessed correctly"
        fi

until [[ $guess -eq $count ]]
do 
        echo "how many files are there in the current directory ?"
        read guess 
        if [[ $guess -lt $count ]]
        then
            echo "too low"

        elif [[ $guess -gt $count ]]
        then
            echo "too high"
        else
        echo "Congratumations! you guessed correctly"
        fi
done 