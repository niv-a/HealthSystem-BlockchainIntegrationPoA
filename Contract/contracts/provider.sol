// SPDX_License_Identifier: UNLICENSED
pragma solidity >=0.6.6 <0.9.0;

contract Provider {
    address public AddressOfProvider;

    constructor() {
        AddressOfProvider = msg.sender;
    }

    // Keeping the record of the providers in the network
    mapping(address => bool) public Providers;

    // Set user as a provider
    function setProvider(address _UserAddress) private {
        Providers[_UserAddress] = true;
    }

    // Check if a user address is the provider
    function checkIfProvider(address _UserAddress) public view returns (bool) {
        return Providers[_UserAddress];
    }

    // // To check if patients exists
    // function patientCheck(address _patientWalletAddress)
    //     public
    //     payable
    //     returns (bool)
    // {
    //     Main instanceOfMain = Main(_patientWalletAddress);
    //     return instanceOfMain.checkPatient(_patientWalletAddress);
    // }
}
