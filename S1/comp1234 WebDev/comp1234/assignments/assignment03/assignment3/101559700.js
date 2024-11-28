function part1() {
  // Start your code here for first part. There is no need to return any value.
  StudentID = "101559700";
  FullName = " Jui-HsinWong";
  LabProfessor = "Professor Leonard";
  LabSessionDay = "Wednesday";
  Semester = "1";

  function encoded(text) {
    text = text.toString();
    let result = "";

    for (let i = 0; i < text.length; i++) {
      let charCode = text.charCodeAt(i);
      result += String.fromCharCode(charCode + 1);
    }
    return result;
  }

  document.write(`
        <div style="
          position: fixed;
          bottom: 10px;
          right: 10px;
          padding: 10px;
      ">
      <b>Student ID :</b> ${StudentID} <b>Full name:</b> ${FullName}<br>
      <b>Professor's name:</b> ${LabProfessor}<b>Lab session day:</b>${LabSessionDay}
      <br><br>
      <b>Encoded Student ID :</b> ${encoded(
        StudentID
      )} ; <b>Encoded Full name:</b> ${encoded(FullName)}  <br>
      <b>Encoded Professor's name:</b> ${encoded(
        LabProfessor
      )}  ; <b>Encoded Lab session day:</b> ${encoded(LabSessionDay)}
      </div>
    `);
}

function part2(num1, num2) {
  // Assign the return value to a variable named _return
  let _return = "";
  // Your code should start here
  num1 += 5;
  num2 -= 3;

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

  //   part4(0, [])
  if (array.length === 0) {
    _return = false;
  }

  //   part4(2, [1, 2, 0, 3, 4])
  if (array[array_index] == 0) {
    _return = true;
  }

  //part4(0, [2, 1, 3])
  //part4(2, [1, 2, 3])
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
  let odd = 0;
  let n = array.length;
  let oddArray = new Array(n + 1);

  for (let i = 0; i < array.length; i += 1) {
    if (array[i] % 2 == 0) {
      odd = odd + array[i];
      oddArray[i] = array[i];
    } else {
      odd.push(array[i]);
    }
  }
  _return = oddArray[n];

  console.log(odd);
  console.log(_return);
  /* Your code ends here.
       Don't add or change anything after this line.*/
  return _return;
}
