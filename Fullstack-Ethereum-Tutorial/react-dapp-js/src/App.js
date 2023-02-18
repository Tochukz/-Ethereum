import { useState } from 'react';
import { ethers } from 'ethers';
// import Lock from './artifacts/contracts/Lock.sol/Lock.json';
import Greeter from './artifacts/contracts/Greeter.sol/Greeter.json';

import './App.css';

// Greeter deployed to: 0x5FbDB2315678afecb367f032d93F642f64180aa3
//const lockAddress = '0x5FbDB2315678afecb367f032d93F642f64180aa3'; // Obtained from the terminal output of the deployed contract
const greeterAddress = '0x5FbDB2315678afecb367f032d93F642f64180aa3';

function App() {
  const [greeting, setGreetingValue] = useState('');


  const requestAccount = async () => {
    await window.ethereum.request({method: 'eth_requestAccounts'});
  }

  const fetchGreeting = async () => {
    if (window.ethereum) { // Checks if the user has MetaMask extension installed on their browser 
      const provider = new ethers.providers.Web3Provider(window.ethereum);
      const contract = new ethers.Contract(greeterAddress, Greeter.abi, provider);
      try {
        const greet = await contract.greet();
        console.log('Greeting: ', greet);
      } catch(err) {
        console.error('fetchGreeting: ', err);
      }
    }
  } 

  const setGreeting = async () => {
    if (!greeting) {
      return;
    }
    if (window.ethereum) {
      try {
      await requestAccount();
      const provider = new ethers.providers.Web3Provider(window.ethereum);
      const signer  = provider.getSigner(); // You need a signer create a transaction which writes to the blockchain 
      const contract = new ethers.Contract(greeterAddress, Greeter.abi, signer);
      const transaction = await contract.setGreeting(greeting);
      setGreetingValue('');
      await transaction.wait();
      fetchGreeting();
      } catch(err) {
        console.error('setGreeting: ', err);
      }
    }
  }

  return (
    <div className="App">
      <div className="container">
        <div className="row">
          <div className="col-sm-3">
            <div className="form-group">
              <button className="btn btn-primary form-control" onClick={fetchGreeting}>Fetch Greeting</button>
            </div>
          </div>
          <div className="col-sm-3">
            <div className="form-group">
              <button className="btn btn-secondary form-control" onClick={setGreeting}>Set Greeting</button>
            </div>
          </div>
           <div className="col-sm-3">
              <div className="form-group">
                <input 
                  className="form-control"
                  onChange={(e) => setGreetingValue(e.target.value)} 
                  value={greeting} 
                  placeholder="Set Greeting" />
              </div>              
            </div>
        </div>
      </div>         
    </div>
  );
}

export default App;
