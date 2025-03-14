// 1. filter() ==> method/ creates a new array that pass the test implement by the function
const numbers = [1, 2, 3, 4, 5];
console.log("Numbers: ", numbers);

const filter_numbers = numbers.filter(function (number) {
  return number > 3;
});

console.log("Filter Numbers: ", filter_numbers);

//alternative way by using arrow function
//number > 3 是條件，只有大於 3 的數字（4 和 5）會被加入新陣列。
const numbers1 = [1, 2, 3, 4, 5];
console.log("Numbers: ", numbers1);

const filter_arrow_numbers = numbers1.filter((number) => number > 3);
console.log("Filter Arrow Numbers: ", filter_arrow_numbers);

// String Values
//過濾字串陣列,name.charAt(0).toUpperCase() > "J"，表示篩選首字母大於 J 的名稱。
const names = ["Wong", "Eric", "Nick"];

function filterNames(namesArray) {
  console.log("Filter the array");

  // variableName(input).functionName(function(input){condition});
  const result = namesArray.filter(function (name) {
    const first_char = name.charAt(0).toUpperCase();
    return first_char > "J";
  });
  return result;
}
// calling
console.log("Filtered Names: ", filterNames(names));

// ------------------------------------------------------
//2. Reduce => this method executes a reducer function
//result as single value
//accumulator：累加器（前一次的計算結果）
//currentValue：當前元素
const numbers3 = [1, 2, 3, 4, 5];
const sum = numbers3.reduce((accumulator, currentValue) => {
  return accumulator, currentValue;
}, 0);
console.log("Sum: ", sum);

//example 2 = string
const sentence = "I did my study from GBC College";
const result_string = sentence.split(" ").reduce((accumulator, word) => {
  accumulator[word] = (accumulator[word] || 0) + 1;
  return accumulator;
}, {});

console.log("String: ", result_string);
