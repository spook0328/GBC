"use strict";

const chai = window.chai;
const expect = chai.expect;

describe("yourFunctionName()", () => {
  it("The async/await function description", async () => {
    expect(await getRandomNumber()).to.be.closeTo(1, 4);
  });
});

describe("yourFunctionName()", () => {
  it("The async/await function description", async () => {
    expect((await getCityData("Toronto")).longt).to.deep.equal("-79.41946");
    //expect((await getCityData("Ottawa")).longt).to.deep.equal("-75.70914");
    //expect((await getCityData("New York")).longt).to.deep.equal("-73.97449");
  });
});

describe("yourFunctionName()", () => {
  it("The async/await function description", async () => {
    expect(await fetchProducts(1)).to.deep.equal(
      "Essence Mascara Lash Princess"
    );
    expect(await fetchProducts(12)).to.deep.equal("Annibale Colombo Sofa");
    expect(await fetchProducts(50)).to.deep.equal("Black Whisk");
    expect(await fetchProducts(1000)).to.deep.equal(
      "Could not get products: Error: HTTP error: 404"
    );
  });
});

describe("yourFunctionName()", () => {
  it("The async/await function description", async () => {
    expect(await searchStorePrice("chicken noodle soup")).to.deep.equal(1.89);
    expect(await searchStorePrice("tomato soup")).to.deep.equal(1.4);
    expect(await searchStorePrice("spam")).to.deep.equal(2.85);
    expect(await searchStorePrice("refried beans")).to.deep.equal(0.99);
  });
});

describe("yourFunctionName()", () => {
  it("The async/await function description", async () => {
    expect((await getStarWarsCharacters()).characters["R2-D2"]).to.deep.equal(
      "https://swapi.dev/api/people/3/"
    );
    expect((await getStarWarsCharacters()).characters["C-3PO"]).to.deep.equal(
      "https://swapi.dev/api/people/2/"
    );
    expect(
      (await getStarWarsCharacters()).characters["Luke Skywalker"]
    ).to.deep.equal("https://swapi.dev/api/people/1/");
  });
});
