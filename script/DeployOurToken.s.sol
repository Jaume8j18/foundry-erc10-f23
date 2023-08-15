// SPDX-License-Identifier: MIT
// SPDX-License-identifier: MIT

pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {OurToken} from "../src/OurToken.sol";
contract DeployOurToken is Script {
    uint256 public constant INITIAL_SUPPLY = 1000 ether; // 1 million tokens with 18 decimal places
    uint256 public DEFAULT_ANVIL_PRIVATE_KEY =
        //HERE THERE SHOULD BE THE ANVIL PRIVATE KEY;
    uint256 public deployerKey;

    function run() external returns (OurToken) {
        
        vm.startBroadcast();
        OurToken ourToken = new OurToken(INITIAL_SUPPLY);
        vm.stopBroadcast();
        return ourToken;
    }
}