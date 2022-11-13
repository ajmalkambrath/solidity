// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Enum {
    // Solidity supports enumerables and they are useful to model choice and keep track of state.
    // Enums can be declared outside of a contract.
    // Enum representing shipping status
    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }

    // Default value is the first element listed in
    // definition of the type, in this case "Pending"

    Status public status;

    // Returns uint
    // Pending  - 0
    // Shipped  - 1
    // Accepted - 2
    // Rejected - 3
    // Canceled - 4
    
    function getStatus() public view returns (Status) {
        return status;
    }

    // Update status by passing uint into input
    function setStatus(Status _status) public {
        status = _status;
    }

    // You can update to a specific enum like this
    function cancelStatus() public {
        status = Status.Canceled;
    }

    // delete resets the enum to its first value, 0
    function resetStatus() public {
        delete status;
    }

}