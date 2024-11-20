document.write("<h1>" + "Simple Calculator" + "</h1>");
document.write("<h2>" + "JuiHsin Wong" + " and 101559700" + "</h2>");

let operation = prompt(
  "Menu\n" + "1.(+)\n" + "2.(-)\n" + "3.(*)\n" + "4.(/)\n"
);
let num1 = Number(prompt("Enter your first number:"));
let num2 = Number(prompt("Enter your second number: "));
let total = 0;

if (operation == 1) {
  total = num1 + num2;
  document.write("<h3>" + num1 + " + " + num2 + " = " + total + "</h3>");
} else if (operation == 2) {
  total = num1 - num2;
  document.write("<h3>" + num1 + " - " + num2 + " = " + total + "</h3>");
} else if (operation == 3) {
  total = num1 * num2;
  document.write("<h3>" + num1 + " * " + num2 + " = " + total + "</h3>");
} else if (operation == 4) {
  total = num1 / num2;
  document.write("<h3>" + num1 + " / " + num2 + " = " + total + "</h3>");
} else {
  document.write("<h3>" + "This is a undefind operation" + "</h3>");
  setTimeout(function () {
    location.reload();
  }, 3000);
}
