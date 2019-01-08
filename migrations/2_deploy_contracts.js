var PermissionManager = artifacts.require("./PermissionManager.sol");

module.exports = function(deployer) {
  deployer.deploy(PermissionManager);
};
