const games = require('express').Router();
const { fetchAllGames, fetchGameById } = require('../db/queries/games');

games.get('/', fetchAllGames);
games.get('/:id', fetchGameById);

module.exports = games;