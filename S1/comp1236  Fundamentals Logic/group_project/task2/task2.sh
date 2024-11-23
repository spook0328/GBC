# Equal function check the number greater than 0
equal(){
    if [[ $startNum -gt 0 && $count -gt 0 && $x -gt 0 ]];
    then
        num=$startNum;
        y=0;
    else
        echo "There are number not postive."
        exit
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
        echo "solution is a factor of x."
    else
        echo "The remaind of $solution % $x = $remaind."
        echo "solution is not a factor of x."
    fi
    echo "-------------------"
}
# Text let client customer add.
read -p "Enter what is the start value? " startNum ;
read -p "Enter How many times you want to process? " count;
read -p "What number do you want to factor the result? " x;

# processing
equal
process_count
