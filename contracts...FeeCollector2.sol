// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract FeeCollector2  {
    address public owner;
    uint256 public balance;
    
    event TransferReceived(address _from, uint _amount);
    event TransferSent(address _from, address _destAddr, uint _amount);
    
    constructor() {
        owner = msg.sender;
    }
    
    receive() payable external {
        balance += msg.value;
        emit TransferReceived(msg.sender, msg.value);
    }    

    function transferERC20(IERC20 token, address to, uint256 amount) public {
        require(msg.sender == owner, "Only owner can withdraw funds"); 
        uint256 erc20balance = token.balanceOf(address(this));
        require(amount <= erc20balance, "balance is low");
        token.transfer(to, amount);
        emit TransferSent(msg.sender, to, amount);
        }   
    function phase1Complete(bool phase1Completed, IERC20 token, address to, uint256 amount) public {
        if (phase1Completed == true) {
            require(msg.sender == owner, "Only owner can withdraw funds"); 
            uint256 erc20balance = token.balanceOf(address(this));
            require(amount <= erc20balance, "balance is low");
            token.transfer(to, amount);
            emit TransferSent(msg.sender, to, amount);
        }
    }
    function phase2Complete(bool phase2Completed, IERC20 token, address to, uint256 amount) public {
        if (phase2Completed == true) {
            require(msg.sender == owner, "Only owner can withdraw funds"); 
            uint256 erc20balance = token.balanceOf(address(this));
            require(amount <= erc20balance, "balance is low");
            token.transfer(to, amount);
            emit TransferSent(msg.sender, to, amount);
        }
    }
    function phase3Complete(bool phase3Completed, IERC20 token,address to, uint256 amount) public {
        if (phase3Completed == true) {
            require(msg.sender == owner, "Only owner can withdraw funds"); 
            uint256 erc20balance = token.balanceOf(address(this));
            require(amount <= erc20balance, "balance is low");
            token.transfer(to, amount);
            emit TransferSent(msg.sender, to, amount);
        }
    }
    function phase4Complete(bool phase4Completed, IERC20 token, address to, uint256 amount) public {
        if (phase4Completed == true) {
            require(msg.sender == owner, "Only owner can withdraw funds"); 
            uint256 erc20balance = token.balanceOf(address(this));
            require(amount <= erc20balance, "balance is low");
            token.transfer(to, amount);
            emit TransferSent(msg.sender, to, amount);
        }
    }
}