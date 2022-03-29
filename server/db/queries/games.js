const db = require('../index');

const fetchAllGames = async (req, res, next) => {
    try {
        const games = await db.any(
            "SELECT * FROM games"
        );
        res.json ({
            games,
            message: 'games retrieved...'
        })
    } catch (err) {
        next(err)
    }
}

const fetchGameById = async (req, res, next) => {
    try {
        const game = await db.oneOrNone(
            'SELECT * FROM games WHERE id = $1', [ req.params.id ]
        );
        res.json({
            game,
            message: 'game retrieved...'
        })
    } catch (err) {
        next(err)
    }
}

const fetchGamesByPlatform = async (req, res, next) => {
    try {
        const games = await db.any(
            'SELECT * FROM games WHERE platform = $1', [ req.params.platform ]
        );
        res.json({
            games,
            message: 'games retrieved by platform...'
        })
    } catch (err) {
        next(err)
    }
}

module.exports = { fetchAllGames, fetchGameById, fetchGamesByPlatform };