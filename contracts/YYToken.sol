pragma solidity ^0.4.24;
import 'openzeppelin-solidity/contracts/token/ERC721/ERC721Token.sol';
import "openzeppelin-solidity/contracts/ownership/Ownable.sol";
contract YYToken is ERC721Token, Ownable {
	//In open-zeppelin, index has to be given in minting function
	//TO-DO - Better way to handle automatic ids of 721s?
	uint256 public id = 0;
   constructor(string _name, string _symbol) ERC721Token(_name, _symbol) public {
        //Initial parameters - TBD
    }

    //Different options for minting for a sale - broad view examples

    //Mint one to check the gas
    function mintOne(address _to, uint256 _index) public {
        super._mint(_to, _index);
    }

    //If just minting ERC721s for contributors, could also have array of id - messy
    function mintMultiple(address[] _receivers) public {
        for (uint256 i = 0 ; i < _receivers.length; i++){
            super._mint(_receivers[i], id);
            id++; 
        }
}
}
