const Migrations = artifacts.require("HelloWorld");

module.exports = function (deployer) {
  deployer.link(Strings, Migrations)
  deployer.deploy(Migrations);
};
