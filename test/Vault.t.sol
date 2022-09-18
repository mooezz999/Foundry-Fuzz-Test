// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Vault.sol";

contract VaultTest is Test {
    Vault public vault;

    function setUp() public {
        vault = new Vault("Maxypaxy");
    }

    function testFuzz_VaultPassword(bytes32 pass) public {
        vault.unlock(pass);
        assertTrue(vault.s_locked());
    }
}
