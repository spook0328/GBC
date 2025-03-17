"use strict";

const chai = window.chai;
const expect = chai.expect;

describe("Circle", () => {
  it("should return 28.27 & 18.85", () => {
    const c = new Circle(3);
    expect(c.area()).to.deep.equal(28.27);
    expect(c.perimeter()).to.deep.equal(18.85);
  });
  it("should return 153.94 & 43.98", () => {
    const c = new Circle(7);
    expect(c.area()).to.deep.equal(153.94);
    expect(c.perimeter()).to.deep.equal(43.98);
  });
  it("should return 254.47 & 56.55", () => {
    const c = new Circle(9);
    expect(c.area()).to.deep.equal(254.47);
    expect(c.perimeter()).to.deep.equal(56.55);
  });
});

describe("calculateSalary", () => {
  it("should return 400", () => {
    expect(calculateSalary([8, 8, 8, 8, 8, 0, 0])).to.equal(400);
  });
  it("should return 410", () => {
    expect(calculateSalary([10, 10, 10, 0, 8, 0, 0])).to.equal(410);
  });
  it("should return 280", () => {
    expect(calculateSalary([0, 0, 0, 0, 0, 12, 0])).to.equal(280);
  });
});

describe("indexMultipler", () => {
  it("should return 40", () => {
    expect(indexMultipler([1, 2, 3, 4, 5])).to.equal(40);
  });
  it("should return -2", () => {
    expect(indexMultipler([-3, 0, 8, -6])).to.equal(-2);
  });
  it("should return -34", () => {
    expect(indexMultipler([15, 16, -100, 50])).to.equal(-34);
  });
});

describe("filteredJSON", () => {
  it("should return 40", () => {
    expect(filteredJSON([{ id: 1, u: " batman" }])).to.deep.equal([]);
  });
  it("should return -2", () => {
    expect(filteredJSON([{ id: 11, u: "spidey" }])).to.deep.equal([
      { id: 11, u: "spidey" },
    ]);
  });
  it("should return -34", () => {
    expect(
      filteredJSON([
        { id: 1, u: "batman" },
        { id: 11, u: "spidey" },
      ])
    ).to.deep.equal([{ id: 11, u: "spidey" }]);
  });
});

describe("breakAway", () => {
  it("should return [2, 3], [4, 5]", () => {
    expect(breakAway([2, 3, 4, 5], 2)).to.deep.equal([
      [2, 3],
      [4, 5],
    ]);
  });
  it("should return [2,3],[4,5],[6] ", () => {
    expect(breakAway([2, 3, 4, 5, 6], 2)).to.deep.equal([[2, 3], [4, 5], [6]]);
  });
  it("should return [2,3,4],[5,6,7]", () => {
    expect(breakAway([2, 3, 4, 5, 6, 7], 3)).to.deep.equal([
      [2, 3, 4],
      [5, 6, 7],
    ]);
  });
  it("should return  [2],[3],[4],[5]", () => {
    expect(breakAway([2, 3, 4, 5], 1)).to.deep.equal([[2], [3], [4], [5]]);
  });
  it("should return [2,3,4,5,6,7]", () => {
    expect(breakAway([2, 3, 4, 5, 6, 7], 7)).to.deep.equal([
      [2, 3, 4, 5, 6, 7],
    ]);
  });
});
