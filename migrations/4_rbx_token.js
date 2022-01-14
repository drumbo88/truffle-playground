const Migrations = artifacts.require("RbxToken");

module.exports = function (deployer) {
    deployer.link(Strings, Migrations)
    deployer.deploy(Migrations);
};
