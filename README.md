
# Permission Management - Demo

Follow the steps below to download, install, and run this project in the local environment.

## Dependencies
Install these prerequisites in order to validate and run the project. 
- NPM: https://nodejs.org
- Truffle: https://github.com/trufflesuite/truffle
- Ganache: http://truffleframework.com/ganache/
- Metamask: https://metamask.io/

## Step 1. Clone the project
`git clone https://github.com/Prince269090/permission-master`

## Step 2. Install dependencies
```
$ npm install
```
## Step 3. Start Ganache
Open the Ganache GUI client that you downloaded and installed. This will start your local blockchain instance.


## Step 4. Compile & Deploy Smart Contract On ganache
`$ truffle migrate --reset`
You must migrate the smart contract each time your restart ganache.

## Step 5. Run below command to run the tests and validate the results.
`$ truffle test`

