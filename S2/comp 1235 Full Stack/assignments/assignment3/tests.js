"use strict";

const chai = window.chai;
const expect = chai.expect;

Describe("Circle", () => {
  it("should calculate correct area and perimeter for radius 3", () => {
    const c = Circle(3);
    expect(c.area()).to.deep.equal(28.27);
    expect(c.perimeter()).to.deep.equal(18.85);
  });
  it("should calculate correct area and perimeter for radius 7", () => {
    expect(c.area()).to.deep.equal(153.97);
    expect(c.perimeter()).to.deep.equal(43.98);
  });
  it("should calculate correct area and perimeter for radius 9", () => {
    expect(c.area()).to.deep.equal(254.47);
    expect(c.perimeter()).to.deep.equal(56.55);
  });
});
/***************************************************************************************
 Testing TEMPLATES

 //To test a regular function
 describe('yourFunctionName', () =>  {
    it('please enter your function description here',  () => {
        expect(yourFunctionName(parameters)).to.deep.equal(expected_result);
    })
})

 //To test async/await functions
 describe('yourFunctionName()', () =>  {
    it('The async/await function description',  async () => {
          expect(await yourFunctionName()).to.deep.equal(expected_result);
    })
})
 ***************************************************************************************/
