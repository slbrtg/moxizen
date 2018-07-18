import React from 'react';
import { BrowserRouter } from 'react-router-dom';
import AppGrid from '../AppGrid/AppGrid';


function App(props) {
  return (
    <BrowserRouter>
      <AppGrid />
    </BrowserRouter>
  );
}

export default App;
