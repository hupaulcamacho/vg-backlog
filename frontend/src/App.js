import React from 'react';
import './App.css';

import { Route, Routes } from 'react-router-dom';
import useToken from './useToken';

// component import
import Dashboard from './components/Dashboard';
import Preferences from './components/Preferences';
import Login from './components/Login';

function App() {
  const { token, setToken } = useToken();
  if (!token) {
    return <Login setToken={setToken} />
  }
  return (
    <div className="App">
      <h1>vg-backlog</h1>
      <Routes>
        <Route path='/dashboard' element={<Dashboard/>}/>
        <Route path='/preferences' element={<Preferences/>}/>
      </Routes>
    </div>
  );
}

export default App;
