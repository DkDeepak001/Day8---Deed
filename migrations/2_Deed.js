const Deed = artifacts.require("./Deed.sol");

module.exports = function(deployer, _network, accounts) {
  deployer.deploy(Deed, accounts[0], accounts[1], 5 , {value:100});
};
