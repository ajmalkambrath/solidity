// SPDX-License-Identifier: UNLICENSED 

pragma solidity ^0.8.0;

contract HelloWorld {
    string public greet = "Hello World";
}

// 1. SPDX license identifiers
// Solidity 0.6.8 introduces machine-readable SPDX license identifiers so developers can specify the license of the contract uses.
// Eg: License-Identifier: MIT / GPL-3.0 / UNLICENSED  
// The license should be from one of the following: https://spdx.org/licenses/

// 2. pragma keyword
// The pragma keyword is used to enable certain compiler features or checks.
// A pragma directive is always local to a source file, so you have to add the pragma to all your files if you want to enable it in your whole project.
// If you import another file, the pragma from that file does not automatically apply to the importing file.
// Usage::
// pragma solidity 0.8.0;
// pragma solidity ^0.8.0;
// pragma solidity >=0.7.0 <0.9.0;
// pragma abicoder v1 | pragma abicoder v2
// pragma experimental ABIEncoderV2 | Up to Solidity 0.7.4, it was possible to select the ABI coder v2 by using like this