"use strict";

function _checkS(password) {
  return password.indexOf("*");
}

function _findNumOfDigits(arg) {
  let count = 0;
  let str = String(arg);
  for (let i = 0; i < str.length; i++) {
    if (/^\d$/.test(str[i])) {
      count++;
    }
  }
  return count;
}

function _surplus(str) {
  let inner = String(str);
  return inner;
}

function _strNumbers(array) {
  return array.filter((str) => /\d/.test(str));
}
