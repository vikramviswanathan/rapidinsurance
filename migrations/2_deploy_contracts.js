var EmploymentContract = artifacts.require("./EmploymentContract.sol");

module.exports = function(deployer) {
  deployer.deploy(EmploymentContract);
};
