function balanceOf(address account) public view returns (uint256) {
        require(ownerOf(account) != address(0), "Account does not own a token."); 
        return balances[account];
    } 

function ownerOf(uint256 tokenId) public view returns (address) {
        require(_exists(tokenId), "Nonexistent token.");
        return owner[tokenId];
    }
    function _exists(uint256 tokenId) internal view returns (bool) {
        return owner[tokenId] != address(0);
    } 