"use strict";

function _findNumOfDigits(arg) {
  let count = 0;
  let str = String(arg);
  for (let i = 0; i < str.length; i++) {
    if (/\d/.test(str[i])) {
      count++;
    }
  }
  return count;
}

function _surplus(str) {
  let index = String(str);
  return index;
}

function _strNumbers(array) {
  let numInstr = [];
  for (let i = 0; i < array.length; i++) {
    if (/\d/.test(array[i])) {
      numInstr.push(array[i]);
    }
  }
  return numInstr;
}

function _determineClassGrading(array) {
  let countF = 0;
  let countP = 0;
  let total = 0;
  for (let i = 0; i < array.length; i++) {
    let grade = array[i];
    total += grade;

    if (grade < 50) {
      countF++;
    } else {
      countP++;
    }
  }

  let Avg = array.length;
  if (array.length > 0) {
    Avg = (total / array.length).toFixed(1);
    Avg = parseFloat(Avg);
  } else Avg = 0;
  return [countP, countF, parseFloat(Avg)];
}

let _moveCapitalLetters = (str) => {
  let array = str.split("");
  let Cletter = [];
  let Sletter = [];
  for (let i = 0; i < array.length; i++) {
    if (/[A-Z]/.test(array[i])) {
      Cletter.push(array[i]);
    } else {
      Sletter.push(array[i]);
    }
  }
  return Cletter.concat(Sletter).join("");
};
