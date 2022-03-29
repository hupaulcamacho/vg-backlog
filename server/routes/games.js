const games = require('express').Router();
const { fetchAllGames, fetchGameById, fetchGamesByPlatform } = require('../db/queries/games');

games.get('/', fetchAllGames);
games.get('/:id', fetchGameById);
games.get('/platform/:platform', fetchGamesByPlatform);

module.exports = games;