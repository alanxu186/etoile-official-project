import { useState, useEffect } from 'react'
import {Routes, Route} from 'react-router-dom'
import Home from './pages/Home'
import About from './pages/About'
import Contact from './pages/Contact'
import Booking from './pages/Booking'
import Profile from './pages/Profile'
import Navbar from './components/Navbar'

function App() {



  return (
    <div className="App">
      <Navbar/>
      <Routes>
        <Route path="/" element={<Home/>}></Route>
        <Route path="/about" element={<About/>}></Route>
        <Route path="/contact" element={<Contact/>}></Route>
        <Route path="/booking" element={<Booking/>}></Route>
        <Route path="/profile" element={<Profile/>}></Route>
      </Routes>
    </div>
  );
}

export default App;
