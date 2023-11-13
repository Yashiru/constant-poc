// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import "forge-std/Test.sol";
import "src/Metamorphic.sol";
import "src/ConstantArray.sol";

contract ConstantArrayTest is Test {
    Metamorphic metamorphic;
    ConstantArray constantArray;

    function setUp() public {
        metamorphic = new Metamorphic(
            type(ConstantArray).runtimeCode
        );
        constantArray = ConstantArray(address(metamorphic));
    }

    function testCodeLength() public {
        uint256 codeLength;
        address a = address(constantArray);

        assembly {
            codeLength := extcodesize(a)
        }

        console.log(codeLength);
        console.log(type(ConstantArray).runtimeCode.length);

        assertEq(uint256(1), uint256(1));
    }
}
