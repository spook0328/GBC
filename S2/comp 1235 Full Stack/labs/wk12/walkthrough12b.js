//Step 1: Define the function
function Img(title, src, content) {
  this.title = title;
  this.src = src;
  this.content = content;
}

//step 2: Create the Markup
Img.prototype.makeMarkup = function () {
  return `<div> <img src ="${this.src}" 
    content ="${this.content}"
    title = "${this.title}"
    >
    </div>`;
};

//Step3 : Load the File/Content with Dom element
Img.prototype.makeElement = function () {
  let ImgDiv = document.createElement("div");
  ImgDiv.innerHTML = this.makeMarkup();
  return ImgDiv;
};

//Step 4: Load the page addEventListener
document.addEventListener("DOMContentLoaded", () => {
  const bodyElement = document.querySelector("body");
  const i1 = new Img(
    "GBC",
    "https://learn.georgebrown.ca/d2l/lp/navbars/6606/theme/viewimage/1154/view?v=20.25.3.18517",
    "This is the Content"
  );
  bodyElement.appendChild(i1.makeElement());
});
