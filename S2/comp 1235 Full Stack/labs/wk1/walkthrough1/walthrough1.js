alert("Welcome to the website");
//Right clicke + Inspect Element , F12
//console : hidden representation of the o/p
console.log("Welcome to page --- Wong");
// console.log("This space is for debugging");

//declare a var : let
let car_name = "Car";
//declare a constant : const
const number = 0.13;
//boolean(true/false)
let todaty = true;
//array
let friendABC = ["abc", "cde", "dfg"];
let num = [1, 2, 3];

// The datatype of first_name is: string
let first_name = prompt("Please enter your name");
// Concatenation with the + symbol
document.write("Your name is: " + first_name);

// Double/float
let price;
price = null;
document.write("<br>The price is: " + price + "<br>");

// Constants - this value is not changable
const TAX = 0.13;

// Integer value
let age = 17;

// Boolean
let is_registered = true;

// Array - the values are changable even though it's a const
const friends = ["Lee", "Sarah", "Ali", "Abbas"];

if ((age !== 5 || age > 18) && age < 80) {
  document.write("<br>You are of legal age, but a young person<br>");
} else if (age > 13) {
  document.write("<br>You are a teenager<br>");
} else if (age === 5) {
  document.write("You are 5 years old");
} else if (age !== 5) {
  document.write("You are not 5 years old");
} else {
  document.write("<br>You are a child<br>");
}
