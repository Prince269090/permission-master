var PermissionManager = artifacts.require("PermissionManager.sol");
contract("PermissionManager", async function (accounts) {
  it("grants permission to account", async function () {
    var instance = await PermissionManager.deployed();                        
    var result = await instance.grantPermissionTo(accounts[1], {
      from: accounts[0]
    });
    assert.equal(result.receipt.status, true);
  });

  it("validate permission", async function () {
    var instance = await PermissionManager.deployed();                        
    var result = await instance.hasPermissionFromOtherUser.call({
      from: accounts[1]
    });
    assert.equal(result, true);
  });

  it("revoke permission from account", async function () {
    var instance = await PermissionManager.deployed();                        
    var result = await instance.revokePermission(accounts[1], {
      from: accounts[0]
    });
    assert.equal(result.receipt.status, true);
  });

  it("validate revoke permission", async function () {
    var instance = await PermissionManager.deployed();                        
    var result = await instance.hasPermissionFromOtherUser.call({
      from: accounts[1]
    });
    assert.equal(result, false);
  });
  
});