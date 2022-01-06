const Migrations = artifacts.require("SimpleStorage");

module.exports = function (deployer) {
    deployer.link(Strings, Migrations)
    deployer.deploy(Migrations);
};
