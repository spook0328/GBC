"use strict";

const chai = window.chai;
const expect = chai.expect;

describe("_checkS", () => {
  it("Check the index of * in the password", () => {
    expect(_checkS("ibntij53*")).to.deep.equal(8);
  });
});

//Q1
describe("_findNumOfDigits", function () {
  it("Should returns the count of the number of digits back to the caller", function () {
    expect(_findNumOfDigits(1000)).to.equal(4);
    expect(_findNumOfDigits("abcd")).to.equal(0);
    expect(_findNumOfDigits(12)).to.equal(2);
    expect(_findNumOfDigits("COMP1235")).to.equal(4);
    expect(_findNumOfDigits(0)).to.equal(1);
    expect(_findNumOfDigits("C1O2M3P5")).to.equal(4);
  });
});

/***************************************************************************************
describe('yourFunctionName', () =>  {
    it('please enter your function description here',  () => {
        expect(yourFunctionName(parameters)).to.deep.equal(expected_result)
    })
})
 ***************************************************************************************/
