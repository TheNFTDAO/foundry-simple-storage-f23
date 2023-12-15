// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol"; // Next we need to import our actual contract, which is outside of the directory where this script lives.;

//To import from the script directory where the SimpleStorage.sol contract lives, we use the above.
//we are using named imports because we are GAS EFFICIENT!!!
contract DeploySimpleStorage is Script {
    function run() external returns (SimpleStorage) {
        vm.startBroadcast(); // the VM keyword is a foundry specific keyword used to direct commands to the local EVM
        //Run is not a typical blockchain related keyword and is also foundry specific.
        //Everything between these commands is what we want to send to the local RPC.
        SimpleStorage simpleStorage = new SimpleStorage(); // This command creates a new simple storage contract and deploys it to our VM, then the broadcast ends.
        vm.stopBroadcast();
        return simpleStorage;
    }
}
