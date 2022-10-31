// maximonee on 721a#417

mapping (uint128 => address[]) public blockedAddrs;
uint256 numberOfBlockedAddressesBecauseOfCreatorRoyaltiesDisrespectingCreators = 0;

function populateBlockedAddrs(Address addr) public onlyOwner{
    blockedAddrs[numberOfBlockedAddressesBecauseOfCreatorRoyaltiesDisrespectingCreators] = addr;
    numberOfBlockedAddressesBecauseOfCreatorRoyaltiesDisrespectingCreators++;
}

function _beforeTokenTransfer(
    address from,
    address to,
    uint256 tokenId
) internal virtual override(ERC721, ERC721Enumerable) {

    uint256 i = 0;
    while(i < numberOfBlockedAddressesBecauseOfCreatorRoyaltiesDisrespectingCreators) {
        for (uint256 j = 0; j < blockedAddrs[i].length; j++) {
        
            require(msg.sender != blockedAddrs[i][j], "Thanks for the consideration");
            j = j + 1;
        }
        unchecked {
            i++;
        }
    }
    super._beforeTokenTransfer(from, to, tokenId);
}
