
pragma solidity ^0.8.0;

contract Whitelist {
    uint8 public maxWhitelistedAddresses;

		mapping(address => bool) public whitelistedAdresses;

		uint8 public numAddressesWhitelisted;

		constructor(uint8 _maxWhitelistedAddresses) {
			maxWhitelistedAddresses = _maxWhitelistedAddresses;
		}

		function addAddressToWhitelist() public {
			require(numAddressesWhitelisted <= maxWhitelistedAddresses, "No More Whitelists allowed.");
			require(!whitelistedAdresses[msg.sender], "Already whitelisted.");
			whitelistedAdresses[msg.sender] = true;
			numAddressesWhitelisted++;

		}
}