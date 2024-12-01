#Main Project

#Functions 

#Task 1
#Function to calculate the nth triangle number
triangleNumber() 
{
  local n=$1
  echo $((n * (n + 1) / 2))
}

# Function to get range
inputRange() 
{
  read -p "Please enter the first number in range: " start
  read -p "Please enter the second number in range: " end

  if ((start <= 0 || end <= 0)); then
    echo "Both numbers must be above 0!"
    inputRange
  elif ((end < start)); then
    echo "Second number must be above or equal to the first number!"
    inputRange
  fi
}

#Task 2
# Equal function check the number greater than 0
equal(){
    if [[ $startNum -gt 0 && $count -gt 0 && $x -gt 0 ]];
    then
        num=$startNum;
        y=0;
    else
        echo "There are number not postive."
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
#Task 3 Function
#Function
term(){
    local n=$1
    term=$((a*(n**3)+b*n+c))
    echo "$term"
}


#Initializations
passwordCount=0

#Task 1 - Initializations
evenProduct=0
oddProduct=0

#Task 3 - Initializations
term=0
count=0
product=0
rraySize=0

#Password input
while true; do
    read -p "Enter the password: " password
    [ "$password" == "App1" ] && { echo "AUTHORIZATION SUCCESSFUL"; break; } || 
        {
            ((passwordCount++)) 
            if [ $passwordCount -ge 3 ]; then
                echo "ERROR: You have been locked from the application."; exit 0
            else
                echo "ERROR: Incorrect password Please try again."
                echo ""
            fi
        }
done

#Menu options
    echo ""
    echo "=================================================="
    echo "There are three tasks in this program as follows: "
    echo "--------------------------------------------------"
    echo "Task 1: Find all triangular numbers that are within a range"
    echo "Task 2: Find all the numbers that can be written as the product of two natural numbers in succession and print them in increasing order"
    echo "Task 3: Find the terms of a sequence given by the rule Term = an^3 + bn + c"
    echo "=================================================="
    echo ""
#Menu input
while true; do
    read -p "Which task would you like to perform? [(a) Task 1, (b) Task 2, (c) Task 3]: " menuOption
    if [[ "$menuOption" = "A" || "$menuOption" = "a" ]]; then
        echo "Task 1: "
    elif [[ "$menuOption" = "B" || "$menuOption" = "b" ]]; then
        echo "TASK 2: "
        # Text let client customer add.
        read -p "Enter what is the start value? " startNum ;
        read -p "Enter How many times you want to process? " count;
        read -p "What number do you want to factor the result? " x;

        # processing
        equal
        process_count
   elif [[ "$menuOption" = "C" || "$menuOption" = "c" ]]; then
        echo "TASK 3: "

        #Part 1: Input of values to be used
        echo "This task will perform an arithmetic sequence with the equation an^3+bn+c with the value of n being in the range of first term (n1) to the final term (n2)"
        echo "Rules: a, b, and c must be non-negative values while n1 and n2 must be greater than 0"

        #Part 1.1: Input of correct non-negative values
        while true; do
            read -p "What would be your desired values for a, b, c, n1, and n2? (separate values with white space e.g. '1 2 0 2 4'): " a b c n1 n2
            if [[ $a -ge 0 && $b -ge 0 && $c -ge 0 && n1 -gt 0 && n2 -gt 0 ]]; then
                break
            else
                echo "Error! invalid value(s)"
            fi
        done
        count=$n1

        #Part 2: Performing arithmetic operations
        while [ $count -le $n2 ]; do
            termResult=$(term count)
            echo "Result when n = $count: $termResult"
            ((count++))
        done
        #Part 3: Performing multiplication of first and last numbers printed
        product=$(( $(term n1)*$(term n2) ))
        #Part 4: Finding if product is divisible by 4
        if (( product%4==0 )); then
            echo "Product is a multiple of 4"
        else
            echo "Product is NOT a multiple of 4"
        fi
        echo "This is the product of the first and last terms: $product"
    else
        echo "Invalid input. Please try again."
        echo ""
    fi

    read -p "Press [N] if you would like to stop the program, otherwise type any character: " menuDecision
    if [[ $menuDecision == "N" || $menuDecision == "n" ]]; then
        echo "Quitting Application... Successful"
        exit 0
    else
        continue
    fi
done
