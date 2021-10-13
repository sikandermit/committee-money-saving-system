//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0;

contract CommitteeSMS{
    uint256 TokenCost;
    string CCStoken;
    event CreatePool(string CCStoken, string name);

    struct Members{
        uint256 TokenCost;
        string name;
    }

    Members[] public members;
    mapping(string => uint256)public nameToTokenCost;

     function _createPool(string memory _CCStoken) public {
        CCStoken = _CCStoken;
    }

     function membersPool(string memory _name, uint256 _TokenValue) public {
         members.push(Members(_TokenCost, _name));
         nameToTokenCost[_name] = _TokenCost;
    }

    function withdraw() public view returns(uint256){
        return TokenCost;
    }
}


contract Pool is CommitteeSMS {

    CommitteeSMS[] public committeeSMSArray;

    function moneySytem() public {
        CommitteeSMS committeeSMS = new CommitteeSMS();
        committeeSMSArray.push(committeeSMS);
    }

    function tokenDeposit(uint256 _TokenCost, string memory _CCStoken) public{
        CommitteeSMS(address(committeeSMSArray[_TokenCost])).store(_CCStoken);
    }
    function tokenWithdraw(uint256 _TokenCost) public view returns (uint256){
        return CommitteeSMS(address(committeeSMSArray[_TokenCost]).retrieve();
    }

}
