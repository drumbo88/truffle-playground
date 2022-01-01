const Migrations = artifacts.require("Migrations");
const Strings = require("../libs/Strings.sol");

module.exports = function (deployer) {
  deployer.deploy(Migrations);
  deployer.deploy(Strings);
};
