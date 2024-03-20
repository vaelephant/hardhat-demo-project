// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;
import "hardhat/console.sol";

contract Gas {
    uint256 public number;

    function setNumber(uint256 _num) public {
        number = _num;
    }

    function getNumber() public view returns (uint256) {
        return number;
    }

    function loop(uint256 _num) public view returns (uint256) {
        uint256 begin = gasleft();
        uint256 iResult = 0;
        for (uint i = 0; i < _num; i++) {
            iResult = iResult + 1;
        }
        uint256 gasUsed = begin - gasleft();
        console.log("gasUsed: " ,gasUsed);
        return iResult;
    }
}
