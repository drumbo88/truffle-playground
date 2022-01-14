const Migrations = artifacts.require("MyExchangeTransferToken");

module.exports = function (deployer) {
    deployer.link(Strings, Migrations)
    deployer.deploy(Migrations);
};
