function part1() {
  // Start your code here for first part. There is no need to return any value.

  //Variable
  StudentID = "101559700";
  FullName = " Jui-HsinWong";
  LabProfessor = "Professor Leonard";
  LabSessionDay = "Wednesday";
  Semester = "1";

  //encoded function
  function encoded(text) {
    text = text.toString();
    let result = "";

    for (let i = 0; i < text.length; i++) {
      let charCode = text.charCodeAt(i);
      result += String.fromCharCode(charCode + 1);
    }
    return result;
  }

  //style & text and Encoded text
  document.write(`
        <div style="
          position: fixed;
          bottom: 10px;
          right: 10px;
          padding: 10px;
      ">
      <b>Student ID :</b> ${StudentID} 
      <b>Full name:</b> ${FullName}<br>
      <b>Professor's name:</b> ${LabProfessor} 
      <b>Lab session day:</b>${LabSessionDay}
      <br><br>
      <b>Encoded Student ID :</b> ${encoded(StudentID)}
      <b>Encoded Full name:</b> ${encoded(FullName)}<br>
      <b>Encoded Professor's name:</b> ${encoded(LabProfessor)}
      <b>Encoded Lab session day:</b> ${encoded(LabSessionDay)}
      </div>
    `);
}

function part2(num1, num2) {
  // Assign the return value to a variable named _return
  let _return = "";
  // Your code should start here
  //twrist
  num1 += 5;
  num2 -= 3;

  //Comparison Logic
  if (num1 > num2) {
    _return = 1;
  } else if (num1 < num2) {
    _return = -1;
  } else {
    _return = 0;
  }
  /* Your code ends here.
       Don't add or change anything after this line.*/
  return _return;
}

function part3(startNum, endNum) {
  // Assign the return value to a variable named _return
  let _return = "";
  // To hold the sum of numbers for the divisibility condition
  let sum = 0;

  // Comparison Logic
  if (startNum < endNum) {
    for (let i = startNum; i <= endNum; i++) {
      sum += i;
      _return += i;
    }
  } else if (startNum > endNum) {
    for (let i = startNum; i >= endNum; i--) {
      sum += i;
      _return += i;
    }
  } else {
    _return = (startNum + endNum).toString();
    sum = startNum + endNum;
  }

  // Special
  if (sum % 3 == 0) {
    _return = "Magic" + _return;
  }
  /* Your code ends here.
       Don't add or change anything after this line.*/
  return _return;
}

function part4(array_index, array) {
  // Assign the return value to a variable named _return
  let _return = "";
  // Your code should start here

  //check array_index
  if (array_index < 0 || array_index >= array.length) {
    return false;
  }

  //EVEN
  if (array_index % 2 == 0) {
    let sum = 0;
    for (let i = 0; i < array_index; i++) {
      sum += array[i];
    }
    _return = sum;
  }

  //ODD
  if (array_index % 2 == 1) {
    let sum = 0;
    for (let i = array_index + 1; i < array.length; i++) {
      sum += array[i];
    }
    _return = sum;
  }

  //   array is empty part4(0, [])
  if (array.length === 0) {
    _return = false;
  }

  //   the array_index num =0 part4(2, [1, 2, 0, 3, 4])
  if (array[array_index] == 0) {
    _return = true;
  }

  //array_index =0 or array < array_index
  //part4(0, [2, 1, 3])  //part4(2, [1, 2, 3])
  if ((array_index = 0 || array_index == array.length - 1)) {
    _return = 0;
  }

  /* Your code ends here.
       Don't add or change anything after this line.*/
  return _return;
}

function part5(array) {
  // Assign the return value to a variable named _return
  let _return = "";
  // Your code should start here
  //Variable Odd Even and both array
  let evenNumber = [];
  let evenSum = 0;
  let oddNumber = [];
  let oddSum = 0;

  //classify the odd or the even
  for (let num of array) {
    if (num % 2 == 0) {
      evenNumber.push(num);
      evenSum += num;
    } else {
      oddNumber.push(num);
      oddSum += num;
    }
  }

  //seperate the odd and even
  _return = [...oddNumber, ...evenNumber];
  //put the odd at the last array.length -1
  _return.push(oddSum);
  //put the even at the last array.length
  _return.push(evenSum);

  /* Your code ends here.
       Don't add or change anything after this line.*/
  return _return;
}
