//1. Dimensions(1-D. 2-D) or Arrays
const oned = [1, 2, 3];
console.log("One-D: ", oned);

let twod = [
  ["a", "b", "c"], //0
  [1], //1
  [5, 8, 9], //2
];
console.log("Two-D: ", twod);

//2. Length of array
console.log("Length of One-D", oned.length); //console.log 3
console.log("Length of 3rd element in twod ", twod[2].length); //console.log 3

//to define the length without specifying elements
let a = []; // empty array
console.log(a);

//No elements found, Neither empty
let without_length = new Array(5);
console.log(without_length); // 輸出 [empty × 5]，表示建立了一個長度為 5 的空陣列

//other way
let b = []; //empty array => empty element exist
console.log(b);

//這段程式碼是在講 變數的作用域（Scope of a Variable），
// 也就是變數在程式中的可見範圍。主要分為 全域變數（Global Variable） 和 區域變數（Local Variable）。

//2. Scope of a variable => 1. Local, 2. Global
//example of function

//steps to make a global var in function
//1) write at the top/declare before the function
//2) Pass the var in arguments
let c = 5; // Global Var

function outer(d) {
  console.log("Outer function: " + c);
  //   let a = 5;
  //   console.log("Outer function: " + a);
  function inner() {
    let b = 10;
    console.log("Inner function: " + b); // local var
    console.log("Inner function: " + c); // Global Var
    console.log("Inner function: " + d); // Global Var
  }
  inner();
}
//calling
outer(); //within function
console.log("GBC"); //D is a Globar var
console.log("C: " + c);
console.log("b: " + b); //empty bcoz local scope

//3. Create a Class named "Customer"
//SYNYAX => class Name_of_class{}
//Pass 3 parameters/args => name, address, city
//
class Customer {
  constructor(name, address, city) {
    //this keywords
    this.name = name;
    this.address = address;
    this.city = city;
  }
}

//Calling with new keyword
const cus1 = new Customer("Eric", "Taipei...", "TAI");
console.log("Customer1: ", cus1);
const cus2 = new Customer("Test", "Test...", "Test");
console.log("Customer2: ", cus2);

//4. Call back function SumandAverage()
function SumandAverage(numbers, callback) {
  let sum = 0;
  for (i = 0; i < numbers.length; i++) {
    sum += numbers[i];
  }
  let avg = sum / numbers.length;
  callback(sum, avg);
}
// 定義回呼函式 Call back
function logSumavg(sum, avg) {
  console.log("Sum:", sum);
  console.log("Avg:", avg);
}
SumandAverage([1, 2], logSumavg);

//5. JSON
const person = {
  name: "Wong",
  age: 21,
  city: "Taipei",
};
//strignify => converts the
const con_string = JSON.stringify(person);
console.log(con_string);
//converts the json to object => parse
const obj_json = JSON.parse(con_string);
console.log(obj_json);
