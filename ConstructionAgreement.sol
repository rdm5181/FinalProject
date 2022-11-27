pragma solidity ^0.5.0;

// Civil Law Jurisdiction - Albania
// NOT A COMPLETE AGREEMENT.
// IT IS DRAFTED IN AN ATTEMPT TO EXPLAIN HOW AN AGREEMENT CAN BE EXECUTED AND PAID FOR ON THE BLOCKCHAIN. 
// THERE ARE MANY DIFFERENT PROVISIONS THAT NEED TO BE NEGOTIATED AND INCLUDED IN THE ACTUAL AGREEMENT.

//------------------- BLOCKCHAIN CONSTRUCTION AGREEMENT ---------------
// This Blockchain Construction Agreement ("Agreement") is hereby entered into on [DATE], by and between, the [AGENT COMPANY], 
// duly represented in accordance with its [bylaws/articles of incorporation, articles of organization, etc.] ("Agent"), 
// headquartered at [Address], duly represented in accordance with its [bylaws/articles of incorporation, articles of organization, etc.], 
// [CONTRACTOR COMPANY], headquartered at [Address], duly represented in accordance with its [bylaws/articles of 
// incorporation/articles of organization, etc.] and [DEVELOPER COMPANY], headquartered at [Address], duly represented in accordance with its
// [bylaws/articles of incorporation/articles of organization, etc.], 
// pursuant to the following terms and conditions:

contract ConstructionAgreement {
    address payable agentAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    address payable contractorAddress =
        0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db;
    address payable developerAddress =
        0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB;
    uint256 public accountBalance;
    string agentName = "Agent Company";
    string contractorName = "Contractor Company";
    string developerName = "Developer Company";

    function getInfo()
        public
        view
        returns (
            string memory,
            address,
            string memory,
            address,
            string memory,
            address
        )
    {
        return (
            agentName,
            agentAddress,
            contractorName,
            contractorAddress,
            developerName,
            developerAddress
        );
    }

    function setInfo(
        address payable newAgentAddress,
        string memory newAgentName,
        address payable newContractorAddress,
        string memory newContractorName,
        address payable newDeveloperAddress,
        string memory newDeveloperName
    ) public {
        agentAddress = newAgentAddress;
        agentName = newAgentName;
        contractorAddress = newContractorAddress;
        contractorName = newContractorName;
        developerAddress = newDeveloperAddress;
        developerName = newDeveloperName;
    }

    // Whereas:
    // I - This Agreement implements the payment arrangements for the Contractor to perform the services to the Developer listed below 
    //and be remunerated by the Agent on the blockchain.

    // II - The Developer owns the property located ot [ADDRESS] ("The Property"), and provided original documention 
    // to provide evidence of the owernship thereof, submitted by postal or courier service with proof of receipt and submitted to the Interplanetary File System ("IPFS") account, provided by the Agent.

    // III -  Contractor is a duly licensed general contractor in [LOCATION], in good standing, with the license number [LICENSE NUMBER], and has provided evidence thereof by postal or courier service with proof of receipt, and submitted to the IPFS and have provided the content address to the Agent.

    // IV - The Developer, Contractor and the Agent ("Parties") have provided original documentation delivered by the postal or courier service with proof of receipt, and submitted to IPFS to evidence the signatory powers of their representatives executing this Agreement.

    // NOW THEREFORE, in consideration of the mutual promises agreed to herein, and for other good and valuable consideration, exchanged between the Parties, set forth in this Agreement, the Parties hereof agree to the following:

    // Scope of Work. Contractor shall perform the work described in Exhibit A (the "Work"), in accordance with Developor's contract plans and specification, 
    // this Agreement and any Change Order, as defined herein (collectively the "Agreement Documents"), in the Property.

    // Contract Price and Payments. The full amount of the Agreement shall be deposited by the Developer in the Agent's address listed above before performance 
    // of the Agreement shall commence. The Agent agres to pay in installments, to the Contractor for the Work in the total amount of $USDC [AMOUNT] in digital United States Dollars, the stable coin, managed by a consortium called Centre, which was founded by Circle and includes members from the cryptocurrency exchange Coinbase and Bitcoin mining company Bitmain, an investor in Circle.

    // Installment Payments. The install payments shall be paid, according to the phases completed, pursuant to the Certificates of Completion 
    //("Exhibit B"), and the Contractor shall notify the Developer that the Work is ready for 
    // inspection of the four (4) phases defined in Exhibit A.

    // Agent's Remuneration. The Agent shall be remunerated for executing the Blockahin Agreement System in accordance with the terms set out in Exhibit C in the total amount of USDC$ [INSERT AMOUNT].

    function phase1Complete(
        bool phase1Completed,
        uint256 amount,
        address payable recipient
    ) public {
        if (phase1Completed == true) {
            require(
                recipient == contractorAddress || recipient == developerAddress,
                "Your address is not authorized!"
            );
            recipient.transfer(amount);
            accountBalance = address(this).balance;
        }
    }

    function phase2Complete(
        bool phase2Completed,
        uint256 amount,
        address payable recipient
    ) public {
        if (phase2Completed == true) {
            require(
                recipient == contractorAddress || recipient == developerAddress,
                "Your address is not authorized!"
            );
            recipient.transfer(amount);
            accountBalance = address(this).balance;
        }
    }

    function phase3Complete(
        bool phase3Completed,
        uint256 amount,
        address payable recipient
    ) public {
        if (phase3Completed == true) {
            require(
                recipient == contractorAddress,
                "The recipient address is not authorized!"
            );
            recipient.transfer(amount);
            accountBalance = address(this).balance;
        }
    }

    function phase4Complete(
        bool phase4Completed,
        uint256 amount,
        address payable recipient
    ) public {
        if (phase4Completed == true) {
            require(
                recipient == contractorAddress,
                "The recipient address is not authorized!"
            );
            recipient.transfer(amount);
            accountBalance = address(this).balance;
        }
    }


    function agentRemuneration(
        bool agentRemunerationCompleted,
        uint256 amount,
        address payable recipient
    ) public {
        if (agentRemunerationCompleted == true) {
            require(
                recipient == agentAddress,
                "The recipient address is not authorized!"
            );
            recipient.transfer(amount);
            accountBalance = address(this).balance;
        }
    }


    // Smart Contract Accounts Receivable
    function deposit() public payable {
        accountBalance = address(this).balance;
    }

    function() external payable {}
}

// Registration: The Parties authorize the Official Real Estate Registry to perform all acts necessary to register this instrument with the competent real estate district.

// JURISDICTION
// The Court of the [INSERT SELECTED COURt] is hereby elected, with express waiver of any other, however privileged it may be, to resolve any doubts or issues arising from this Agreement.

// And, in witness whereof, the Parties execute this Agreement in three (03) counterparts of equal content and form, in the presence of the witnesses below, duly notarized by the official notary public.

// [LOCATION]

// [DATE]

// [AGENT COMPANY ] ___________________________________

// NAME: ____________________________________

// TITLE: _____________________________________

// [CONTRACTOR COMPANY ] ___________________________________

// NAME: ____________________________________

// TITLE: _____________________________________

// [DEVELOPER COMPANY ] ___________________________________

// NAME: ____________________________________

// TITLE: _____________________________________




// EXHIBT A - SCOPE OF WORK




// EXHIBIT B - CERTIFICATE OF COMPLETION




// EXHBIT C - AGENT'S REMUNERATION
