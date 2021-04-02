pragma solidity ^0.5.0;

import "./Contribution.sol";

contract BSC-Master-Project{
    /* 
        @Project: BSC-Master-Project
        @Authors: noryson#5495, 
        @Description: This contract functions as the sole controller. All web3.js calls will directly interact 
                        with the functions here.
    */

    Contribution[] allContributions;

    function createContribution(){}
    function displayContribution(uint contributionID){}
    function displayAllContributions(){}
    function displayPendingContributions(){}
    function joinContribution(uint contributionID, string stakedAsset, string amount){}
    function payContribution(uint contributionID, uint amount){}

    struct bnbVault {
        unit userAsset;
    }

    mapping (address => mapping (address => uint256)) public allowed;
    function setUserAsset(uint amount, address userAsset) public {
        bnbVault[userAsset] = amount;
    }
    function getUserAmount(address userAsset) public view returns(uint) { 
        return allowed;
    }
}