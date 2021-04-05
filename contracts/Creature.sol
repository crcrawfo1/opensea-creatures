pragma solidity ^0.5.0;

import "./ERC721Tradable.sol";
import "openzeppelin-solidity/contracts/ownership/Ownable.sol";

/**
 * @title Creature
 * Creature - a contract for my non-fungible creatures.
 */
contract Creature is ERC721Tradable {
    constructor(address _proxyRegistryAddress)
        public
        ERC721Tradable("Creature", "OSC", _proxyRegistryAddress)
    {}

    function baseTokenURI() public pure returns (string memory) {
        return "https://raw.githubusercontent.com/crcrawfo1/NFT_test/main/";
    }

    function contractURI() public pure returns (string memory) {
        return "https://raw.githubusercontent.com/crcrawfo1/NFT_test/main/meta_data_project.txt";
    }
}
