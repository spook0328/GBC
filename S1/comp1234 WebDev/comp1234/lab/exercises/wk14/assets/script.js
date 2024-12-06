function highlight() {
  let column = document.getElementById("highlight").value;
  console.log(column);
  let selectcol = "";
  switch (parseInt(column)) {
    case 1:
      selectcol = document.querySelector("col.col1");
      break;
    case 2:
      selectcol = document.querySelector("col.col2");
      break;
    case 3:
      selectcol = document.querySelector("col.col3");
      break;
    case 4:
      selectcol = document.querySelector("col.col4");
      break;

    case 5:
      selectcol = document.querySelector("col.col5");
      break;
    case 6:
      selectcol = document.querySelector("col.col6");
      break;
    default:
      alert("please enter a number between 1 and 6.");
      break;
  }
  console.log(selectcol);
  selectcol.classList.add("highlight");
}

function unhighlight() {
  let column = document.getElementById("highlight").value;
  console.log(column);
  let col = "col.col" + column;
  console.log(col);
  let selectcol = document.querySelector(col);
  selectcol.classList.remove("highlight");
}
