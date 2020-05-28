import React from 'react';
import logo from './logo.svg';
import './App.css';
import Welcome from './components/Welcome'
import NewReservationForm from './components/NewReservationForm'
import Reservations from './components/Reservations';

function App() {
  return (
    <div>
      <Welcome />
      <NewReservationForm />
      <Reservations />
    </div>
  );
}

export default App;
