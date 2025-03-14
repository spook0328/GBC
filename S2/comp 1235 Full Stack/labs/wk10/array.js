//Part B
const ages = [12, 12];

function calculateAge(ageArray) {
  const tage = ageArray.reduce((a, b, index) => {
    if (index === 0) {
      return a + b;
    } else {
      return a + b + index;
    }
  }, 0);
  return tage;
}

// create one DDI Describe Describe IT
describe("array", function () {
  describe("calculateAge", () => {
    it("This is the funtion Reduce,", () => {
      expect(calculateAge(ages)).to.deep.equal(25);
    });
  });
});
