const Migrations = artifacts.require("MyExchange");

module.exports = function (deployer) {
    deployer.link(Strings, Migrations)
    deployer.deploy(Migrations);
};
