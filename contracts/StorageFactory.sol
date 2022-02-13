// SPDX-License-Identifier: MIT
import "./SimpleStorage.sol";
pragma solidity ^0.8.0;

contract StorageFactory is SimpleStorage { // inherit from SimpleStorage

    SimpleStorage[] public simplestoragearray;
    function createSimpleStorageContract() public {
        SimpleStorage obj = new SimpleStorage();
        simplestoragearray.push(obj);
    }

    function sfStore(uint256 _simplestorageindex, uint256 _simplestoragenumber) public {
        // address to interact with (simplestorage.sol file address)
        // ABI - Application Binary Interface
        // SimpleStorage obj = SimpleStorage(address(simplestoragearray[_simplestorageindex]));
        // obj.store(_simplestoragenumber);
        SimpleStorage(address(simplestoragearray[_simplestorageindex])).store(_simplestoragenumber);
    }

    function sfGet(uint256 _simplestorageindex) public view returns (uint256) {
        // SimpleStorage obj = SimpleStorage(address(simplestoragearray[_simplestorageindex]));
        // return obj.retrieve();
        return SimpleStorage(address(simplestoragearray[_simplestorageindex])).retrieve();
    }
}