const Deed = artifacts.require("./Deed.sol");

module.exports = function(deployer, _network, accounts) {
  deployer.deploy(Deed, accounts[1], accounts[2], 30);
};
