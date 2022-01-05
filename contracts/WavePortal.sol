// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
    address[] wavers;
    address sender;
    
    constructor() {
    }

    function wave() public {
        totalWaves += 1;
        sender = msg.sender;
        wavers.push(sender);
        console.log("%s has waved!", sender);
    }

    function getWavers() public view returns (address[] memory) {
        for (uint i=0; i < wavers.length; i++) {
            console.log("%s waved", wavers[i]);
        }

        return wavers;
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }
}
