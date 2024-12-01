# Function to calculate the nth triangle number
triangleNumber()
{
  n=$1
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

# Gets input range from user
inputRange

# Initialize variables
evenProduct=1
oddProduct=1
evenCount=0
oddCount=0
triangleNumberFound=false
n=1

# Calculates and displays the nth triangle numbers
echo "Triangle numbers between $start and $end:"

while true; do
  num=$(triangleNumber $n)
  # If num is greater than end
  if ((num > end)); then
    break
  fi
  # If num is greater than or equal to start
  if ((num >= start)); then
    echo "Number in range: $num"
    triangleNumberFound=true
    # If num is even
    if ((num % 2 == 0)); then
      echo "$num is even."
      ((evenProduct *= num))
      ((evenCount++))
     # If num is odd 
    else
      echo "$num is odd."
      ((oddProduct *= num))
      ((oddCount++))
    fi
  fi
  ((n++))
done

# Display product of even and odd numbers
if [[ $triangleNumberFound == true ]]; then
  echo "Product of even numbers: $evenProduct"
  echo "Number of even numbers found: $evenCount"
  echo "Product of odd numbers: $oddProduct"
  echo "Number of odd numbers found: $oddCount"
else
  echo "No triangle numbers were found in the range."
  echo "Product of even numbers: 0"
  echo "Number of even numbers found: 0"
  echo "Product of odd numbers: 0"
  echo "Number of odd numbers found: 0"
fi
