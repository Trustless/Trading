# Trustless Tokens & Trading

### Token Management for Humans... and otherwise. 

TTT provides the user an API for minting, monitoring, or manipulating any number of fungible (ERC20-like)or nonfungible token (NFTs) styles, even SBTs! This aims to be the penultimate step in blockchain token management and we intend to use the community's feedback on this project to reach the final rung.

Heavily adapted from open source code originally developed by the Ethereum Community especially Geordi B. (you know who you are), research catalysed by ConsenSys, bravery by Slock.it, and security considerations by Open Zeppelin namely: ERC20, TheDAO, MiniMe, ERC721, ERC777, and very notably the ERC1155.


## The Solidity

[Trustless Tokens](trustlessTokens.sol) is built to be Ethereum token minting-as-a-service residing completely on the blockchain

Tokens can be used in a variety of creative and perhaps even innovative ways. Tokens and 'token data sets' could be used to fulfill a diverse set of various requirements including but not limited to assigning permissions, recognizing achievements or attendance, and of course DeFi; NFTs, for example.. 

With strategic use of standard functions we forsee early relational database capability. For this reason our factory will consider Create, Read, Update and Destroy methods upon deployment of their tokens.  

## Token Registry

Trustless Token Registry is derived from EIP #22 Standard Token Registries which is based on blockchain-side namespaces. https://github.com/ethereum/EIPs/issues/22

Tokens generated through our service will automatically registered with the Trustless token network. This saves time, gas, reduces errors, and accomodate other human friendly features like inherent interoperability and automated accounting. 

Tokens not deployed by a Trustless Factory may be registered directly by way of code pattern validation (expensive) in order to achieve Trustless standing; however, any token with the proper API may become registered, wrapped, and thusly gain access to the network.

## Token Accounting

Accounting is achieved by a managed Top-level Management contract gathering data on all registries to monitor every assortment of tokens, and access their metadata URIs. 

## Token Trading

Trustless Token Trading (TTT) will allow Calls and Puts to be made as well as offer personal value rating systems for the tokens held in managed accounts. Essentially tokens you are placing to the market will be the preferred tokens spent and the tokens you are looking to buy become the tokens you prefer to recieve for services. 

## Token Wallet

Trustless Token Wallet is a GUI (graphical user interface) which offer intuitive human interaction with the Token Accounting views, Token Factory operations and Token Trading functions.

## Token Templates

[Trustless Token Templates](./templates) include libraries and components slated to build tokens derived from EIP #20, EIP #721, and EPI #1155 Standard Tokens.
