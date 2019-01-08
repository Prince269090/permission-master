pragma solidity ^0.4.18;

/**
@title Permission Manager
@author Prince Thakkar
@notice A contract for recording a user's public address as having granted permission to another user’s public address
@dev Contract contains functions related to grant, rovoke and validating permissions.
*/
contract PermissionManager {

    mapping (address => mapping (address => bool)) private allowed;
    mapping (address => uint256) private userPermission;
    
     /**
    @author Prince Thakkar
    @notice Grants permission to the user passed as an argument and records who granted it.
    @param userAddress address of the user for which permission should be granted
    @return bool True.
    */
    function grantPermissionTo(address userAddress) public returns (bool) {
        require(userAddress != address(0));
        require(msg.sender != userAddress);
        
        allowed[msg.sender][userAddress] = true;
        userPermission[userAddress] += 1;
    
        return true;
    }
    
     /**
    @author Prince Thakkar
    @notice Revoke permission from the user passed as an argument and records who revoked it.
    @param userAddress address of the user for which permission should be revoked
    @return bool True.
    */
    function revokePermission(address userAddress) public returns (bool) {
        require(userAddress != address(0));
        require(msg.sender != userAddress);
        
        allowed[msg.sender][userAddress] = false;
        userPermission[userAddress] -= 1;
    
        return true;
    }
    
     /**
    @author Prince Thakkar
    @notice Validates whether the user calling the function has permission assigned by user.
    @return bool True if user has permission assigned else false.
    */
    function hasPermissionFromOtherUser() public view returns (bool) {
        return userPermission[msg.sender] > 0;
    }
    
         /**
    @author Prince Thakkar
    @notice Gets the total count of number of users who has given permission to the calling function user.
    @return int Count.
    */
    function getPermissionsCountAssigenedByUsers() public view returns (uint256) {
        return userPermission[msg.sender];
    } 
    
}