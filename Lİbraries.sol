//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
  
//  library Math {

//      function plus (uint x , uint y) public pure returns(uint){
//          return x+y;
//      }
//  }

//  library Search{
//      function indexOf(uint[] memory list,  uint data ) public pure returns (uint){
//          for(uint i=0;i<list.length;i++){
//              if(list[i]==data){
//                  return i;
//              }
//          }
//          return list.length;
//      }
//  }

//  contract Library{

//     function trial1(uint[] memory x , uint y) public pure returns (uint){
//         return Search.indexOf(x,y);
//     }
//  }

 library People{
     struct Person{
         uint age;
     }

     function birthday(Person storage  _person) public {
         _person.age+=1;
     }
     function showAge(Person storage _person) public view returns(uint){
         return _person.age;
     }
        
     
 }


