var  YYToken = artifacts.require("YYToken");

module.exports = function(deployer) {
  deployer.deploy(YYToken, "ERC721Toen","YY",{from:"0x8c4ffcc692af5d1000277e676819b405a0fa8478"});
};

