import { c } from "./walkthrough11c.js";
console.log("File A: ", c);
// 這樣會有錯誤，因為要import

//only shows if Filename 11b.js is coming first.
console.log("File A: ", b);

// Topic1: Async Function
// KeyWord => async : return the o/p with a promise
async function promiseReturn() {
  return "This is a promise Object";
}
// Calling
const p1 = promiseReturn();
console.log("Async Function: ", p1);

//Topic2: Await
//wait to get the promise task done
// keyword: await
async function processData() {
  try {
    const data = await fetchdate();
    console.log("data is received", data);
  } catch (e) {
    console.log("error: ", e);
  }
}
//Calling
console.log("Await Processing1... ", processData());
console.log("Await Processing2... ", promiseReturn());

function promiseReturn1() {
  return Promise.resolve("This is a promise Object after awaiting");
}
console.log("Resolved promise1: ", promiseReturn1());
