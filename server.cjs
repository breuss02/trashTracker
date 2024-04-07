
const express = require('express');
const { Sequelize, DataTypes } = require('sequelize');
const app = express();
const port = 3000;
const cors = require('cors');

app.use(cors({
    origin: 'http://localhost:5174'
}));

// Middleware to parse JSON bodies
app.use(express.json());

// Setting up the connection to the database
const sequelize = new Sequelize('postgres://brandalorian:p4ssw0rd@localhost:5432/trash');

// Define models
const City = sequelize.define('city', {
    city_id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    name: {
        type: DataTypes.STRING(100),
        allowNull: false
    },
    zip_code: {
        type: DataTypes.STRING(10),
        allowNull: false
    }
}, {
    timestamps: false,
    freezeTableName: true
});


const Item = sequelize.define('items', {
    item_id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    name: {
        type: DataTypes.STRING(100),
        allowNull: false
    },
    category: {
        type: DataTypes.STRING(50),
        allowNull: false
    },
    waste_type: {
        type: DataTypes.STRING(50),
        allowNull: false
    },
    location: {
        type: DataTypes.INTEGER,
        allowNull: false
    }
}, {
    timestamps: false,
    freezeTableName: true
});


// Synchronize models with database
sequelize.sync()
    .then(() => console.log('Models synchronized successfully.'))
    .catch(err => console.error('Error synchronizing models:', err));

// Route definitions
app.get('/items', async (req, res) => {
    try {
        const items = await Item.findAll();
        res.json(items);
    } catch (error) {
        console.error('Error fetching items:', error);
        res.status(500).send(error);
    }
});

app.get('/cities', async (req, res) => {
    try {
        const cities = await City.findAll();
        res.json(cities);
    } catch (error) {
        console.error('Error fetching cities:', error);
        res.status(500).send(error);
    }
});

app.get('/disposalLocations', async (req, res) => {
    try{
        const disposalLocations = await DisposalLocation.findAll();
        res.json(disposalLocations);
    } catch (error) { 
        console.error('Error fetching disposal Locations: ', error);
        res.status(500).send(error);
    }
});

app.get('/search/items', async (req, res) => {
    try {
        const { query } = req.query;
        const items = await Item.findAll({
            attributes: ['item_id', 'name', 'category', 'waste_type', 'location'], 
            where: {
                name: {
                    [Sequelize.Op.iLike]: `%${query}%`
                }
            }
        });
       
        const transformedItems = items.map(item => {
           
            return item;
        });
        res.json(transformedItems);
    } catch (error) {
        console.error('Error searching for items:', error);
        res.status(500).send(error);
    }
});


// Start the server
app.listen(port, () => console.log(`Server listening on port ${port}!`));
