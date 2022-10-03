import { useState } from 'react';
import { ethers } from 'ethers';
import Lock from './artifacts/contracts/Lock.sol/Lock.json';

import logo from './logo.svg';
import './App.css';

const lockAddress = '0x5FbDB2315678afecb367f032d93F642f64180aa3'; // Obtained from the terminal output of the deployed contract

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.js</code> and save to reload.
        </p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
      </header>
    </div>
  );
}

export default App;
