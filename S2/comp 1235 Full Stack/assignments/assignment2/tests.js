"use strict";

const chai = window.chai;
const expect = chai.expect;

describe("_findNumOfDigits", () => {
  it("Should returns the count of the number of digits back to the caller", () => {
    expect(_findNumOfDigits(1000)).to.equal(4);
    expect(_findNumOfDigits("abcd")).to.equal(0);
    expect(_findNumOfDigits(12)).to.equal(2);
    expect(_findNumOfDigits("COMP1235")).to.equal(4);
    expect(_findNumOfDigits(0)).to.equal(1);
    expect(_findNumOfDigits("C1O2M3P5")).to.equal(4);
  });
});

describe("_surplus", () => {
  it("returns the original str argument", () => {
    expect(_surplus("orange")).to.equal("orange");
    expect(_surplus("pear")).to.equal("pear");
    expect(_surplus("")).to.equal("");
  });
});

describe("_strNumbers", () => {
  it("returns a new array that contains the string and num or sreturns an empty array", () => {
    expect(_strNumbers(["1a", "a", "2b", "b"])).to.deep.equal(["1a", "2b"]);
    expect(_strNumbers(["abc", "abc10"])).to.deep.equal(["abc10"]);
    expect(_strNumbers(["abc", "ab10c", "a10bc", "bcd"])).to.deep.equal([
      "ab10c",
      "a10bc",
    ]);
    expect(_strNumbers(["this is a test", "test1"])).to.deep.equal(["test1"]);
  });
});

describe("_determineClassGrading", () => {
  it("returns the array containing the number of passing grades, the number of failing grades, and the overall averages of the grades, respectively, back to the caller", () => {
    expect(_determineClassGrading([50, 51, 80, 45])).to.deep.equal([
      3, 1, 56.5,
    ]);
    expect(_determineClassGrading([35, 45, 25, 10, 6, 33])).to.deep.equal([
      0, 6, 25.7,
    ]);
    expect(_determineClassGrading([80, 90])).to.deep.equal([2, 0, 85.0]);
  });
});

describe("_moveCapitalLetters", () => {
  it("returns the uppercase letter and lowercase letters", () => {
    expect(_moveCapitalLetters("hApPy")).to.equal("APhpy");
    expect(_moveCapitalLetters("moveMENT")).to.equal("MENTmove");
    expect(_moveCapitalLetters("shOrtCAKE")).to.equal("OCAKEshrt");
  });
});
