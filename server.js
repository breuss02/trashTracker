const express = require('express');
const Sequelize = require('sequelize');
const app = express();
const port = 3000;
const cors = require('cors');
const bcrypt = require('bcrypt');
const saltRounds = 10; // You can adjust the number of rounds as needed


app.use(cors({
    origin: 'http://localhost:5173'
  }));
  


// Middleware to parse JSON bodies
app.use(express.json());

// Setting up the connection to the database
const sequelize = new Sequelize('postgres://brandalorian:p4ssw0rd@localhost:5432/trash'); 

// Test the database connection
sequelize.authenticate()
    .then(() => console.log('Connection has been established successfully.'))
    .catch(err => console.error('Unable to connect to the database:', err));


// Start the server
app.listen(port, () => console.log(`Example app listening on port ${port}!`));


