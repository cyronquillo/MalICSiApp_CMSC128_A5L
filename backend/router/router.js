'use strict';
/* old controllers
const update = require(__dirname + '/../controller/old-controllers/update');
const create = require(__dirname + '/../controller/old-controller/create');
const retrieve = require(__dirname + '/../controller/old-controller/retrieve');
const del = require(__dirname + '/../controller/old-controller/delete');
*/
const account = require(__dirname + '/../controller/account');
const court = require(__dirname + '/../controller/court');
const game_event = require(__dirname + '/../controller/game_event');
const game_event_sponsor = require(__dirname + '/../controller/game_event_sponsor');
const log = require(__dirname + '/../controller/log');
const match_event = require(__dirname + '/../controller/match_event');
const sponsor = require(__dirname + '/../controller/sponsor');
const sport = require(__dirname + '/../controller/sport');
const team = require(__dirname + '/../controller/team');

let path = require('path');

module.exports = (router) => {

//account routers
    //login_account
    router.post('/api/login-account', account.login_account);
    //create account
    router.post('/api/add-account', account.add_account);
    //retrieve account
    router.get('/api/get-account', account.get_account);
    //update account
    router.post('/api/update-account', account.update_account);
    //delete account
    router.post('/api/delete-account', account.delete_account);

/*
//court routers
    //retrieve court
    router.get('/api/get-court', court.get_account);
    //create court
    router.post('/api/add-court', court.add_account);
    //update court
    router.post('/api/update-court', court.update_account);
    //delete court
    router.post('/api/delete-court', court.delete_account);
*/
//account routers
    //login_account
    router.post('/api/login-account', account.login_account);
    //create account
    router.post('/api/add-account', account.add_account);
    //retrieve account
    router.post('/api/update-account', account.update_account);
    //update account
    router.post('/api/get-account', account.get_account);
    //delete account
    router.post('/api/delete-account', account.delete_account);
//account routers
    //login_account
    router.post('/api/login-account', account.login_account);
    //create account
    router.post('/api/add-account', account.add_account);
    //retrieve account
    router.post('/api/update-account', account.update_account);
    //update account
    router.post('/api/get-account', account.get_account);
    //delete account
    router.post('/api/delete-account', account.delete_account);
//account routers
    //login_account
    router.post('/api/login-account', account.login_account);
    //create account
    router.post('/api/add-account', account.add_account);
    //retrieve account
    router.post('/api/update-account', account.update_account);
    //update account
    router.post('/api/get-account', account.get_account);
    //delete account
    router.post('/api/delete-account', account.delete_account);
//account routers
    //login_account
    router.post('/api/login-account', account.login_account);
    //create account
    router.post('/api/add-account', account.add_account);
    //retrieve account
    router.post('/api/update-account', account.update_account);
    //update account
    router.post('/api/get-account', account.get_account);
    //delete account
    router.post('/api/delete-account', account.delete_account);
//account routers
    //login_account
    router.post('/api/login-account', account.login_account);
    //create account
    router.post('/api/add-account', account.add_account);
    //retrieve account
    router.post('/api/update-account', account.update_account);
    //update account
    router.post('/api/get-account', account.get_account);
    //delete account
    router.post('/api/delete-account', account.delete_account);
//account routers
    //login_account
    router.post('/api/login-account', account.login_account);
    //create account
    router.post('/api/add-account', account.add_account);
    //retrieve account
    router.post('/api/update-account', account.update_account);
    //update account
    router.post('/api/get-account', account.get_account);
    //delete account
    router.post('/api/delete-account', account.delete_account);
//account routers
    //login_account
    router.post('/api/login-account', account.login_account);
    //create account
    router.post('/api/add-account', account.add_account);
    //retrieve account
    router.post('/api/update-account', account.update_account);
    //update account
    router.post('/api/get-account', account.get_account);
    //delete account
    router.post('/api/delete-account', account.delete_account);
/* old routers
    //create routers
    router.post('/api/add-account', create.add_account);
    router.post('/api/add-court', create.add_court);
    router.post('/api/add-game', create.add_game);
    router.post('/api/add-game-type', create.add_game_type);
    router.post('/api/add-log', create.add_log);
    router.post('/api/add-participates', create.add_participates);
    router.post('/api/add-player', create.add_player);
    router.post('/api/add-registers', create.add_registers);
    router.post('/api/add-score', create.add_score);
    router.post('/api/add-sponsor', create.add_sponsor);
    router.post('/api/add-sport', create.add_sport);
    router.post('/api/add-sport-player', create.add_sport_player);
    router.post('/api/add-team', create.add_team);
    router.post('/api/add-team-player', create.add_team_player);
    //retrieve routers
    router.get('/api/get-account/:account_id', retrieve.get_account);
    router.get('/api/get-all-game', retrieve.get_all_game);
    router.get('/api/get-current-game', retrieve.get_current_game);
    router.get('/api/get-player/:player_id', retrieve.get_player);
    router.get('/api/get-winner/:game_id', retrieve.get_winner);
    router.get('/api/get-sponsor/:game_id', retrieve.get_sponsor);
    router.get('/api/get-log', retrieve.get_log);
    router.get('/api/get-bracket/:sport_type', retrieve.get_bracket);
    //update routers
    router.post('/api/update-account', update.update_account);
    router.post('/api/update-game', update.update_game);
    router.post('/api/update-team', update.update_team);
    router.post('/api/update-player', update.update_player);
    router.post('/api/update-court', update.update_court);
    router.post('/api/update-sport', update.update_sport);
    router.post('/api/update-sponsor', update.update_sponsor);
    router.post('/api/update-score', update.update_score);
    router.post('/api/update-game-type', update.update_game_type);
    //delete routers
    router.post('/api/delete-account/:account_id', del.delete_account);
    router.post('/api/delete-player/:player_id', del.delete_player);
    router.post('/api/delete-game/:game_id', del.delete_game);
    router.post('/api/delete-sport/:sport_id', del.delete_sport);
    router.post('/api/delete-score/:score_id', del.delete_score);
    router.post('/api/delete-court/:court_id', del.delete_court);
    router.post('/api/delete-sponsor/:sponsor_id', del.delete_sponsor);
    router.post('/api/delete-team/:team_id', del.delete_team);
    router.post('/api/delete-log/:log_id', del.delete_log);
    router.post('/api/delete-team-player/:team_id/:player_id', del.delete_team_player);
    router.post('/api/delete-sport-player/:sport_id/:player_id', del.delete_sport_player);
    router.post('/api/delete-game-player/:game_id/:player_id', del.delete_game_player);
    router.post('/api/delete-participates/:player_id/:sport_id', del.delete_participates);
    router.post('/api/delete-registers/:player_id/:game_id', del.delete_registers);
    router.post('/api/delete-game-game-type/:game_id/:game_type_id', del.delete_game_game_type);
    router.post('/api/delete-game-sponsor/:game_id/:sponsor_id', del.delete_game_sponsor);
*/    

    router.all('*', (req, res, next) => {
        res.status(404).send({
            'message': 'Not Found!'
        });
    });

    return router;
};
