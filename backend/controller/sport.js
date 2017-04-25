'use strict';

const db = require(__dirname + '/../lib/mysql');
const winston = require('winston');

exports.add_sport = (req,res,next) => {
	if (req.session.user && (req.session.user.is_game_head || req.session.user.is_admin)) {
		const query_string = 'CALL add_sport(?,?,?)';

		const payload = [
			req.body.sport_type,
			req.body.division,
			req.body.game_id
		];

		const callback = (err,data) => {
			if (err) {
				winston.level = 'debug';
				winston.log('debug', 'err: ', err);
				res.status(500).send({ error_code:err.code });
			} else {
				winston.level = 'info';
				winston.log('info', 'Successfully added sport!');
				res.status(200).send({
					"message": "Successfully added sport!"
				});
			}
		};

		db.query(query_string, payload, callback);
	} else {
		res.status(403).send({message:"You must be game head or admin."});
	}
};

exports.get_sport = (req, res, next) => {
		const query_string = 'CALL get_sport(?)';

		const payload = [req.params.sport_id];

		const callback = (err, data) => {
			if (err) {
				winston.level = 'debug';
				winston.log('debug', 'err: ', err);
				res.status(500).send({ error_code:err.code });
			} else if (data[0].length == 0) {
				winston.level = 'info';
				winston.log('info', 'Not found!');
				res.status(404).send(data);
			} else {
				winston.level = 'info';
				winston.log('info', 'Successfully retrieved sport!');
				res.status(200).send(data);
			}
		};

		db.query(query_string, payload, callback);
};

exports.get_a_sport = (req, res, next) => {
		const query_string = 'CALL get_a_sport(?,?,?)';

		const payload = [req.params.game_id,
						req.params.sport_type,
						req.params.division];

		const callback = (err, data) => {
			if (err) {
				winston.level = 'debug';
				winston.log('debug', 'err: ', err);
				res.status(500).send({ error_code:err.code });
			} else {
				winston.level = 'info';
				winston.log('info', 'Successfully retrieved sport!');
				res.status(200).send(data);
			}
		};
		// console.log(payload)
		db.query(query_string, payload, callback);
};

exports.update_sport = (req, res, next) => {
	if (req.session.user && (req.session.user.is_game_head || req.session.user.is_admin)) {
		const query_string = 'CALL update_sport(?,?,?,?);';

		const payload = [
			req.body.sport_id,
			req.body.sport_type,
			req.body.division,
			req.session.user.account_id
		];

		const callback = (err, data) => {
			if (err) {
				winston.level = 'debug';
				winston.log('debug', 'err: ', err);
				res.status(500).send({ error_code:err.code });
			} else if (data.affectedRows == 0) {
				winston.level = 'info';
				winston.log('info', 'Not found! Update failed');
				res.status(404).send();
			} else {
				winston.level = 'info';
				winston.log('info', 'Successfully updated sport!');
				res.status(200).send(data);
			}
		};
		db.query(query_string, payload, callback);
	} else {
		res.status(403).send({message:"You must be game head or admin."});
	}
};

exports.delete_sport = (req, res, next) => {
	if (req.session.user && (req.session.user.is_game_head || req.session.user.is_admin)) {
		const query_string ='CALL delete_sport(?)';

		const payload = [req.body.sport_id, req.session.user.account_id];

		const callback = (err, data) => {
			if (err) {
				winston.level = 'debug';
				winston.log('debug', 'err: ', err);
				res.status(500).send({ error_code:err.code });
			} else if (data.affectedRows == 0) {
				winston.level = 'info';
				winston.log('info', 'Not found! Delete failed');
				res.status(404).send();
			} else {
				winston.level = 'info';
				winston.log('info', 'Successfully deleted sport!');
				res.status(200).send(data);
			}
		};

		db.query(query_string, payload, callback);
	} else {
		res.status(403).send({message:"You must be game head or admin."});
	}
};

exports.get_sport_game = (req, res, next) => {
  const query_string ='CALL get_sport_game(?)';
  const payload = [req.params.game_id];

  const callback = (err, data) => {
    if(err){
      winston.level = 'debug';
      winston.log('debug', 'err: ', err);
      return res.status(500).send({ error_code:err.code});
    } else if (data.length == 0) {
      winston.level = 'info';
      winston.log('info', 'Not found!');
      return res.status(404).send(data);
    } else {
      winston.level = 'info';
      winston.log('info', 'Successfully retrieved sports in a game!');
      return res.status(200).send(data);
    }
  };
  db.query(query_string, payload, callback);
};


exports.get_all_sport = (req, res, next) => {
  const query_string = 'SELECT * from match_event natural join match_event_team natural join team natural join sport';
  const payload = [];

  const callback = (err, data) => {
    if(err){
      winston.level = 'debug';
      winston.log('debug', 'err: ', err);
      return res.status(500).send({ error_code:err.code});
    } else if (data.length == 0) {
      winston.level = 'info';
      winston.log('info', 'Not found!');
      return res.status(200).send(data);
    } else {
      winston.level = 'info';
      winston.log('info', 'Successfully retrieved all sports!');
      return res.status(200).send(data);
    }
  };

  db.query(query_string, payload, callback);
};

exports.get_sport_team = (req, res, next) => {
	const query_string ='CALL get_sport_team(?)';

	const payload = [req.params.sport_id];

	const callback = (err, data) => {
		if (err) {
			winston.level = 'debug';
			winston.log('debug', 'err: ', err);
			res.status(500).send({ error_code:err.code});
		} else if (data.length == 0) {
			winston.level = 'info';
			winston.log('info', 'Not found!');
			res.status(404).send(data);
		} else {
			winston.level = 'info';
			winston.log('info', 'Successfully retrieved teams in a sport!');
			res.status(200).send(data);
		}
	};

	db.query(query_string, payload, callback);
};
