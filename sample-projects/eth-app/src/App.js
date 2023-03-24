
import { useState } from 'react';
import * as ethers from 'ethers'
import './App.css';

function App() {
  let [walletAddresses, setWalletAddresses] = useState([]);
  let [balance, setBalance] = useState(0);
    
  const connect = () => {
    if(window.ethereum){
      console.log('connecting...')
      window.ethereum.request({ method:  'eth_requestAccounts'})
      .then(res => {
        if (Array.isArray) {
          setWalletAddresses(res);
        }
        console.log('res: ', res);      
      }).catch(err => console.error(err));      
    }else{
      alert("install metamask extension!!")
    }
  }

  const getBalance = () => {
    if (!walletAddresses.length) {
      alert("Wallet is empty! Conneft first");
      return;
    }
    console.log('getting balance: ', walletAddresses[0]);
    window.ethereum.request({ method: 'eth_getBalance', params: [walletAddresses[0], 'latest']})
    .then(res => {
      console.log('res:', res);
      console.log('ethers', ethers);

      const balnc = ethers.formatEther(res); 
      console.log('balnc:', balnc);
      setBalance(balnc);
    }).catch(err => console.error(err));
  }

  const signTransaction = () => {
    if (!walletAddresses.length) {
      alert("Wallet is empty! Connect first");
      return;
    }
    const provider = ethers.getDefaultProvider(window.ethereum);
    console.log('provider', provider);
  }

  return (
    <div className="App">
      <p>
        <button onClick={connect}>Connect</button> 
      </p>
      <p>
        <button onClick={getBalance}>Request Balance</button> 
      </p>
      <p>
        <strong>Balance</strong> <span>{balance}</span>
      </p>
      <p>
        <button onClick={signTransaction}>Sign Transaction</button> 
      </p>
    </div>
  );
}

export default App;
