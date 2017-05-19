pragma solidity ^0.4.2;

contract EmploymentContract {

    mapping (address=>uint) employmentContracts;

    mapping (address=>uint) balances;

    address public employer;

    function EmploymentContract() {
        employer = msg.sender;
        balances[msg.sender] = 10000;
    }

    function addContract(address employee, uint amount) {
        employmentContracts[employee] = amount;
    }

    function removeContract(address employee) {
        delete employmentContracts[employee];
    }

    function getContract(address employee) constant returns (uint salary) {
        return (employmentContracts[employee]);
    }

    function sendCoin(address receiver, uint amount) returns(bool sufficient) {
    if (balances[msg.sender] == 0) return false;
    if (balances[msg.sender] < amount) return false;
		balances[msg.sender] -= amount;
		balances[receiver] += amount;
		return true;
	}

    function getBalance(address addr) returns(uint) {
  	    return balances[addr];
	}

    function checkBalance(address addr) returns(uint balance) {
        return balances[addr];
    }

}
