#!/bin/bash
echo "welCome In Tictactoa Simulator"

function resetBord()
{
        j=0
        for(( i=1; i<=9; i++ ))
        do
                bord[$i]=$j
        done
}

function assignLetterXOrO()
{
	assign=1
	random=$((RANDOM%2))
	if [ $assign -eq $random ]
        then
                player=X
                computer=O
                echo "player:" $player 
                echo "computer:" $computer
        else
                player=O
                computer=X
                echo "player:" $player 
                echo "computer:" $computer
        fi
}

function tossToCheckWhoPlaySFirst()
{
        random=$((RANDOM%2+1))
        if [ $random -eq 1 ]
        then
                echo "player's turn now"
        else
                echo "computer's turn now"
        fi
}



tossToCheckWhoPlaySFirst
assignLetterXOrO
resetBord


