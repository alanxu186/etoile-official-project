import React from 'react'
import { Link } from 'react-router-dom'

const Navbar = () => {
    return (
        <div className='top-0 w-full text-white flex justify-between p-4 items-center bg-[#C0C0C0]'>

            <div className='text-2xl font-bold text-center uppercase p-4'>
                <h1><Link to='/' className='block text-5xl'> Eloite</Link> </h1>
            </div>

            <div>
                <ul className='hidden md:flex gap-8 p-6 uppercase bg-white/10 h-20 '>
                    <li> <Link to={"/about"}>About</Link> </li>
                    <li> <Link to={"/contact"}>Contact</Link> </li>
                    <li> <Link to={"/"}>Home</Link> </li>
                    <li> <Link to={"/booking"}>Bookings</Link> </li>
                    <li> <Link to={"/profile"}>Profile</Link> </li>
                    <li> <Link to={"/"}>Logout</Link> </li>
                </ul>
            </div>

        </div>
    )
}

export default Navbar