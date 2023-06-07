// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract DegenToken is ERC20, Ownable {
    constructor() ERC20("Degen", "DGN") {
_mint(msg.sender, 100*(10**18));
    }
    function burn(address _address , uint256 amount) public {
        _burn(_address , amount) ;
    }
}
