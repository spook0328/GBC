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
