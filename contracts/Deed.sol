// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Deed{
	address public sender;
	address payable public reciver;
	uint public time;


	constructor(address _sender, address payable _reciver, uint _time) payable  {
		sender = _sender;
		reciver = _reciver;
		time = block.timestamp + _time;
	}


	function withdraw() public {
		require(sender == msg.sender, "only authorized user");
		require(block.timestamp >= time, "too early to withdraw");
		reciver.transfer(address(this).balance);
	}

}