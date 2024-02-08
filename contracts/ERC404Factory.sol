//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "./ERC404.sol";
import "./Pandora.sol";

contract ERC404Factory {
    event deployedAddress(
        address indexed ERC404Address,
        address indexed deployer
    );

    function deployERC404(
            string memory _name,
            string memory _symbol,
            uint256 _totalNativeSupply,
            address _owner
        ) public {
        Pandora ERC404Address = new Pandora(_name, _symbol, _totalNativeSupply, _owner);
        emit deployedAddress(address(ERC404Address), msg.sender);
    }

}