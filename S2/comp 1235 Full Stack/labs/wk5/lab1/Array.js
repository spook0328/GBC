// "use Script" => We have to Utilize the external
describe("Array", function () {
  //POP => remove something from given data
  //Describe => Elaborate the return values
  describe(".pop", function () {
    //   it(".pop", function () {});
    //it=> purpose of creating rhe function
    it("Should remove last item", function () {
      var arr1 = [1, 2, 3];
      expect(arr1.pop()).to.equal(3);
      expect(arr1.pop()).to.equal(2);
    });
  });
});
