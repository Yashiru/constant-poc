// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.21;

contract ConstantArray {
    constructor() {
    }
    
    function codeLength() external pure returns (uint256 length) {
        assembly {
            length := codesize()
        }
    }
}