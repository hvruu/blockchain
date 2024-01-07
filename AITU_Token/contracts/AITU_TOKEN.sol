solidity

// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract AITU_Token is ERC20, Ownable {
    using SafeMath for uint256;

    // Mapping to store transaction block timestamps
    mapping(uint256 => uint256) private transactionTimestamps;
    // Mapping to store transaction receivers
    mapping(uint256 => address) private transactionTo;

    constructor() ERC20("AITU_Token", "UTK") {}

    // Function to get the timestamp of the last transaction block in a readable format
    function getLastTransactionTimestamp() external view returns (string memory) {
        require(totalSupply() > 0, "No transactions yet");
        uint256 lastTransactionBlock = totalSupply() - 1;
        uint256 timestamp = transactionTimestamps[lastTransactionBlock];
        return formatTimestamp(timestamp);
    }

    // Function to get the address of the transaction sender
    function getTransactionSender() external view returns (address) {
        require(totalSupply() > 0, "No transactions yet");
        uint256 lastTransactionBlock = totalSupply() - 1;
        return _msgSender();
    }

    // Function to get the address of the transaction receiver
    function getTransactionReceiver() external view returns (address) {
        require(totalSupply() > 1, "No transactions yet");
        uint256 lastTransactionBlock = totalSupply() - 2;
        return transactionTo[lastTransactionBlock];
    }

    // Function to store the block timestamp and receiver address before transferring tokens
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal {
        super._beforeTokenTransfer(from, to, amount);
        uint256 currentTransactionBlock = totalSupply();
        transactionTimestamps[currentTransactionBlock] = block.timestamp;
        transactionTo[currentTransactionBlock] = to;
    }

    // Private function to format the timestamp into a readable format
    function formatTimestamp(uint256 timestamp) private pure returns (string memory) {
        return string(abi.encodePacked(timestamp.toString(), " seconds since the Unix epoch"));
    }
}