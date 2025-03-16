"use strict";
function Circle(radius) {
  //Circumference formula 2 pi r
  // area formula pi r*r
  if (radius <= 0 || typeof radius != "number") {
    console.log("Error parameter!");
  }

  this.area = function (params) {
    return Math.PI * radius * radius;
  };
}
const ACircle = new Circle(5);
console.log("Area: ", ACircle.area());
