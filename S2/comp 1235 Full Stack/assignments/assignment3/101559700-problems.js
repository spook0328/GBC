"use strict";
function Circle(radius) {
  if (radius <= 0 || typeof radius != "number") {
    throw new Error("Error parameter!");
  }
  this.radius = radius;

  this.area = function () {
    return parseFloat((Math.PI * this.radius * this.radius).toFixed(2));
  };
  this.perimeter = function () {
    return parseFloat((2 * Math.PI * this.radius).toFixed(2));
  };
}

const calculateSalary = (array) => {
  if (array.length > 7) {
    throw new Error("Error parameter!");
  }
  if (array.some((h) => h < 0)) {
    throw new Error("Error parameter!");
  }
  return array.reduce((sum, h, d) => {
    const weekend = d >= 5;
    const basehours = Math.min(h, 8);
    const extrahours = Math.max(h - 8, 0);

    let dailyPay = basehours * 10 + extrahours * 15;
    if (weekend) dailyPay *= 2;

    return sum + dailyPay;
  }, 0);
};

const indexMultipler = (array) => {
  return array.reduce((sum, value, index) => {
    return sum + value * index;
  }, 0);
};
function filteredJSON([array]) {}

function breakAway(array, n) {}
