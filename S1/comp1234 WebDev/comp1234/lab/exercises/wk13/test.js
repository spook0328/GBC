let array = [2, 3, 4, 6, 23, 6];
let user = "";
let arrayString = "";

do {
  user = prompt("Enter an index between 0 and ${array.length}");
} while (user < 0 || user > array.length);

for (let i = 0; i < array.length; i++) {
  arrayString += array[i];
}
//---------------------
let array2 = [2, 3, 4, 6, 23, 6];
let n = array2.length;
let sumArray = new Array(n + 1);
let total = 0;

console.log("the array:");
console.log(array2);
console.log("sum array:");
console.log(sumArray);

for (let i = 0; i < n; i += 1) {
  total = total + array2[i];
  //switch
  sumArray[i] = the_array[i];
}
sumArray[n];

console.log("sum array:");
console.log(sumArray);
