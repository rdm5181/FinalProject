# FinalProject
Final Project for Columbia Fintech
Description of the USDC solidity contract and process (FeeCollector2.sol): In order to work within a test environment using USDC several steps had to be undertaken to reach a functional transaction system. The following list may not be exhaustive of all steps taken. As it was very much a trial and order process. 
    1. Metamask should be installed. The wallets will work through Metamask.
    2. The wallet needs to be connected to the Mumbai Polygon test network. 
    3. There must be MATIC in the wallet to pay for gas fees. MATIC can be retrieved from a faucet.
    4. The account needs to be funded with test USDC by minting on the polygon network.
    5. The account may need to be approved to spend a certain amount.
    6. The contract might need to be verified.
    7. The contract should be compiled and deplyoed correctly using "Injected Provider - Metamask". 
When these steps are taken, it's possible to use the contract to transfer USDC from the main account to the deployed contract and that transaction is recorded on the Polygon test network, and reflected in the respective wallets. 
