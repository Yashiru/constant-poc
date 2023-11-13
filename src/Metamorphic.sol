// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.21;

import "forge-std/console.sol";

contract Metamorphic {
    constructor(bytes memory _runtimeCode) {

        console.logBytes(_runtimeCode);

        assembly {
            // Return the size of the runtime code with the calldata concatenated
            return(0, calldatasize())
        }
    }
}