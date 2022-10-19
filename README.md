# Trustless Token Management Information System (TTMIS)

### Token Management for Humans... and otherwise. 

TTMIS provides the user an API for minting, monitoring, or manipulating any number of token styles: ERC20, ERC155, and beyond. 
Heavily adapted from open source code originally developed by the Ethereum Community, research catalysed by ConsenSys, and security considerations by Open Zeppelin.

## Token Templates

Trustless Token Templates include libraries and components slated to build tokens derived from EIP #20 Standard Tokens (https://github.com/ethereum/EIPs/issues/20); 
the original token template: Token.sol. This is an external github repo.

## Token Registry

Trustless Token Registry is derived from EIP #22 Standard Token Registries which is based on blockchain-side namespaces. https://github.com/ethereum/EIPs/issues/22

Tokens generated at a Token Factory will be able to automatically register via that Factory's Registry. This saves time, reduces errors, and accomodate other human friendly features such as automated Accounting. 

Tokens not deployed by a Token Factory may be registered directly by way of code pattern validation (expensive).

## Token Factory

Trustless Token Factory is built to be Ethereum token minting-as-a-service residing completely on the blockchain, yet will be one of the services which can be accessibly managed via a graphical user interface. 

Tokens can be used in a variety of creative and perhaps even innovative ways. Tokens and 'token data sets' could be used to fulfill a diverse set of various requirements including but not limited to assigning permissions, recognizing achievements or attendance, and of course DeFi; NFTs, for example.. 

With strategic use of standard functions we forsee early relational database capability. For this reason our factory will consider Create, Read, Update and Destroy methods upon deployment of their tokens.  

## Token Accounting

Trustless Token Accounting deploys a managed Top-level Token Registry to report on any number of registries, monitor every assortment of tokens, and access their metadata URIs. 

## Token Trading

Trustless Token Trading (TTT) will allow Calls and Puts to be made as well as offer personal value rating systems for the tokens held in managed accounts. Essentially tokens you are placing to the market will be the preferred tokens spent and the tokens you are looking to buy become the tokens you prefer to recieve for services. 

## Token Wallet

Trustless Token Wallet is a GUI (graphical user interface) which offer intuitive human interaction with the Token Accounting, Token Factory and Token Trading functions.
