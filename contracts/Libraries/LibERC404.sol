// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "../Pandora.sol";

library LibPool {
    function deployERC404Address(address _Owner)
        external
        returns (address)
    {
        Pandora tokenAddress = new Pandora(_Owner);

        return address(tokenAddress);
    }
}