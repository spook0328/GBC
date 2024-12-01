#Task 3

#Initializations
term=0
count=0
product=0

#Function
term(){
    local n=$1
    term=$((a*(n**3)+b*n+c))
    echo "$term"
}

#Part 1: Input of values to be used
echo "This task will perform an arithmetic sequence with the equation an^3+bn+c with the value of n being in the range of first term (n1) to the final term (n2)"
echo "Rules: a, b, and c must be non-negative values while n1 and n2 must be greater than 0"

#Part 1.1: Input of correct non-negative values
while true; do
    read -p "What would be your desired values for a, b, c, n1, and n2? " a b c n1 n2
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
echo "This is the product of the first and last terms: $product"  

