// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Panagram} from "../src/Panagram.sol";
import {HonkVerifier} from "../src/Verifier.sol";
import {Script} from "forge-std/Script.sol";

contract DeployPanagram is Script {
    function run() external {
        vm.startBroadcast();

        // Deploy verifier
        HonkVerifier verifier = new HonkVerifier();

        // Deploy Panagram with the verifier
        Panagram panagram = new Panagram(verifier);

        vm.stopBroadcast();
    }
}
