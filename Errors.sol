//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Errors {
    uint256 public totalBalace;
    mapping(address=>uint256) public userBalances;
    error ExceedingAmount(address user,uint256 ExceedingAmount );


    function pay() nonZero(msg.value) payable external {
        require(msg.value==1 ether,"only payment in 1 ether");
        totalBalace+= 1 ether;
        userBalances[msg.sender] += 1 ether;


    }

    function withdraw(uint256 _amount) nonZero(_amount) external{
       // require(userBalances[msg.sender]>=_amount , "yetersiz bakiye");
       if(userBalances[msg.sender]< _amount){
         //  revert("yetersiz bakiye");
         revert ExceedingAmount(msg.sender, _amount-userBalances[msg.sender]);
       }
       totalBalace -=_amount;
       userBalances[ms.sender] -=_amount;
       payable(msg.sender).transfer(_amount);

        
    }
    modifier nonZero(uint256 _amount){
        require(_amount !=0);
        _;
    }

    
}