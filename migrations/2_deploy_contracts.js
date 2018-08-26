var  YYToken = artifacts.require("YYToken");

module.exports = function(deployer) {
  deployer.deploy(YYToken, "ERC721Toen","YY"); //default use eth.accouts[0].use {from:user} specify  the accout
};

