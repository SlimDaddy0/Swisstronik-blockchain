// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

// Uncomment this line to use console.log
// import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract SlimDaddy is ERC20, Ownable {
    constructor(uint256 initialSupply) ERC20("SlimDaddy", "SLMD") {
        _mint(msg.sender, initialSupply * 10 ** decimals());
    }

    function transferToSwisstronik(address _to, uint256 _amount) public onlyOwner {
        transfer(_to, _amount);
    }
}
