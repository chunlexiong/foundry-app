// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Whitelist{
    uint8 public maxWhitelistedAddress;

    mapping(address => bool) public whitelistedAddresses;

    uint8 public numAddressesWhitelisted;

    constructor(uint8 _maxWhitelistedAddresses) {
        maxWhitelistedAddress = _maxWhitelistedAddresses;
    }

    function addAddressToWhitelist() public {
        require(!whitelistedAddresses[msg.sender], "Sender has already been whitelisted");

        require(numAddressesWhitelisted < maxWhitelistedAddress, "More addresses cant be added, limit reached");

        whitelistedAddresses[msg.sender] = true;

        numAddressesWhitelisted += 1;
    }
}