//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "./ERC404.sol";
import "./Pandora.sol";

// import "./Libraries/LibERC404.sol";

contract ERC404Factory {
    event deployedAddress(
        address indexed ERC404Address,
        address indexed deployer,
        uint256 indexed id
    );

    uint public Id;

    mapping(uint256 => address) public TokenFactory;

    function deployERC404(address _owner) public returns(address) {
        // Increment ID counter
        uint256 Id_ = ++Id;


        // address ERC404Address = LibPool.deployERC404Address(
        //     _owner
        // );

        Pandora ERC404Address = new Pandora(_owner);

        TokenFactory[Id_] = address(ERC404Address);

        emit deployedAddress(address(ERC404Address), msg.sender, Id_);
        return address(ERC404Address);
    }
}