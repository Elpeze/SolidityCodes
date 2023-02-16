// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract MultiSig{
    address[] public signers;
    uint256 public requiredConfirmations;

    uint256 public nonce;
    mapping(uint256 =>Tx) public nonceToTx;
    mapping(uint256=> mapping(address => bool)) public TxConfirmers;

    struct Tx {
        address proposer;
        uint confirmations;
        bool executed;
        uint256 deadline;
        address txAddress;
        uint256 value;
        bytes txData;


    }
    constructor(address[] memory _signers , _requiredConfirmations ){
        require(_signers.length > 0,"Signers needed");
        require(isUnique(_signers), "Dublicate addresses");
        require(_requiredConfirmations<=_signers.length, "Not enough sighners");

        signers=_signers;
        requiredConfirmations= _requiredConfirmations;



    }

    function proposeTx () external onlySigners {}

    function confirmTx () external {}
    
    function rejectTx  () external {}
    
    function deleteTx  () external {}
    
    function isUnique(address[] memory arr) private pure returns(bool){
        for(uint256 i=0;i< arr.length-1;i++){
            for(uint256 j=i+1; j<arr.length;j++){
                require(arr[i] != arr[j], " Dublciate address detected");
            }
        }

    }
    modifier onlySigners () {
        

    }






}