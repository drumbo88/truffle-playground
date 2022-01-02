const SimpleStorage = artifacts.require("SimpleStorage");

/*
 * uncomment accounts to access the test accounts made available by the
 * Ethereum client
 * See docs: https://www.trufflesuite.com/docs/truffle/testing/writing-tests-in-javascript
 */
contract("SimpleStorage", function (accounts) {
  it("Should update data", async function () {
    //await SimpleStorage.deployed();
    const storage = await SimpleStorage.new()
    await storage.updateData(10)
    const data = await storage.readData()
    return data.toString() === '10';
  });
  it("Should update data 2", async function () {
    //await SimpleStorage.deployed();
    const storage = await SimpleStorage.new()
    await storage.updateData("10")
    const data = await storage.readData()
    return data.toString() === '10';
  });
});
