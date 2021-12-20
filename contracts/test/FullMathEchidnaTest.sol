// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

import '../libraries/FullMath.sol';

contract FullMathEchidnaTest {
    function checkH(uint256 x, uint256 y) public pure {
        // if the mul doesn't overflow in 256-bit space, h should be 0
        if (x == 0 || ((x * y) / x == y)) {
            (, uint256 h) = FullMath.fullMul(x, y);
            assert(h == 0);
        }
    }
}
