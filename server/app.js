const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
require('dotenv').config();

// routers
const userRouter = require('./routes/users');
const gameRouter = require('./routes/games');

const PORT = process.env.PORT;
const app = express();

app.use(cors());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

app.use('/api/users', userRouter);
app.use('/api/games', gameRouter);

app.use('/api/login', (req, res) => {
    res.send({
        token: 'testToken'
    })
})

app.use((err, req, res, next) => {
    console.log(err);
    if(err.status) {
        res.status(err.status).json(err);
    } else {
        res.status(500).json(err)
    }
});

app.listen(PORT, () => {
    console.log('listening on port', PORT)
})