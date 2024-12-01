# Let client customer add text.
text_input(){
        read -p "Enter what is the start value? " startNum ;
        read -p "Enter How many times you want to process? " count;
        read -p "What number do you want to factor the result? " x;
}

# Equal function check the number greater than 0
equal(){
    if [[ $startNum -gt 0 && $count -gt 0 && $x -gt 0 ]];
    then
        num=$startNum;
        y=0;
	return 0 # check postive
    else
        echo "There are number not postive."
	echo "System will restart at 3 Sec. "
	sleep 3 # delay 3sec
	clear # clear the code
	return 1 # check not postive
    fi
}

# process_cont function check the factor and let y=y++ & num=num++
process_count(){
    while [[ $y -lt $count ]];
    do
        factor
        y=$((y+1))
        num=$((num+1))
    done
}

#factor function check the remaind and the solution
factor(){
    solution=$((num * (num+1)))
    remaind=$((solution % $x))
    echo "y =$y"
    if [[ $remaind -eq 0 ]];
    then
        echo "The remaind of $solution % $x = $remaind."
        echo "$solution is a factor of $x."
    else
        echo "The remaind of $solution % $x = $remaind."
        echo "$solution is not a factor of $x."
    fi
    echo "-------------------"
}

# processing
while true; do
	text_input
	equal
	if [ $? -eq 0 ]
	then
	    process_count
	    break
	fi
done
