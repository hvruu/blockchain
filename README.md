Overview

The AITU_Token is an ERC-20 token specifically designed for representing university-related assets on the Ethereum blockchain. It builds upon the OpenZeppelin ERC-20 implementation while introducing custom functionalities, notably the tracking of transaction timestamps and receiver addresses.

Features

ERC-20 Standard Compliance: AITU_Token adheres to the ERC-20 standard, ensuring compatibility and interoperability within the Ethereum ecosystem.

Transaction Timestamp Tracking: The token includes the ability to track transaction timestamps, providing insight into the timing of transactions in a human-readable format.

Sender and Receiver Address Retrieval: AITU_Token enables users to retrieve the Ethereum addresses of both the transaction sender and receiver, enhancing transparency and record-keeping.

Usage

To utilize AITU_Token, deploy it on the Ethereum blockchain using tools like Remix or Truffle, along with an Ethereum wallet such as Metamask.

Functions
 
![image](https://github.com/hvruu/blockchain/assets/122508256/a86a59ff-3a10-4380-9f59-45c1c15e34f6)

getLastTransactionTimestamp

Description: Returns the timestamp of the latest transaction block in a human-readable format.
Usage: Call this function to obtain the timestamp of the most recent transaction. 


 
![image](https://github.com/hvruu/blockchain/assets/122508256/63339efd-af0a-4e6e-9161-84e69a690d32)

getTransactionSender

Description: Retrieves the address of the transaction sender.
Usage: Employ this function to acquire the Ethereum address of the sender in the latest transaction. 


 
![image](https://github.com/hvruu/blockchain/assets/122508256/7d229baf-e189-413f-ad8a-cf1fee0fd808)

getTransactionReceiver

Description: Retrieves the address of the transaction receiver.
Usage: This function returns the Ethereum address of the receiver in the second-to-last transaction.
