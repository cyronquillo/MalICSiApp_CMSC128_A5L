USE malicsi;

delete from account;
/*
  create admin account
*/
INSERT INTO account VALUES (
  NULL,                                           /*account_id*/
  'Admin',                                        /*firstname*/
  'MALicsI App',                                  /*middlename*/
  'Account',                                      /*lastname*/
  'admin@gmail.com',                              /*email*/
  'admin',                                        /*username*/
  '10/w7o2juYBrGMh32/KbveULW9jk2tejpyUAD+uC6PE=', /*password*/
  'BSCS',                                         /*course*/
  CURDATE(),                                      /*birthday*/
  'CAS',                                          /*college*/
  true,                                           /*is_approved*/
  true,                                           /*is_game_head*/
  'App admin',                                    /*position*/
  false,                                          /*is_player*/
  NULL,                                           /*player_jersey_num*/
  NULL,                                           /*player_role*/
  true                                            /*is_admin*/
);
/*
  create game_head accounts
*/
CALL add_account(
  'Past Game Events',                             /*firstname*/
  'MALicsI App',                                  /*middlename*/
  'Game Head Account',                            /*lastname*/
  'past_game_events@gmail.com',                   /*email*/
  'past_game_events',                             /*username*/
  '10/w7o2juYBrGMh32/KbveULW9jk2tejpyUAD+uC6PE=', /*password*/
  'BSCS',                                         /*course*/
  CURDATE(),                                      /*birthday*/
  'CAS',                                          /*college*/
  true,                                           /*is_game_head*/
  'Game Head',                                    /*position*/
  true,                                           /*is_player*/
  '01',                                           /*player_jersey_num*/
  'Playing Coach'                                 /*player_role*/
);
CALL approve_account(LAST_INSERT_ID());
CALL add_account(
  'Current Game Events',                          /*firstname*/
  'MALicsI App',                                  /*middlename*/
  'Game Head Account',                            /*lastname*/
  'current_game_events@gmail.com',                /*email*/
  'current_game_events',                          /*username*/
  '10/w7o2juYBrGMh32/KbveULW9jk2tejpyUAD+uC6PE=', /*password*/
  'BSCS',                                         /*course*/
  CURDATE(),                                      /*birthday*/
  'CAS',                                          /*college*/
  true,                                           /*is_game_head*/
  'Game Head',                                    /*position*/
  true,                                           /*is_player*/
  '02',                                           /*player_jersey_num*/
  'Playing Coach'                                 /*player_role*/
);
CALL approve_account(LAST_INSERT_ID());
CALL add_account(
  'Upcoming Game Events',                         /*firstname*/
  'MALicsI App',                                  /*middlename*/
  'Game Head Account',                            /*lastname*/
  'upcoming_game_events@gmail.com',               /*email*/
  'upcoming_game_events',                         /*username*/
  '10/w7o2juYBrGMh32/KbveULW9jk2tejpyUAD+uC6PE=', /*password*/
  'BSCS',                                         /*course*/
  CURDATE(),                                      /*birthday*/
  'CAS',                                          /*college*/
  true,                                           /*is_game_head*/
  'Game Head',                                    /*position*/
  true,                                           /*is_player*/
  '03',                                           /*player_jersey_num*/
  'Playing Coach'                                 /*player_role*/
);
CALL approve_account(LAST_INSERT_ID());


delete from game_event;
/*
  create game_events per game_head account:
    -one game_head for past_game_events
    -one game_head for current_game_events
    -one game_head for upcoming_game_events
*/
/*
  past_game_events
*/
CALL add_game_event (
  'Game 1',                                                               /*game_name*/
  SUBDATE(CURDATE(), INTERVAL 10 WEEK),                                    /*game_starting_time_date*/
  SUBDATE(CURDATE(), INTERVAL 8 WEEK),                                    /*game_ending_time_date*/
  (SELECT account_id FROM account WHERE username = 'past_game_events')    /*account_id*/
);
CALL add_game_event (
  'Game 2',                                                               /*game_name*/
  SUBDATE(CURDATE(), INTERVAL 9 WEEK),                                    /*game_starting_time_date*/
  SUBDATE(CURDATE(), INTERVAL 7 WEEK),                                    /*game_ending_time_date*/
  (SELECT account_id FROM account WHERE username = 'past_game_events')    /*account_id*/
);
CALL add_game_event (
  'Game 3',                                                               /*game_name*/
  SUBDATE(CURDATE(), INTERVAL 8 WEEK),                                    /*game_starting_time_date*/
  SUBDATE(CURDATE(), INTERVAL 6 WEEK),                                    /*game_ending_time_date*/
  (SELECT account_id FROM account WHERE username = 'past_game_events')    /*account_id*/
);
CALL add_game_event (
  'Game 4',                                                               /*game_name*/
  SUBDATE(CURDATE(), INTERVAL 7 WEEK),                                    /*game_starting_time_date*/
  SUBDATE(CURDATE(), INTERVAL 5 WEEK),                                    /*game_ending_time_date*/
  (SELECT account_id FROM account WHERE username = 'past_game_events')    /*account_id*/
);
CALL add_game_event (
  'Game 5',                                                               /*game_name*/
  SUBDATE(CURDATE(), INTERVAL 6 WEEK),                                    /*game_starting_time_date*/
  SUBDATE(CURDATE(), INTERVAL 4 WEEK),                                    /*game_ending_time_date*/
  (SELECT account_id FROM account WHERE username = 'past_game_events')    /*account_id*/
);
CALL add_game_event (
  'Game 6',                                                               /*game_name*/
  SUBDATE(CURDATE(), INTERVAL 5 WEEK),                                    /*game_starting_time_date*/
  SUBDATE(CURDATE(), INTERVAL 3 WEEK),                                    /*game_ending_time_date*/
  (SELECT account_id FROM account WHERE username = 'past_game_events')    /*account_id*/
);
CALL add_game_event (
  'Game 7',                                                               /*game_name*/
  SUBDATE(CURDATE(), INTERVAL 4 WEEK),                                    /*game_starting_time_date*/
  SUBDATE(CURDATE(), INTERVAL 2 WEEK),                                    /*game_ending_time_date*/
  (SELECT account_id FROM account WHERE username = 'past_game_events')    /*account_id*/
);
CALL add_game_event (
  'Game 8',                                                               /*game_name*/
  SUBDATE(CURDATE(), INTERVAL 3 WEEK),                                    /*game_starting_time_date*/
  SUBDATE(CURDATE(), INTERVAL 1 WEEK),                                    /*game_ending_time_date*/
  (SELECT account_id FROM account WHERE username = 'past_game_events')    /*account_id*/
);/*
  current_game_events
*/
CALL add_game_event (
  'Game 9',                                                              /*game_name*/
  SUBDATE(CURDATE(), INTERVAL 8 DAY),                                     /*game_starting_time_date*/
  ADDDATE(CURDATE(), INTERVAL 1 DAY),                                     /*game_ending_time_date*/
  (SELECT account_id FROM account WHERE username = 'current_game_events') /*account_id*/
);
CALL add_game_event (
  'Game 10',                                                              /*game_name*/
  SUBDATE(CURDATE(), INTERVAL 7 DAY),                                     /*game_starting_time_date*/
  ADDDATE(CURDATE(), INTERVAL 2 DAY),                                     /*game_ending_time_date*/
  (SELECT account_id FROM account WHERE username = 'current_game_events') /*account_id*/
);
CALL add_game_event (
  'Game 11',                                                              /*game_name*/
  SUBDATE(CURDATE(), INTERVAL 6 DAY),                                     /*game_starting_time_date*/
  ADDDATE(CURDATE(), INTERVAL 3 DAY),                                     /*game_ending_time_date*/
  (SELECT account_id FROM account WHERE username = 'current_game_events') /*account_id*/
);
CALL add_game_event (
  'Game 12',                                                              /*game_name*/
  SUBDATE(CURDATE(), INTERVAL 5 DAY),                                     /*game_starting_time_date*/
  ADDDATE(CURDATE(), INTERVAL 4 DAY),                                     /*game_ending_time_date*/
  (SELECT account_id FROM account WHERE username = 'current_game_events') /*account_id*/
);
CALL add_game_event (
  'Game 13',                                                              /*game_name*/
  SUBDATE(CURDATE(), INTERVAL 4 DAY),                                     /*game_starting_time_date*/
  ADDDATE(CURDATE(), INTERVAL 5 DAY),                                     /*game_ending_time_date*/
  (SELECT account_id FROM account WHERE username = 'current_game_events') /*account_id*/
);
CALL add_game_event (
  'Game 14',                                                              /*game_name*/
  SUBDATE(CURDATE(), INTERVAL 3 DAY),                                     /*game_starting_time_date*/
  ADDDATE(CURDATE(), INTERVAL 6 DAY),                                     /*game_ending_time_date*/
  (SELECT account_id FROM account WHERE username = 'current_game_events') /*account_id*/
);
CALL add_game_event (
  'Game 15',                                                              /*game_name*/
  SUBDATE(CURDATE(), INTERVAL 2 DAY),                                     /*game_starting_time_date*/
  ADDDATE(CURDATE(), INTERVAL 7 DAY),                                     /*game_ending_time_date*/
  (SELECT account_id FROM account WHERE username = 'current_game_events') /*account_id*/
);
CALL add_game_event (
  'Game 16',                                                              /*game_name*/
  SUBDATE(CURDATE(), INTERVAL 1 DAY),                                     /*game_starting_time_date*/
  ADDDATE(CURDATE(), INTERVAL 8 DAY),                                     /*game_ending_time_date*/
  (SELECT account_id FROM account WHERE username = 'current_game_events') /*account_id*/
);/*
  upcoming_game_events
*/
CALL add_game_event (
  'Game 17',                                                              /*game_name*/
  ADDDATE(CURDATE(), INTERVAL 1 WEEK),                                    /*game_starting_time_date*/
  ADDDATE(CURDATE(), INTERVAL 3 DAY),                                     /*game_ending_time_date*/
  (SELECT account_id FROM account WHERE username = 'current_game_events') /*account_id*/
);
CALL add_game_event (
  'Game 18',                                                              /*game_name*/
  ADDDATE(CURDATE(), INTERVAL 2 WEEK),                                    /*game_starting_time_date*/
  ADDDATE(CURDATE(), INTERVAL 4 DAY),                                     /*game_ending_time_date*/
  (SELECT account_id FROM account WHERE username = 'current_game_events') /*account_id*/
);
CALL add_game_event (
  'Game 19',                                                              /*game_name*/
  ADDDATE(CURDATE(), INTERVAL 3 WEEK),                                    /*game_starting_time_date*/
  ADDDATE(CURDATE(), INTERVAL 5 DAY),                                     /*game_ending_time_date*/
  (SELECT account_id FROM account WHERE username = 'current_game_events') /*account_id*/
);
CALL add_game_event (
  'Game 20',                                                              /*game_name*/
  ADDDATE(CURDATE(), INTERVAL 4 WEEK),                                    /*game_starting_time_date*/
  ADDDATE(CURDATE(), INTERVAL 6 DAY),                                     /*game_ending_time_date*/
  (SELECT account_id FROM account WHERE username = 'current_game_events') /*account_id*/
);
CALL add_game_event (
  'Game 21',                                                              /*game_name*/
  ADDDATE(CURDATE(), INTERVAL 5 WEEK),                                    /*game_starting_time_date*/
  ADDDATE(CURDATE(), INTERVAL 7 DAY),                                     /*game_ending_time_date*/
  (SELECT account_id FROM account WHERE username = 'current_game_events') /*account_id*/
);
CALL add_game_event (
  'Game 22',                                                              /*game_name*/
  ADDDATE(CURDATE(), INTERVAL 6 WEEK),                                    /*game_starting_time_date*/
  ADDDATE(CURDATE(), INTERVAL 8 DAY),                                     /*game_ending_time_date*/
  (SELECT account_id FROM account WHERE username = 'current_game_events') /*account_id*/
);
CALL add_game_event (
  'Game 23',                                                              /*game_name*/
  ADDDATE(CURDATE(), INTERVAL 7 WEEK),                                    /*game_starting_time_date*/
  ADDDATE(CURDATE(), INTERVAL 9 DAY),                                     /*game_ending_time_date*/
  (SELECT account_id FROM account WHERE username = 'current_game_events') /*account_id*/
);
CALL add_game_event (
  'Game 24',                                                              /*game_name*/
  ADDDATE(CURDATE(), INTERVAL 8 WEEK),                                    /*game_starting_time_date*/
  ADDDATE(CURDATE(), INTERVAL 10 DAY),                                     /*game_ending_time_date*/
  (SELECT account_id FROM account WHERE username = 'current_game_events') /*account_id*/
);


delete from sponsor;
/*
  create sponsors of game_events
*/
CALL add_sponsor (
  'Intel',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'minor',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 1')   /*game_id*/
);
CALL add_sponsor (
  'ACSS',                                                      /*sponsor_name*/
  'http://logos.com/logo3.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc2',                                                      /*sponsor_desc*/
  'web_add2',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 1')   /*game_id*/
);
CALL add_sponsor (
  'YSES',                                                      /*sponsor_name*/
  'http://logos.com/logo4.png',                                 /*sponsor_logo*/
  'official partner',                                           /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 1')   /*game_id*/
);
CALL add_sponsor (
  'COSS',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 1')   /*game_id*/
);
CALL add_sponsor (
  'Intel',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'minor',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 2')   /*game_id*/
);
CALL add_sponsor (
  'ACSS',                                                      /*sponsor_name*/
  'http://logos.com/logo3.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc2',                                                      /*sponsor_desc*/
  'web_add2',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 2')   /*game_id*/
);
CALL add_sponsor (
  'YSES',                                                      /*sponsor_name*/
  'http://logos.com/logo4.png',                                 /*sponsor_logo*/
  'official partner',                                           /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 2')   /*game_id*/
);
CALL add_sponsor (
  'COSS',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 2')   /*game_id*/
);
CALL add_sponsor (
  'Intel',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'minor',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 3')   /*game_id*/
);
CALL add_sponsor (
  'ACSS',                                                      /*sponsor_name*/
  'http://logos.com/logo3.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc2',                                                      /*sponsor_desc*/
  'web_add2',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 3')   /*game_id*/
);
CALL add_sponsor (
  'YSES',                                                      /*sponsor_name*/
  'http://logos.com/logo4.png',                                 /*sponsor_logo*/
  'official partner',                                           /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 3')   /*game_id*/
);
CALL add_sponsor (
  'COSS',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 3')   /*game_id*/
);
CALL add_sponsor (
  'Intel',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'minor',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 4')   /*game_id*/
);
CALL add_sponsor (
  'ACSS',                                                      /*sponsor_name*/
  'http://logos.com/logo3.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc2',                                                      /*sponsor_desc*/
  'web_add2',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 4')   /*game_id*/
);
CALL add_sponsor (
  'YSES',                                                      /*sponsor_name*/
  'http://logos.com/logo4.png',                                 /*sponsor_logo*/
  'official partner',                                           /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 4')   /*game_id*/
);
CALL add_sponsor (
  'COSS',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 4')   /*game_id*/
);
CALL add_sponsor (
  'Intel',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'minor',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 5')   /*game_id*/
);
CALL add_sponsor (
  'ACSS',                                                      /*sponsor_name*/
  'http://logos.com/logo3.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc2',                                                      /*sponsor_desc*/
  'web_add2',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 5')   /*game_id*/
);
CALL add_sponsor (
  'YSES',                                                      /*sponsor_name*/
  'http://logos.com/logo4.png',                                 /*sponsor_logo*/
  'official partner',                                           /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 5')   /*game_id*/
);
CALL add_sponsor (
  'COSS',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 5')   /*game_id*/
);
CALL add_sponsor (
  'Intel',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'minor',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 6')   /*game_id*/
);
CALL add_sponsor (
  'ACSS',                                                      /*sponsor_name*/
  'http://logos.com/logo3.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc2',                                                      /*sponsor_desc*/
  'web_add2',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 6')   /*game_id*/
);
CALL add_sponsor (
  'YSES',                                                      /*sponsor_name*/
  'http://logos.com/logo4.png',                                 /*sponsor_logo*/
  'official partner',                                           /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 6')   /*game_id*/
);
CALL add_sponsor (
  'COSS',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 6')   /*game_id*/
);
CALL add_sponsor (
  'Intel',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'minor',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 7')   /*game_id*/
);
CALL add_sponsor (
  'ACSS',                                                      /*sponsor_name*/
  'http://logos.com/logo3.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc2',                                                      /*sponsor_desc*/
  'web_add2',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 7')   /*game_id*/
);
CALL add_sponsor (
  'YSES',                                                      /*sponsor_name*/
  'http://logos.com/logo4.png',                                 /*sponsor_logo*/
  'official partner',                                           /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 7')   /*game_id*/
);
CALL add_sponsor (
  'COSS',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 7')   /*game_id*/
);
CALL add_sponsor (
  'Intel',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'minor',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 8')   /*game_id*/
);
CALL add_sponsor (
  'ACSS',                                                      /*sponsor_name*/
  'http://logos.com/logo3.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc2',                                                      /*sponsor_desc*/
  'web_add2',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 8')   /*game_id*/
);
CALL add_sponsor (
  'YSES',                                                      /*sponsor_name*/
  'http://logos.com/logo4.png',                                 /*sponsor_logo*/
  'official partner',                                           /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 8')   /*game_id*/
);
CALL add_sponsor (
  'COSS',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 8')   /*game_id*/
);
CALL add_sponsor (
  'Intel',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'minor',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 9')   /*game_id*/
);
CALL add_sponsor (
  'ACSS',                                                      /*sponsor_name*/
  'http://logos.com/logo3.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc2',                                                      /*sponsor_desc*/
  'web_add2',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 9')   /*game_id*/
);
CALL add_sponsor (
  'YSES',                                                      /*sponsor_name*/
  'http://logos.com/logo4.png',                                 /*sponsor_logo*/
  'official partner',                                           /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 9')   /*game_id*/
);
CALL add_sponsor (
  'COSS',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 9')   /*game_id*/
);
CALL add_sponsor (
  'Intel',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'minor',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 10')   /*game_id*/
);
CALL add_sponsor (
  'ACSS',                                                      /*sponsor_name*/
  'http://logos.com/logo3.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc2',                                                      /*sponsor_desc*/
  'web_add2',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 10')   /*game_id*/
);
CALL add_sponsor (
  'YSES',                                                      /*sponsor_name*/
  'http://logos.com/logo4.png',                                 /*sponsor_logo*/
  'official partner',                                           /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 10')   /*game_id*/
);
CALL add_sponsor (
  'COSS',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 10')   /*game_id*/
);
CALL add_sponsor (
  'Intel',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'minor',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 11')   /*game_id*/
);
CALL add_sponsor (
  'ACSS',                                                      /*sponsor_name*/
  'http://logos.com/logo3.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc2',                                                      /*sponsor_desc*/
  'web_add2',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 11')   /*game_id*/
);
CALL add_sponsor (
  'YSES',                                                      /*sponsor_name*/
  'http://logos.com/logo4.png',                                 /*sponsor_logo*/
  'official partner',                                           /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 11')   /*game_id*/
);
CALL add_sponsor (
  'COSS',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 11')   /*game_id*/
);
CALL add_sponsor (
  'Intel',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'minor',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 12')   /*game_id*/
);
CALL add_sponsor (
  'ACSS',                                                      /*sponsor_name*/
  'http://logos.com/logo3.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc2',                                                      /*sponsor_desc*/
  'web_add2',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 12')   /*game_id*/
);
CALL add_sponsor (
  'YSES',                                                      /*sponsor_name*/
  'http://logos.com/logo4.png',                                 /*sponsor_logo*/
  'official partner',                                           /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 12')   /*game_id*/
);
CALL add_sponsor (
  'COSS',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 12')   /*game_id*/
);
CALL add_sponsor (
  'Intel',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'minor',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 13')   /*game_id*/
);
CALL add_sponsor (
  'ACSS',                                                      /*sponsor_name*/
  'http://logos.com/logo3.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc2',                                                      /*sponsor_desc*/
  'web_add2',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 13')   /*game_id*/
);
CALL add_sponsor (
  'YSES',                                                      /*sponsor_name*/
  'http://logos.com/logo4.png',                                 /*sponsor_logo*/
  'official partner',                                           /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 13')   /*game_id*/
);
CALL add_sponsor (
  'COSS',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 13')   /*game_id*/
);
CALL add_sponsor (
  'Intel',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'minor',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 14')   /*game_id*/
);
CALL add_sponsor (
  'ACSS',                                                      /*sponsor_name*/
  'http://logos.com/logo3.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc2',                                                      /*sponsor_desc*/
  'web_add2',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 14')   /*game_id*/
);
CALL add_sponsor (
  'YSES',                                                      /*sponsor_name*/
  'http://logos.com/logo4.png',                                 /*sponsor_logo*/
  'official partner',                                           /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 14')   /*game_id*/
);
CALL add_sponsor (
  'COSS',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 14')   /*game_id*/
);
CALL add_sponsor (
  'Intel',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'minor',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 15')   /*game_id*/
);
CALL add_sponsor (
  'ACSS',                                                      /*sponsor_name*/
  'http://logos.com/logo3.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc2',                                                      /*sponsor_desc*/
  'web_add2',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 15')   /*game_id*/
);
CALL add_sponsor (
  'YSES',                                                      /*sponsor_name*/
  'http://logos.com/logo4.png',                                 /*sponsor_logo*/
  'official partner',                                           /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 15')   /*game_id*/
);
CALL add_sponsor (
  'COSS',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 15')   /*game_id*/
);
CALL add_sponsor (
  'Intel',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'minor',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 16')   /*game_id*/
);
CALL add_sponsor (
  'ACSS',                                                      /*sponsor_name*/
  'http://logos.com/logo3.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc2',                                                      /*sponsor_desc*/
  'web_add2',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 16')   /*game_id*/
);
CALL add_sponsor (
  'YSES',                                                      /*sponsor_name*/
  'http://logos.com/logo4.png',                                 /*sponsor_logo*/
  'official partner',                                           /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 16')   /*game_id*/
);
CALL add_sponsor (
  'COSS',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 16')   /*game_id*/
);
CALL add_sponsor (
  'Intel',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'minor',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 17')   /*game_id*/
);
CALL add_sponsor (
  'ACSS',                                                      /*sponsor_name*/
  'http://logos.com/logo3.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc2',                                                      /*sponsor_desc*/
  'web_add2',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 17')   /*game_id*/
);
CALL add_sponsor (
  'YSES',                                                      /*sponsor_name*/
  'http://logos.com/logo4.png',                                 /*sponsor_logo*/
  'official partner',                                           /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 17')   /*game_id*/
);
CALL add_sponsor (
  'COSS',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 17')   /*game_id*/
);
CALL add_sponsor (
  'Intel',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'minor',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 18')   /*game_id*/
);
CALL add_sponsor (
  'ACSS',                                                      /*sponsor_name*/
  'http://logos.com/logo3.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc2',                                                      /*sponsor_desc*/
  'web_add2',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 18')   /*game_id*/
);
CALL add_sponsor (
  'YSES',                                                      /*sponsor_name*/
  'http://logos.com/logo4.png',                                 /*sponsor_logo*/
  'official partner',                                           /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 18')   /*game_id*/
);
CALL add_sponsor (
  'COSS',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 18')   /*game_id*/
);
CALL add_sponsor (
  'Intel',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'minor',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 19')   /*game_id*/
);
CALL add_sponsor (
  'ACSS',                                                      /*sponsor_name*/
  'http://logos.com/logo3.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc2',                                                      /*sponsor_desc*/
  'web_add2',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 19')   /*game_id*/
);
CALL add_sponsor (
  'YSES',                                                      /*sponsor_name*/
  'http://logos.com/logo4.png',                                 /*sponsor_logo*/
  'official partner',                                           /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 19')   /*game_id*/
);
CALL add_sponsor (
  'COSS',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 19')   /*game_id*/
);
CALL add_sponsor (
  'Intel',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'minor',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 20')   /*game_id*/
);
CALL add_sponsor (
  'ACSS',                                                      /*sponsor_name*/
  'http://logos.com/logo3.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc2',                                                      /*sponsor_desc*/
  'web_add2',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 20')   /*game_id*/
);
CALL add_sponsor (
  'YSES',                                                      /*sponsor_name*/
  'http://logos.com/logo4.png',                                 /*sponsor_logo*/
  'official partner',                                           /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 20')   /*game_id*/
);
CALL add_sponsor (
  'COSS',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 20')   /*game_id*/
);
CALL add_sponsor (
  'Intel',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'minor',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 21')   /*game_id*/
);
CALL add_sponsor (
  'ACSS',                                                      /*sponsor_name*/
  'http://logos.com/logo3.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc2',                                                      /*sponsor_desc*/
  'web_add2',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 21')   /*game_id*/
);
CALL add_sponsor (
  'YSES',                                                      /*sponsor_name*/
  'http://logos.com/logo4.png',                                 /*sponsor_logo*/
  'official partner',                                           /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 21')   /*game_id*/
);
CALL add_sponsor (
  'COSS',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 21')   /*game_id*/
);
CALL add_sponsor (
  'Intel',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'minor',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 22')   /*game_id*/
);
CALL add_sponsor (
  'ACSS',                                                      /*sponsor_name*/
  'http://logos.com/logo3.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc2',                                                      /*sponsor_desc*/
  'web_add2',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 22')   /*game_id*/
);
CALL add_sponsor (
  'YSES',                                                      /*sponsor_name*/
  'http://logos.com/logo4.png',                                 /*sponsor_logo*/
  'official partner',                                           /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 22')   /*game_id*/
);
CALL add_sponsor (
  'COSS',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 22')   /*game_id*/
);
CALL add_sponsor (
  'Intel',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'minor',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 23')   /*game_id*/
);
CALL add_sponsor (
  'ACSS',                                                      /*sponsor_name*/
  'http://logos.com/logo3.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc2',                                                      /*sponsor_desc*/
  'web_add2',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 23')   /*game_id*/
);
CALL add_sponsor (
  'YSES',                                                      /*sponsor_name*/
  'http://logos.com/logo4.png',                                 /*sponsor_logo*/
  'official partner',                                           /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 23')   /*game_id*/
);
CALL add_sponsor (
  'COSS',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 23')   /*game_id*/
);
CALL add_sponsor (
  'Intel',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'minor',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 24')   /*game_id*/
);
CALL add_sponsor (
  'ACSS',                                                      /*sponsor_name*/
  'http://logos.com/logo3.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc2',                                                      /*sponsor_desc*/
  'web_add2',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 24')   /*game_id*/
);
CALL add_sponsor (
  'YSES',                                                      /*sponsor_name*/
  'http://logos.com/logo4.png',                                 /*sponsor_logo*/
  'official partner',                                           /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 24')   /*game_id*/
);
CALL add_sponsor (
  'COSS',                                                      /*sponsor_name*/
  'http://logos.com/logo2.png',                                 /*sponsor_logo*/
  'major',                                                      /*sponsor_type*/
  'desc1',                                                      /*sponsor_desc*/
  'web_add1',                                                   /*web_address*/
  (SELECT game_id FROM game_event WHERE game_name = 'Game 24')   /*game_id*/
);

delete from sport;
/*
  create sports of game_events
*/
INSERT INTO
  sport (sport_id, sport_type, division, game_id)
VALUES
  (1, 'Volleyball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 1')),
  (2, 'Volleyball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 2')),
  (3, 'Volleyball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 3')),
  (4, 'Volleyball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 4')),
  (5, 'Volleyball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 5')),
  (6, 'Volleyball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 6')),
  (7, 'Volleyball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 7')),
  (8, 'Volleyball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 8')),
  (9, 'Volleyball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 9')),
  (10, 'Volleyball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 10')),
  (11, 'Volleyball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 11')),
  (12, 'Volleyball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 12')),
  (13, 'Volleyball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 13')),
  (14, 'Volleyball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 14')),
  (15, 'Volleyball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 15')),
  (16, 'Volleyball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 16')),
  (17, 'Volleyball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 17')),
  (18, 'Volleyball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 18')),
  (19, 'Volleyball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 19')),
  (20, 'Volleyball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 20')),
  (21, 'Volleyball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 21')),
  (22, 'Volleyball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 22')),
  (23, 'Volleyball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 23')),
  (24, 'Volleyball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 24')),
  (25, 'Volleyball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 1')),
  (26, 'Volleyball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 2')),
  (27, 'Volleyball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 3')),
  (28, 'Volleyball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 4')),
  (29, 'Volleyball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 5')),
  (30, 'Volleyball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 6')),
  (31, 'Volleyball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 7')),
  (32, 'Volleyball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 8')),
  (33, 'Volleyball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 9')),
  (34, 'Volleyball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 10')),
  (35, 'Volleyball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 11')),
  (36, 'Volleyball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 12')),
  (37, 'Volleyball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 13')),
  (38, 'Volleyball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 14')),
  (39, 'Volleyball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 15')),
  (40, 'Volleyball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 16')),
  (41, 'Volleyball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 17')),
  (42, 'Volleyball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 18')),
  (43, 'Volleyball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 19')),
  (44, 'Volleyball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 20')),
  (45, 'Volleyball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 21')),
  (46, 'Volleyball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 22')),
  (47, 'Volleyball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 23')),
  (48, 'Volleyball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 24')),
  (49, 'Volleyball', 'mixed', (SELECT game_id FROM game_event WHERE game_name = 'Game 1')),
  (50, 'Volleyball', 'mixed', (SELECT game_id FROM game_event WHERE game_name = 'Game 2')),
  (51, 'Volleyball', 'mixed', (SELECT game_id FROM game_event WHERE game_name = 'Game 3')),
  (52, 'Volleyball', 'mixed', (SELECT game_id FROM game_event WHERE game_name = 'Game 4')),
  (53, 'Volleyball', 'mixed', (SELECT game_id FROM game_event WHERE game_name = 'Game 5')),
  (54, 'Volleyball', 'mixed', (SELECT game_id FROM game_event WHERE game_name = 'Game 6')),
  (55, 'Volleyball', 'mixed', (SELECT game_id FROM game_event WHERE game_name = 'Game 7')),
  (56, 'Volleyball', 'mixed', (SELECT game_id FROM game_event WHERE game_name = 'Game 8')),
  (57, 'Volleyball', 'mixed', (SELECT game_id FROM game_event WHERE game_name = 'Game 9')),
  (58, 'Volleyball', 'mixed', (SELECT game_id FROM game_event WHERE game_name = 'Game 10')),
  (59, 'Volleyball', 'mixed', (SELECT game_id FROM game_event WHERE game_name = 'Game 11')),
  (60, 'Volleyball', 'mixed', (SELECT game_id FROM game_event WHERE game_name = 'Game 12')),
  (61, 'Volleyball', 'mixed', (SELECT game_id FROM game_event WHERE game_name = 'Game 13')),
  (62, 'Volleyball', 'mixed', (SELECT game_id FROM game_event WHERE game_name = 'Game 14')),
  (63, 'Volleyball', 'mixed', (SELECT game_id FROM game_event WHERE game_name = 'Game 15')),
  (64, 'Volleyball', 'mixed', (SELECT game_id FROM game_event WHERE game_name = 'Game 16')),
  (65, 'Volleyball', 'mixed', (SELECT game_id FROM game_event WHERE game_name = 'Game 17')),
  (66, 'Volleyball', 'mixed', (SELECT game_id FROM game_event WHERE game_name = 'Game 18')),
  (67, 'Volleyball', 'mixed', (SELECT game_id FROM game_event WHERE game_name = 'Game 19')),
  (68, 'Volleyball', 'mixed', (SELECT game_id FROM game_event WHERE game_name = 'Game 20')),
  (69, 'Volleyball', 'mixed', (SELECT game_id FROM game_event WHERE game_name = 'Game 21')),
  (70, 'Volleyball', 'mixed', (SELECT game_id FROM game_event WHERE game_name = 'Game 22')),
  (71, 'Volleyball', 'mixed', (SELECT game_id FROM game_event WHERE game_name = 'Game 23')),
  (72, 'Volleyball', 'mixed', (SELECT game_id FROM game_event WHERE game_name = 'Game 24')),
  (73, 'Basketball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 1')),
  (74, 'Basketball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 2')),
  (75, 'Basketball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 3')),
  (76, 'Basketball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 4')),
  (77, 'Basketball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 5')),
  (78, 'Basketball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 6')),
  (79, 'Basketball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 7')),
  (80, 'Basketball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 8')),
  (81, 'Basketball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 9')),
  (82, 'Basketball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 10')),
  (83, 'Basketball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 11')),
  (84, 'Basketball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 12')),
  (85, 'Basketball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 13')),
  (86, 'Basketball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 14')),
  (87, 'Basketball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 15')),
  (88, 'Basketball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 16')),
  (89, 'Basketball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 17')),
  (90, 'Basketball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 18')),
  (91, 'Basketball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 19')),
  (92, 'Basketball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 20')),
  (93, 'Basketball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 21')),
  (94, 'Basketball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 22')),
  (95, 'Basketball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 23')),
  (96, 'Basketball', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 24')),
  (97, 'Basketball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 1')),
  (98, 'Basketball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 2')),
  (99, 'Basketball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 3')),
  (100, 'Basketball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 4')),
  (101, 'Basketball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 5')),
  (102, 'Basketball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 6')),
  (103, 'Basketball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 7')),
  (104, 'Basketball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 8')),
  (105, 'Basketball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 9')),
  (106, 'Basketball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 10')),
  (107, 'Basketball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 11')),
  (108, 'Basketball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 12')),
  (109, 'Basketball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 13')),
  (110, 'Basketball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 14')),
  (111, 'Basketball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 15')),
  (112, 'Basketball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 16')),
  (113, 'Basketball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 17')),
  (114, 'Basketball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 18')),
  (115, 'Basketball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 19')),
  (116, 'Basketball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 20')),
  (117, 'Basketball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 21')),
  (118, 'Basketball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 22')),
  (119, 'Basketball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 23')),
  (120, 'Basketball', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 24')),
  (121, 'Football', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 1')),
  (122, 'Football', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 2')),
  (123, 'Football', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 3')),
  (124, 'Football', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 4')),
  (125, 'Football', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 5')),
  (126, 'Football', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 6')),
  (127, 'Football', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 7')),
  (128, 'Football', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 8')),
  (129, 'Football', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 9')),
  (130, 'Football', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 10')),
  (131, 'Football', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 11')),
  (132, 'Football', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 12')),
  (133, 'Football', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 13')),
  (134, 'Football', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 14')),
  (135, 'Football', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 15')),
  (136, 'Football', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 16')),
  (137, 'Football', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 17')),
  (138, 'Football', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 18')),
  (139, 'Football', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 19')),
  (140, 'Football', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 20')),
  (141, 'Football', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 21')),
  (142, 'Football', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 22')),
  (143, 'Football', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 23')),
  (144, 'Football', 'men', (SELECT game_id FROM game_event WHERE game_name = 'Game 24')),
  (145, 'Football', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 1')),
  (146, 'Football', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 2')),
  (147, 'Football', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 3')),
  (148, 'Football', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 4')),
  (149, 'Football', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 5')),
  (150, 'Football', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 6')),
  (151, 'Football', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 7')),
  (152, 'Football', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 8')),
  (153, 'Football', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 9')),
  (154, 'Football', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 10')),
  (155, 'Football', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 11')),
  (156, 'Football', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 12')),
  (157, 'Football', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 13')),
  (158, 'Football', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 14')),
  (159, 'Football', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 15')),
  (160, 'Football', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 16')),
  (161, 'Football', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 17')),
  (162, 'Football', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 18')),
  (163, 'Football', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 19')),
  (164, 'Football', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 20')),
  (165, 'Football', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 21')),
  (166, 'Football', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 22')),
  (167, 'Football', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 23')),
  (168, 'Football', 'women', (SELECT game_id FROM game_event WHERE game_name = 'Game 24'));


delete from match_event;
/*
  create match_events per sport
*/
INSERT INTO
  match_event 
VALUES 
  (1,true, CURDATE(), 'elimination', 1, 'Baker Hall', 'UPLB', 'Gym'),
  (2,true, CURDATE(), 'elimination', 1, 'Copeland Gym','UPLB', 'Gym'),
  (3,true, CURDATE(), 'elimination', 1, 'Physci Building', 'UPLB', 'Building'),
  (4,true, CURDATE(), 'elimination', 1, 'Freedom Park', 'UPLB', 'Park'),
  (5,true, CURDATE(), 'semi-finals', 1, 'Freedom Park', 'UPLB', 'Park'),
  (6,true, CURDATE(), 'semi-finals', 1, 'Freedom Park', 'UPLB', 'Park'),
  (7,true, CURDATE(), 'finals', 1,'Freedom Park', 'UPLB', 'Park'),
  (8,true, CURDATE(), 'elimination', 2, 'Baker Hall', 'UPLB', 'Gym'),
  (9,true, CURDATE(), 'elimination', 2, 'Copeland Gym','UPLB', 'Gym'),
  (10,true, CURDATE(), 'elimination', 2, 'Physci Building', 'UPLB', 'Building'),
  (11,true, CURDATE(), 'elimination', 2, 'Freedom Park', 'UPLB', 'Park'),
  (12,true, CURDATE(), 'semi-finals', 2, 'Freedom Park', 'UPLB', 'Park'),
  (13,true, CURDATE(), 'semi-finals', 2, 'Freedom Park', 'UPLB', 'Park'),
  (14,true, CURDATE(), 'finals', 2,'Freedom Park', 'UPLB', 'Park'),
  (15,true, CURDATE(), 'elimination', 3, 'Baker Hall', 'UPLB', 'Gym'),
  (16,true, CURDATE(), 'elimination', 3, 'Copeland Gym','UPLB', 'Gym'),
  (17,true, CURDATE(), 'elimination', 3, 'Physci Building', 'UPLB', 'Building'),
  (18,true, CURDATE(), 'elimination', 3, 'Freedom Park', 'UPLB', 'Park'),
  (19,true, CURDATE(), 'semi-finals', 3, 'Freedom Park', 'UPLB', 'Park'),
  (20,true, CURDATE(), 'semi-finals', 3, 'Freedom Park', 'UPLB', 'Park'),
  (21,true, CURDATE(), 'finals', 3,'Freedom Park', 'UPLB', 'Park'),
  (22,true, CURDATE(), 'elimination', 4, 'Baker Hall', 'UPLB', 'Gym'),
  (23,true, CURDATE(), 'elimination', 4, 'Copeland Gym','UPLB', 'Gym'),
  (24,true, CURDATE(), 'elimination', 4, 'Physci Building', 'UPLB', 'Building'),
  (25,true, CURDATE(), 'elimination', 4, 'Freedom Park', 'UPLB', 'Park'),
  (26,true, CURDATE(), 'semi-finals', 4, 'Freedom Park', 'UPLB', 'Park'),
  (27,true, CURDATE(), 'semi-finals', 4, 'Freedom Park', 'UPLB', 'Park'),
  (28,true, CURDATE(), 'finals', 4,'Freedom Park', 'UPLB', 'Park'),
  (29,true, CURDATE(), 'elimination', 5, 'Baker Hall', 'UPLB', 'Gym'),
  (30,true, CURDATE(), 'elimination', 5, 'Copeland Gym','UPLB', 'Gym'),
  (31,true, CURDATE(), 'elimination', 5, 'Physci Building', 'UPLB', 'Building'),
  (32,true, CURDATE(), 'elimination', 5, 'Freedom Park', 'UPLB', 'Park'),
  (33,true, CURDATE(), 'semi-finals', 5, 'Freedom Park', 'UPLB', 'Park'),
  (34,true, CURDATE(), 'semi-finals', 5, 'Freedom Park', 'UPLB', 'Park'),
  (35,true, CURDATE(), 'finals', 5,'Freedom Park', 'UPLB', 'Park'),
  (36,true, CURDATE(), 'elimination', 6, 'Baker Hall', 'UPLB', 'Gym'),
  (37,true, CURDATE(), 'elimination', 6, 'Copeland Gym','UPLB', 'Gym'),
  (38,true, CURDATE(), 'elimination', 6, 'Physci Building', 'UPLB', 'Building'),
  (39,true, CURDATE(), 'elimination', 6, 'Freedom Park', 'UPLB', 'Park'),
  (40,true, CURDATE(), 'semi-finals', 6, 'Freedom Park', 'UPLB', 'Park'),
  (41,true, CURDATE(), 'semi-finals', 6, 'Freedom Park', 'UPLB', 'Park'),
  (42,true, CURDATE(), 'finals', 6,'Freedom Park', 'UPLB', 'Park'),
  (43,true, CURDATE(), 'elimination', 7, 'Baker Hall', 'UPLB', 'Gym'),
  (44,true, CURDATE(), 'elimination', 7, 'Copeland Gym','UPLB', 'Gym'),
  (45,true, CURDATE(), 'elimination', 7, 'Physci Building', 'UPLB', 'Building'),
  (46,true, CURDATE(), 'elimination', 7, 'Freedom Park', 'UPLB', 'Park'),
  (47,true, CURDATE(), 'semi-finals', 7, 'Freedom Park', 'UPLB', 'Park'),
  (48,true, CURDATE(), 'semi-finals', 7, 'Freedom Park', 'UPLB', 'Park'),
  (49,true, CURDATE(), 'finals', 7,'Freedom Park', 'UPLB', 'Park'),
  (50,true, CURDATE(), 'elimination', 8, 'Baker Hall', 'UPLB', 'Gym'),
  (51,true, CURDATE(), 'elimination', 8, 'Copeland Gym','UPLB', 'Gym'),
  (52,true, CURDATE(), 'elimination', 8, 'Physci Building', 'UPLB', 'Building'),
  (53,true, CURDATE(), 'elimination', 8, 'Freedom Park', 'UPLB', 'Park'),
  (54,true, CURDATE(), 'semi-finals', 8, 'Freedom Park', 'UPLB', 'Park'),
  (55,true, CURDATE(), 'semi-finals', 8, 'Freedom Park', 'UPLB', 'Park'),
  (56,true, CURDATE(), 'finals', 8,'Freedom Park', 'UPLB', 'Park'),
  (57,true, CURDATE(), 'elimination', 9, 'Baker Hall', 'UPLB', 'Gym'),
  (58,true, CURDATE(), 'elimination', 9, 'Copeland Gym','UPLB', 'Gym'),
  (59,true, CURDATE(), 'elimination', 9, 'Physci Building', 'UPLB', 'Building'),
  (60,true, CURDATE(), 'elimination', 9, 'Freedom Park', 'UPLB', 'Park'),
  (61,true, CURDATE(), 'semi-finals', 9, 'Freedom Park', 'UPLB', 'Park'),
  (62,true, CURDATE(), 'semi-finals', 9, 'Freedom Park', 'UPLB', 'Park'),
  (63,true, CURDATE(), 'finals', 9,'Freedom Park', 'UPLB', 'Park'),
  (64,true, CURDATE(), 'elimination', 10, 'Baker Hall', 'UPLB', 'Gym'),
  (65,true, CURDATE(), 'elimination', 10, 'Copeland Gym','UPLB', 'Gym'),
  (66,true, CURDATE(), 'elimination', 10, 'Physci Building', 'UPLB', 'Building'),
  (67,true, CURDATE(), 'elimination', 10, 'Freedom Park', 'UPLB', 'Park'),
  (68,true, CURDATE(), 'semi-finals', 10, 'Freedom Park', 'UPLB', 'Park'),
  (69,true, CURDATE(), 'semi-finals', 10, 'Freedom Park', 'UPLB', 'Park'),
  (70,true, CURDATE(), 'finals', 10,'Freedom Park', 'UPLB', 'Park'),
  (71,true, CURDATE(), 'elimination', 11, 'Baker Hall', 'UPLB', 'Gym'),
  (72,true, CURDATE(), 'elimination', 11, 'Copeland Gym','UPLB', 'Gym'),
  (73,true, CURDATE(), 'elimination', 11, 'Physci Building', 'UPLB', 'Building'),
  (74,true, CURDATE(), 'elimination', 11, 'Freedom Park', 'UPLB', 'Park'),
  (75,true, CURDATE(), 'semi-finals', 11, 'Freedom Park', 'UPLB', 'Park'),
  (76,true, CURDATE(), 'semi-finals', 11, 'Freedom Park', 'UPLB', 'Park'),
  (77,true, CURDATE(), 'finals', 11,'Freedom Park', 'UPLB', 'Park'),
  (78,true, CURDATE(), 'elimination', 12, 'Baker Hall', 'UPLB', 'Gym'),
  (79,true, CURDATE(), 'elimination', 12, 'Copeland Gym','UPLB', 'Gym'),
  (80,true, CURDATE(), 'elimination', 12, 'Physci Building', 'UPLB', 'Building'),
  (81,true, CURDATE(), 'elimination', 12, 'Freedom Park', 'UPLB', 'Park'),
  (82,true, CURDATE(), 'semi-finals', 12, 'Freedom Park', 'UPLB', 'Park'),
  (83,true, CURDATE(), 'semi-finals', 12, 'Freedom Park', 'UPLB', 'Park'),
  (84,true, CURDATE(), 'finals', 12,'Freedom Park', 'UPLB', 'Park'),
  (85,true, CURDATE(), 'elimination', 13, 'Baker Hall', 'UPLB', 'Gym'),
  (86,true, CURDATE(), 'elimination', 13, 'Copeland Gym','UPLB', 'Gym'),
  (87,true, CURDATE(), 'elimination', 13, 'Physci Building', 'UPLB', 'Building'),
  (88,true, CURDATE(), 'elimination', 13, 'Freedom Park', 'UPLB', 'Park'),
  (89,true, CURDATE(), 'semi-finals', 13, 'Freedom Park', 'UPLB', 'Park'),
  (90,true, CURDATE(), 'semi-finals', 13, 'Freedom Park', 'UPLB', 'Park'),
  (91,true, CURDATE(), 'finals', 13,'Freedom Park', 'UPLB', 'Park'),
  (92,true, CURDATE(), 'elimination', 14, 'Baker Hall', 'UPLB', 'Gym'),
  (93,true, CURDATE(), 'elimination', 14, 'Copeland Gym','UPLB', 'Gym'),
  (94,true, CURDATE(), 'elimination', 14, 'Physci Building', 'UPLB', 'Building'),
  (95,true, CURDATE(), 'elimination', 14, 'Freedom Park', 'UPLB', 'Park'),
  (96,true, CURDATE(), 'semi-finals', 14, 'Freedom Park', 'UPLB', 'Park'),
  (97,true, CURDATE(), 'semi-finals', 14, 'Freedom Park', 'UPLB', 'Park'),
  (98,true, CURDATE(), 'finals', 14,'Freedom Park', 'UPLB', 'Park'),
  (99,true, CURDATE(), 'elimination', 15, 'Baker Hall', 'UPLB', 'Gym'),
  (100,true, CURDATE(), 'elimination', 15, 'Copeland Gym','UPLB', 'Gym'),
  (101,true, CURDATE(), 'elimination', 15, 'Physci Building', 'UPLB', 'Building'),
  (102,true, CURDATE(), 'elimination', 15, 'Freedom Park', 'UPLB', 'Park'),
  (103,true, CURDATE(), 'semi-finals', 15, 'Freedom Park', 'UPLB', 'Park'),
  (104,true, CURDATE(), 'semi-finals', 15, 'Freedom Park', 'UPLB', 'Park'),
  (105,true, CURDATE(), 'finals', 15,'Freedom Park', 'UPLB', 'Park'),
  (106,true, CURDATE(), 'elimination', 16, 'Baker Hall', 'UPLB', 'Gym'),
  (107,true, CURDATE(), 'elimination', 16, 'Copeland Gym','UPLB', 'Gym'),
  (108,true, CURDATE(), 'elimination', 16, 'Physci Building', 'UPLB', 'Building'),
  (109,true, CURDATE(), 'elimination', 16, 'Freedom Park', 'UPLB', 'Park'),
  (110,true, CURDATE(), 'semi-finals', 16, 'Freedom Park', 'UPLB', 'Park'),
  (111,true, CURDATE(), 'semi-finals', 16, 'Freedom Park', 'UPLB', 'Park'),
  (112,true, CURDATE(), 'finals', 16,'Freedom Park', 'UPLB', 'Park'),
  (113,true, CURDATE(), 'elimination', 17, 'Baker Hall', 'UPLB', 'Gym'),
  (114,true, CURDATE(), 'elimination', 17, 'Copeland Gym','UPLB', 'Gym'),
  (115,true, CURDATE(), 'elimination', 17, 'Physci Building', 'UPLB', 'Building'),
  (116,true, CURDATE(), 'elimination', 17, 'Freedom Park', 'UPLB', 'Park'),
  (117,true, CURDATE(), 'semi-finals', 17, 'Freedom Park', 'UPLB', 'Park'),
  (118,true, CURDATE(), 'semi-finals', 17, 'Freedom Park', 'UPLB', 'Park'),
  (119,true, CURDATE(), 'finals', 17,'Freedom Park', 'UPLB', 'Park'),
  (120,true, CURDATE(), 'elimination', 18, 'Baker Hall', 'UPLB', 'Gym'),
  (121,true, CURDATE(), 'elimination', 18, 'Copeland Gym','UPLB', 'Gym'),
  (122,true, CURDATE(), 'elimination', 18, 'Physci Building', 'UPLB', 'Building'),
  (123,true, CURDATE(), 'elimination', 18, 'Freedom Park', 'UPLB', 'Park'),
  (124,true, CURDATE(), 'semi-finals', 18, 'Freedom Park', 'UPLB', 'Park'),
  (125,true, CURDATE(), 'semi-finals', 18, 'Freedom Park', 'UPLB', 'Park'),
  (126,true, CURDATE(), 'finals', 18,'Freedom Park', 'UPLB', 'Park'),
  (127,true, CURDATE(), 'elimination', 19, 'Baker Hall', 'UPLB', 'Gym'),
  (128,true, CURDATE(), 'elimination', 19, 'Copeland Gym','UPLB', 'Gym'),
  (129,true, CURDATE(), 'elimination', 19, 'Physci Building', 'UPLB', 'Building'),
  (130,true, CURDATE(), 'elimination', 19, 'Freedom Park', 'UPLB', 'Park'),
  (131,true, CURDATE(), 'semi-finals', 19, 'Freedom Park', 'UPLB', 'Park'),
  (132,true, CURDATE(), 'semi-finals', 19, 'Freedom Park', 'UPLB', 'Park'),
  (133,true, CURDATE(), 'finals', 19,'Freedom Park', 'UPLB', 'Park'),
  (134,true, CURDATE(), 'elimination', 20, 'Baker Hall', 'UPLB', 'Gym'),
  (135,true, CURDATE(), 'elimination', 20, 'Copeland Gym','UPLB', 'Gym'),
  (136,true, CURDATE(), 'elimination', 20, 'Physci Building', 'UPLB', 'Building'),
  (137,true, CURDATE(), 'elimination', 20, 'Freedom Park', 'UPLB', 'Park'),
  (138,true, CURDATE(), 'semi-finals', 20, 'Freedom Park', 'UPLB', 'Park'),
  (139,true, CURDATE(), 'semi-finals', 20, 'Freedom Park', 'UPLB', 'Park'),
  (140,true, CURDATE(), 'finals', 20,'Freedom Park', 'UPLB', 'Park'),
  (141,true, CURDATE(), 'elimination', 21, 'Baker Hall', 'UPLB', 'Gym'),
  (142,true, CURDATE(), 'elimination', 21, 'Copeland Gym','UPLB', 'Gym'),
  (143,true, CURDATE(), 'elimination', 21, 'Physci Building', 'UPLB', 'Building'),
  (144,true, CURDATE(), 'elimination', 21, 'Freedom Park', 'UPLB', 'Park'),
  (145,true, CURDATE(), 'semi-finals', 21, 'Freedom Park', 'UPLB', 'Park'),
  (146,true, CURDATE(), 'semi-finals', 21, 'Freedom Park', 'UPLB', 'Park'),
  (147,true, CURDATE(), 'finals', 21,'Freedom Park', 'UPLB', 'Park'),
  (148,true, CURDATE(), 'elimination', 22, 'Baker Hall', 'UPLB', 'Gym'),
  (149,true, CURDATE(), 'elimination', 22, 'Copeland Gym','UPLB', 'Gym'),
  (150,true, CURDATE(), 'elimination', 22, 'Physci Building', 'UPLB', 'Building'),
  (151,true, CURDATE(), 'elimination', 22, 'Freedom Park', 'UPLB', 'Park'),
  (152,true, CURDATE(), 'semi-finals', 22, 'Freedom Park', 'UPLB', 'Park'),
  (153,true, CURDATE(), 'semi-finals', 22, 'Freedom Park', 'UPLB', 'Park'),
  (154,true, CURDATE(), 'finals', 22,'Freedom Park', 'UPLB', 'Park'),
  (155,true, CURDATE(), 'elimination', 23, 'Baker Hall', 'UPLB', 'Gym'),
  (156,true, CURDATE(), 'elimination', 23, 'Copeland Gym','UPLB', 'Gym'),
  (157,true, CURDATE(), 'elimination', 23, 'Physci Building', 'UPLB', 'Building'),
  (158,true, CURDATE(), 'elimination', 23, 'Freedom Park', 'UPLB', 'Park'),
  (159,true, CURDATE(), 'semi-finals', 23, 'Freedom Park', 'UPLB', 'Park'),
  (160,true, CURDATE(), 'semi-finals', 23, 'Freedom Park', 'UPLB', 'Park'),
  (161,true, CURDATE(), 'finals', 23,'Freedom Park', 'UPLB', 'Park'),
  (162,true, CURDATE(), 'elimination', 24, 'Baker Hall', 'UPLB', 'Gym'),
  (163,true, CURDATE(), 'elimination', 24, 'Copeland Gym','UPLB', 'Gym'),
  (164,true, CURDATE(), 'elimination', 24, 'Physci Building', 'UPLB', 'Building'),
  (165,true, CURDATE(), 'elimination', 24, 'Freedom Park', 'UPLB', 'Park'),
  (166,true, CURDATE(), 'semi-finals', 24, 'Freedom Park', 'UPLB', 'Park'),
  (167,true, CURDATE(), 'semi-finals', 24, 'Freedom Park', 'UPLB', 'Park'),
  (168,true, CURDATE(), 'finals', 24,'Freedom Park', 'UPLB', 'Park'),
  (169,true, CURDATE(), 'elimination', 25, 'Baker Hall', 'UPLB', 'Gym'),
  (170,true, CURDATE(), 'elimination', 25, 'Copeland Gym','UPLB', 'Gym'),
  (171,true, CURDATE(), 'elimination', 25, 'Physci Building', 'UPLB', 'Building'),
  (172,true, CURDATE(), 'elimination', 25, 'Freedom Park', 'UPLB', 'Park'),
  (173,true, CURDATE(), 'semi-finals', 25, 'Freedom Park', 'UPLB', 'Park'),
  (174,true, CURDATE(), 'semi-finals', 25, 'Freedom Park', 'UPLB', 'Park'),
  (175,true, CURDATE(), 'finals', 25,'Freedom Park', 'UPLB', 'Park'),
  (176,true, CURDATE(), 'elimination', 26, 'Baker Hall', 'UPLB', 'Gym'),
  (177,true, CURDATE(), 'elimination', 26, 'Copeland Gym','UPLB', 'Gym'),
  (178,true, CURDATE(), 'elimination', 26, 'Physci Building', 'UPLB', 'Building'),
  (179,true, CURDATE(), 'elimination', 26, 'Freedom Park', 'UPLB', 'Park'),
  (180,true, CURDATE(), 'semi-finals', 26, 'Freedom Park', 'UPLB', 'Park'),
  (181,true, CURDATE(), 'semi-finals', 26, 'Freedom Park', 'UPLB', 'Park'),
  (182,true, CURDATE(), 'finals', 26,'Freedom Park', 'UPLB', 'Park'),
  (183,true, CURDATE(), 'elimination', 27, 'Baker Hall', 'UPLB', 'Gym'),
  (184,true, CURDATE(), 'elimination', 27, 'Copeland Gym','UPLB', 'Gym'),
  (185,true, CURDATE(), 'elimination', 27, 'Physci Building', 'UPLB', 'Building'),
  (186,true, CURDATE(), 'elimination', 27, 'Freedom Park', 'UPLB', 'Park'),
  (187,true, CURDATE(), 'semi-finals', 27, 'Freedom Park', 'UPLB', 'Park'),
  (188,true, CURDATE(), 'semi-finals', 27, 'Freedom Park', 'UPLB', 'Park'),
  (189,true, CURDATE(), 'finals', 27,'Freedom Park', 'UPLB', 'Park'),
  (190,true, CURDATE(), 'elimination', 28, 'Baker Hall', 'UPLB', 'Gym'),
  (191,true, CURDATE(), 'elimination', 28, 'Copeland Gym','UPLB', 'Gym'),
  (192,true, CURDATE(), 'elimination', 28, 'Physci Building', 'UPLB', 'Building'),
  (193,true, CURDATE(), 'elimination', 28, 'Freedom Park', 'UPLB', 'Park'),
  (194,true, CURDATE(), 'semi-finals', 28, 'Freedom Park', 'UPLB', 'Park'),
  (195,true, CURDATE(), 'semi-finals', 28, 'Freedom Park', 'UPLB', 'Park'),
  (196,true, CURDATE(), 'finals', 28,'Freedom Park', 'UPLB', 'Park'),
  (197,true, CURDATE(), 'elimination', 29, 'Baker Hall', 'UPLB', 'Gym'),
  (198,true, CURDATE(), 'elimination', 29, 'Copeland Gym','UPLB', 'Gym'),
  (199,true, CURDATE(), 'elimination', 29, 'Physci Building', 'UPLB', 'Building'),
  (200,true, CURDATE(), 'elimination', 29, 'Freedom Park', 'UPLB', 'Park'),
  (201,true, CURDATE(), 'semi-finals', 29, 'Freedom Park', 'UPLB', 'Park'),
  (202,true, CURDATE(), 'semi-finals', 29, 'Freedom Park', 'UPLB', 'Park'),
  (203,true, CURDATE(), 'finals', 29,'Freedom Park', 'UPLB', 'Park'),
  (204,true, CURDATE(), 'elimination', 30, 'Baker Hall', 'UPLB', 'Gym'),
  (205,true, CURDATE(), 'elimination', 30, 'Copeland Gym','UPLB', 'Gym'),
  (206,true, CURDATE(), 'elimination', 30, 'Physci Building', 'UPLB', 'Building'),
  (207,true, CURDATE(), 'elimination', 30, 'Freedom Park', 'UPLB', 'Park'),
  (208,true, CURDATE(), 'semi-finals', 30, 'Freedom Park', 'UPLB', 'Park'),
  (209,true, CURDATE(), 'semi-finals', 30, 'Freedom Park', 'UPLB', 'Park'),
  (210,true, CURDATE(), 'finals', 30,'Freedom Park', 'UPLB', 'Park'),
  (211,true, CURDATE(), 'elimination', 31, 'Baker Hall', 'UPLB', 'Gym'),
  (212,true, CURDATE(), 'elimination', 31, 'Copeland Gym','UPLB', 'Gym'),
  (213,true, CURDATE(), 'elimination', 31, 'Physci Building', 'UPLB', 'Building'),
  (214,true, CURDATE(), 'elimination', 31, 'Freedom Park', 'UPLB', 'Park'),
  (215,true, CURDATE(), 'semi-finals', 31, 'Freedom Park', 'UPLB', 'Park'),
  (216,true, CURDATE(), 'semi-finals', 31, 'Freedom Park', 'UPLB', 'Park'),
  (217,true, CURDATE(), 'finals', 31,'Freedom Park', 'UPLB', 'Park'),
  (218,true, CURDATE(), 'elimination', 32, 'Baker Hall', 'UPLB', 'Gym'),
  (219,true, CURDATE(), 'elimination', 32, 'Copeland Gym','UPLB', 'Gym'),
  (220,true, CURDATE(), 'elimination', 32, 'Physci Building', 'UPLB', 'Building'),
  (221,true, CURDATE(), 'elimination', 32, 'Freedom Park', 'UPLB', 'Park'),
  (222,true, CURDATE(), 'semi-finals', 32, 'Freedom Park', 'UPLB', 'Park'),
  (223,true, CURDATE(), 'semi-finals', 32, 'Freedom Park', 'UPLB', 'Park'),
  (224,true, CURDATE(), 'finals', 32,'Freedom Park', 'UPLB', 'Park'),
  (225,true, CURDATE(), 'elimination', 33, 'Baker Hall', 'UPLB', 'Gym'),
  (226,true, CURDATE(), 'elimination', 33, 'Copeland Gym','UPLB', 'Gym'),
  (227,true, CURDATE(), 'elimination', 33, 'Physci Building', 'UPLB', 'Building'),
  (228,true, CURDATE(), 'elimination', 33, 'Freedom Park', 'UPLB', 'Park'),
  (229,true, CURDATE(), 'semi-finals', 33, 'Freedom Park', 'UPLB', 'Park'),
  (230,true, CURDATE(), 'semi-finals', 33, 'Freedom Park', 'UPLB', 'Park'),
  (231,true, CURDATE(), 'finals', 33,'Freedom Park', 'UPLB', 'Park'),
  (232,true, CURDATE(), 'elimination', 34, 'Baker Hall', 'UPLB', 'Gym'),
  (233,true, CURDATE(), 'elimination', 34, 'Copeland Gym','UPLB', 'Gym'),
  (234,true, CURDATE(), 'elimination', 34, 'Physci Building', 'UPLB', 'Building'),
  (235,true, CURDATE(), 'elimination', 34, 'Freedom Park', 'UPLB', 'Park'),
  (236,true, CURDATE(), 'semi-finals', 34, 'Freedom Park', 'UPLB', 'Park'),
  (237,true, CURDATE(), 'semi-finals', 34, 'Freedom Park', 'UPLB', 'Park'),
  (238,true, CURDATE(), 'finals', 34,'Freedom Park', 'UPLB', 'Park'),
  (239,true, CURDATE(), 'elimination', 35, 'Baker Hall', 'UPLB', 'Gym'),
  (240,true, CURDATE(), 'elimination', 35, 'Copeland Gym','UPLB', 'Gym'),
  (241,true, CURDATE(), 'elimination', 35, 'Physci Building', 'UPLB', 'Building'),
  (242,true, CURDATE(), 'elimination', 35, 'Freedom Park', 'UPLB', 'Park'),
  (243,true, CURDATE(), 'semi-finals', 35, 'Freedom Park', 'UPLB', 'Park'),
  (244,true, CURDATE(), 'semi-finals', 35, 'Freedom Park', 'UPLB', 'Park'),
  (245,true, CURDATE(), 'finals', 35,'Freedom Park', 'UPLB', 'Park'),
  (246,true, CURDATE(), 'elimination', 36, 'Baker Hall', 'UPLB', 'Gym'),
  (247,true, CURDATE(), 'elimination', 36, 'Copeland Gym','UPLB', 'Gym'),
  (248,true, CURDATE(), 'elimination', 36, 'Physci Building', 'UPLB', 'Building'),
  (249,true, CURDATE(), 'elimination', 36, 'Freedom Park', 'UPLB', 'Park'),
  (250,true, CURDATE(), 'semi-finals', 36, 'Freedom Park', 'UPLB', 'Park'),
  (251,true, CURDATE(), 'semi-finals', 36, 'Freedom Park', 'UPLB', 'Park'),
  (252,true, CURDATE(), 'finals', 36,'Freedom Park', 'UPLB', 'Park'),
  (253,true, CURDATE(), 'elimination', 37, 'Baker Hall', 'UPLB', 'Gym'),
  (254,true, CURDATE(), 'elimination', 37, 'Copeland Gym','UPLB', 'Gym'),
  (255,true, CURDATE(), 'elimination', 37, 'Physci Building', 'UPLB', 'Building'),
  (256,true, CURDATE(), 'elimination', 37, 'Freedom Park', 'UPLB', 'Park'),
  (257,true, CURDATE(), 'semi-finals', 37, 'Freedom Park', 'UPLB', 'Park'),
  (258,true, CURDATE(), 'semi-finals', 37, 'Freedom Park', 'UPLB', 'Park'),
  (259,true, CURDATE(), 'finals', 37,'Freedom Park', 'UPLB', 'Park'),
  (260,true, CURDATE(), 'elimination', 38, 'Baker Hall', 'UPLB', 'Gym'),
  (261,true, CURDATE(), 'elimination', 38, 'Copeland Gym','UPLB', 'Gym'),
  (262,true, CURDATE(), 'elimination', 38, 'Physci Building', 'UPLB', 'Building'),
  (263,true, CURDATE(), 'elimination', 38, 'Freedom Park', 'UPLB', 'Park'),
  (264,true, CURDATE(), 'semi-finals', 38, 'Freedom Park', 'UPLB', 'Park'),
  (265,true, CURDATE(), 'semi-finals', 38, 'Freedom Park', 'UPLB', 'Park'),
  (266,true, CURDATE(), 'finals', 38,'Freedom Park', 'UPLB', 'Park'),
  (267,true, CURDATE(), 'elimination', 39, 'Baker Hall', 'UPLB', 'Gym'),
  (268,true, CURDATE(), 'elimination', 39, 'Copeland Gym','UPLB', 'Gym'),
  (269,true, CURDATE(), 'elimination', 39, 'Physci Building', 'UPLB', 'Building'),
  (270,true, CURDATE(), 'elimination', 39, 'Freedom Park', 'UPLB', 'Park'),
  (271,true, CURDATE(), 'semi-finals', 39, 'Freedom Park', 'UPLB', 'Park'),
  (272,true, CURDATE(), 'semi-finals', 39, 'Freedom Park', 'UPLB', 'Park'),
  (273,true, CURDATE(), 'finals', 39,'Freedom Park', 'UPLB', 'Park'),
  (274,true, CURDATE(), 'elimination', 40, 'Baker Hall', 'UPLB', 'Gym'),
  (275,true, CURDATE(), 'elimination', 40, 'Copeland Gym','UPLB', 'Gym'),
  (276,true, CURDATE(), 'elimination', 40, 'Physci Building', 'UPLB', 'Building'),
  (277,true, CURDATE(), 'elimination', 40, 'Freedom Park', 'UPLB', 'Park'),
  (278,true, CURDATE(), 'semi-finals', 40, 'Freedom Park', 'UPLB', 'Park'),
  (279,true, CURDATE(), 'semi-finals', 40, 'Freedom Park', 'UPLB', 'Park'),
  (280,true, CURDATE(), 'finals', 40,'Freedom Park', 'UPLB', 'Park'),
  (281,true, CURDATE(), 'elimination', 41, 'Baker Hall', 'UPLB', 'Gym'),
  (282,true, CURDATE(), 'elimination', 41, 'Copeland Gym','UPLB', 'Gym'),
  (283,true, CURDATE(), 'elimination', 41, 'Physci Building', 'UPLB', 'Building'),
  (284,true, CURDATE(), 'elimination', 41, 'Freedom Park', 'UPLB', 'Park'),
  (285,true, CURDATE(), 'semi-finals', 41, 'Freedom Park', 'UPLB', 'Park'),
  (286,true, CURDATE(), 'semi-finals', 41, 'Freedom Park', 'UPLB', 'Park'),
  (287,true, CURDATE(), 'finals', 41,'Freedom Park', 'UPLB', 'Park'),
  (288,true, CURDATE(), 'elimination', 42, 'Baker Hall', 'UPLB', 'Gym'),
  (289,true, CURDATE(), 'elimination', 42, 'Copeland Gym','UPLB', 'Gym'),
  (290,true, CURDATE(), 'elimination', 42, 'Physci Building', 'UPLB', 'Building'),
  (291,true, CURDATE(), 'elimination', 42, 'Freedom Park', 'UPLB', 'Park'),
  (292,true, CURDATE(), 'semi-finals', 42, 'Freedom Park', 'UPLB', 'Park'),
  (293,true, CURDATE(), 'semi-finals', 42, 'Freedom Park', 'UPLB', 'Park'),
  (294,true, CURDATE(), 'finals', 42,'Freedom Park', 'UPLB', 'Park'),
  (295,true, CURDATE(), 'elimination', 43, 'Baker Hall', 'UPLB', 'Gym'),
  (296,true, CURDATE(), 'elimination', 43, 'Copeland Gym','UPLB', 'Gym'),
  (297,true, CURDATE(), 'elimination', 43, 'Physci Building', 'UPLB', 'Building'),
  (298,true, CURDATE(), 'elimination', 43, 'Freedom Park', 'UPLB', 'Park'),
  (299,true, CURDATE(), 'semi-finals', 43, 'Freedom Park', 'UPLB', 'Park'),
  (300,true, CURDATE(), 'semi-finals', 43, 'Freedom Park', 'UPLB', 'Park'),
  (301,true, CURDATE(), 'finals', 43,'Freedom Park', 'UPLB', 'Park'),
  (302,true, CURDATE(), 'elimination', 44, 'Baker Hall', 'UPLB', 'Gym'),
  (303,true, CURDATE(), 'elimination', 44, 'Copeland Gym','UPLB', 'Gym'),
  (304,true, CURDATE(), 'elimination', 44, 'Physci Building', 'UPLB', 'Building'),
  (305,true, CURDATE(), 'elimination', 44, 'Freedom Park', 'UPLB', 'Park'),
  (306,true, CURDATE(), 'semi-finals', 44, 'Freedom Park', 'UPLB', 'Park'),
  (307,true, CURDATE(), 'semi-finals', 44, 'Freedom Park', 'UPLB', 'Park'),
  (308,true, CURDATE(), 'finals', 44,'Freedom Park', 'UPLB', 'Park'),
  (309,true, CURDATE(), 'elimination', 45, 'Baker Hall', 'UPLB', 'Gym'),
  (310,true, CURDATE(), 'elimination', 45, 'Copeland Gym','UPLB', 'Gym'),
  (311,true, CURDATE(), 'elimination', 45, 'Physci Building', 'UPLB', 'Building'),
  (312,true, CURDATE(), 'elimination', 45, 'Freedom Park', 'UPLB', 'Park'),
  (313,true, CURDATE(), 'semi-finals', 45, 'Freedom Park', 'UPLB', 'Park'),
  (314,true, CURDATE(), 'semi-finals', 45, 'Freedom Park', 'UPLB', 'Park'),
  (315,true, CURDATE(), 'finals', 45,'Freedom Park', 'UPLB', 'Park'),
  (316,true, CURDATE(), 'elimination', 46, 'Baker Hall', 'UPLB', 'Gym'),
  (317,true, CURDATE(), 'elimination', 46, 'Copeland Gym','UPLB', 'Gym'),
  (318,true, CURDATE(), 'elimination', 46, 'Physci Building', 'UPLB', 'Building'),
  (319,true, CURDATE(), 'elimination', 46, 'Freedom Park', 'UPLB', 'Park'),
  (320,true, CURDATE(), 'semi-finals', 46, 'Freedom Park', 'UPLB', 'Park'),
  (321,true, CURDATE(), 'semi-finals', 46, 'Freedom Park', 'UPLB', 'Park'),
  (322,true, CURDATE(), 'finals', 46,'Freedom Park', 'UPLB', 'Park'),
  (323,true, CURDATE(), 'elimination', 47, 'Baker Hall', 'UPLB', 'Gym'),
  (324,true, CURDATE(), 'elimination', 47, 'Copeland Gym','UPLB', 'Gym'),
  (325,true, CURDATE(), 'elimination', 47, 'Physci Building', 'UPLB', 'Building'),
  (326,true, CURDATE(), 'elimination', 47, 'Freedom Park', 'UPLB', 'Park'),
  (327,true, CURDATE(), 'semi-finals', 47, 'Freedom Park', 'UPLB', 'Park'),
  (328,true, CURDATE(), 'semi-finals', 47, 'Freedom Park', 'UPLB', 'Park'),
  (329,true, CURDATE(), 'finals', 47,'Freedom Park', 'UPLB', 'Park'),
  (330,true, CURDATE(), 'elimination', 48, 'Baker Hall', 'UPLB', 'Gym'),
  (331,true, CURDATE(), 'elimination', 48, 'Copeland Gym','UPLB', 'Gym'),
  (332,true, CURDATE(), 'elimination', 48, 'Physci Building', 'UPLB', 'Building'),
  (333,true, CURDATE(), 'elimination', 48, 'Freedom Park', 'UPLB', 'Park'),
  (334,true, CURDATE(), 'semi-finals', 48, 'Freedom Park', 'UPLB', 'Park'),
  (335,true, CURDATE(), 'semi-finals', 48, 'Freedom Park', 'UPLB', 'Park'),
  (336,true, CURDATE(), 'finals', 48,'Freedom Park', 'UPLB', 'Park'),
  (337,true, CURDATE(), 'elimination', 49, 'Baker Hall', 'UPLB', 'Gym'),
  (338,true, CURDATE(), 'elimination', 49, 'Copeland Gym','UPLB', 'Gym'),
  (339,true, CURDATE(), 'elimination', 49, 'Physci Building', 'UPLB', 'Building'),
  (340,true, CURDATE(), 'elimination', 49, 'Freedom Park', 'UPLB', 'Park'),
  (341,true, CURDATE(), 'semi-finals', 49, 'Freedom Park', 'UPLB', 'Park'),
  (342,true, CURDATE(), 'semi-finals', 49, 'Freedom Park', 'UPLB', 'Park'),
  (343,true, CURDATE(), 'finals', 49,'Freedom Park', 'UPLB', 'Park'),
  (344,true, CURDATE(), 'elimination', 50, 'Baker Hall', 'UPLB', 'Gym'),
  (345,true, CURDATE(), 'elimination', 50, 'Copeland Gym','UPLB', 'Gym'),
  (346,true, CURDATE(), 'elimination', 50, 'Physci Building', 'UPLB', 'Building'),
  (347,true, CURDATE(), 'elimination', 50, 'Freedom Park', 'UPLB', 'Park'),
  (348,true, CURDATE(), 'semi-finals', 50, 'Freedom Park', 'UPLB', 'Park'),
  (349,true, CURDATE(), 'semi-finals', 50, 'Freedom Park', 'UPLB', 'Park'),
  (350,true, CURDATE(), 'finals', 50,'Freedom Park', 'UPLB', 'Park'),
  (351,true, CURDATE(), 'elimination', 51, 'Baker Hall', 'UPLB', 'Gym'),
  (352,true, CURDATE(), 'elimination', 51, 'Copeland Gym','UPLB', 'Gym'),
  (353,true, CURDATE(), 'elimination', 51, 'Physci Building', 'UPLB', 'Building'),
  (354,true, CURDATE(), 'elimination', 51, 'Freedom Park', 'UPLB', 'Park'),
  (355,true, CURDATE(), 'semi-finals', 51, 'Freedom Park', 'UPLB', 'Park'),
  (356,true, CURDATE(), 'semi-finals', 51, 'Freedom Park', 'UPLB', 'Park'),
  (357,true, CURDATE(), 'finals', 51,'Freedom Park', 'UPLB', 'Park'),
  (358,true, CURDATE(), 'elimination', 52, 'Baker Hall', 'UPLB', 'Gym'),
  (359,true, CURDATE(), 'elimination', 52, 'Copeland Gym','UPLB', 'Gym'),
  (360,true, CURDATE(), 'elimination', 52, 'Physci Building', 'UPLB', 'Building'),
  (361,true, CURDATE(), 'elimination', 52, 'Freedom Park', 'UPLB', 'Park'),
  (362,true, CURDATE(), 'semi-finals', 52, 'Freedom Park', 'UPLB', 'Park'),
  (363,true, CURDATE(), 'semi-finals', 52, 'Freedom Park', 'UPLB', 'Park'),
  (364,true, CURDATE(), 'finals', 52,'Freedom Park', 'UPLB', 'Park'),
  (365,true, CURDATE(), 'elimination', 53, 'Baker Hall', 'UPLB', 'Gym'),
  (366,true, CURDATE(), 'elimination', 53, 'Copeland Gym','UPLB', 'Gym'),
  (367,true, CURDATE(), 'elimination', 53, 'Physci Building', 'UPLB', 'Building'),
  (368,true, CURDATE(), 'elimination', 53, 'Freedom Park', 'UPLB', 'Park'),
  (369,true, CURDATE(), 'semi-finals', 53, 'Freedom Park', 'UPLB', 'Park'),
  (370,true, CURDATE(), 'semi-finals', 53, 'Freedom Park', 'UPLB', 'Park'),
  (371,true, CURDATE(), 'finals', 53,'Freedom Park', 'UPLB', 'Park'),
  (372,true, CURDATE(), 'elimination', 54, 'Baker Hall', 'UPLB', 'Gym'),
  (373,true, CURDATE(), 'elimination', 54, 'Copeland Gym','UPLB', 'Gym'),
  (374,true, CURDATE(), 'elimination', 54, 'Physci Building', 'UPLB', 'Building'),
  (375,true, CURDATE(), 'elimination', 54, 'Freedom Park', 'UPLB', 'Park'),
  (376,true, CURDATE(), 'semi-finals', 54, 'Freedom Park', 'UPLB', 'Park'),
  (377,true, CURDATE(), 'semi-finals', 54, 'Freedom Park', 'UPLB', 'Park'),
  (378,true, CURDATE(), 'finals', 54,'Freedom Park', 'UPLB', 'Park'),
  (379,true, CURDATE(), 'elimination', 55, 'Baker Hall', 'UPLB', 'Gym'),
  (380,true, CURDATE(), 'elimination', 55, 'Copeland Gym','UPLB', 'Gym'),
  (381,true, CURDATE(), 'elimination', 55, 'Physci Building', 'UPLB', 'Building'),
  (382,true, CURDATE(), 'elimination', 55, 'Freedom Park', 'UPLB', 'Park'),
  (383,true, CURDATE(), 'semi-finals', 55, 'Freedom Park', 'UPLB', 'Park'),
  (384,true, CURDATE(), 'semi-finals', 55, 'Freedom Park', 'UPLB', 'Park'),
  (385,true, CURDATE(), 'finals', 55,'Freedom Park', 'UPLB', 'Park'),
  (386,true, CURDATE(), 'elimination', 56, 'Baker Hall', 'UPLB', 'Gym'),
  (387,true, CURDATE(), 'elimination', 56, 'Copeland Gym','UPLB', 'Gym'),
  (388,true, CURDATE(), 'elimination', 56, 'Physci Building', 'UPLB', 'Building'),
  (389,true, CURDATE(), 'elimination', 56, 'Freedom Park', 'UPLB', 'Park'),
  (390,true, CURDATE(), 'semi-finals', 56, 'Freedom Park', 'UPLB', 'Park'),
  (391,true, CURDATE(), 'semi-finals', 56, 'Freedom Park', 'UPLB', 'Park'),
  (392,true, CURDATE(), 'finals', 56,'Freedom Park', 'UPLB', 'Park'),
  (393,true, CURDATE(), 'elimination', 57, 'Baker Hall', 'UPLB', 'Gym'),
  (394,true, CURDATE(), 'elimination', 57, 'Copeland Gym','UPLB', 'Gym'),
  (395,true, CURDATE(), 'elimination', 57, 'Physci Building', 'UPLB', 'Building'),
  (396,true, CURDATE(), 'elimination', 57, 'Freedom Park', 'UPLB', 'Park'),
  (397,true, CURDATE(), 'semi-finals', 57, 'Freedom Park', 'UPLB', 'Park'),
  (398,true, CURDATE(), 'semi-finals', 57, 'Freedom Park', 'UPLB', 'Park'),
  (399,true, CURDATE(), 'finals', 57,'Freedom Park', 'UPLB', 'Park'),
  (400,true, CURDATE(), 'elimination', 58, 'Baker Hall', 'UPLB', 'Gym'),
  (401,true, CURDATE(), 'elimination', 58, 'Copeland Gym','UPLB', 'Gym'),
  (402,true, CURDATE(), 'elimination', 58, 'Physci Building', 'UPLB', 'Building'),
  (403,true, CURDATE(), 'elimination', 58, 'Freedom Park', 'UPLB', 'Park'),
  (404,true, CURDATE(), 'semi-finals', 58, 'Freedom Park', 'UPLB', 'Park'),
  (405,true, CURDATE(), 'semi-finals', 58, 'Freedom Park', 'UPLB', 'Park'),
  (406,true, CURDATE(), 'finals', 58,'Freedom Park', 'UPLB', 'Park'),
  (407,true, CURDATE(), 'elimination', 59, 'Baker Hall', 'UPLB', 'Gym'),
  (408,true, CURDATE(), 'elimination', 59, 'Copeland Gym','UPLB', 'Gym'),
  (409,true, CURDATE(), 'elimination', 59, 'Physci Building', 'UPLB', 'Building'),
  (410,true, CURDATE(), 'elimination', 59, 'Freedom Park', 'UPLB', 'Park'),
  (411,true, CURDATE(), 'semi-finals', 59, 'Freedom Park', 'UPLB', 'Park'),
  (412,true, CURDATE(), 'semi-finals', 59, 'Freedom Park', 'UPLB', 'Park'),
  (413,true, CURDATE(), 'finals', 59,'Freedom Park', 'UPLB', 'Park'),
  (414,true, CURDATE(), 'elimination', 60, 'Baker Hall', 'UPLB', 'Gym'),
  (415,true, CURDATE(), 'elimination', 60, 'Copeland Gym','UPLB', 'Gym'),
  (416,true, CURDATE(), 'elimination', 60, 'Physci Building', 'UPLB', 'Building'),
  (417,true, CURDATE(), 'elimination', 60, 'Freedom Park', 'UPLB', 'Park'),
  (418,true, CURDATE(), 'semi-finals', 60, 'Freedom Park', 'UPLB', 'Park'),
  (419,true, CURDATE(), 'semi-finals', 60, 'Freedom Park', 'UPLB', 'Park'),
  (420,true, CURDATE(), 'finals', 60,'Freedom Park', 'UPLB', 'Park'),
  (421,true, CURDATE(), 'elimination', 61, 'Baker Hall', 'UPLB', 'Gym'),
  (422,true, CURDATE(), 'elimination', 61, 'Copeland Gym','UPLB', 'Gym'),
  (423,true, CURDATE(), 'elimination', 61, 'Physci Building', 'UPLB', 'Building'),
  (424,true, CURDATE(), 'elimination', 61, 'Freedom Park', 'UPLB', 'Park'),
  (425,true, CURDATE(), 'semi-finals', 61, 'Freedom Park', 'UPLB', 'Park'),
  (426,true, CURDATE(), 'semi-finals', 61, 'Freedom Park', 'UPLB', 'Park'),
  (427,true, CURDATE(), 'finals', 61,'Freedom Park', 'UPLB', 'Park'),
  (428,true, CURDATE(), 'elimination', 62, 'Baker Hall', 'UPLB', 'Gym'),
  (429,true, CURDATE(), 'elimination', 62, 'Copeland Gym','UPLB', 'Gym'),
  (430,true, CURDATE(), 'elimination', 62, 'Physci Building', 'UPLB', 'Building'),
  (431,true, CURDATE(), 'elimination', 62, 'Freedom Park', 'UPLB', 'Park'),
  (432,true, CURDATE(), 'semi-finals', 62, 'Freedom Park', 'UPLB', 'Park'),
  (433,true, CURDATE(), 'semi-finals', 62, 'Freedom Park', 'UPLB', 'Park'),
  (434,true, CURDATE(), 'finals', 62,'Freedom Park', 'UPLB', 'Park'),
  (435,true, CURDATE(), 'elimination', 63, 'Baker Hall', 'UPLB', 'Gym'),
  (436,true, CURDATE(), 'elimination', 63, 'Copeland Gym','UPLB', 'Gym'),
  (437,true, CURDATE(), 'elimination', 63, 'Physci Building', 'UPLB', 'Building'),
  (438,true, CURDATE(), 'elimination', 63, 'Freedom Park', 'UPLB', 'Park'),
  (439,true, CURDATE(), 'semi-finals', 63, 'Freedom Park', 'UPLB', 'Park'),
  (440,true, CURDATE(), 'semi-finals', 63, 'Freedom Park', 'UPLB', 'Park'),
  (441,true, CURDATE(), 'finals', 63,'Freedom Park', 'UPLB', 'Park'),
  (442,true, CURDATE(), 'elimination', 64, 'Baker Hall', 'UPLB', 'Gym'),
  (443,true, CURDATE(), 'elimination', 64, 'Copeland Gym','UPLB', 'Gym'),
  (444,true, CURDATE(), 'elimination', 64, 'Physci Building', 'UPLB', 'Building'),
  (445,true, CURDATE(), 'elimination', 64, 'Freedom Park', 'UPLB', 'Park'),
  (446,true, CURDATE(), 'semi-finals', 64, 'Freedom Park', 'UPLB', 'Park'),
  (447,true, CURDATE(), 'semi-finals', 64, 'Freedom Park', 'UPLB', 'Park'),
  (448,true, CURDATE(), 'finals', 64,'Freedom Park', 'UPLB', 'Park'),
  (449,true, CURDATE(), 'elimination', 65, 'Baker Hall', 'UPLB', 'Gym'),
  (450,true, CURDATE(), 'elimination', 65, 'Copeland Gym','UPLB', 'Gym'),
  (451,true, CURDATE(), 'elimination', 65, 'Physci Building', 'UPLB', 'Building'),
  (452,true, CURDATE(), 'elimination', 65, 'Freedom Park', 'UPLB', 'Park'),
  (453,true, CURDATE(), 'semi-finals', 65, 'Freedom Park', 'UPLB', 'Park'),
  (454,true, CURDATE(), 'semi-finals', 65, 'Freedom Park', 'UPLB', 'Park'),
  (455,true, CURDATE(), 'finals', 65,'Freedom Park', 'UPLB', 'Park'),
  (456,true, CURDATE(), 'elimination', 66, 'Baker Hall', 'UPLB', 'Gym'),
  (457,true, CURDATE(), 'elimination', 66, 'Copeland Gym','UPLB', 'Gym'),
  (458,true, CURDATE(), 'elimination', 66, 'Physci Building', 'UPLB', 'Building'),
  (459,true, CURDATE(), 'elimination', 66, 'Freedom Park', 'UPLB', 'Park'),
  (460,true, CURDATE(), 'semi-finals', 66, 'Freedom Park', 'UPLB', 'Park'),
  (461,true, CURDATE(), 'semi-finals', 66, 'Freedom Park', 'UPLB', 'Park'),
  (462,true, CURDATE(), 'finals', 66,'Freedom Park', 'UPLB', 'Park'),
  (463,true, CURDATE(), 'elimination', 67, 'Baker Hall', 'UPLB', 'Gym'),
  (464,true, CURDATE(), 'elimination', 67, 'Copeland Gym','UPLB', 'Gym'),
  (465,true, CURDATE(), 'elimination', 67, 'Physci Building', 'UPLB', 'Building'),
  (466,true, CURDATE(), 'elimination', 67, 'Freedom Park', 'UPLB', 'Park'),
  (467,true, CURDATE(), 'semi-finals', 67, 'Freedom Park', 'UPLB', 'Park'),
  (468,true, CURDATE(), 'semi-finals', 67, 'Freedom Park', 'UPLB', 'Park'),
  (469,true, CURDATE(), 'finals', 67,'Freedom Park', 'UPLB', 'Park'),
  (470,true, CURDATE(), 'elimination', 68, 'Baker Hall', 'UPLB', 'Gym'),
  (471,true, CURDATE(), 'elimination', 68, 'Copeland Gym','UPLB', 'Gym'),
  (472,true, CURDATE(), 'elimination', 68, 'Physci Building', 'UPLB', 'Building'),
  (473,true, CURDATE(), 'elimination', 68, 'Freedom Park', 'UPLB', 'Park'),
  (474,true, CURDATE(), 'semi-finals', 68, 'Freedom Park', 'UPLB', 'Park'),
  (475,true, CURDATE(), 'semi-finals', 68, 'Freedom Park', 'UPLB', 'Park'),
  (476,true, CURDATE(), 'finals', 68,'Freedom Park', 'UPLB', 'Park'),
  (477,true, CURDATE(), 'elimination', 69, 'Baker Hall', 'UPLB', 'Gym'),
  (478,true, CURDATE(), 'elimination', 69, 'Copeland Gym','UPLB', 'Gym'),
  (479,true, CURDATE(), 'elimination', 69, 'Physci Building', 'UPLB', 'Building'),
  (480,true, CURDATE(), 'elimination', 69, 'Freedom Park', 'UPLB', 'Park'),
  (481,true, CURDATE(), 'semi-finals', 69, 'Freedom Park', 'UPLB', 'Park'),
  (482,true, CURDATE(), 'semi-finals', 69, 'Freedom Park', 'UPLB', 'Park'),
  (483,true, CURDATE(), 'finals', 69,'Freedom Park', 'UPLB', 'Park'),
  (484,true, CURDATE(), 'elimination', 70, 'Baker Hall', 'UPLB', 'Gym'),
  (485,true, CURDATE(), 'elimination', 70, 'Copeland Gym','UPLB', 'Gym'),
  (486,true, CURDATE(), 'elimination', 70, 'Physci Building', 'UPLB', 'Building'),
  (487,true, CURDATE(), 'elimination', 70, 'Freedom Park', 'UPLB', 'Park'),
  (488,true, CURDATE(), 'semi-finals', 70, 'Freedom Park', 'UPLB', 'Park'),
  (489,true, CURDATE(), 'semi-finals', 70, 'Freedom Park', 'UPLB', 'Park'),
  (490,true, CURDATE(), 'finals', 70,'Freedom Park', 'UPLB', 'Park'),
  (491,true, CURDATE(), 'elimination', 71, 'Baker Hall', 'UPLB', 'Gym'),
  (492,true, CURDATE(), 'elimination', 71, 'Copeland Gym','UPLB', 'Gym'),
  (493,true, CURDATE(), 'elimination', 71, 'Physci Building', 'UPLB', 'Building'),
  (494,true, CURDATE(), 'elimination', 71, 'Freedom Park', 'UPLB', 'Park'),
  (495,true, CURDATE(), 'semi-finals', 71, 'Freedom Park', 'UPLB', 'Park'),
  (496,true, CURDATE(), 'semi-finals', 71, 'Freedom Park', 'UPLB', 'Park'),
  (497,true, CURDATE(), 'finals', 71,'Freedom Park', 'UPLB', 'Park'),
  (498,true, CURDATE(), 'elimination', 72, 'Baker Hall', 'UPLB', 'Gym'),
  (499,true, CURDATE(), 'elimination', 72, 'Copeland Gym','UPLB', 'Gym'),
  (500,true, CURDATE(), 'elimination', 72, 'Physci Building', 'UPLB', 'Building'),
  (501,true, CURDATE(), 'elimination', 72, 'Freedom Park', 'UPLB', 'Park'),
  (502,true, CURDATE(), 'semi-finals', 72, 'Freedom Park', 'UPLB', 'Park'),
  (503,true, CURDATE(), 'semi-finals', 72, 'Freedom Park', 'UPLB', 'Park'),
  (504,true, CURDATE(), 'finals', 72,'Freedom Park', 'UPLB', 'Park'),
  (505,true, CURDATE(), 'elimination', 73, 'Baker Hall', 'UPLB', 'Gym'),
  (506,true, CURDATE(), 'elimination', 73, 'Copeland Gym','UPLB', 'Gym'),
  (507,true, CURDATE(), 'elimination', 73, 'Physci Building', 'UPLB', 'Building'),
  (508,true, CURDATE(), 'elimination', 73, 'Freedom Park', 'UPLB', 'Park'),
  (509,true, CURDATE(), 'semi-finals', 73, 'Freedom Park', 'UPLB', 'Park'),
  (510,true, CURDATE(), 'semi-finals', 73, 'Freedom Park', 'UPLB', 'Park'),
  (511,true, CURDATE(), 'finals', 73,'Freedom Park', 'UPLB', 'Park'),
  (512,true, CURDATE(), 'elimination', 74, 'Baker Hall', 'UPLB', 'Gym'),
  (513,true, CURDATE(), 'elimination', 74, 'Copeland Gym','UPLB', 'Gym'),
  (514,true, CURDATE(), 'elimination', 74, 'Physci Building', 'UPLB', 'Building'),
  (515,true, CURDATE(), 'elimination', 74, 'Freedom Park', 'UPLB', 'Park'),
  (516,true, CURDATE(), 'semi-finals', 74, 'Freedom Park', 'UPLB', 'Park'),
  (517,true, CURDATE(), 'semi-finals', 74, 'Freedom Park', 'UPLB', 'Park'),
  (518,true, CURDATE(), 'finals', 74,'Freedom Park', 'UPLB', 'Park'),
  (519,true, CURDATE(), 'elimination', 75, 'Baker Hall', 'UPLB', 'Gym'),
  (520,true, CURDATE(), 'elimination', 75, 'Copeland Gym','UPLB', 'Gym'),
  (521,true, CURDATE(), 'elimination', 75, 'Physci Building', 'UPLB', 'Building'),
  (522,true, CURDATE(), 'elimination', 75, 'Freedom Park', 'UPLB', 'Park'),
  (523,true, CURDATE(), 'semi-finals', 75, 'Freedom Park', 'UPLB', 'Park'),
  (524,true, CURDATE(), 'semi-finals', 75, 'Freedom Park', 'UPLB', 'Park'),
  (525,true, CURDATE(), 'finals', 75,'Freedom Park', 'UPLB', 'Park'),
  (526,true, CURDATE(), 'elimination', 76, 'Baker Hall', 'UPLB', 'Gym'),
  (527,true, CURDATE(), 'elimination', 76, 'Copeland Gym','UPLB', 'Gym'),
  (528,true, CURDATE(), 'elimination', 76, 'Physci Building', 'UPLB', 'Building'),
  (529,true, CURDATE(), 'elimination', 76, 'Freedom Park', 'UPLB', 'Park'),
  (530,true, CURDATE(), 'semi-finals', 76, 'Freedom Park', 'UPLB', 'Park'),
  (531,true, CURDATE(), 'semi-finals', 76, 'Freedom Park', 'UPLB', 'Park'),
  (532,true, CURDATE(), 'finals', 76,'Freedom Park', 'UPLB', 'Park'),
  (533,true, CURDATE(), 'elimination', 77, 'Baker Hall', 'UPLB', 'Gym'),
  (534,true, CURDATE(), 'elimination', 77, 'Copeland Gym','UPLB', 'Gym'),
  (535,true, CURDATE(), 'elimination', 77, 'Physci Building', 'UPLB', 'Building'),
  (536,true, CURDATE(), 'elimination', 77, 'Freedom Park', 'UPLB', 'Park'),
  (537,true, CURDATE(), 'semi-finals', 77, 'Freedom Park', 'UPLB', 'Park'),
  (538,true, CURDATE(), 'semi-finals', 77, 'Freedom Park', 'UPLB', 'Park'),
  (539,true, CURDATE(), 'finals', 77,'Freedom Park', 'UPLB', 'Park'),
  (540,true, CURDATE(), 'elimination', 78, 'Baker Hall', 'UPLB', 'Gym'),
  (541,true, CURDATE(), 'elimination', 78, 'Copeland Gym','UPLB', 'Gym'),
  (542,true, CURDATE(), 'elimination', 78, 'Physci Building', 'UPLB', 'Building'),
  (543,true, CURDATE(), 'elimination', 78, 'Freedom Park', 'UPLB', 'Park'),
  (544,true, CURDATE(), 'semi-finals', 78, 'Freedom Park', 'UPLB', 'Park'),
  (545,true, CURDATE(), 'semi-finals', 78, 'Freedom Park', 'UPLB', 'Park'),
  (546,true, CURDATE(), 'finals', 78,'Freedom Park', 'UPLB', 'Park'),
  (547,true, CURDATE(), 'elimination', 79, 'Baker Hall', 'UPLB', 'Gym'),
  (548,true, CURDATE(), 'elimination', 79, 'Copeland Gym','UPLB', 'Gym'),
  (549,true, CURDATE(), 'elimination', 79, 'Physci Building', 'UPLB', 'Building'),
  (550,true, CURDATE(), 'elimination', 79, 'Freedom Park', 'UPLB', 'Park'),
  (551,true, CURDATE(), 'semi-finals', 79, 'Freedom Park', 'UPLB', 'Park'),
  (552,true, CURDATE(), 'semi-finals', 79, 'Freedom Park', 'UPLB', 'Park'),
  (553,true, CURDATE(), 'finals', 79,'Freedom Park', 'UPLB', 'Park'),
  (554,true, CURDATE(), 'elimination', 80, 'Baker Hall', 'UPLB', 'Gym'),
  (555,true, CURDATE(), 'elimination', 80, 'Copeland Gym','UPLB', 'Gym'),
  (556,true, CURDATE(), 'elimination', 80, 'Physci Building', 'UPLB', 'Building'),
  (557,true, CURDATE(), 'elimination', 80, 'Freedom Park', 'UPLB', 'Park'),
  (558,true, CURDATE(), 'semi-finals', 80, 'Freedom Park', 'UPLB', 'Park'),
  (559,true, CURDATE(), 'semi-finals', 80, 'Freedom Park', 'UPLB', 'Park'),
  (560,true, CURDATE(), 'finals', 80,'Freedom Park', 'UPLB', 'Park'),
  (561,true, CURDATE(), 'elimination', 81, 'Baker Hall', 'UPLB', 'Gym'),
  (562,true, CURDATE(), 'elimination', 81, 'Copeland Gym','UPLB', 'Gym'),
  (563,true, CURDATE(), 'elimination', 81, 'Physci Building', 'UPLB', 'Building'),
  (564,true, CURDATE(), 'elimination', 81, 'Freedom Park', 'UPLB', 'Park'),
  (565,true, CURDATE(), 'semi-finals', 81, 'Freedom Park', 'UPLB', 'Park'),
  (566,true, CURDATE(), 'semi-finals', 81, 'Freedom Park', 'UPLB', 'Park'),
  (567,true, CURDATE(), 'finals', 81,'Freedom Park', 'UPLB', 'Park'),
  (568,true, CURDATE(), 'elimination', 82, 'Baker Hall', 'UPLB', 'Gym'),
  (569,true, CURDATE(), 'elimination', 82, 'Copeland Gym','UPLB', 'Gym'),
  (570,true, CURDATE(), 'elimination', 82, 'Physci Building', 'UPLB', 'Building'),
  (571,true, CURDATE(), 'elimination', 82, 'Freedom Park', 'UPLB', 'Park'),
  (572,true, CURDATE(), 'semi-finals', 82, 'Freedom Park', 'UPLB', 'Park'),
  (573,true, CURDATE(), 'semi-finals', 82, 'Freedom Park', 'UPLB', 'Park'),
  (574,true, CURDATE(), 'finals', 82,'Freedom Park', 'UPLB', 'Park'),
  (575,true, CURDATE(), 'elimination', 83, 'Baker Hall', 'UPLB', 'Gym'),
  (576,true, CURDATE(), 'elimination', 83, 'Copeland Gym','UPLB', 'Gym'),
  (577,true, CURDATE(), 'elimination', 83, 'Physci Building', 'UPLB', 'Building'),
  (578,true, CURDATE(), 'elimination', 83, 'Freedom Park', 'UPLB', 'Park'),
  (579,true, CURDATE(), 'semi-finals', 83, 'Freedom Park', 'UPLB', 'Park'),
  (580,true, CURDATE(), 'semi-finals', 83, 'Freedom Park', 'UPLB', 'Park'),
  (581,true, CURDATE(), 'finals', 83,'Freedom Park', 'UPLB', 'Park'),
  (582,true, CURDATE(), 'elimination', 84, 'Baker Hall', 'UPLB', 'Gym'),
  (583,true, CURDATE(), 'elimination', 84, 'Copeland Gym','UPLB', 'Gym'),
  (584,true, CURDATE(), 'elimination', 84, 'Physci Building', 'UPLB', 'Building'),
  (585,true, CURDATE(), 'elimination', 84, 'Freedom Park', 'UPLB', 'Park'),
  (586,true, CURDATE(), 'semi-finals', 84, 'Freedom Park', 'UPLB', 'Park'),
  (587,true, CURDATE(), 'semi-finals', 84, 'Freedom Park', 'UPLB', 'Park'),
  (588,true, CURDATE(), 'finals', 84,'Freedom Park', 'UPLB', 'Park'),
  (589,true, CURDATE(), 'elimination', 85, 'Baker Hall', 'UPLB', 'Gym'),
  (590,true, CURDATE(), 'elimination', 85, 'Copeland Gym','UPLB', 'Gym'),
  (591,true, CURDATE(), 'elimination', 85, 'Physci Building', 'UPLB', 'Building'),
  (592,true, CURDATE(), 'elimination', 85, 'Freedom Park', 'UPLB', 'Park'),
  (593,true, CURDATE(), 'semi-finals', 85, 'Freedom Park', 'UPLB', 'Park'),
  (594,true, CURDATE(), 'semi-finals', 85, 'Freedom Park', 'UPLB', 'Park'),
  (595,true, CURDATE(), 'finals', 85,'Freedom Park', 'UPLB', 'Park'),
  (596,true, CURDATE(), 'elimination', 86, 'Baker Hall', 'UPLB', 'Gym'),
  (597,true, CURDATE(), 'elimination', 86, 'Copeland Gym','UPLB', 'Gym'),
  (598,true, CURDATE(), 'elimination', 86, 'Physci Building', 'UPLB', 'Building'),
  (599,true, CURDATE(), 'elimination', 86, 'Freedom Park', 'UPLB', 'Park'),
  (600,true, CURDATE(), 'semi-finals', 86, 'Freedom Park', 'UPLB', 'Park'),
  (601,true, CURDATE(), 'semi-finals', 86, 'Freedom Park', 'UPLB', 'Park'),
  (602,true, CURDATE(), 'finals', 86,'Freedom Park', 'UPLB', 'Park'),
  (603,true, CURDATE(), 'elimination', 87, 'Baker Hall', 'UPLB', 'Gym'),
  (604,true, CURDATE(), 'elimination', 87, 'Copeland Gym','UPLB', 'Gym'),
  (605,true, CURDATE(), 'elimination', 87, 'Physci Building', 'UPLB', 'Building'),
  (606,true, CURDATE(), 'elimination', 87, 'Freedom Park', 'UPLB', 'Park'),
  (607,true, CURDATE(), 'semi-finals', 87, 'Freedom Park', 'UPLB', 'Park'),
  (608,true, CURDATE(), 'semi-finals', 87, 'Freedom Park', 'UPLB', 'Park'),
  (609,true, CURDATE(), 'finals', 87,'Freedom Park', 'UPLB', 'Park'),
  (610,true, CURDATE(), 'elimination', 88, 'Baker Hall', 'UPLB', 'Gym'),
  (611,true, CURDATE(), 'elimination', 88, 'Copeland Gym','UPLB', 'Gym'),
  (612,true, CURDATE(), 'elimination', 88, 'Physci Building', 'UPLB', 'Building'),
  (613,true, CURDATE(), 'elimination', 88, 'Freedom Park', 'UPLB', 'Park'),
  (614,true, CURDATE(), 'semi-finals', 88, 'Freedom Park', 'UPLB', 'Park'),
  (615,true, CURDATE(), 'semi-finals', 88, 'Freedom Park', 'UPLB', 'Park'),
  (616,true, CURDATE(), 'finals', 88,'Freedom Park', 'UPLB', 'Park'),
  (617,true, CURDATE(), 'elimination', 89, 'Baker Hall', 'UPLB', 'Gym'),
  (618,true, CURDATE(), 'elimination', 89, 'Copeland Gym','UPLB', 'Gym'),
  (619,true, CURDATE(), 'elimination', 89, 'Physci Building', 'UPLB', 'Building'),
  (620,true, CURDATE(), 'elimination', 89, 'Freedom Park', 'UPLB', 'Park'),
  (621,true, CURDATE(), 'semi-finals', 89, 'Freedom Park', 'UPLB', 'Park'),
  (622,true, CURDATE(), 'semi-finals', 89, 'Freedom Park', 'UPLB', 'Park'),
  (623,true, CURDATE(), 'finals', 89,'Freedom Park', 'UPLB', 'Park'),
  (624,true, CURDATE(), 'elimination', 90, 'Baker Hall', 'UPLB', 'Gym'),
  (625,true, CURDATE(), 'elimination', 90, 'Copeland Gym','UPLB', 'Gym'),
  (626,true, CURDATE(), 'elimination', 90, 'Physci Building', 'UPLB', 'Building'),
  (627,true, CURDATE(), 'elimination', 90, 'Freedom Park', 'UPLB', 'Park'),
  (628,true, CURDATE(), 'semi-finals', 90, 'Freedom Park', 'UPLB', 'Park'),
  (629,true, CURDATE(), 'semi-finals', 90, 'Freedom Park', 'UPLB', 'Park'),
  (630,true, CURDATE(), 'finals', 90,'Freedom Park', 'UPLB', 'Park'),
  (631,true, CURDATE(), 'elimination', 91, 'Baker Hall', 'UPLB', 'Gym'),
  (632,true, CURDATE(), 'elimination', 91, 'Copeland Gym','UPLB', 'Gym'),
  (633,true, CURDATE(), 'elimination', 91, 'Physci Building', 'UPLB', 'Building'),
  (634,true, CURDATE(), 'elimination', 91, 'Freedom Park', 'UPLB', 'Park'),
  (635,true, CURDATE(), 'semi-finals', 91, 'Freedom Park', 'UPLB', 'Park'),
  (636,true, CURDATE(), 'semi-finals', 91, 'Freedom Park', 'UPLB', 'Park'),
  (637,true, CURDATE(), 'finals', 91,'Freedom Park', 'UPLB', 'Park'),
  (638,true, CURDATE(), 'elimination', 92, 'Baker Hall', 'UPLB', 'Gym'),
  (639,true, CURDATE(), 'elimination', 92, 'Copeland Gym','UPLB', 'Gym'),
  (640,true, CURDATE(), 'elimination', 92, 'Physci Building', 'UPLB', 'Building'),
  (641,true, CURDATE(), 'elimination', 92, 'Freedom Park', 'UPLB', 'Park'),
  (642,true, CURDATE(), 'semi-finals', 92, 'Freedom Park', 'UPLB', 'Park'),
  (643,true, CURDATE(), 'semi-finals', 92, 'Freedom Park', 'UPLB', 'Park'),
  (644,true, CURDATE(), 'finals', 92,'Freedom Park', 'UPLB', 'Park'),
  (645,true, CURDATE(), 'elimination', 93, 'Baker Hall', 'UPLB', 'Gym'),
  (646,true, CURDATE(), 'elimination', 93, 'Copeland Gym','UPLB', 'Gym'),
  (647,true, CURDATE(), 'elimination', 93, 'Physci Building', 'UPLB', 'Building'),
  (648,true, CURDATE(), 'elimination', 93, 'Freedom Park', 'UPLB', 'Park'),
  (649,true, CURDATE(), 'semi-finals', 93, 'Freedom Park', 'UPLB', 'Park'),
  (650,true, CURDATE(), 'semi-finals', 93, 'Freedom Park', 'UPLB', 'Park'),
  (651,true, CURDATE(), 'finals', 93,'Freedom Park', 'UPLB', 'Park'),
  (652,true, CURDATE(), 'elimination', 94, 'Baker Hall', 'UPLB', 'Gym'),
  (653,true, CURDATE(), 'elimination', 94, 'Copeland Gym','UPLB', 'Gym'),
  (654,true, CURDATE(), 'elimination', 94, 'Physci Building', 'UPLB', 'Building'),
  (655,true, CURDATE(), 'elimination', 94, 'Freedom Park', 'UPLB', 'Park'),
  (656,true, CURDATE(), 'semi-finals', 94, 'Freedom Park', 'UPLB', 'Park'),
  (657,true, CURDATE(), 'semi-finals', 94, 'Freedom Park', 'UPLB', 'Park'),
  (658,true, CURDATE(), 'finals', 94,'Freedom Park', 'UPLB', 'Park'),
  (659,true, CURDATE(), 'elimination', 95, 'Baker Hall', 'UPLB', 'Gym'),
  (660,true, CURDATE(), 'elimination', 95, 'Copeland Gym','UPLB', 'Gym'),
  (661,true, CURDATE(), 'elimination', 95, 'Physci Building', 'UPLB', 'Building'),
  (662,true, CURDATE(), 'elimination', 95, 'Freedom Park', 'UPLB', 'Park'),
  (663,true, CURDATE(), 'semi-finals', 95, 'Freedom Park', 'UPLB', 'Park'),
  (664,true, CURDATE(), 'semi-finals', 95, 'Freedom Park', 'UPLB', 'Park'),
  (665,true, CURDATE(), 'finals', 95,'Freedom Park', 'UPLB', 'Park'),
  (666,true, CURDATE(), 'elimination', 96, 'Baker Hall', 'UPLB', 'Gym'),
  (667,true, CURDATE(), 'elimination', 96, 'Copeland Gym','UPLB', 'Gym'),
  (668,true, CURDATE(), 'elimination', 96, 'Physci Building', 'UPLB', 'Building'),
  (669,true, CURDATE(), 'elimination', 96, 'Freedom Park', 'UPLB', 'Park'),
  (670,true, CURDATE(), 'semi-finals', 96, 'Freedom Park', 'UPLB', 'Park'),
  (671,true, CURDATE(), 'semi-finals', 96, 'Freedom Park', 'UPLB', 'Park'),
  (672,true, CURDATE(), 'finals', 96,'Freedom Park', 'UPLB', 'Park'),
  (673,true, CURDATE(), 'elimination', 97, 'Baker Hall', 'UPLB', 'Gym'),
  (674,true, CURDATE(), 'elimination', 97, 'Copeland Gym','UPLB', 'Gym'),
  (675,true, CURDATE(), 'elimination', 97, 'Physci Building', 'UPLB', 'Building'),
  (676,true, CURDATE(), 'elimination', 97, 'Freedom Park', 'UPLB', 'Park'),
  (677,true, CURDATE(), 'semi-finals', 97, 'Freedom Park', 'UPLB', 'Park'),
  (678,true, CURDATE(), 'semi-finals', 97, 'Freedom Park', 'UPLB', 'Park'),
  (679,true, CURDATE(), 'finals', 97,'Freedom Park', 'UPLB', 'Park'),
  (680,true, CURDATE(), 'elimination', 98, 'Baker Hall', 'UPLB', 'Gym'),
  (681,true, CURDATE(), 'elimination', 98, 'Copeland Gym','UPLB', 'Gym'),
  (682,true, CURDATE(), 'elimination', 98, 'Physci Building', 'UPLB', 'Building'),
  (683,true, CURDATE(), 'elimination', 98, 'Freedom Park', 'UPLB', 'Park'),
  (684,true, CURDATE(), 'semi-finals', 98, 'Freedom Park', 'UPLB', 'Park'),
  (685,true, CURDATE(), 'semi-finals', 98, 'Freedom Park', 'UPLB', 'Park'),
  (686,true, CURDATE(), 'finals', 98,'Freedom Park', 'UPLB', 'Park'),
  (687,true, CURDATE(), 'elimination', 99, 'Baker Hall', 'UPLB', 'Gym'),
  (688,true, CURDATE(), 'elimination', 99, 'Copeland Gym','UPLB', 'Gym'),
  (689,true, CURDATE(), 'elimination', 99, 'Physci Building', 'UPLB', 'Building'),
  (690,true, CURDATE(), 'elimination', 99, 'Freedom Park', 'UPLB', 'Park'),
  (691,true, CURDATE(), 'semi-finals', 99, 'Freedom Park', 'UPLB', 'Park'),
  (692,true, CURDATE(), 'semi-finals', 99, 'Freedom Park', 'UPLB', 'Park'),
  (693,true, CURDATE(), 'finals', 99,'Freedom Park', 'UPLB', 'Park'),
  (694,true, CURDATE(), 'elimination', 100, 'Baker Hall', 'UPLB', 'Gym'),
  (695,true, CURDATE(), 'elimination', 100, 'Copeland Gym','UPLB', 'Gym'),
  (696,true, CURDATE(), 'elimination', 100, 'Physci Building', 'UPLB', 'Building'),
  (697,true, CURDATE(), 'elimination', 100, 'Freedom Park', 'UPLB', 'Park'),
  (698,true, CURDATE(), 'semi-finals', 100, 'Freedom Park', 'UPLB', 'Park'),
  (699,true, CURDATE(), 'semi-finals', 100, 'Freedom Park', 'UPLB', 'Park'),
  (700,true, CURDATE(), 'finals', 100,'Freedom Park', 'UPLB', 'Park'),
  (701,true, CURDATE(), 'elimination', 101, 'Baker Hall', 'UPLB', 'Gym'),
  (702,true, CURDATE(), 'elimination', 101, 'Copeland Gym','UPLB', 'Gym'),
  (703,true, CURDATE(), 'elimination', 101, 'Physci Building', 'UPLB', 'Building'),
  (704,true, CURDATE(), 'elimination', 101, 'Freedom Park', 'UPLB', 'Park'),
  (705,true, CURDATE(), 'semi-finals', 101, 'Freedom Park', 'UPLB', 'Park'),
  (706,true, CURDATE(), 'semi-finals', 101, 'Freedom Park', 'UPLB', 'Park'),
  (707,true, CURDATE(), 'finals', 101,'Freedom Park', 'UPLB', 'Park'),
  (708,true, CURDATE(), 'elimination', 102, 'Baker Hall', 'UPLB', 'Gym'),
  (709,true, CURDATE(), 'elimination', 102, 'Copeland Gym','UPLB', 'Gym'),
  (710,true, CURDATE(), 'elimination', 102, 'Physci Building', 'UPLB', 'Building'),
  (711,true, CURDATE(), 'elimination', 102, 'Freedom Park', 'UPLB', 'Park'),
  (712,true, CURDATE(), 'semi-finals', 102, 'Freedom Park', 'UPLB', 'Park'),
  (713,true, CURDATE(), 'semi-finals', 102, 'Freedom Park', 'UPLB', 'Park'),
  (714,true, CURDATE(), 'finals', 102,'Freedom Park', 'UPLB', 'Park'),
  (715,true, CURDATE(), 'elimination', 103, 'Baker Hall', 'UPLB', 'Gym'),
  (716,true, CURDATE(), 'elimination', 103, 'Copeland Gym','UPLB', 'Gym'),
  (717,true, CURDATE(), 'elimination', 103, 'Physci Building', 'UPLB', 'Building'),
  (718,true, CURDATE(), 'elimination', 103, 'Freedom Park', 'UPLB', 'Park'),
  (719,true, CURDATE(), 'semi-finals', 103, 'Freedom Park', 'UPLB', 'Park'),
  (720,true, CURDATE(), 'semi-finals', 103, 'Freedom Park', 'UPLB', 'Park'),
  (721,true, CURDATE(), 'finals', 103,'Freedom Park', 'UPLB', 'Park'),
  (722,true, CURDATE(), 'elimination', 104, 'Baker Hall', 'UPLB', 'Gym'),
  (723,true, CURDATE(), 'elimination', 104, 'Copeland Gym','UPLB', 'Gym'),
  (724,true, CURDATE(), 'elimination', 104, 'Physci Building', 'UPLB', 'Building'),
  (725,true, CURDATE(), 'elimination', 104, 'Freedom Park', 'UPLB', 'Park'),
  (726,true, CURDATE(), 'semi-finals', 104, 'Freedom Park', 'UPLB', 'Park'),
  (727,true, CURDATE(), 'semi-finals', 104, 'Freedom Park', 'UPLB', 'Park'),
  (728,true, CURDATE(), 'finals', 104,'Freedom Park', 'UPLB', 'Park'),
  (729,true, CURDATE(), 'elimination', 105, 'Baker Hall', 'UPLB', 'Gym'),
  (730,true, CURDATE(), 'elimination', 105, 'Copeland Gym','UPLB', 'Gym'),
  (731,true, CURDATE(), 'elimination', 105, 'Physci Building', 'UPLB', 'Building'),
  (732,true, CURDATE(), 'elimination', 105, 'Freedom Park', 'UPLB', 'Park'),
  (733,true, CURDATE(), 'semi-finals', 105, 'Freedom Park', 'UPLB', 'Park'),
  (734,true, CURDATE(), 'semi-finals', 105, 'Freedom Park', 'UPLB', 'Park'),
  (735,true, CURDATE(), 'finals', 105,'Freedom Park', 'UPLB', 'Park'),
  (736,true, CURDATE(), 'elimination', 106, 'Baker Hall', 'UPLB', 'Gym'),
  (737,true, CURDATE(), 'elimination', 106, 'Copeland Gym','UPLB', 'Gym'),
  (738,true, CURDATE(), 'elimination', 106, 'Physci Building', 'UPLB', 'Building'),
  (739,true, CURDATE(), 'elimination', 106, 'Freedom Park', 'UPLB', 'Park'),
  (740,true, CURDATE(), 'semi-finals', 106, 'Freedom Park', 'UPLB', 'Park'),
  (741,true, CURDATE(), 'semi-finals', 106, 'Freedom Park', 'UPLB', 'Park'),
  (742,true, CURDATE(), 'finals', 106,'Freedom Park', 'UPLB', 'Park'),
  (743,true, CURDATE(), 'elimination', 107, 'Baker Hall', 'UPLB', 'Gym'),
  (744,true, CURDATE(), 'elimination', 107, 'Copeland Gym','UPLB', 'Gym'),
  (745,true, CURDATE(), 'elimination', 107, 'Physci Building', 'UPLB', 'Building'),
  (746,true, CURDATE(), 'elimination', 107, 'Freedom Park', 'UPLB', 'Park'),
  (747,true, CURDATE(), 'semi-finals', 107, 'Freedom Park', 'UPLB', 'Park'),
  (748,true, CURDATE(), 'semi-finals', 107, 'Freedom Park', 'UPLB', 'Park'),
  (749,true, CURDATE(), 'finals', 107,'Freedom Park', 'UPLB', 'Park'),
  (750,true, CURDATE(), 'elimination', 108, 'Baker Hall', 'UPLB', 'Gym'),
  (751,true, CURDATE(), 'elimination', 108, 'Copeland Gym','UPLB', 'Gym'),
  (752,true, CURDATE(), 'elimination', 108, 'Physci Building', 'UPLB', 'Building'),
  (753,true, CURDATE(), 'elimination', 108, 'Freedom Park', 'UPLB', 'Park'),
  (754,true, CURDATE(), 'semi-finals', 108, 'Freedom Park', 'UPLB', 'Park'),
  (755,true, CURDATE(), 'semi-finals', 108, 'Freedom Park', 'UPLB', 'Park'),
  (756,true, CURDATE(), 'finals', 108,'Freedom Park', 'UPLB', 'Park'),
  (757,true, CURDATE(), 'elimination', 109, 'Baker Hall', 'UPLB', 'Gym'),
  (758,true, CURDATE(), 'elimination', 109, 'Copeland Gym','UPLB', 'Gym'),
  (759,true, CURDATE(), 'elimination', 109, 'Physci Building', 'UPLB', 'Building'),
  (760,true, CURDATE(), 'elimination', 109, 'Freedom Park', 'UPLB', 'Park'),
  (761,true, CURDATE(), 'semi-finals', 109, 'Freedom Park', 'UPLB', 'Park'),
  (762,true, CURDATE(), 'semi-finals', 109, 'Freedom Park', 'UPLB', 'Park'),
  (763,true, CURDATE(), 'finals', 109,'Freedom Park', 'UPLB', 'Park'),
  (764,true, CURDATE(), 'elimination', 110, 'Baker Hall', 'UPLB', 'Gym'),
  (765,true, CURDATE(), 'elimination', 110, 'Copeland Gym','UPLB', 'Gym'),
  (766,true, CURDATE(), 'elimination', 110, 'Physci Building', 'UPLB', 'Building'),
  (767,true, CURDATE(), 'elimination', 110, 'Freedom Park', 'UPLB', 'Park'),
  (768,true, CURDATE(), 'semi-finals', 110, 'Freedom Park', 'UPLB', 'Park'),
  (769,true, CURDATE(), 'semi-finals', 110, 'Freedom Park', 'UPLB', 'Park'),
  (770,true, CURDATE(), 'finals', 110,'Freedom Park', 'UPLB', 'Park'),
  (771,true, CURDATE(), 'elimination', 111, 'Baker Hall', 'UPLB', 'Gym'),
  (772,true, CURDATE(), 'elimination', 111, 'Copeland Gym','UPLB', 'Gym'),
  (773,true, CURDATE(), 'elimination', 111, 'Physci Building', 'UPLB', 'Building'),
  (774,true, CURDATE(), 'elimination', 111, 'Freedom Park', 'UPLB', 'Park'),
  (775,true, CURDATE(), 'semi-finals', 111, 'Freedom Park', 'UPLB', 'Park'),
  (776,true, CURDATE(), 'semi-finals', 111, 'Freedom Park', 'UPLB', 'Park'),
  (777,true, CURDATE(), 'finals', 111,'Freedom Park', 'UPLB', 'Park'),
  (778,true, CURDATE(), 'elimination', 112, 'Baker Hall', 'UPLB', 'Gym'),
  (779,true, CURDATE(), 'elimination', 112, 'Copeland Gym','UPLB', 'Gym'),
  (780,true, CURDATE(), 'elimination', 112, 'Physci Building', 'UPLB', 'Building'),
  (781,true, CURDATE(), 'elimination', 112, 'Freedom Park', 'UPLB', 'Park'),
  (782,true, CURDATE(), 'semi-finals', 112, 'Freedom Park', 'UPLB', 'Park'),
  (783,true, CURDATE(), 'semi-finals', 112, 'Freedom Park', 'UPLB', 'Park'),
  (784,true, CURDATE(), 'finals', 112,'Freedom Park', 'UPLB', 'Park'),
  (785,true, CURDATE(), 'elimination', 113, 'Baker Hall', 'UPLB', 'Gym'),
  (786,true, CURDATE(), 'elimination', 113, 'Copeland Gym','UPLB', 'Gym'),
  (787,true, CURDATE(), 'elimination', 113, 'Physci Building', 'UPLB', 'Building'),
  (788,true, CURDATE(), 'elimination', 113, 'Freedom Park', 'UPLB', 'Park'),
  (789,true, CURDATE(), 'semi-finals', 113, 'Freedom Park', 'UPLB', 'Park'),
  (790,true, CURDATE(), 'semi-finals', 113, 'Freedom Park', 'UPLB', 'Park'),
  (791,true, CURDATE(), 'finals', 113,'Freedom Park', 'UPLB', 'Park'),
  (792,true, CURDATE(), 'elimination', 114, 'Baker Hall', 'UPLB', 'Gym'),
  (793,true, CURDATE(), 'elimination', 114, 'Copeland Gym','UPLB', 'Gym'),
  (794,true, CURDATE(), 'elimination', 114, 'Physci Building', 'UPLB', 'Building'),
  (795,true, CURDATE(), 'elimination', 114, 'Freedom Park', 'UPLB', 'Park'),
  (796,true, CURDATE(), 'semi-finals', 114, 'Freedom Park', 'UPLB', 'Park'),
  (797,true, CURDATE(), 'semi-finals', 114, 'Freedom Park', 'UPLB', 'Park'),
  (798,true, CURDATE(), 'finals', 114,'Freedom Park', 'UPLB', 'Park'),
  (799,true, CURDATE(), 'elimination', 115, 'Baker Hall', 'UPLB', 'Gym'),
  (800,true, CURDATE(), 'elimination', 115, 'Copeland Gym','UPLB', 'Gym'),
  (801,true, CURDATE(), 'elimination', 115, 'Physci Building', 'UPLB', 'Building'),
  (802,true, CURDATE(), 'elimination', 115, 'Freedom Park', 'UPLB', 'Park'),
  (803,true, CURDATE(), 'semi-finals', 115, 'Freedom Park', 'UPLB', 'Park'),
  (804,true, CURDATE(), 'semi-finals', 115, 'Freedom Park', 'UPLB', 'Park'),
  (805,true, CURDATE(), 'finals', 115,'Freedom Park', 'UPLB', 'Park'),
  (806,true, CURDATE(), 'elimination', 116, 'Baker Hall', 'UPLB', 'Gym'),
  (807,true, CURDATE(), 'elimination', 116, 'Copeland Gym','UPLB', 'Gym'),
  (808,true, CURDATE(), 'elimination', 116, 'Physci Building', 'UPLB', 'Building'),
  (809,true, CURDATE(), 'elimination', 116, 'Freedom Park', 'UPLB', 'Park'),
  (810,true, CURDATE(), 'semi-finals', 116, 'Freedom Park', 'UPLB', 'Park'),
  (811,true, CURDATE(), 'semi-finals', 116, 'Freedom Park', 'UPLB', 'Park'),
  (812,true, CURDATE(), 'finals', 116,'Freedom Park', 'UPLB', 'Park'),
  (813,true, CURDATE(), 'elimination', 117, 'Baker Hall', 'UPLB', 'Gym'),
  (814,true, CURDATE(), 'elimination', 117, 'Copeland Gym','UPLB', 'Gym'),
  (815,true, CURDATE(), 'elimination', 117, 'Physci Building', 'UPLB', 'Building'),
  (816,true, CURDATE(), 'elimination', 117, 'Freedom Park', 'UPLB', 'Park'),
  (817,true, CURDATE(), 'semi-finals', 117, 'Freedom Park', 'UPLB', 'Park'),
  (818,true, CURDATE(), 'semi-finals', 117, 'Freedom Park', 'UPLB', 'Park'),
  (819,true, CURDATE(), 'finals', 117,'Freedom Park', 'UPLB', 'Park'),
  (820,true, CURDATE(), 'elimination', 118, 'Baker Hall', 'UPLB', 'Gym'),
  (821,true, CURDATE(), 'elimination', 118, 'Copeland Gym','UPLB', 'Gym'),
  (822,true, CURDATE(), 'elimination', 118, 'Physci Building', 'UPLB', 'Building'),
  (823,true, CURDATE(), 'elimination', 118, 'Freedom Park', 'UPLB', 'Park'),
  (824,true, CURDATE(), 'semi-finals', 118, 'Freedom Park', 'UPLB', 'Park'),
  (825,true, CURDATE(), 'semi-finals', 118, 'Freedom Park', 'UPLB', 'Park'),
  (826,true, CURDATE(), 'finals', 118,'Freedom Park', 'UPLB', 'Park'),
  (827,true, CURDATE(), 'elimination', 119, 'Baker Hall', 'UPLB', 'Gym'),
  (828,true, CURDATE(), 'elimination', 119, 'Copeland Gym','UPLB', 'Gym'),
  (829,true, CURDATE(), 'elimination', 119, 'Physci Building', 'UPLB', 'Building'),
  (830,true, CURDATE(), 'elimination', 119, 'Freedom Park', 'UPLB', 'Park'),
  (831,true, CURDATE(), 'semi-finals', 119, 'Freedom Park', 'UPLB', 'Park'),
  (832,true, CURDATE(), 'semi-finals', 119, 'Freedom Park', 'UPLB', 'Park'),
  (833,true, CURDATE(), 'finals', 119,'Freedom Park', 'UPLB', 'Park'),
  (834,true, CURDATE(), 'elimination', 120, 'Baker Hall', 'UPLB', 'Gym'),
  (835,true, CURDATE(), 'elimination', 120, 'Copeland Gym','UPLB', 'Gym'),
  (836,true, CURDATE(), 'elimination', 120, 'Physci Building', 'UPLB', 'Building'),
  (837,true, CURDATE(), 'elimination', 120, 'Freedom Park', 'UPLB', 'Park'),
  (838,true, CURDATE(), 'semi-finals', 120, 'Freedom Park', 'UPLB', 'Park'),
  (839,true, CURDATE(), 'semi-finals', 120, 'Freedom Park', 'UPLB', 'Park'),
  (840,true, CURDATE(), 'finals', 120,'Freedom Park', 'UPLB', 'Park'),
  (841,true, CURDATE(), 'elimination', 121, 'Baker Hall', 'UPLB', 'Gym'),
  (842,true, CURDATE(), 'elimination', 121, 'Copeland Gym','UPLB', 'Gym'),
  (843,true, CURDATE(), 'elimination', 121, 'Physci Building', 'UPLB', 'Building'),
  (844,true, CURDATE(), 'elimination', 121, 'Freedom Park', 'UPLB', 'Park'),
  (845,true, CURDATE(), 'semi-finals', 121, 'Freedom Park', 'UPLB', 'Park'),
  (846,true, CURDATE(), 'semi-finals', 121, 'Freedom Park', 'UPLB', 'Park'),
  (847,true, CURDATE(), 'finals', 121,'Freedom Park', 'UPLB', 'Park'),
  (848,true, CURDATE(), 'elimination', 122, 'Baker Hall', 'UPLB', 'Gym'),
  (849,true, CURDATE(), 'elimination', 122, 'Copeland Gym','UPLB', 'Gym'),
  (850,true, CURDATE(), 'elimination', 122, 'Physci Building', 'UPLB', 'Building'),
  (851,true, CURDATE(), 'elimination', 122, 'Freedom Park', 'UPLB', 'Park'),
  (852,true, CURDATE(), 'semi-finals', 122, 'Freedom Park', 'UPLB', 'Park'),
  (853,true, CURDATE(), 'semi-finals', 122, 'Freedom Park', 'UPLB', 'Park'),
  (854,true, CURDATE(), 'finals', 122,'Freedom Park', 'UPLB', 'Park'),
  (855,true, CURDATE(), 'elimination', 123, 'Baker Hall', 'UPLB', 'Gym'),
  (856,true, CURDATE(), 'elimination', 123, 'Copeland Gym','UPLB', 'Gym'),
  (857,true, CURDATE(), 'elimination', 123, 'Physci Building', 'UPLB', 'Building'),
  (858,true, CURDATE(), 'elimination', 123, 'Freedom Park', 'UPLB', 'Park'),
  (859,true, CURDATE(), 'semi-finals', 123, 'Freedom Park', 'UPLB', 'Park'),
  (860,true, CURDATE(), 'semi-finals', 123, 'Freedom Park', 'UPLB', 'Park'),
  (861,true, CURDATE(), 'finals', 123,'Freedom Park', 'UPLB', 'Park'),
  (862,true, CURDATE(), 'elimination', 124, 'Baker Hall', 'UPLB', 'Gym'),
  (863,true, CURDATE(), 'elimination', 124, 'Copeland Gym','UPLB', 'Gym'),
  (864,true, CURDATE(), 'elimination', 124, 'Physci Building', 'UPLB', 'Building'),
  (865,true, CURDATE(), 'elimination', 124, 'Freedom Park', 'UPLB', 'Park'),
  (866,true, CURDATE(), 'semi-finals', 124, 'Freedom Park', 'UPLB', 'Park'),
  (867,true, CURDATE(), 'semi-finals', 124, 'Freedom Park', 'UPLB', 'Park'),
  (868,true, CURDATE(), 'finals', 124,'Freedom Park', 'UPLB', 'Park'),
  (869,true, CURDATE(), 'elimination', 125, 'Baker Hall', 'UPLB', 'Gym'),
  (870,true, CURDATE(), 'elimination', 125, 'Copeland Gym','UPLB', 'Gym'),
  (871,true, CURDATE(), 'elimination', 125, 'Physci Building', 'UPLB', 'Building'),
  (872,true, CURDATE(), 'elimination', 125, 'Freedom Park', 'UPLB', 'Park'),
  (873,true, CURDATE(), 'semi-finals', 125, 'Freedom Park', 'UPLB', 'Park'),
  (874,true, CURDATE(), 'semi-finals', 125, 'Freedom Park', 'UPLB', 'Park'),
  (875,true, CURDATE(), 'finals', 125,'Freedom Park', 'UPLB', 'Park'),
  (876,true, CURDATE(), 'elimination', 126, 'Baker Hall', 'UPLB', 'Gym'),
  (877,true, CURDATE(), 'elimination', 126, 'Copeland Gym','UPLB', 'Gym'),
  (878,true, CURDATE(), 'elimination', 126, 'Physci Building', 'UPLB', 'Building'),
  (879,true, CURDATE(), 'elimination', 126, 'Freedom Park', 'UPLB', 'Park'),
  (880,true, CURDATE(), 'semi-finals', 126, 'Freedom Park', 'UPLB', 'Park'),
  (881,true, CURDATE(), 'semi-finals', 126, 'Freedom Park', 'UPLB', 'Park'),
  (882,true, CURDATE(), 'finals', 126,'Freedom Park', 'UPLB', 'Park'),
  (883,true, CURDATE(), 'elimination', 127, 'Baker Hall', 'UPLB', 'Gym'),
  (884,true, CURDATE(), 'elimination', 127, 'Copeland Gym','UPLB', 'Gym'),
  (885,true, CURDATE(), 'elimination', 127, 'Physci Building', 'UPLB', 'Building'),
  (886,true, CURDATE(), 'elimination', 127, 'Freedom Park', 'UPLB', 'Park'),
  (887,true, CURDATE(), 'semi-finals', 127, 'Freedom Park', 'UPLB', 'Park'),
  (888,true, CURDATE(), 'semi-finals', 127, 'Freedom Park', 'UPLB', 'Park'),
  (889,true, CURDATE(), 'finals', 127,'Freedom Park', 'UPLB', 'Park'),
  (890,true, CURDATE(), 'elimination', 128, 'Baker Hall', 'UPLB', 'Gym'),
  (891,true, CURDATE(), 'elimination', 128, 'Copeland Gym','UPLB', 'Gym'),
  (892,true, CURDATE(), 'elimination', 128, 'Physci Building', 'UPLB', 'Building'),
  (893,true, CURDATE(), 'elimination', 128, 'Freedom Park', 'UPLB', 'Park'),
  (894,true, CURDATE(), 'semi-finals', 128, 'Freedom Park', 'UPLB', 'Park'),
  (895,true, CURDATE(), 'semi-finals', 128, 'Freedom Park', 'UPLB', 'Park'),
  (896,true, CURDATE(), 'finals', 128,'Freedom Park', 'UPLB', 'Park'),
  (897,true, CURDATE(), 'elimination', 129, 'Baker Hall', 'UPLB', 'Gym'),
  (898,true, CURDATE(), 'elimination', 129, 'Copeland Gym','UPLB', 'Gym'),
  (899,true, CURDATE(), 'elimination', 129, 'Physci Building', 'UPLB', 'Building'),
  (900,true, CURDATE(), 'elimination', 129, 'Freedom Park', 'UPLB', 'Park'),
  (901,true, CURDATE(), 'semi-finals', 129, 'Freedom Park', 'UPLB', 'Park'),
  (902,true, CURDATE(), 'semi-finals', 129, 'Freedom Park', 'UPLB', 'Park'),
  (903,true, CURDATE(), 'finals', 129,'Freedom Park', 'UPLB', 'Park'),
  (904,true, CURDATE(), 'elimination', 130, 'Baker Hall', 'UPLB', 'Gym'),
  (905,true, CURDATE(), 'elimination', 130, 'Copeland Gym','UPLB', 'Gym'),
  (906,true, CURDATE(), 'elimination', 130, 'Physci Building', 'UPLB', 'Building'),
  (907,true, CURDATE(), 'elimination', 130, 'Freedom Park', 'UPLB', 'Park'),
  (908,true, CURDATE(), 'semi-finals', 130, 'Freedom Park', 'UPLB', 'Park'),
  (909,true, CURDATE(), 'semi-finals', 130, 'Freedom Park', 'UPLB', 'Park'),
  (910,true, CURDATE(), 'finals', 130,'Freedom Park', 'UPLB', 'Park'),
  (911,true, CURDATE(), 'elimination', 131, 'Baker Hall', 'UPLB', 'Gym'),
  (912,true, CURDATE(), 'elimination', 131, 'Copeland Gym','UPLB', 'Gym'),
  (913,true, CURDATE(), 'elimination', 131, 'Physci Building', 'UPLB', 'Building'),
  (914,true, CURDATE(), 'elimination', 131, 'Freedom Park', 'UPLB', 'Park'),
  (915,true, CURDATE(), 'semi-finals', 131, 'Freedom Park', 'UPLB', 'Park'),
  (916,true, CURDATE(), 'semi-finals', 131, 'Freedom Park', 'UPLB', 'Park'),
  (917,true, CURDATE(), 'finals', 131,'Freedom Park', 'UPLB', 'Park'),
  (918,true, CURDATE(), 'elimination', 132, 'Baker Hall', 'UPLB', 'Gym'),
  (919,true, CURDATE(), 'elimination', 132, 'Copeland Gym','UPLB', 'Gym'),
  (920,true, CURDATE(), 'elimination', 132, 'Physci Building', 'UPLB', 'Building'),
  (921,true, CURDATE(), 'elimination', 132, 'Freedom Park', 'UPLB', 'Park'),
  (922,true, CURDATE(), 'semi-finals', 132, 'Freedom Park', 'UPLB', 'Park'),
  (923,true, CURDATE(), 'semi-finals', 132, 'Freedom Park', 'UPLB', 'Park'),
  (924,true, CURDATE(), 'finals', 132,'Freedom Park', 'UPLB', 'Park'),
  (925,true, CURDATE(), 'elimination', 133, 'Baker Hall', 'UPLB', 'Gym'),
  (926,true, CURDATE(), 'elimination', 133, 'Copeland Gym','UPLB', 'Gym'),
  (927,true, CURDATE(), 'elimination', 133, 'Physci Building', 'UPLB', 'Building'),
  (928,true, CURDATE(), 'elimination', 133, 'Freedom Park', 'UPLB', 'Park'),
  (929,true, CURDATE(), 'semi-finals', 133, 'Freedom Park', 'UPLB', 'Park'),
  (930,true, CURDATE(), 'semi-finals', 133, 'Freedom Park', 'UPLB', 'Park'),
  (931,true, CURDATE(), 'finals', 133,'Freedom Park', 'UPLB', 'Park'),
  (932,true, CURDATE(), 'elimination', 134, 'Baker Hall', 'UPLB', 'Gym'),
  (933,true, CURDATE(), 'elimination', 134, 'Copeland Gym','UPLB', 'Gym'),
  (934,true, CURDATE(), 'elimination', 134, 'Physci Building', 'UPLB', 'Building'),
  (935,true, CURDATE(), 'elimination', 134, 'Freedom Park', 'UPLB', 'Park'),
  (936,true, CURDATE(), 'semi-finals', 134, 'Freedom Park', 'UPLB', 'Park'),
  (937,true, CURDATE(), 'semi-finals', 134, 'Freedom Park', 'UPLB', 'Park'),
  (938,true, CURDATE(), 'finals', 134,'Freedom Park', 'UPLB', 'Park'),
  (939,true, CURDATE(), 'elimination', 135, 'Baker Hall', 'UPLB', 'Gym'),
  (940,true, CURDATE(), 'elimination', 135, 'Copeland Gym','UPLB', 'Gym'),
  (941,true, CURDATE(), 'elimination', 135, 'Physci Building', 'UPLB', 'Building'),
  (942,true, CURDATE(), 'elimination', 135, 'Freedom Park', 'UPLB', 'Park'),
  (943,true, CURDATE(), 'semi-finals', 135, 'Freedom Park', 'UPLB', 'Park'),
  (944,true, CURDATE(), 'semi-finals', 135, 'Freedom Park', 'UPLB', 'Park'),
  (945,true, CURDATE(), 'finals', 135,'Freedom Park', 'UPLB', 'Park'),
  (946,true, CURDATE(), 'elimination', 136, 'Baker Hall', 'UPLB', 'Gym'),
  (947,true, CURDATE(), 'elimination', 136, 'Copeland Gym','UPLB', 'Gym'),
  (948,true, CURDATE(), 'elimination', 136, 'Physci Building', 'UPLB', 'Building'),
  (949,true, CURDATE(), 'elimination', 136, 'Freedom Park', 'UPLB', 'Park'),
  (950,true, CURDATE(), 'semi-finals', 136, 'Freedom Park', 'UPLB', 'Park'),
  (951,true, CURDATE(), 'semi-finals', 136, 'Freedom Park', 'UPLB', 'Park'),
  (952,true, CURDATE(), 'finals', 136,'Freedom Park', 'UPLB', 'Park'),
  (953,true, CURDATE(), 'elimination', 137, 'Baker Hall', 'UPLB', 'Gym'),
  (954,true, CURDATE(), 'elimination', 137, 'Copeland Gym','UPLB', 'Gym'),
  (955,true, CURDATE(), 'elimination', 137, 'Physci Building', 'UPLB', 'Building'),
  (956,true, CURDATE(), 'elimination', 137, 'Freedom Park', 'UPLB', 'Park'),
  (957,true, CURDATE(), 'semi-finals', 137, 'Freedom Park', 'UPLB', 'Park'),
  (958,true, CURDATE(), 'semi-finals', 137, 'Freedom Park', 'UPLB', 'Park'),
  (959,true, CURDATE(), 'finals', 137,'Freedom Park', 'UPLB', 'Park'),
  (960,true, CURDATE(), 'elimination', 138, 'Baker Hall', 'UPLB', 'Gym'),
  (961,true, CURDATE(), 'elimination', 138, 'Copeland Gym','UPLB', 'Gym'),
  (962,true, CURDATE(), 'elimination', 138, 'Physci Building', 'UPLB', 'Building'),
  (963,true, CURDATE(), 'elimination', 138, 'Freedom Park', 'UPLB', 'Park'),
  (964,true, CURDATE(), 'semi-finals', 138, 'Freedom Park', 'UPLB', 'Park'),
  (965,true, CURDATE(), 'semi-finals', 138, 'Freedom Park', 'UPLB', 'Park'),
  (966,true, CURDATE(), 'finals', 138,'Freedom Park', 'UPLB', 'Park'),
  (967,true, CURDATE(), 'elimination', 139, 'Baker Hall', 'UPLB', 'Gym'),
  (968,true, CURDATE(), 'elimination', 139, 'Copeland Gym','UPLB', 'Gym'),
  (969,true, CURDATE(), 'elimination', 139, 'Physci Building', 'UPLB', 'Building'),
  (970,true, CURDATE(), 'elimination', 139, 'Freedom Park', 'UPLB', 'Park'),
  (971,true, CURDATE(), 'semi-finals', 139, 'Freedom Park', 'UPLB', 'Park'),
  (972,true, CURDATE(), 'semi-finals', 139, 'Freedom Park', 'UPLB', 'Park'),
  (973,true, CURDATE(), 'finals', 139,'Freedom Park', 'UPLB', 'Park'),
  (974,true, CURDATE(), 'elimination', 140, 'Baker Hall', 'UPLB', 'Gym'),
  (975,true, CURDATE(), 'elimination', 140, 'Copeland Gym','UPLB', 'Gym'),
  (976,true, CURDATE(), 'elimination', 140, 'Physci Building', 'UPLB', 'Building'),
  (977,true, CURDATE(), 'elimination', 140, 'Freedom Park', 'UPLB', 'Park'),
  (978,true, CURDATE(), 'semi-finals', 140, 'Freedom Park', 'UPLB', 'Park'),
  (979,true, CURDATE(), 'semi-finals', 140, 'Freedom Park', 'UPLB', 'Park'),
  (980,true, CURDATE(), 'finals', 140,'Freedom Park', 'UPLB', 'Park'),
  (981,true, CURDATE(), 'elimination', 141, 'Baker Hall', 'UPLB', 'Gym'),
  (982,true, CURDATE(), 'elimination', 141, 'Copeland Gym','UPLB', 'Gym'),
  (983,true, CURDATE(), 'elimination', 141, 'Physci Building', 'UPLB', 'Building'),
  (984,true, CURDATE(), 'elimination', 141, 'Freedom Park', 'UPLB', 'Park'),
  (985,true, CURDATE(), 'semi-finals', 141, 'Freedom Park', 'UPLB', 'Park'),
  (986,true, CURDATE(), 'semi-finals', 141, 'Freedom Park', 'UPLB', 'Park'),
  (987,true, CURDATE(), 'finals', 141,'Freedom Park', 'UPLB', 'Park'),
  (988,true, CURDATE(), 'elimination', 142, 'Baker Hall', 'UPLB', 'Gym'),
  (989,true, CURDATE(), 'elimination', 142, 'Copeland Gym','UPLB', 'Gym'),
  (990,true, CURDATE(), 'elimination', 142, 'Physci Building', 'UPLB', 'Building'),
  (991,true, CURDATE(), 'elimination', 142, 'Freedom Park', 'UPLB', 'Park'),
  (992,true, CURDATE(), 'semi-finals', 142, 'Freedom Park', 'UPLB', 'Park'),
  (993,true, CURDATE(), 'semi-finals', 142, 'Freedom Park', 'UPLB', 'Park'),
  (994,true, CURDATE(), 'finals', 142,'Freedom Park', 'UPLB', 'Park'),
  (995,true, CURDATE(), 'elimination', 143, 'Baker Hall', 'UPLB', 'Gym'),
  (996,true, CURDATE(), 'elimination', 143, 'Copeland Gym','UPLB', 'Gym'),
  (997,true, CURDATE(), 'elimination', 143, 'Physci Building', 'UPLB', 'Building'),
  (998,true, CURDATE(), 'elimination', 143, 'Freedom Park', 'UPLB', 'Park'),
  (999,true, CURDATE(), 'semi-finals', 143, 'Freedom Park', 'UPLB', 'Park'),
  (1000,true, CURDATE(), 'semi-finals', 143, 'Freedom Park', 'UPLB', 'Park'),
  (1001,true, CURDATE(), 'finals', 143,'Freedom Park', 'UPLB', 'Park'),
  (1002,true, CURDATE(), 'elimination', 144, 'Baker Hall', 'UPLB', 'Gym'),
  (1003,true, CURDATE(), 'elimination', 144, 'Copeland Gym','UPLB', 'Gym'),
  (1004,true, CURDATE(), 'elimination', 144, 'Physci Building', 'UPLB', 'Building'),
  (1005,true, CURDATE(), 'elimination', 144, 'Freedom Park', 'UPLB', 'Park'),
  (1006,true, CURDATE(), 'semi-finals', 144, 'Freedom Park', 'UPLB', 'Park'),
  (1007,true, CURDATE(), 'semi-finals', 144, 'Freedom Park', 'UPLB', 'Park'),
  (1008,true, CURDATE(), 'finals', 144,'Freedom Park', 'UPLB', 'Park'),
  (1009,true, CURDATE(), 'elimination', 145, 'Baker Hall', 'UPLB', 'Gym'),
  (1010,true, CURDATE(), 'elimination', 145, 'Copeland Gym','UPLB', 'Gym'),
  (1011,true, CURDATE(), 'elimination', 145, 'Physci Building', 'UPLB', 'Building'),
  (1012,true, CURDATE(), 'elimination', 145, 'Freedom Park', 'UPLB', 'Park'),
  (1013,true, CURDATE(), 'semi-finals', 145, 'Freedom Park', 'UPLB', 'Park'),
  (1014,true, CURDATE(), 'semi-finals', 145, 'Freedom Park', 'UPLB', 'Park'),
  (1015,true, CURDATE(), 'finals', 145,'Freedom Park', 'UPLB', 'Park'),
  (1016,true, CURDATE(), 'elimination', 146, 'Baker Hall', 'UPLB', 'Gym'),
  (1017,true, CURDATE(), 'elimination', 146, 'Copeland Gym','UPLB', 'Gym'),
  (1018,true, CURDATE(), 'elimination', 146, 'Physci Building', 'UPLB', 'Building'),
  (1019,true, CURDATE(), 'elimination', 146, 'Freedom Park', 'UPLB', 'Park'),
  (1020,true, CURDATE(), 'semi-finals', 146, 'Freedom Park', 'UPLB', 'Park'),
  (1021,true, CURDATE(), 'semi-finals', 146, 'Freedom Park', 'UPLB', 'Park'),
  (1022,true, CURDATE(), 'finals', 146,'Freedom Park', 'UPLB', 'Park'),
  (1023,true, CURDATE(), 'elimination', 147, 'Baker Hall', 'UPLB', 'Gym'),
  (1024,true, CURDATE(), 'elimination', 147, 'Copeland Gym','UPLB', 'Gym'),
  (1025,true, CURDATE(), 'elimination', 147, 'Physci Building', 'UPLB', 'Building'),
  (1026,true, CURDATE(), 'elimination', 147, 'Freedom Park', 'UPLB', 'Park'),
  (1027,true, CURDATE(), 'semi-finals', 147, 'Freedom Park', 'UPLB', 'Park'),
  (1028,true, CURDATE(), 'semi-finals', 147, 'Freedom Park', 'UPLB', 'Park'),
  (1029,true, CURDATE(), 'finals', 147,'Freedom Park', 'UPLB', 'Park'),
  (1030,true, CURDATE(), 'elimination', 148, 'Baker Hall', 'UPLB', 'Gym'),
  (1031,true, CURDATE(), 'elimination', 148, 'Copeland Gym','UPLB', 'Gym'),
  (1032,true, CURDATE(), 'elimination', 148, 'Physci Building', 'UPLB', 'Building'),
  (1033,true, CURDATE(), 'elimination', 148, 'Freedom Park', 'UPLB', 'Park'),
  (1034,true, CURDATE(), 'semi-finals', 148, 'Freedom Park', 'UPLB', 'Park'),
  (1035,true, CURDATE(), 'semi-finals', 148, 'Freedom Park', 'UPLB', 'Park'),
  (1036,true, CURDATE(), 'finals', 148,'Freedom Park', 'UPLB', 'Park'),
  (1037,true, CURDATE(), 'elimination', 149, 'Baker Hall', 'UPLB', 'Gym'),
  (1038,true, CURDATE(), 'elimination', 149, 'Copeland Gym','UPLB', 'Gym'),
  (1039,true, CURDATE(), 'elimination', 149, 'Physci Building', 'UPLB', 'Building'),
  (1040,true, CURDATE(), 'elimination', 149, 'Freedom Park', 'UPLB', 'Park'),
  (1041,true, CURDATE(), 'semi-finals', 149, 'Freedom Park', 'UPLB', 'Park'),
  (1042,true, CURDATE(), 'semi-finals', 149, 'Freedom Park', 'UPLB', 'Park'),
  (1043,true, CURDATE(), 'finals', 149,'Freedom Park', 'UPLB', 'Park'),
  (1044,true, CURDATE(), 'elimination', 150, 'Baker Hall', 'UPLB', 'Gym'),
  (1045,true, CURDATE(), 'elimination', 150, 'Copeland Gym','UPLB', 'Gym'),
  (1046,true, CURDATE(), 'elimination', 150, 'Physci Building', 'UPLB', 'Building'),
  (1047,true, CURDATE(), 'elimination', 150, 'Freedom Park', 'UPLB', 'Park'),
  (1048,true, CURDATE(), 'semi-finals', 150, 'Freedom Park', 'UPLB', 'Park'),
  (1049,true, CURDATE(), 'semi-finals', 150, 'Freedom Park', 'UPLB', 'Park'),
  (1050,true, CURDATE(), 'finals', 150,'Freedom Park', 'UPLB', 'Park'),
  (1051,true, CURDATE(), 'elimination', 151, 'Baker Hall', 'UPLB', 'Gym'),
  (1052,true, CURDATE(), 'elimination', 151, 'Copeland Gym','UPLB', 'Gym'),
  (1053,true, CURDATE(), 'elimination', 151, 'Physci Building', 'UPLB', 'Building'),
  (1054,true, CURDATE(), 'elimination', 151, 'Freedom Park', 'UPLB', 'Park'),
  (1055,true, CURDATE(), 'semi-finals', 151, 'Freedom Park', 'UPLB', 'Park'),
  (1056,true, CURDATE(), 'semi-finals', 151, 'Freedom Park', 'UPLB', 'Park'),
  (1057,true, CURDATE(), 'finals', 151,'Freedom Park', 'UPLB', 'Park'),
  (1058,true, CURDATE(), 'elimination', 152, 'Baker Hall', 'UPLB', 'Gym'),
  (1059,true, CURDATE(), 'elimination', 152, 'Copeland Gym','UPLB', 'Gym'),
  (1060,true, CURDATE(), 'elimination', 152, 'Physci Building', 'UPLB', 'Building'),
  (1061,true, CURDATE(), 'elimination', 152, 'Freedom Park', 'UPLB', 'Park'),
  (1062,true, CURDATE(), 'semi-finals', 152, 'Freedom Park', 'UPLB', 'Park'),
  (1063,true, CURDATE(), 'semi-finals', 152, 'Freedom Park', 'UPLB', 'Park'),
  (1064,true, CURDATE(), 'finals', 152,'Freedom Park', 'UPLB', 'Park'),
  (1065,true, CURDATE(), 'elimination', 153, 'Baker Hall', 'UPLB', 'Gym'),
  (1066,true, CURDATE(), 'elimination', 153, 'Copeland Gym','UPLB', 'Gym'),
  (1067,true, CURDATE(), 'elimination', 153, 'Physci Building', 'UPLB', 'Building'),
  (1068,true, CURDATE(), 'elimination', 153, 'Freedom Park', 'UPLB', 'Park'),
  (1069,true, CURDATE(), 'semi-finals', 153, 'Freedom Park', 'UPLB', 'Park'),
  (1070,true, CURDATE(), 'semi-finals', 153, 'Freedom Park', 'UPLB', 'Park'),
  (1071,true, CURDATE(), 'finals', 153,'Freedom Park', 'UPLB', 'Park'),
  (1072,true, CURDATE(), 'elimination', 154, 'Baker Hall', 'UPLB', 'Gym'),
  (1073,true, CURDATE(), 'elimination', 154, 'Copeland Gym','UPLB', 'Gym'),
  (1074,true, CURDATE(), 'elimination', 154, 'Physci Building', 'UPLB', 'Building'),
  (1075,true, CURDATE(), 'elimination', 154, 'Freedom Park', 'UPLB', 'Park'),
  (1076,true, CURDATE(), 'semi-finals', 154, 'Freedom Park', 'UPLB', 'Park'),
  (1077,true, CURDATE(), 'semi-finals', 154, 'Freedom Park', 'UPLB', 'Park'),
  (1078,true, CURDATE(), 'finals', 154,'Freedom Park', 'UPLB', 'Park'),
  (1079,true, CURDATE(), 'elimination', 155, 'Baker Hall', 'UPLB', 'Gym'),
  (1080,true, CURDATE(), 'elimination', 155, 'Copeland Gym','UPLB', 'Gym'),
  (1081,true, CURDATE(), 'elimination', 155, 'Physci Building', 'UPLB', 'Building'),
  (1082,true, CURDATE(), 'elimination', 155, 'Freedom Park', 'UPLB', 'Park'),
  (1083,true, CURDATE(), 'semi-finals', 155, 'Freedom Park', 'UPLB', 'Park'),
  (1084,true, CURDATE(), 'semi-finals', 155, 'Freedom Park', 'UPLB', 'Park'),
  (1085,true, CURDATE(), 'finals', 155,'Freedom Park', 'UPLB', 'Park'),
  (1086,true, CURDATE(), 'elimination', 156, 'Baker Hall', 'UPLB', 'Gym'),
  (1087,true, CURDATE(), 'elimination', 156, 'Copeland Gym','UPLB', 'Gym'),
  (1088,true, CURDATE(), 'elimination', 156, 'Physci Building', 'UPLB', 'Building'),
  (1089,true, CURDATE(), 'elimination', 156, 'Freedom Park', 'UPLB', 'Park'),
  (1090,true, CURDATE(), 'semi-finals', 156, 'Freedom Park', 'UPLB', 'Park'),
  (1091,true, CURDATE(), 'semi-finals', 156, 'Freedom Park', 'UPLB', 'Park'),
  (1092,true, CURDATE(), 'finals', 156,'Freedom Park', 'UPLB', 'Park'),
  (1093,true, CURDATE(), 'elimination', 157, 'Baker Hall', 'UPLB', 'Gym'),
  (1094,true, CURDATE(), 'elimination', 157, 'Copeland Gym','UPLB', 'Gym'),
  (1095,true, CURDATE(), 'elimination', 157, 'Physci Building', 'UPLB', 'Building'),
  (1096,true, CURDATE(), 'elimination', 157, 'Freedom Park', 'UPLB', 'Park'),
  (1097,true, CURDATE(), 'semi-finals', 157, 'Freedom Park', 'UPLB', 'Park'),
  (1098,true, CURDATE(), 'semi-finals', 157, 'Freedom Park', 'UPLB', 'Park'),
  (1099,true, CURDATE(), 'finals', 157,'Freedom Park', 'UPLB', 'Park'),
  (1100,true, CURDATE(), 'elimination', 158, 'Baker Hall', 'UPLB', 'Gym'),
  (1101,true, CURDATE(), 'elimination', 158, 'Copeland Gym','UPLB', 'Gym'),
  (1102,true, CURDATE(), 'elimination', 158, 'Physci Building', 'UPLB', 'Building'),
  (1103,true, CURDATE(), 'elimination', 158, 'Freedom Park', 'UPLB', 'Park'),
  (1104,true, CURDATE(), 'semi-finals', 158, 'Freedom Park', 'UPLB', 'Park'),
  (1105,true, CURDATE(), 'semi-finals', 158, 'Freedom Park', 'UPLB', 'Park'),
  (1106,true, CURDATE(), 'finals', 158,'Freedom Park', 'UPLB', 'Park'),
  (1107,true, CURDATE(), 'elimination', 159, 'Baker Hall', 'UPLB', 'Gym'),
  (1108,true, CURDATE(), 'elimination', 159, 'Copeland Gym','UPLB', 'Gym'),
  (1109,true, CURDATE(), 'elimination', 159, 'Physci Building', 'UPLB', 'Building'),
  (1110,true, CURDATE(), 'elimination', 159, 'Freedom Park', 'UPLB', 'Park'),
  (1111,true, CURDATE(), 'semi-finals', 159, 'Freedom Park', 'UPLB', 'Park'),
  (1112,true, CURDATE(), 'semi-finals', 159, 'Freedom Park', 'UPLB', 'Park'),
  (1113,true, CURDATE(), 'finals', 159,'Freedom Park', 'UPLB', 'Park'),
  (1114,true, CURDATE(), 'elimination', 160, 'Baker Hall', 'UPLB', 'Gym'),
  (1115,true, CURDATE(), 'elimination', 160, 'Copeland Gym','UPLB', 'Gym'),
  (1116,true, CURDATE(), 'elimination', 160, 'Physci Building', 'UPLB', 'Building'),
  (1117,true, CURDATE(), 'elimination', 160, 'Freedom Park', 'UPLB', 'Park'),
  (1118,true, CURDATE(), 'semi-finals', 160, 'Freedom Park', 'UPLB', 'Park'),
  (1119,true, CURDATE(), 'semi-finals', 160, 'Freedom Park', 'UPLB', 'Park'),
  (1120,true, CURDATE(), 'finals', 160,'Freedom Park', 'UPLB', 'Park'),
  (1121,true, CURDATE(), 'elimination', 161, 'Baker Hall', 'UPLB', 'Gym'),
  (1122,true, CURDATE(), 'elimination', 161, 'Copeland Gym','UPLB', 'Gym'),
  (1123,true, CURDATE(), 'elimination', 161, 'Physci Building', 'UPLB', 'Building'),
  (1124,true, CURDATE(), 'elimination', 161, 'Freedom Park', 'UPLB', 'Park'),
  (1125,true, CURDATE(), 'semi-finals', 161, 'Freedom Park', 'UPLB', 'Park'),
  (1126,true, CURDATE(), 'semi-finals', 161, 'Freedom Park', 'UPLB', 'Park'),
  (1127,true, CURDATE(), 'finals', 161,'Freedom Park', 'UPLB', 'Park'),
  (1128,true, CURDATE(), 'elimination', 162, 'Baker Hall', 'UPLB', 'Gym'),
  (1129,true, CURDATE(), 'elimination', 162, 'Copeland Gym','UPLB', 'Gym'),
  (1130,true, CURDATE(), 'elimination', 162, 'Physci Building', 'UPLB', 'Building'),
  (1131,true, CURDATE(), 'elimination', 162, 'Freedom Park', 'UPLB', 'Park'),
  (1132,true, CURDATE(), 'semi-finals', 162, 'Freedom Park', 'UPLB', 'Park'),
  (1133,true, CURDATE(), 'semi-finals', 162, 'Freedom Park', 'UPLB', 'Park'),
  (1134,true, CURDATE(), 'finals', 162,'Freedom Park', 'UPLB', 'Park'),
  (1135,true, CURDATE(), 'elimination', 163, 'Baker Hall', 'UPLB', 'Gym'),
  (1136,true, CURDATE(), 'elimination', 163, 'Copeland Gym','UPLB', 'Gym'),
  (1137,true, CURDATE(), 'elimination', 163, 'Physci Building', 'UPLB', 'Building'),
  (1138,true, CURDATE(), 'elimination', 163, 'Freedom Park', 'UPLB', 'Park'),
  (1139,true, CURDATE(), 'semi-finals', 163, 'Freedom Park', 'UPLB', 'Park'),
  (1140,true, CURDATE(), 'semi-finals', 163, 'Freedom Park', 'UPLB', 'Park'),
  (1141,true, CURDATE(), 'finals', 163,'Freedom Park', 'UPLB', 'Park'),
  (1142,true, CURDATE(), 'elimination', 164, 'Baker Hall', 'UPLB', 'Gym'),
  (1143,true, CURDATE(), 'elimination', 164, 'Copeland Gym','UPLB', 'Gym'),
  (1144,true, CURDATE(), 'elimination', 164, 'Physci Building', 'UPLB', 'Building'),
  (1145,true, CURDATE(), 'elimination', 164, 'Freedom Park', 'UPLB', 'Park'),
  (1146,true, CURDATE(), 'semi-finals', 164, 'Freedom Park', 'UPLB', 'Park'),
  (1147,true, CURDATE(), 'semi-finals', 164, 'Freedom Park', 'UPLB', 'Park'),
  (1148,true, CURDATE(), 'finals', 164,'Freedom Park', 'UPLB', 'Park'),
  (1149,true, CURDATE(), 'elimination', 165, 'Baker Hall', 'UPLB', 'Gym'),
  (1150,true, CURDATE(), 'elimination', 165, 'Copeland Gym','UPLB', 'Gym'),
  (1151,true, CURDATE(), 'elimination', 165, 'Physci Building', 'UPLB', 'Building'),
  (1152,true, CURDATE(), 'elimination', 165, 'Freedom Park', 'UPLB', 'Park'),
  (1153,true, CURDATE(), 'semi-finals', 165, 'Freedom Park', 'UPLB', 'Park'),
  (1154,true, CURDATE(), 'semi-finals', 165, 'Freedom Park', 'UPLB', 'Park'),
  (1155,true, CURDATE(), 'finals', 165,'Freedom Park', 'UPLB', 'Park'),
  (1156,true, CURDATE(), 'elimination', 166, 'Baker Hall', 'UPLB', 'Gym'),
  (1157,true, CURDATE(), 'elimination', 166, 'Copeland Gym','UPLB', 'Gym'),
  (1158,true, CURDATE(), 'elimination', 166, 'Physci Building', 'UPLB', 'Building'),
  (1159,true, CURDATE(), 'elimination', 166, 'Freedom Park', 'UPLB', 'Park'),
  (1160,true, CURDATE(), 'semi-finals', 166, 'Freedom Park', 'UPLB', 'Park'),
  (1161,true, CURDATE(), 'semi-finals', 166, 'Freedom Park', 'UPLB', 'Park'),
  (1162,true, CURDATE(), 'finals', 166,'Freedom Park', 'UPLB', 'Park'),
  (1163,true, CURDATE(), 'elimination', 167, 'Baker Hall', 'UPLB', 'Gym'),
  (1164,true, CURDATE(), 'elimination', 167, 'Copeland Gym','UPLB', 'Gym'),
  (1165,true, CURDATE(), 'elimination', 167, 'Physci Building', 'UPLB', 'Building'),
  (1166,true, CURDATE(), 'elimination', 167, 'Freedom Park', 'UPLB', 'Park'),
  (1167,true, CURDATE(), 'semi-finals', 167, 'Freedom Park', 'UPLB', 'Park'),
  (1168,true, CURDATE(), 'semi-finals', 167, 'Freedom Park', 'UPLB', 'Park'),
  (1169,true, CURDATE(), 'finals', 167,'Freedom Park', 'UPLB', 'Park'),
  (1170,true, CURDATE(), 'elimination', 168, 'Baker Hall', 'UPLB', 'Gym'),
  (1171,true, CURDATE(), 'elimination', 168, 'Copeland Gym','UPLB', 'Gym'),
  (1172,true, CURDATE(), 'elimination', 168, 'Physci Building', 'UPLB', 'Building'),
  (1173,true, CURDATE(), 'elimination', 168, 'Freedom Park', 'UPLB', 'Park'),
  (1174,true, CURDATE(), 'semi-finals', 168, 'Freedom Park', 'UPLB', 'Park'),
  (1175,true, CURDATE(), 'semi-finals', 168, 'Freedom Park', 'UPLB', 'Park'),
  (1176,true, CURDATE(), 'finals', 168,'Freedom Park', 'UPLB', 'Park');


delete from team;
/*
  create teams
*/
INSERT INTO 
  team 
VALUES 
  (1, 'Red Job', 'Red'),
  (2, 'Orange Job', 'Orange'),
  (3, 'Yellow Job', 'Yellow'),
  (4, 'Green Job', 'Green'),
  (5, 'Blue Job', 'Blue'),
  (6, 'Indigo Job', 'Indigo'),
  (7, 'Violet Job', 'Violet'),
  (8, 'White Job', 'White');

/*
  create players
*/
CALL add_account(
  'Juan',                                         /*firstname*/
  'Player',                                       /*middlename*/
  'Dela Cruz',                                    /*lastname*/
  'playerJuan@gmail.com',                         /*email*/
  'playerJuan',                                   /*username*/
  '10/w7o2juYBrGMh32/KbveULW9jk2tejpyUAD+uC6PE=', /*password*/
  'BSCE',                                         /*course*/
  CURDATE(),                                      /*birthday*/
  'CEAT',                                         /*college*/
  false,                                          /*is_game_head*/
  NULL,                                           /*position*/
  true,                                           /*is_player*/
  '04',                                           /*player_jersey_num*/
  'Member'                                        /*player_role*/
);
CALL approve_account(LAST_INSERT_ID());
CALL add_account(
  'Tuu',                                          /*firstname*/
  'Player',                                       /*middlename*/
  'Pak',                                          /*lastname*/
  'playerTuu@gmail.com',                          /*email*/
  'playerTuu',                                    /*username*/
  '10/w7o2juYBrGMh32/KbveULW9jk2tejpyUAD+uC6PE=', /*password*/
  'BSA',                                          /*course*/
  CURDATE(),                                      /*birthday*/
  'CA',                                           /*college*/
  false,                                          /*is_game_head*/
  NULL,                                           /*position*/
  true,                                           /*is_player*/
  '05',                                           /*player_jersey_num*/
  'Member'                                        /*player_role*/
);
CALL approve_account(LAST_INSERT_ID());
CALL add_account(
  'Tresa',                                        /*firstname*/
  'Player',                                       /*middlename*/
  'Syeta',                                          /*lastname*/
  'playerTresa@gmail.com',                        /*email*/
  'playerTresa',                                  /*username*/
  '10/w7o2juYBrGMh32/KbveULW9jk2tejpyUAD+uC6PE=', /*password*/
  'BSStat',                                       /*course*/
  CURDATE(),                                      /*birthday*/
  'CAS',                                          /*college*/
  false,                                          /*is_game_head*/
  NULL,                                           /*position*/
  true,                                           /*is_player*/
  '06',                                           /*player_jersey_num*/
  'Member'                                        /*player_role*/
);
CALL approve_account(LAST_INSERT_ID());
CALL add_account(
  'Por',                                          /*firstname*/
  'Player',                                       /*middlename*/
  'Tipayb',                                       /*lastname*/
  'playerPor@gmail.com',                          /*email*/
  'playerPor',                                    /*username*/
  '10/w7o2juYBrGMh32/KbveULW9jk2tejpyUAD+uC6PE=', /*password*/
  'BSBio',                                        /*course*/
  CURDATE(),                                      /*birthday*/
  'CAS',                                          /*college*/
  false,                                          /*is_game_head*/
  NULL,                                           /*position*/
  true,                                           /*is_player*/
  '07',                                           /*player_jersey_num*/
  'Member'                                        /*player_role*/
);
CALL approve_account(LAST_INSERT_ID());
CALL add_account(
  'Payb',                                         /*firstname*/
  'Player',                                       /*middlename*/
  'Ber',                                          /*lastname*/
  'playerPayb@gmail.com',                         /*email*/
  'playerPayb',                                   /*username*/
  '10/w7o2juYBrGMh32/KbveULW9jk2tejpyUAD+uC6PE=', /*password*/
  'BSF',                                          /*course*/
  CURDATE(),                                      /*birthday*/
  'CFNR',                                         /*college*/
  false,                                          /*is_game_head*/
  NULL,                                           /*position*/
  true,                                           /*is_player*/
  '08',                                           /*player_jersey_num*/
  'Member'                                        /*player_role*/
);
CALL approve_account(LAST_INSERT_ID());
CALL add_account(
  'Bert',                                         /*firstname*/
  'Tran',                                         /*middlename*/
  'Ting',                                         /*lastname*/
  'bert@gmail.com',                               /*email*/
  'Bert',                                         /*username*/
  '10/w7o2juYBrGMh32/KbveULW9jk2tejpyUAD+uC6PE=', /*password*/
  'BSChem',                                       /*course*/
  CURDATE(),                                      /*birthday*/
  'CAS',                                          /*college*/
  false,                                          /*is_game_head*/
  NULL,                                           /*position*/
  true,                                           /*is_player*/
  '09',                                           /*player_jersey_num*/
  'Member'                                        /*player_role*/
);
CALL add_account(
  'David',                                        /*firstname*/
  'Delos Santos',                                 /*middlename*/
  'Dimaano',                                      /*lastname*/
  'david@gmail.com',                              /*email*/
  'David',                                        /*username*/
  '10/w7o2juYBrGMh32/KbveULW9jk2tejpyUAD+uC6PE=', /*password*/
  'BSChem',                                       /*course*/
  CURDATE(),                                      /*birthday*/
  'CAS',                                          /*college*/
  false,                                          /*is_game_head*/
  NULL,                                           /*position*/
  false,                                          /*is_player*/
  NULL,                                           /*player_jersey_num*/
  NULL                                            /*player_role*/
);
/*
  create connections:
    -teams of game_events
    -players of teams
    -teams of match_events
*/
delete from game_event_team;
/*
  teams of game_events
*/
INSERT INTO 
  game_event_team 
VALUES
  (1, (SELECT game_id FROM game_event WHERE game_name = 'Game 1')),
  (2, (SELECT game_id FROM game_event WHERE game_name = 'Game 1')),
  (3, (SELECT game_id FROM game_event WHERE game_name = 'Game 1')),
  (4, (SELECT game_id FROM game_event WHERE game_name = 'Game 1')),
  (5, (SELECT game_id FROM game_event WHERE game_name = 'Game 1')),
  (6, (SELECT game_id FROM game_event WHERE game_name = 'Game 1')),
  (7, (SELECT game_id FROM game_event WHERE game_name = 'Game 1')),
  (8, (SELECT game_id FROM game_event WHERE game_name = 'Game 1')),
  (1, (SELECT game_id FROM game_event WHERE game_name = 'Game 2')),
  (2, (SELECT game_id FROM game_event WHERE game_name = 'Game 2')),
  (3, (SELECT game_id FROM game_event WHERE game_name = 'Game 2')),
  (4, (SELECT game_id FROM game_event WHERE game_name = 'Game 2')),
  (5, (SELECT game_id FROM game_event WHERE game_name = 'Game 2')),
  (6, (SELECT game_id FROM game_event WHERE game_name = 'Game 2')),
  (7, (SELECT game_id FROM game_event WHERE game_name = 'Game 2')),
  (8, (SELECT game_id FROM game_event WHERE game_name = 'Game 2')),
  (1, (SELECT game_id FROM game_event WHERE game_name = 'Game 3')),
  (2, (SELECT game_id FROM game_event WHERE game_name = 'Game 3')),
  (3, (SELECT game_id FROM game_event WHERE game_name = 'Game 3')),
  (4, (SELECT game_id FROM game_event WHERE game_name = 'Game 3')),
  (5, (SELECT game_id FROM game_event WHERE game_name = 'Game 3')),
  (6, (SELECT game_id FROM game_event WHERE game_name = 'Game 3')),
  (7, (SELECT game_id FROM game_event WHERE game_name = 'Game 3')),
  (8, (SELECT game_id FROM game_event WHERE game_name = 'Game 3')),
  (1, (SELECT game_id FROM game_event WHERE game_name = 'Game 4')),
  (2, (SELECT game_id FROM game_event WHERE game_name = 'Game 4')),
  (3, (SELECT game_id FROM game_event WHERE game_name = 'Game 4')),
  (4, (SELECT game_id FROM game_event WHERE game_name = 'Game 4')),
  (5, (SELECT game_id FROM game_event WHERE game_name = 'Game 4')),
  (6, (SELECT game_id FROM game_event WHERE game_name = 'Game 4')),
  (7, (SELECT game_id FROM game_event WHERE game_name = 'Game 4')),
  (8, (SELECT game_id FROM game_event WHERE game_name = 'Game 4')),
  (1, (SELECT game_id FROM game_event WHERE game_name = 'Game 5')),
  (2, (SELECT game_id FROM game_event WHERE game_name = 'Game 5')),
  (3, (SELECT game_id FROM game_event WHERE game_name = 'Game 5')),
  (4, (SELECT game_id FROM game_event WHERE game_name = 'Game 5')),
  (5, (SELECT game_id FROM game_event WHERE game_name = 'Game 5')),
  (6, (SELECT game_id FROM game_event WHERE game_name = 'Game 5')),
  (7, (SELECT game_id FROM game_event WHERE game_name = 'Game 5')),
  (8, (SELECT game_id FROM game_event WHERE game_name = 'Game 5')),
  (1, (SELECT game_id FROM game_event WHERE game_name = 'Game 6')),
  (2, (SELECT game_id FROM game_event WHERE game_name = 'Game 6')),
  (3, (SELECT game_id FROM game_event WHERE game_name = 'Game 6')),
  (4, (SELECT game_id FROM game_event WHERE game_name = 'Game 6')),
  (5, (SELECT game_id FROM game_event WHERE game_name = 'Game 6')),
  (6, (SELECT game_id FROM game_event WHERE game_name = 'Game 6')),
  (7, (SELECT game_id FROM game_event WHERE game_name = 'Game 6')),
  (8, (SELECT game_id FROM game_event WHERE game_name = 'Game 6')),
  (1, (SELECT game_id FROM game_event WHERE game_name = 'Game 7')),
  (2, (SELECT game_id FROM game_event WHERE game_name = 'Game 7')),
  (3, (SELECT game_id FROM game_event WHERE game_name = 'Game 7')),
  (4, (SELECT game_id FROM game_event WHERE game_name = 'Game 7')),
  (5, (SELECT game_id FROM game_event WHERE game_name = 'Game 7')),
  (6, (SELECT game_id FROM game_event WHERE game_name = 'Game 7')),
  (7, (SELECT game_id FROM game_event WHERE game_name = 'Game 7')),
  (8, (SELECT game_id FROM game_event WHERE game_name = 'Game 7')),
  (1, (SELECT game_id FROM game_event WHERE game_name = 'Game 8')),
  (2, (SELECT game_id FROM game_event WHERE game_name = 'Game 8')),
  (3, (SELECT game_id FROM game_event WHERE game_name = 'Game 8')),
  (4, (SELECT game_id FROM game_event WHERE game_name = 'Game 8')),
  (5, (SELECT game_id FROM game_event WHERE game_name = 'Game 8')),
  (6, (SELECT game_id FROM game_event WHERE game_name = 'Game 8')),
  (7, (SELECT game_id FROM game_event WHERE game_name = 'Game 8')),
  (8, (SELECT game_id FROM game_event WHERE game_name = 'Game 8')),
  (1, (SELECT game_id FROM game_event WHERE game_name = 'Game 9')),
  (2, (SELECT game_id FROM game_event WHERE game_name = 'Game 9')),
  (3, (SELECT game_id FROM game_event WHERE game_name = 'Game 9')),
  (4, (SELECT game_id FROM game_event WHERE game_name = 'Game 9')),
  (5, (SELECT game_id FROM game_event WHERE game_name = 'Game 9')),
  (6, (SELECT game_id FROM game_event WHERE game_name = 'Game 9')),
  (7, (SELECT game_id FROM game_event WHERE game_name = 'Game 9')),
  (8, (SELECT game_id FROM game_event WHERE game_name = 'Game 9')),
  (1, (SELECT game_id FROM game_event WHERE game_name = 'Game 10')),
  (2, (SELECT game_id FROM game_event WHERE game_name = 'Game 10')),
  (3, (SELECT game_id FROM game_event WHERE game_name = 'Game 10')),
  (4, (SELECT game_id FROM game_event WHERE game_name = 'Game 10')),
  (5, (SELECT game_id FROM game_event WHERE game_name = 'Game 10')),
  (6, (SELECT game_id FROM game_event WHERE game_name = 'Game 10')),
  (7, (SELECT game_id FROM game_event WHERE game_name = 'Game 10')),
  (8, (SELECT game_id FROM game_event WHERE game_name = 'Game 10')),
  (1, (SELECT game_id FROM game_event WHERE game_name = 'Game 11')),
  (2, (SELECT game_id FROM game_event WHERE game_name = 'Game 11')),
  (3, (SELECT game_id FROM game_event WHERE game_name = 'Game 11')),
  (4, (SELECT game_id FROM game_event WHERE game_name = 'Game 11')),
  (5, (SELECT game_id FROM game_event WHERE game_name = 'Game 11')),
  (6, (SELECT game_id FROM game_event WHERE game_name = 'Game 11')),
  (7, (SELECT game_id FROM game_event WHERE game_name = 'Game 11')),
  (8, (SELECT game_id FROM game_event WHERE game_name = 'Game 11')),
  (1, (SELECT game_id FROM game_event WHERE game_name = 'Game 12')),
  (2, (SELECT game_id FROM game_event WHERE game_name = 'Game 12')),
  (3, (SELECT game_id FROM game_event WHERE game_name = 'Game 12')),
  (4, (SELECT game_id FROM game_event WHERE game_name = 'Game 12')),
  (5, (SELECT game_id FROM game_event WHERE game_name = 'Game 12')),
  (6, (SELECT game_id FROM game_event WHERE game_name = 'Game 12')),
  (7, (SELECT game_id FROM game_event WHERE game_name = 'Game 12')),
  (8, (SELECT game_id FROM game_event WHERE game_name = 'Game 12')),
  (1, (SELECT game_id FROM game_event WHERE game_name = 'Game 13')),
  (2, (SELECT game_id FROM game_event WHERE game_name = 'Game 13')),
  (3, (SELECT game_id FROM game_event WHERE game_name = 'Game 13')),
  (4, (SELECT game_id FROM game_event WHERE game_name = 'Game 13')),
  (5, (SELECT game_id FROM game_event WHERE game_name = 'Game 13')),
  (6, (SELECT game_id FROM game_event WHERE game_name = 'Game 13')),
  (7, (SELECT game_id FROM game_event WHERE game_name = 'Game 13')),
  (8, (SELECT game_id FROM game_event WHERE game_name = 'Game 13')),
  (1, (SELECT game_id FROM game_event WHERE game_name = 'Game 14')),
  (2, (SELECT game_id FROM game_event WHERE game_name = 'Game 14')),
  (3, (SELECT game_id FROM game_event WHERE game_name = 'Game 14')),
  (4, (SELECT game_id FROM game_event WHERE game_name = 'Game 14')),
  (5, (SELECT game_id FROM game_event WHERE game_name = 'Game 14')),
  (6, (SELECT game_id FROM game_event WHERE game_name = 'Game 14')),
  (7, (SELECT game_id FROM game_event WHERE game_name = 'Game 14')),
  (8, (SELECT game_id FROM game_event WHERE game_name = 'Game 14')),
  (1, (SELECT game_id FROM game_event WHERE game_name = 'Game 15')),
  (2, (SELECT game_id FROM game_event WHERE game_name = 'Game 15')),
  (3, (SELECT game_id FROM game_event WHERE game_name = 'Game 15')),
  (4, (SELECT game_id FROM game_event WHERE game_name = 'Game 15')),
  (5, (SELECT game_id FROM game_event WHERE game_name = 'Game 15')),
  (6, (SELECT game_id FROM game_event WHERE game_name = 'Game 15')),
  (7, (SELECT game_id FROM game_event WHERE game_name = 'Game 15')),
  (8, (SELECT game_id FROM game_event WHERE game_name = 'Game 15')),
  (1, (SELECT game_id FROM game_event WHERE game_name = 'Game 16')),
  (2, (SELECT game_id FROM game_event WHERE game_name = 'Game 16')),
  (3, (SELECT game_id FROM game_event WHERE game_name = 'Game 16')),
  (4, (SELECT game_id FROM game_event WHERE game_name = 'Game 16')),
  (5, (SELECT game_id FROM game_event WHERE game_name = 'Game 16')),
  (6, (SELECT game_id FROM game_event WHERE game_name = 'Game 16')),
  (7, (SELECT game_id FROM game_event WHERE game_name = 'Game 16')),
  (8, (SELECT game_id FROM game_event WHERE game_name = 'Game 16')),
  (1, (SELECT game_id FROM game_event WHERE game_name = 'Game 17')),
  (2, (SELECT game_id FROM game_event WHERE game_name = 'Game 17')),
  (3, (SELECT game_id FROM game_event WHERE game_name = 'Game 17')),
  (4, (SELECT game_id FROM game_event WHERE game_name = 'Game 17')),
  (5, (SELECT game_id FROM game_event WHERE game_name = 'Game 17')),
  (6, (SELECT game_id FROM game_event WHERE game_name = 'Game 17')),
  (7, (SELECT game_id FROM game_event WHERE game_name = 'Game 17')),
  (8, (SELECT game_id FROM game_event WHERE game_name = 'Game 17')),
  (1, (SELECT game_id FROM game_event WHERE game_name = 'Game 18')),
  (2, (SELECT game_id FROM game_event WHERE game_name = 'Game 18')),
  (3, (SELECT game_id FROM game_event WHERE game_name = 'Game 18')),
  (4, (SELECT game_id FROM game_event WHERE game_name = 'Game 18')),
  (5, (SELECT game_id FROM game_event WHERE game_name = 'Game 18')),
  (6, (SELECT game_id FROM game_event WHERE game_name = 'Game 18')),
  (7, (SELECT game_id FROM game_event WHERE game_name = 'Game 18')),
  (8, (SELECT game_id FROM game_event WHERE game_name = 'Game 18')),
  (1, (SELECT game_id FROM game_event WHERE game_name = 'Game 19')),
  (2, (SELECT game_id FROM game_event WHERE game_name = 'Game 19')),
  (3, (SELECT game_id FROM game_event WHERE game_name = 'Game 19')),
  (4, (SELECT game_id FROM game_event WHERE game_name = 'Game 19')),
  (5, (SELECT game_id FROM game_event WHERE game_name = 'Game 19')),
  (6, (SELECT game_id FROM game_event WHERE game_name = 'Game 19')),
  (7, (SELECT game_id FROM game_event WHERE game_name = 'Game 19')),
  (8, (SELECT game_id FROM game_event WHERE game_name = 'Game 19')),
  (1, (SELECT game_id FROM game_event WHERE game_name = 'Game 20')),
  (2, (SELECT game_id FROM game_event WHERE game_name = 'Game 20')),
  (3, (SELECT game_id FROM game_event WHERE game_name = 'Game 20')),
  (4, (SELECT game_id FROM game_event WHERE game_name = 'Game 20')),
  (5, (SELECT game_id FROM game_event WHERE game_name = 'Game 20')),
  (6, (SELECT game_id FROM game_event WHERE game_name = 'Game 20')),
  (7, (SELECT game_id FROM game_event WHERE game_name = 'Game 20')),
  (8, (SELECT game_id FROM game_event WHERE game_name = 'Game 20')),
  (1, (SELECT game_id FROM game_event WHERE game_name = 'Game 21')),
  (2, (SELECT game_id FROM game_event WHERE game_name = 'Game 21')),
  (3, (SELECT game_id FROM game_event WHERE game_name = 'Game 21')),
  (4, (SELECT game_id FROM game_event WHERE game_name = 'Game 21')),
  (5, (SELECT game_id FROM game_event WHERE game_name = 'Game 21')),
  (6, (SELECT game_id FROM game_event WHERE game_name = 'Game 21')),
  (7, (SELECT game_id FROM game_event WHERE game_name = 'Game 21')),
  (8, (SELECT game_id FROM game_event WHERE game_name = 'Game 21')),
  (1, (SELECT game_id FROM game_event WHERE game_name = 'Game 22')),
  (2, (SELECT game_id FROM game_event WHERE game_name = 'Game 22')),
  (3, (SELECT game_id FROM game_event WHERE game_name = 'Game 22')),
  (4, (SELECT game_id FROM game_event WHERE game_name = 'Game 22')),
  (5, (SELECT game_id FROM game_event WHERE game_name = 'Game 22')),
  (6, (SELECT game_id FROM game_event WHERE game_name = 'Game 22')),
  (7, (SELECT game_id FROM game_event WHERE game_name = 'Game 22')),
  (8, (SELECT game_id FROM game_event WHERE game_name = 'Game 22')),
  (1, (SELECT game_id FROM game_event WHERE game_name = 'Game 23')),
  (2, (SELECT game_id FROM game_event WHERE game_name = 'Game 23')),
  (3, (SELECT game_id FROM game_event WHERE game_name = 'Game 23')),
  (4, (SELECT game_id FROM game_event WHERE game_name = 'Game 23')),
  (5, (SELECT game_id FROM game_event WHERE game_name = 'Game 23')),
  (6, (SELECT game_id FROM game_event WHERE game_name = 'Game 23')),
  (7, (SELECT game_id FROM game_event WHERE game_name = 'Game 23')),
  (8, (SELECT game_id FROM game_event WHERE game_name = 'Game 23')),
  (1, (SELECT game_id FROM game_event WHERE game_name = 'Game 24')),
  (2, (SELECT game_id FROM game_event WHERE game_name = 'Game 24')),
  (3, (SELECT game_id FROM game_event WHERE game_name = 'Game 24')),
  (4, (SELECT game_id FROM game_event WHERE game_name = 'Game 24')),
  (5, (SELECT game_id FROM game_event WHERE game_name = 'Game 24')),
  (6, (SELECT game_id FROM game_event WHERE game_name = 'Game 24')),
  (7, (SELECT game_id FROM game_event WHERE game_name = 'Game 24')),
  (8, (SELECT game_id FROM game_event WHERE game_name = 'Game 24'));  

delete from team_account;
/*
  players of teams
*/
INSERT INTO 
  team_account 
VALUES
  ((SELECT account_id FROM account WHERE player_jersey_num = '1'), 1),
  ((SELECT account_id FROM account WHERE player_jersey_num = '2'), 2),
  ((SELECT account_id FROM account WHERE player_jersey_num = '3'), 3),
  ((SELECT account_id FROM account WHERE player_jersey_num = '4'), 4),
  ((SELECT account_id FROM account WHERE player_jersey_num = '5'), 5),
  ((SELECT account_id FROM account WHERE player_jersey_num = '6'), 6),
  ((SELECT account_id FROM account WHERE player_jersey_num = '7'), 7),
  ((SELECT account_id FROM account WHERE player_jersey_num = '8'), 8);

delete from match_event_team;
/*
  teams of match_events
*/
INSERT INTO 
  match_event_team 
VALUES 
/*eliminations for sport with sport_id 1*/
  (1, 1, 25),
  (2, 1, 3),
  (3, 2, 25),
  (4, 2, 5),
  (5, 3, 25),
  (6, 3, 1),
  (7, 4, 25),
  (8, 4, 3),
/*semis for sport with sport_id 1*/
  (1, 5, 25),
  (3, 5, 1),
  (5, 6, 25),
  (7, 6, 3),
/*finals for sport with sport_id 1*/
  (1, 7, 25),
  (5, 7, 3),
/*eliminations for sport with sport_id 2*/
  (1, 8, 25),
  (2, 8, 3),
  (3, 9, 25),
  (4, 9, 5),
  (5, 10, 25),
  (6, 10, 1),
  (7, 11, 25),
  (8, 11, 3),
/*semis for sport with sport_id 2*/
  (1, 12, 25),
  (3, 12, 1),
  (5, 13, 25),
  (7, 13, 3),
/*finals for sport with sport_id 2*/
  (1, 14, 25),
  (5, 14, 3),
/*eliminations for sport with sport_id 3*/
  (1, 15, 25),
  (2, 15, 3),
  (3, 16, 25),
  (4, 16, 5),
  (5, 17, 25),
  (6, 17, 1),
  (7, 18, 25),
  (8, 18, 3),
/*semis for sport with sport_id 3*/
  (1, 19, 25),
  (3, 19, 1),
  (5, 20, 25),
  (7, 20, 3),
/*finals for sport with sport_id 3*/
  (1, 21, 25),
  (5, 21, 3),
/*eliminations for sport with sport_id 4*/
  (1, 22, 25),
  (2, 22, 3),
  (3, 23, 25),
  (4, 23, 5),
  (5, 24, 25),
  (6, 24, 1),
  (7, 25, 25),
  (8, 25, 3),
/*semis for sport with sport_id 4*/
  (1, 26, 25),
  (3, 26, 1),
  (5, 27, 25),
  (7, 27, 3),
/*finals for sport with sport_id 4*/
  (1, 28, 25),
  (5, 28, 3),
/*eliminations for sport with sport_id 5*/
  (1, 29, 25),
  (2, 29, 3),
  (3, 30, 25),
  (4, 30, 5),
  (5, 31, 25),
  (6, 31, 1),
  (7, 32, 25),
  (8, 32, 3),
/*semis for sport with sport_id 5*/
  (1, 33, 25),
  (3, 33, 1),
  (5, 34, 25),
  (7, 34, 3),
/*finals for sport with sport_id 5*/
  (1, 35, 25),
  (5, 35, 3),
/*eliminations for sport with sport_id 6*/
  (1, 36, 25),
  (2, 36, 3),
  (3, 37, 25),
  (4, 37, 5),
  (5, 38, 25),
  (6, 38, 1),
  (7, 39, 25),
  (8, 39, 3),
/*semis for sport with sport_id 6*/
  (1, 40, 25),
  (3, 40, 1),
  (5, 41, 25),
  (7, 41, 3),
/*finals for sport with sport_id 6*/
  (1, 42, 25),
  (5, 42, 3),
/*eliminations for sport with sport_id 7*/
  (1, 43, 25),
  (2, 43, 3),
  (3, 44, 25),
  (4, 44, 5),
  (5, 45, 25),
  (6, 45, 1),
  (7, 46, 25),
  (8, 46, 3),
/*semis for sport with sport_id 7*/
  (1, 47, 25),
  (3, 47, 1),
  (5, 48, 25),
  (7, 48, 3),
/*finals for sport with sport_id 7*/
  (1, 49, 25),
  (5, 49, 3),
/*eliminations for sport with sport_id 8*/
  (1, 50, 25),
  (2, 50, 3),
  (3, 51, 25),
  (4, 51, 5),
  (5, 52, 25),
  (6, 52, 1),
  (7, 53, 25),
  (8, 53, 3),
/*semis for sport with sport_id 8*/
  (1, 54, 25),
  (3, 54, 1),
  (5, 55, 25),
  (7, 55, 3),
/*finals for sport with sport_id 8*/
  (1, 56, 25),
  (5, 56, 3),
/*eliminations for sport with sport_id 9*/
  (1, 57, 25),
  (2, 57, 3),
  (3, 58, 25),
  (4, 58, 5),
  (5, 59, 25),
  (6, 59, 1),
  (7, 60, 25),
  (8, 60, 3),
/*semis for sport with sport_id 9*/
  (1, 61, 25),
  (3, 61, 1),
  (5, 62, 25),
  (7, 62, 3),
/*finals for sport with sport_id 9*/
  (1, 63, 25),
  (5, 63, 3),
/*eliminations for sport with sport_id 10*/
  (1, 64, 25),
  (2, 64, 3),
  (3, 65, 25),
  (4, 65, 5),
  (5, 66, 25),
  (6, 66, 1),
  (7, 67, 25),
  (8, 67, 3),
/*semis for sport with sport_id 10*/
  (1, 68, 25),
  (3, 68, 1),
  (5, 69, 25),
  (7, 69, 3),
/*finals for sport with sport_id 10*/
  (1, 70, 25),
  (5, 70, 3),
/*eliminations for sport with sport_id 11*/
  (1, 71, 25),
  (2, 71, 3),
  (3, 72, 25),
  (4, 72, 5),
  (5, 73, 25),
  (6, 73, 1),
  (7, 74, 25),
  (8, 74, 3),
/*semis for sport with sport_id 11*/
  (1, 75, 25),
  (3, 75, 1),
  (5, 76, 25),
  (7, 76, 3),
/*finals for sport with sport_id 11*/
  (1, 77, 25),
  (5, 77, 3),
/*eliminations for sport with sport_id 12*/
  (1, 78, 25),
  (2, 78, 3),
  (3, 79, 25),
  (4, 79, 5),
  (5, 80, 25),
  (6, 80, 1),
  (7, 81, 25),
  (8, 81, 3),
/*semis for sport with sport_id 12*/
  (1, 82, 25),
  (3, 82, 1),
  (5, 83, 25),
  (7, 83, 3),
/*finals for sport with sport_id 12*/
  (1, 84, 25),
  (5, 84, 3),
/*eliminations for sport with sport_id 13*/
  (1, 85, 25),
  (2, 85, 3),
  (3, 86, 25),
  (4, 86, 5),
  (5, 87, 25),
  (6, 87, 1),
  (7, 88, 25),
  (8, 88, 3),
/*semis for sport with sport_id 13*/
  (1, 89, 25),
  (3, 89, 1),
  (5, 90, 25),
  (7, 90, 3),
/*finals for sport with sport_id 13*/
  (1, 91, 25),
  (5, 91, 3),
/*eliminations for sport with sport_id 14*/
  (1, 92, 25),
  (2, 92, 3),
  (3, 93, 25),
  (4, 93, 5),
  (5, 94, 25),
  (6, 94, 1),
  (7, 95, 25),
  (8, 95, 3),
/*semis for sport with sport_id 14*/
  (1, 96, 25),
  (3, 96, 1),
  (5, 97, 25),
  (7, 97, 3),
/*finals for sport with sport_id 14*/
  (1, 98, 25),
  (5, 98, 3),
/*eliminations for sport with sport_id 15*/
  (1, 99, 25),
  (2, 99, 3),
  (3, 100, 25),
  (4, 100, 5),
  (5, 101, 25),
  (6, 101, 1),
  (7, 102, 25),
  (8, 102, 3),
/*semis for sport with sport_id 15*/
  (1, 103, 25),
  (3, 103, 1),
  (5, 104, 25),
  (7, 104, 3),
/*finals for sport with sport_id 15*/
  (1, 105, 25),
  (5, 105, 3),
/*eliminations for sport with sport_id 16*/
  (1, 106, 25),
  (2, 106, 3),
  (3, 107, 25),
  (4, 107, 5),
  (5, 108, 25),
  (6, 108, 1),
  (7, 109, 25),
  (8, 109, 3),
/*semis for sport with sport_id 16*/
  (1, 110, 25),
  (3, 110, 1),
  (5, 111, 25),
  (7, 111, 3),
/*finals for sport with sport_id 16*/
  (1, 112, 25),
  (5, 112, 3),
/*eliminations for sport with sport_id 17*/
  (1, 113, 25),
  (2, 113, 3),
  (3, 114, 25),
  (4, 114, 5),
  (5, 115, 25),
  (6, 115, 1),
  (7, 116, 25),
  (8, 116, 3),
/*semis for sport with sport_id 17*/
  (1, 117, 25),
  (3, 117, 1),
  (5, 118, 25),
  (7, 118, 3),
/*finals for sport with sport_id 17*/
  (1, 119, 25),
  (5, 119, 3),
/*eliminations for sport with sport_id 18*/
  (1, 120, 25),
  (2, 120, 3),
  (3, 121, 25),
  (4, 121, 5),
  (5, 122, 25),
  (6, 122, 1),
  (7, 123, 25),
  (8, 123, 3),
/*semis for sport with sport_id 18*/
  (1, 124, 25),
  (3, 124, 1),
  (5, 125, 25),
  (7, 125, 3),
/*finals for sport with sport_id 18*/
  (1, 126, 25),
  (5, 126, 3),
/*eliminations for sport with sport_id 19*/
  (1, 127, 25),
  (2, 127, 3),
  (3, 128, 25),
  (4, 128, 5),
  (5, 129, 25),
  (6, 129, 1),
  (7, 130, 25),
  (8, 130, 3),
/*semis for sport with sport_id 19*/
  (1, 131, 25),
  (3, 131, 1),
  (5, 132, 25),
  (7, 132, 3),
/*finals for sport with sport_id 19*/
  (1, 133, 25),
  (5, 133, 3),
/*eliminations for sport with sport_id 20*/
  (1, 134, 25),
  (2, 134, 3),
  (3, 135, 25),
  (4, 135, 5),
  (5, 136, 25),
  (6, 136, 1),
  (7, 137, 25),
  (8, 137, 3),
/*semis for sport with sport_id 20*/
  (1, 138, 25),
  (3, 138, 1),
  (5, 139, 25),
  (7, 139, 3),
/*finals for sport with sport_id 20*/
  (1, 140, 25),
  (5, 140, 3),
/*eliminations for sport with sport_id 21*/
  (1, 141, 25),
  (2, 141, 3),
  (3, 142, 25),
  (4, 142, 5),
  (5, 143, 25),
  (6, 143, 1),
  (7, 144, 25),
  (8, 144, 3),
/*semis for sport with sport_id 21*/
  (1, 145, 25),
  (3, 145, 1),
  (5, 146, 25),
  (7, 146, 3),
/*finals for sport with sport_id 21*/
  (1, 147, 25),
  (5, 147, 3),
/*eliminations for sport with sport_id 22*/
  (1, 148, 25),
  (2, 148, 3),
  (3, 149, 25),
  (4, 149, 5),
  (5, 150, 25),
  (6, 150, 1),
  (7, 151, 25),
  (8, 151, 3),
/*semis for sport with sport_id 22*/
  (1, 152, 25),
  (3, 152, 1),
  (5, 153, 25),
  (7, 153, 3),
/*finals for sport with sport_id 22*/
  (1, 154, 25),
  (5, 154, 3),
/*eliminations for sport with sport_id 23*/
  (1, 155, 25),
  (2, 155, 3),
  (3, 156, 25),
  (4, 156, 5),
  (5, 157, 25),
  (6, 157, 1),
  (7, 158, 25),
  (8, 158, 3),
/*semis for sport with sport_id 23*/
  (1, 159, 25),
  (3, 159, 1),
  (5, 160, 25),
  (7, 160, 3),
/*finals for sport with sport_id 23*/
  (1, 161, 25),
  (5, 161, 3),
/*eliminations for sport with sport_id 24*/
  (1, 162, 25),
  (2, 162, 3),
  (3, 163, 25),
  (4, 163, 5),
  (5, 164, 25),
  (6, 164, 1),
  (7, 165, 25),
  (8, 165, 3),
/*semis for sport with sport_id 24*/
  (1, 166, 25),
  (3, 166, 1),
  (5, 167, 25),
  (7, 167, 3),
/*finals for sport with sport_id 24*/
  (1, 168, 25),
  (5, 168, 3),
/*eliminations for sport with sport_id 25*/
  (1, 169, 25),
  (2, 169, 3),
  (3, 170, 25),
  (4, 170, 5),
  (5, 171, 25),
  (6, 171, 1),
  (7, 172, 25),
  (8, 172, 3),
/*semis for sport with sport_id 25*/
  (1, 173, 25),
  (3, 173, 1),
  (5, 174, 25),
  (7, 174, 3),
/*finals for sport with sport_id 25*/
  (1, 175, 25),
  (5, 175, 3),
/*eliminations for sport with sport_id 26*/
  (1, 176, 25),
  (2, 176, 3),
  (3, 177, 25),
  (4, 177, 5),
  (5, 178, 25),
  (6, 178, 1),
  (7, 179, 25),
  (8, 179, 3),
/*semis for sport with sport_id 26*/
  (1, 180, 25),
  (3, 180, 1),
  (5, 181, 25),
  (7, 181, 3),
/*finals for sport with sport_id 26*/
  (1, 182, 25),
  (5, 182, 3),
/*eliminations for sport with sport_id 27*/
  (1, 183, 25),
  (2, 183, 3),
  (3, 184, 25),
  (4, 184, 5),
  (5, 185, 25),
  (6, 185, 1),
  (7, 186, 25),
  (8, 186, 3),
/*semis for sport with sport_id 27*/
  (1, 187, 25),
  (3, 187, 1),
  (5, 188, 25),
  (7, 188, 3),
/*finals for sport with sport_id 27*/
  (1, 189, 25),
  (5, 189, 3),
/*eliminations for sport with sport_id 28*/
  (1, 190, 25),
  (2, 190, 3),
  (3, 191, 25),
  (4, 191, 5),
  (5, 192, 25),
  (6, 192, 1),
  (7, 193, 25),
  (8, 193, 3),
/*semis for sport with sport_id 28*/
  (1, 194, 25),
  (3, 194, 1),
  (5, 195, 25),
  (7, 195, 3),
/*finals for sport with sport_id 28*/
  (1, 196, 25),
  (5, 196, 3),
/*eliminations for sport with sport_id 29*/
  (1, 197, 25),
  (2, 197, 3),
  (3, 198, 25),
  (4, 198, 5),
  (5, 199, 25),
  (6, 199, 1),
  (7, 200, 25),
  (8, 200, 3),
/*semis for sport with sport_id 29*/
  (1, 201, 25),
  (3, 201, 1),
  (5, 202, 25),
  (7, 202, 3),
/*finals for sport with sport_id 29*/
  (1, 203, 25),
  (5, 203, 3),
/*eliminations for sport with sport_id 30*/
  (1, 204, 25),
  (2, 204, 3),
  (3, 205, 25),
  (4, 205, 5),
  (5, 206, 25),
  (6, 206, 1),
  (7, 207, 25),
  (8, 207, 3),
/*semis for sport with sport_id 30*/
  (1, 208, 25),
  (3, 208, 1),
  (5, 209, 25),
  (7, 209, 3),
/*finals for sport with sport_id 30*/
  (1, 210, 25),
  (5, 210, 3),
/*eliminations for sport with sport_id 31*/
  (1, 211, 25),
  (2, 211, 3),
  (3, 212, 25),
  (4, 212, 5),
  (5, 213, 25),
  (6, 213, 1),
  (7, 214, 25),
  (8, 214, 3),
/*semis for sport with sport_id 31*/
  (1, 215, 25),
  (3, 215, 1),
  (5, 216, 25),
  (7, 216, 3),
/*finals for sport with sport_id 31*/
  (1, 217, 25),
  (5, 217, 3),
/*eliminations for sport with sport_id 32*/
  (1, 218, 25),
  (2, 218, 3),
  (3, 219, 25),
  (4, 219, 5),
  (5, 220, 25),
  (6, 220, 1),
  (7, 221, 25),
  (8, 221, 3),
/*semis for sport with sport_id 32*/
  (1, 222, 25),
  (3, 222, 1),
  (5, 223, 25),
  (7, 223, 3),
/*finals for sport with sport_id 32*/
  (1, 224, 25),
  (5, 224, 3),
/*eliminations for sport with sport_id 33*/
  (1, 225, 25),
  (2, 225, 3),
  (3, 226, 25),
  (4, 226, 5),
  (5, 227, 25),
  (6, 227, 1),
  (7, 228, 25),
  (8, 228, 3),
/*semis for sport with sport_id 33*/
  (1, 229, 25),
  (3, 229, 1),
  (5, 230, 25),
  (7, 230, 3),
/*finals for sport with sport_id 33*/
  (1, 231, 25),
  (5, 231, 3),
/*eliminations for sport with sport_id 34*/
  (1, 232, 25),
  (2, 232, 3),
  (3, 233, 25),
  (4, 233, 5),
  (5, 234, 25),
  (6, 234, 1),
  (7, 235, 25),
  (8, 235, 3),
/*semis for sport with sport_id 34*/
  (1, 236, 25),
  (3, 236, 1),
  (5, 237, 25),
  (7, 237, 3),
/*finals for sport with sport_id 34*/
  (1, 238, 25),
  (5, 238, 3),
/*eliminations for sport with sport_id 35*/
  (1, 239, 25),
  (2, 239, 3),
  (3, 240, 25),
  (4, 240, 5),
  (5, 241, 25),
  (6, 241, 1),
  (7, 242, 25),
  (8, 242, 3),
/*semis for sport with sport_id 35*/
  (1, 243, 25),
  (3, 243, 1),
  (5, 244, 25),
  (7, 244, 3),
/*finals for sport with sport_id 35*/
  (1, 245, 25),
  (5, 245, 3),
/*eliminations for sport with sport_id 36*/
  (1, 246, 25),
  (2, 246, 3),
  (3, 247, 25),
  (4, 247, 5),
  (5, 248, 25),
  (6, 248, 1),
  (7, 249, 25),
  (8, 249, 3),
/*semis for sport with sport_id 36*/
  (1, 250, 25),
  (3, 250, 1),
  (5, 251, 25),
  (7, 251, 3),
/*finals for sport with sport_id 36*/
  (1, 252, 25),
  (5, 252, 3),
/*eliminations for sport with sport_id 37*/
  (1, 253, 25),
  (2, 253, 3),
  (3, 254, 25),
  (4, 254, 5),
  (5, 255, 25),
  (6, 255, 1),
  (7, 256, 25),
  (8, 256, 3),
/*semis for sport with sport_id 37*/
  (1, 257, 25),
  (3, 257, 1),
  (5, 258, 25),
  (7, 258, 3),
/*finals for sport with sport_id 37*/
  (1, 259, 25),
  (5, 259, 3),
/*eliminations for sport with sport_id 38*/
  (1, 260, 25),
  (2, 260, 3),
  (3, 261, 25),
  (4, 261, 5),
  (5, 262, 25),
  (6, 262, 1),
  (7, 263, 25),
  (8, 263, 3),
/*semis for sport with sport_id 38*/
  (1, 264, 25),
  (3, 264, 1),
  (5, 265, 25),
  (7, 265, 3),
/*finals for sport with sport_id 38*/
  (1, 266, 25),
  (5, 266, 3),
/*eliminations for sport with sport_id 39*/
  (1, 267, 25),
  (2, 267, 3),
  (3, 268, 25),
  (4, 268, 5),
  (5, 269, 25),
  (6, 269, 1),
  (7, 270, 25),
  (8, 270, 3),
/*semis for sport with sport_id 39*/
  (1, 271, 25),
  (3, 271, 1),
  (5, 272, 25),
  (7, 272, 3),
/*finals for sport with sport_id 39*/
  (1, 273, 25),
  (5, 273, 3),
/*eliminations for sport with sport_id 40*/
  (1, 274, 25),
  (2, 274, 3),
  (3, 275, 25),
  (4, 275, 5),
  (5, 276, 25),
  (6, 276, 1),
  (7, 277, 25),
  (8, 277, 3),
/*semis for sport with sport_id 40*/
  (1, 278, 25),
  (3, 278, 1),
  (5, 279, 25),
  (7, 279, 3),
/*finals for sport with sport_id 40*/
  (1, 280, 25),
  (5, 280, 3),
/*eliminations for sport with sport_id 41*/
  (1, 281, 25),
  (2, 281, 3),
  (3, 282, 25),
  (4, 282, 5),
  (5, 283, 25),
  (6, 283, 1),
  (7, 284, 25),
  (8, 284, 3),
/*semis for sport with sport_id 41*/
  (1, 285, 25),
  (3, 285, 1),
  (5, 286, 25),
  (7, 286, 3),
/*finals for sport with sport_id 41*/
  (1, 287, 25),
  (5, 287, 3),
/*eliminations for sport with sport_id 42*/
  (1, 288, 25),
  (2, 288, 3),
  (3, 289, 25),
  (4, 289, 5),
  (5, 290, 25),
  (6, 290, 1),
  (7, 291, 25),
  (8, 291, 3),
/*semis for sport with sport_id 42*/
  (1, 292, 25),
  (3, 292, 1),
  (5, 293, 25),
  (7, 293, 3),
/*finals for sport with sport_id 42*/
  (1, 294, 25),
  (5, 294, 3),
/*eliminations for sport with sport_id 43*/
  (1, 295, 25),
  (2, 295, 3),
  (3, 296, 25),
  (4, 296, 5),
  (5, 297, 25),
  (6, 297, 1),
  (7, 298, 25),
  (8, 298, 3),
/*semis for sport with sport_id 43*/
  (1, 299, 25),
  (3, 299, 1),
  (5, 300, 25),
  (7, 300, 3),
/*finals for sport with sport_id 43*/
  (1, 301, 25),
  (5, 301, 3),
/*eliminations for sport with sport_id 44*/
  (1, 302, 25),
  (2, 302, 3),
  (3, 303, 25),
  (4, 303, 5),
  (5, 304, 25),
  (6, 304, 1),
  (7, 305, 25),
  (8, 305, 3),
/*semis for sport with sport_id 44*/
  (1, 306, 25),
  (3, 306, 1),
  (5, 307, 25),
  (7, 307, 3),
/*finals for sport with sport_id 44*/
  (1, 308, 25),
  (5, 308, 3),
/*eliminations for sport with sport_id 45*/
  (1, 309, 25),
  (2, 309, 3),
  (3, 310, 25),
  (4, 310, 5),
  (5, 311, 25),
  (6, 311, 1),
  (7, 312, 25),
  (8, 312, 3),
/*semis for sport with sport_id 45*/
  (1, 313, 25),
  (3, 313, 1),
  (5, 314, 25),
  (7, 314, 3),
/*finals for sport with sport_id 45*/
  (1, 315, 25),
  (5, 315, 3),
/*eliminations for sport with sport_id 46*/
  (1, 316, 25),
  (2, 316, 3),
  (3, 317, 25),
  (4, 317, 5),
  (5, 318, 25),
  (6, 318, 1),
  (7, 319, 25),
  (8, 319, 3),
/*semis for sport with sport_id 46*/
  (1, 320, 25),
  (3, 320, 1),
  (5, 321, 25),
  (7, 321, 3),
/*finals for sport with sport_id 46*/
  (1, 322, 25),
  (5, 322, 3),
/*eliminations for sport with sport_id 47*/
  (1, 323, 25),
  (2, 323, 3),
  (3, 324, 25),
  (4, 324, 5),
  (5, 325, 25),
  (6, 325, 1),
  (7, 326, 25),
  (8, 326, 3),
/*semis for sport with sport_id 47*/
  (1, 327, 25),
  (3, 327, 1),
  (5, 328, 25),
  (7, 328, 3),
/*finals for sport with sport_id 47*/
  (1, 329, 25),
  (5, 329, 3),
/*eliminations for sport with sport_id 48*/
  (1, 330, 25),
  (2, 330, 3),
  (3, 331, 25),
  (4, 331, 5),
  (5, 332, 25),
  (6, 332, 1),
  (7, 333, 25),
  (8, 333, 3),
/*semis for sport with sport_id 48*/
  (1, 334, 25),
  (3, 334, 1),
  (5, 335, 25),
  (7, 335, 3),
/*finals for sport with sport_id 48*/
  (1, 336, 25),
  (5, 336, 3),
/*eliminations for sport with sport_id 49*/
  (1, 337, 25),
  (2, 337, 3),
  (3, 338, 25),
  (4, 338, 5),
  (5, 339, 25),
  (6, 339, 1),
  (7, 340, 25),
  (8, 340, 3),
/*semis for sport with sport_id 49*/
  (1, 341, 25),
  (3, 341, 1),
  (5, 342, 25),
  (7, 342, 3),
/*finals for sport with sport_id 49*/
  (1, 343, 25),
  (5, 343, 3),
/*eliminations for sport with sport_id 50*/
  (1, 344, 25),
  (2, 344, 3),
  (3, 345, 25),
  (4, 345, 5),
  (5, 346, 25),
  (6, 346, 1),
  (7, 347, 25),
  (8, 347, 3),
/*semis for sport with sport_id 50*/
  (1, 348, 25),
  (3, 348, 1),
  (5, 349, 25),
  (7, 349, 3),
/*finals for sport with sport_id 50*/
  (1, 350, 25),
  (5, 350, 3),
/*eliminations for sport with sport_id 51*/
  (1, 351, 25),
  (2, 351, 3),
  (3, 352, 25),
  (4, 352, 5),
  (5, 353, 25),
  (6, 353, 1),
  (7, 354, 25),
  (8, 354, 3),
/*semis for sport with sport_id 51*/
  (1, 355, 25),
  (3, 355, 1),
  (5, 356, 25),
  (7, 356, 3),
/*finals for sport with sport_id 51*/
  (1, 357, 25),
  (5, 357, 3),
/*eliminations for sport with sport_id 52*/
  (1, 358, 25),
  (2, 358, 3),
  (3, 359, 25),
  (4, 359, 5),
  (5, 360, 25),
  (6, 360, 1),
  (7, 361, 25),
  (8, 361, 3),
/*semis for sport with sport_id 52*/
  (1, 362, 25),
  (3, 362, 1),
  (5, 363, 25),
  (7, 363, 3),
/*finals for sport with sport_id 52*/
  (1, 364, 25),
  (5, 364, 3),
/*eliminations for sport with sport_id 53*/
  (1, 365, 25),
  (2, 365, 3),
  (3, 366, 25),
  (4, 366, 5),
  (5, 367, 25),
  (6, 367, 1),
  (7, 368, 25),
  (8, 368, 3),
/*semis for sport with sport_id 53*/
  (1, 369, 25),
  (3, 369, 1),
  (5, 370, 25),
  (7, 370, 3),
/*finals for sport with sport_id 53*/
  (1, 371, 25),
  (5, 371, 3),
/*eliminations for sport with sport_id 54*/
  (1, 372, 25),
  (2, 372, 3),
  (3, 373, 25),
  (4, 373, 5),
  (5, 374, 25),
  (6, 374, 1),
  (7, 375, 25),
  (8, 375, 3),
/*semis for sport with sport_id 54*/
  (1, 376, 25),
  (3, 376, 1),
  (5, 377, 25),
  (7, 377, 3),
/*finals for sport with sport_id 54*/
  (1, 378, 25),
  (5, 378, 3),
/*eliminations for sport with sport_id 55*/
  (1, 379, 25),
  (2, 379, 3),
  (3, 380, 25),
  (4, 380, 5),
  (5, 381, 25),
  (6, 381, 1),
  (7, 382, 25),
  (8, 382, 3),
/*semis for sport with sport_id 55*/
  (1, 383, 25),
  (3, 383, 1),
  (5, 384, 25),
  (7, 384, 3),
/*finals for sport with sport_id 55*/
  (1, 385, 25),
  (5, 385, 3),
/*eliminations for sport with sport_id 56*/
  (1, 386, 25),
  (2, 386, 3),
  (3, 387, 25),
  (4, 387, 5),
  (5, 388, 25),
  (6, 388, 1),
  (7, 389, 25),
  (8, 389, 3),
/*semis for sport with sport_id 56*/
  (1, 390, 25),
  (3, 390, 1),
  (5, 391, 25),
  (7, 391, 3),
/*finals for sport with sport_id 56*/
  (1, 392, 25),
  (5, 392, 3),
/*eliminations for sport with sport_id 57*/
  (1, 393, 25),
  (2, 393, 3),
  (3, 394, 25),
  (4, 394, 5),
  (5, 395, 25),
  (6, 395, 1),
  (7, 396, 25),
  (8, 396, 3),
/*semis for sport with sport_id 57*/
  (1, 397, 25),
  (3, 397, 1),
  (5, 398, 25),
  (7, 398, 3),
/*finals for sport with sport_id 57*/
  (1, 399, 25),
  (5, 399, 3),
/*eliminations for sport with sport_id 58*/
  (1, 400, 25),
  (2, 400, 3),
  (3, 401, 25),
  (4, 401, 5),
  (5, 402, 25),
  (6, 402, 1),
  (7, 403, 25),
  (8, 403, 3),
/*semis for sport with sport_id 58*/
  (1, 404, 25),
  (3, 404, 1),
  (5, 405, 25),
  (7, 405, 3),
/*finals for sport with sport_id 58*/
  (1, 406, 25),
  (5, 406, 3),
/*eliminations for sport with sport_id 59*/
  (1, 407, 25),
  (2, 407, 3),
  (3, 408, 25),
  (4, 408, 5),
  (5, 409, 25),
  (6, 409, 1),
  (7, 410, 25),
  (8, 410, 3),
/*semis for sport with sport_id 59*/
  (1, 411, 25),
  (3, 411, 1),
  (5, 412, 25),
  (7, 412, 3),
/*finals for sport with sport_id 59*/
  (1, 413, 25),
  (5, 413, 3),
/*eliminations for sport with sport_id 60*/
  (1, 414, 25),
  (2, 414, 3),
  (3, 415, 25),
  (4, 415, 5),
  (5, 416, 25),
  (6, 416, 1),
  (7, 417, 25),
  (8, 417, 3),
/*semis for sport with sport_id 60*/
  (1, 418, 25),
  (3, 418, 1),
  (5, 419, 25),
  (7, 419, 3),
/*finals for sport with sport_id 60*/
  (1, 420, 25),
  (5, 420, 3),
/*eliminations for sport with sport_id 61*/
  (1, 421, 25),
  (2, 421, 3),
  (3, 422, 25),
  (4, 422, 5),
  (5, 423, 25),
  (6, 423, 1),
  (7, 424, 25),
  (8, 424, 3),
/*semis for sport with sport_id 61*/
  (1, 425, 25),
  (3, 425, 1),
  (5, 426, 25),
  (7, 426, 3),
/*finals for sport with sport_id 61*/
  (1, 427, 25),
  (5, 427, 3),
/*eliminations for sport with sport_id 62*/
  (1, 428, 25),
  (2, 428, 3),
  (3, 429, 25),
  (4, 429, 5),
  (5, 430, 25),
  (6, 430, 1),
  (7, 431, 25),
  (8, 431, 3),
/*semis for sport with sport_id 62*/
  (1, 432, 25),
  (3, 432, 1),
  (5, 433, 25),
  (7, 433, 3),
/*finals for sport with sport_id 62*/
  (1, 434, 25),
  (5, 434, 3),
/*eliminations for sport with sport_id 63*/
  (1, 435, 25),
  (2, 435, 3),
  (3, 436, 25),
  (4, 436, 5),
  (5, 437, 25),
  (6, 437, 1),
  (7, 438, 25),
  (8, 438, 3),
/*semis for sport with sport_id 63*/
  (1, 439, 25),
  (3, 439, 1),
  (5, 440, 25),
  (7, 440, 3),
/*finals for sport with sport_id 63*/
  (1, 441, 25),
  (5, 441, 3),
/*eliminations for sport with sport_id 64*/
  (1, 442, 25),
  (2, 442, 3),
  (3, 443, 25),
  (4, 443, 5),
  (5, 444, 25),
  (6, 444, 1),
  (7, 445, 25),
  (8, 445, 3),
/*semis for sport with sport_id 64*/
  (1, 446, 25),
  (3, 446, 1),
  (5, 447, 25),
  (7, 447, 3),
/*finals for sport with sport_id 64*/
  (1, 448, 25),
  (5, 448, 3),
/*eliminations for sport with sport_id 65*/
  (1, 449, 25),
  (2, 449, 3),
  (3, 450, 25),
  (4, 450, 5),
  (5, 451, 25),
  (6, 451, 1),
  (7, 452, 25),
  (8, 452, 3),
/*semis for sport with sport_id 65*/
  (1, 453, 25),
  (3, 453, 1),
  (5, 454, 25),
  (7, 454, 3),
/*finals for sport with sport_id 65*/
  (1, 455, 25),
  (5, 455, 3),
/*eliminations for sport with sport_id 66*/
  (1, 456, 25),
  (2, 456, 3),
  (3, 457, 25),
  (4, 457, 5),
  (5, 458, 25),
  (6, 458, 1),
  (7, 459, 25),
  (8, 459, 3),
/*semis for sport with sport_id 66*/
  (1, 460, 25),
  (3, 460, 1),
  (5, 461, 25),
  (7, 461, 3),
/*finals for sport with sport_id 66*/
  (1, 462, 25),
  (5, 462, 3),
/*eliminations for sport with sport_id 67*/
  (1, 463, 25),
  (2, 463, 3),
  (3, 464, 25),
  (4, 464, 5),
  (5, 465, 25),
  (6, 465, 1),
  (7, 466, 25),
  (8, 466, 3),
/*semis for sport with sport_id 67*/
  (1, 467, 25),
  (3, 467, 1),
  (5, 468, 25),
  (7, 468, 3),
/*finals for sport with sport_id 67*/
  (1, 469, 25),
  (5, 469, 3),
/*eliminations for sport with sport_id 68*/
  (1, 470, 25),
  (2, 470, 3),
  (3, 471, 25),
  (4, 471, 5),
  (5, 472, 25),
  (6, 472, 1),
  (7, 473, 25),
  (8, 473, 3),
/*semis for sport with sport_id 68*/
  (1, 474, 25),
  (3, 474, 1),
  (5, 475, 25),
  (7, 475, 3),
/*finals for sport with sport_id 68*/
  (1, 476, 25),
  (5, 476, 3),
/*eliminations for sport with sport_id 69*/
  (1, 477, 25),
  (2, 477, 3),
  (3, 478, 25),
  (4, 478, 5),
  (5, 479, 25),
  (6, 479, 1),
  (7, 480, 25),
  (8, 480, 3),
/*semis for sport with sport_id 69*/
  (1, 481, 25),
  (3, 481, 1),
  (5, 482, 25),
  (7, 482, 3),
/*finals for sport with sport_id 69*/
  (1, 483, 25),
  (5, 483, 3),
/*eliminations for sport with sport_id 70*/
  (1, 484, 25),
  (2, 484, 3),
  (3, 485, 25),
  (4, 485, 5),
  (5, 486, 25),
  (6, 486, 1),
  (7, 487, 25),
  (8, 487, 3),
/*semis for sport with sport_id 70*/
  (1, 488, 25),
  (3, 488, 1),
  (5, 489, 25),
  (7, 489, 3),
/*finals for sport with sport_id 70*/
  (1, 490, 25),
  (5, 490, 3),
/*eliminations for sport with sport_id 71*/
  (1, 491, 25),
  (2, 491, 3),
  (3, 492, 25),
  (4, 492, 5),
  (5, 493, 25),
  (6, 493, 1),
  (7, 494, 25),
  (8, 494, 3),
/*semis for sport with sport_id 71*/
  (1, 495, 25),
  (3, 495, 1),
  (5, 496, 25),
  (7, 496, 3),
/*finals for sport with sport_id 71*/
  (1, 497, 25),
  (5, 497, 3),
/*eliminations for sport with sport_id 72*/
  (1, 498, 25),
  (2, 498, 3),
  (3, 499, 25),
  (4, 499, 5),
  (5, 500, 25),
  (6, 500, 1),
  (7, 501, 25),
  (8, 501, 3),
/*semis for sport with sport_id 72*/
  (1, 502, 25),
  (3, 502, 1),
  (5, 503, 25),
  (7, 503, 3),
/*finals for sport with sport_id 72*/
  (1, 504, 25),
  (5, 504, 3),
/*eliminations for sport with sport_id 73*/
  (1, 505, 25),
  (2, 505, 3),
  (3, 506, 25),
  (4, 506, 5),
  (5, 507, 25),
  (6, 507, 1),
  (7, 508, 25),
  (8, 508, 3),
/*semis for sport with sport_id 73*/
  (1, 509, 25),
  (3, 509, 1),
  (5, 510, 25),
  (7, 510, 3),
/*finals for sport with sport_id 73*/
  (1, 511, 25),
  (5, 511, 3),
/*eliminations for sport with sport_id 74*/
  (1, 512, 25),
  (2, 512, 3),
  (3, 513, 25),
  (4, 513, 5),
  (5, 514, 25),
  (6, 514, 1),
  (7, 515, 25),
  (8, 515, 3),
/*semis for sport with sport_id 74*/
  (1, 516, 25),
  (3, 516, 1),
  (5, 517, 25),
  (7, 517, 3),
/*finals for sport with sport_id 74*/
  (1, 518, 25),
  (5, 518, 3),
/*eliminations for sport with sport_id 75*/
  (1, 519, 25),
  (2, 519, 3),
  (3, 520, 25),
  (4, 520, 5),
  (5, 521, 25),
  (6, 521, 1),
  (7, 522, 25),
  (8, 522, 3),
/*semis for sport with sport_id 75*/
  (1, 523, 25),
  (3, 523, 1),
  (5, 524, 25),
  (7, 524, 3),
/*finals for sport with sport_id 75*/
  (1, 525, 25),
  (5, 525, 3),
/*eliminations for sport with sport_id 76*/
  (1, 526, 25),
  (2, 526, 3),
  (3, 527, 25),
  (4, 527, 5),
  (5, 528, 25),
  (6, 528, 1),
  (7, 529, 25),
  (8, 529, 3),
/*semis for sport with sport_id 76*/
  (1, 530, 25),
  (3, 530, 1),
  (5, 531, 25),
  (7, 531, 3),
/*finals for sport with sport_id 76*/
  (1, 532, 25),
  (5, 532, 3),
/*eliminations for sport with sport_id 77*/
  (1, 533, 25),
  (2, 533, 3),
  (3, 534, 25),
  (4, 534, 5),
  (5, 535, 25),
  (6, 535, 1),
  (7, 536, 25),
  (8, 536, 3),
/*semis for sport with sport_id 77*/
  (1, 537, 25),
  (3, 537, 1),
  (5, 538, 25),
  (7, 538, 3),
/*finals for sport with sport_id 77*/
  (1, 539, 25),
  (5, 539, 3),
/*eliminations for sport with sport_id 78*/
  (1, 540, 25),
  (2, 540, 3),
  (3, 541, 25),
  (4, 541, 5),
  (5, 542, 25),
  (6, 542, 1),
  (7, 543, 25),
  (8, 543, 3),
/*semis for sport with sport_id 78*/
  (1, 544, 25),
  (3, 544, 1),
  (5, 545, 25),
  (7, 545, 3),
/*finals for sport with sport_id 78*/
  (1, 546, 25),
  (5, 546, 3),
/*eliminations for sport with sport_id 79*/
  (1, 547, 25),
  (2, 547, 3),
  (3, 548, 25),
  (4, 548, 5),
  (5, 549, 25),
  (6, 549, 1),
  (7, 550, 25),
  (8, 550, 3),
/*semis for sport with sport_id 79*/
  (1, 551, 25),
  (3, 551, 1),
  (5, 552, 25),
  (7, 552, 3),
/*finals for sport with sport_id 79*/
  (1, 553, 25),
  (5, 553, 3),
/*eliminations for sport with sport_id 80*/
  (1, 554, 25),
  (2, 554, 3),
  (3, 555, 25),
  (4, 555, 5),
  (5, 556, 25),
  (6, 556, 1),
  (7, 557, 25),
  (8, 557, 3),
/*semis for sport with sport_id 80*/
  (1, 558, 25),
  (3, 558, 1),
  (5, 559, 25),
  (7, 559, 3),
/*finals for sport with sport_id 80*/
  (1, 560, 25),
  (5, 560, 3),
/*eliminations for sport with sport_id 81*/
  (1, 561, 25),
  (2, 561, 3),
  (3, 562, 25),
  (4, 562, 5),
  (5, 563, 25),
  (6, 563, 1),
  (7, 564, 25),
  (8, 564, 3),
/*semis for sport with sport_id 81*/
  (1, 565, 25),
  (3, 565, 1),
  (5, 566, 25),
  (7, 566, 3),
/*finals for sport with sport_id 81*/
  (1, 567, 25),
  (5, 567, 3),
/*eliminations for sport with sport_id 82*/
  (1, 568, 25),
  (2, 568, 3),
  (3, 569, 25),
  (4, 569, 5),
  (5, 570, 25),
  (6, 570, 1),
  (7, 571, 25),
  (8, 571, 3),
/*semis for sport with sport_id 82*/
  (1, 572, 25),
  (3, 572, 1),
  (5, 573, 25),
  (7, 573, 3),
/*finals for sport with sport_id 82*/
  (1, 574, 25),
  (5, 574, 3),
/*eliminations for sport with sport_id 83*/
  (1, 575, 25),
  (2, 575, 3),
  (3, 576, 25),
  (4, 576, 5),
  (5, 577, 25),
  (6, 577, 1),
  (7, 578, 25),
  (8, 578, 3),
/*semis for sport with sport_id 83*/
  (1, 579, 25),
  (3, 579, 1),
  (5, 580, 25),
  (7, 580, 3),
/*finals for sport with sport_id 83*/
  (1, 581, 25),
  (5, 581, 3),
/*eliminations for sport with sport_id 84*/
  (1, 582, 25),
  (2, 582, 3),
  (3, 583, 25),
  (4, 583, 5),
  (5, 584, 25),
  (6, 584, 1),
  (7, 585, 25),
  (8, 585, 3),
/*semis for sport with sport_id 84*/
  (1, 586, 25),
  (3, 586, 1),
  (5, 587, 25),
  (7, 587, 3),
/*finals for sport with sport_id 84*/
  (1, 588, 25),
  (5, 588, 3),
/*eliminations for sport with sport_id 85*/
  (1, 589, 25),
  (2, 589, 3),
  (3, 590, 25),
  (4, 590, 5),
  (5, 591, 25),
  (6, 591, 1),
  (7, 592, 25),
  (8, 592, 3),
/*semis for sport with sport_id 85*/
  (1, 593, 25),
  (3, 593, 1),
  (5, 594, 25),
  (7, 594, 3),
/*finals for sport with sport_id 85*/
  (1, 595, 25),
  (5, 595, 3),
/*eliminations for sport with sport_id 86*/
  (1, 596, 25),
  (2, 596, 3),
  (3, 597, 25),
  (4, 597, 5),
  (5, 598, 25),
  (6, 598, 1),
  (7, 599, 25),
  (8, 599, 3),
/*semis for sport with sport_id 86*/
  (1, 600, 25),
  (3, 600, 1),
  (5, 601, 25),
  (7, 601, 3),
/*finals for sport with sport_id 86*/
  (1, 602, 25),
  (5, 602, 3),
/*eliminations for sport with sport_id 87*/
  (1, 603, 25),
  (2, 603, 3),
  (3, 604, 25),
  (4, 604, 5),
  (5, 605, 25),
  (6, 605, 1),
  (7, 606, 25),
  (8, 606, 3),
/*semis for sport with sport_id 87*/
  (1, 607, 25),
  (3, 607, 1),
  (5, 608, 25),
  (7, 608, 3),
/*finals for sport with sport_id 87*/
  (1, 609, 25),
  (5, 609, 3),
/*eliminations for sport with sport_id 88*/
  (1, 610, 25),
  (2, 610, 3),
  (3, 611, 25),
  (4, 611, 5),
  (5, 612, 25),
  (6, 612, 1),
  (7, 613, 25),
  (8, 613, 3),
/*semis for sport with sport_id 88*/
  (1, 614, 25),
  (3, 614, 1),
  (5, 615, 25),
  (7, 615, 3),
/*finals for sport with sport_id 88*/
  (1, 616, 25),
  (5, 616, 3),
/*eliminations for sport with sport_id 89*/
  (1, 617, 25),
  (2, 617, 3),
  (3, 618, 25),
  (4, 618, 5),
  (5, 619, 25),
  (6, 619, 1),
  (7, 620, 25),
  (8, 620, 3),
/*semis for sport with sport_id 89*/
  (1, 621, 25),
  (3, 621, 1),
  (5, 622, 25),
  (7, 622, 3),
/*finals for sport with sport_id 89*/
  (1, 623, 25),
  (5, 623, 3),
/*eliminations for sport with sport_id 90*/
  (1, 624, 25),
  (2, 624, 3),
  (3, 625, 25),
  (4, 625, 5),
  (5, 626, 25),
  (6, 626, 1),
  (7, 627, 25),
  (8, 627, 3),
/*semis for sport with sport_id 90*/
  (1, 628, 25),
  (3, 628, 1),
  (5, 629, 25),
  (7, 629, 3),
/*finals for sport with sport_id 90*/
  (1, 630, 25),
  (5, 630, 3),
/*eliminations for sport with sport_id 91*/
  (1, 631, 25),
  (2, 631, 3),
  (3, 632, 25),
  (4, 632, 5),
  (5, 633, 25),
  (6, 633, 1),
  (7, 634, 25),
  (8, 634, 3),
/*semis for sport with sport_id 91*/
  (1, 635, 25),
  (3, 635, 1),
  (5, 636, 25),
  (7, 636, 3),
/*finals for sport with sport_id 91*/
  (1, 637, 25),
  (5, 637, 3),
/*eliminations for sport with sport_id 92*/
  (1, 638, 25),
  (2, 638, 3),
  (3, 639, 25),
  (4, 639, 5),
  (5, 640, 25),
  (6, 640, 1),
  (7, 641, 25),
  (8, 641, 3),
/*semis for sport with sport_id 92*/
  (1, 642, 25),
  (3, 642, 1),
  (5, 643, 25),
  (7, 643, 3),
/*finals for sport with sport_id 92*/
  (1, 644, 25),
  (5, 644, 3),
/*eliminations for sport with sport_id 93*/
  (1, 645, 25),
  (2, 645, 3),
  (3, 646, 25),
  (4, 646, 5),
  (5, 647, 25),
  (6, 647, 1),
  (7, 648, 25),
  (8, 648, 3),
/*semis for sport with sport_id 93*/
  (1, 649, 25),
  (3, 649, 1),
  (5, 650, 25),
  (7, 650, 3),
/*finals for sport with sport_id 93*/
  (1, 651, 25),
  (5, 651, 3),
/*eliminations for sport with sport_id 94*/
  (1, 652, 25),
  (2, 652, 3),
  (3, 653, 25),
  (4, 653, 5),
  (5, 654, 25),
  (6, 654, 1),
  (7, 655, 25),
  (8, 655, 3),
/*semis for sport with sport_id 94*/
  (1, 656, 25),
  (3, 656, 1),
  (5, 657, 25),
  (7, 657, 3),
/*finals for sport with sport_id 94*/
  (1, 658, 25),
  (5, 658, 3),
/*eliminations for sport with sport_id 95*/
  (1, 659, 25),
  (2, 659, 3),
  (3, 660, 25),
  (4, 660, 5),
  (5, 661, 25),
  (6, 661, 1),
  (7, 662, 25),
  (8, 662, 3),
/*semis for sport with sport_id 95*/
  (1, 663, 25),
  (3, 663, 1),
  (5, 664, 25),
  (7, 664, 3),
/*finals for sport with sport_id 95*/
  (1, 665, 25),
  (5, 665, 3),
/*eliminations for sport with sport_id 96*/
  (1, 666, 25),
  (2, 666, 3),
  (3, 667, 25),
  (4, 667, 5),
  (5, 668, 25),
  (6, 668, 1),
  (7, 669, 25),
  (8, 669, 3),
/*semis for sport with sport_id 96*/
  (1, 670, 25),
  (3, 670, 1),
  (5, 671, 25),
  (7, 671, 3),
/*finals for sport with sport_id 96*/
  (1, 672, 25),
  (5, 672, 3),
/*eliminations for sport with sport_id 97*/
  (1, 673, 25),
  (2, 673, 3),
  (3, 674, 25),
  (4, 674, 5),
  (5, 675, 25),
  (6, 675, 1),
  (7, 676, 25),
  (8, 676, 3),
/*semis for sport with sport_id 97*/
  (1, 677, 25),
  (3, 677, 1),
  (5, 678, 25),
  (7, 678, 3),
/*finals for sport with sport_id 97*/
  (1, 679, 25),
  (5, 679, 3),
/*eliminations for sport with sport_id 98*/
  (1, 680, 25),
  (2, 680, 3),
  (3, 681, 25),
  (4, 681, 5),
  (5, 682, 25),
  (6, 682, 1),
  (7, 683, 25),
  (8, 683, 3),
/*semis for sport with sport_id 98*/
  (1, 684, 25),
  (3, 684, 1),
  (5, 685, 25),
  (7, 685, 3),
/*finals for sport with sport_id 98*/
  (1, 686, 25),
  (5, 686, 3),
/*eliminations for sport with sport_id 99*/
  (1, 687, 25),
  (2, 687, 3),
  (3, 688, 25),
  (4, 688, 5),
  (5, 689, 25),
  (6, 689, 1),
  (7, 690, 25),
  (8, 690, 3),
/*semis for sport with sport_id 99*/
  (1, 691, 25),
  (3, 691, 1),
  (5, 692, 25),
  (7, 692, 3),
/*finals for sport with sport_id 99*/
  (1, 693, 25),
  (5, 693, 3),
/*eliminations for sport with sport_id 100*/
  (1, 694, 25),
  (2, 694, 3),
  (3, 695, 25),
  (4, 695, 5),
  (5, 696, 25),
  (6, 696, 1),
  (7, 697, 25),
  (8, 697, 3),
/*semis for sport with sport_id 100*/
  (1, 698, 25),
  (3, 698, 1),
  (5, 699, 25),
  (7, 699, 3),
/*finals for sport with sport_id 100*/
  (1, 700, 25),
  (5, 700, 3),
/*eliminations for sport with sport_id 101*/
  (1, 701, 25),
  (2, 701, 3),
  (3, 702, 25),
  (4, 702, 5),
  (5, 703, 25),
  (6, 703, 1),
  (7, 704, 25),
  (8, 704, 3),
/*semis for sport with sport_id 101*/
  (1, 705, 25),
  (3, 705, 1),
  (5, 706, 25),
  (7, 706, 3),
/*finals for sport with sport_id 101*/
  (1, 707, 25),
  (5, 707, 3),
/*eliminations for sport with sport_id 102*/
  (1, 708, 25),
  (2, 708, 3),
  (3, 709, 25),
  (4, 709, 5),
  (5, 710, 25),
  (6, 710, 1),
  (7, 711, 25),
  (8, 711, 3),
/*semis for sport with sport_id 102*/
  (1, 712, 25),
  (3, 712, 1),
  (5, 713, 25),
  (7, 713, 3),
/*finals for sport with sport_id 102*/
  (1, 714, 25),
  (5, 714, 3),
/*eliminations for sport with sport_id 103*/
  (1, 715, 25),
  (2, 715, 3),
  (3, 716, 25),
  (4, 716, 5),
  (5, 717, 25),
  (6, 717, 1),
  (7, 718, 25),
  (8, 718, 3),
/*semis for sport with sport_id 103*/
  (1, 719, 25),
  (3, 719, 1),
  (5, 720, 25),
  (7, 720, 3),
/*finals for sport with sport_id 103*/
  (1, 721, 25),
  (5, 721, 3),
/*eliminations for sport with sport_id 104*/
  (1, 722, 25),
  (2, 722, 3),
  (3, 723, 25),
  (4, 723, 5),
  (5, 724, 25),
  (6, 724, 1),
  (7, 725, 25),
  (8, 725, 3),
/*semis for sport with sport_id 104*/
  (1, 726, 25),
  (3, 726, 1),
  (5, 727, 25),
  (7, 727, 3),
/*finals for sport with sport_id 104*/
  (1, 728, 25),
  (5, 728, 3),
/*eliminations for sport with sport_id 105*/
  (1, 729, 25),
  (2, 729, 3),
  (3, 730, 25),
  (4, 730, 5),
  (5, 731, 25),
  (6, 731, 1),
  (7, 732, 25),
  (8, 732, 3),
/*semis for sport with sport_id 105*/
  (1, 733, 25),
  (3, 733, 1),
  (5, 734, 25),
  (7, 734, 3),
/*finals for sport with sport_id 105*/
  (1, 735, 25),
  (5, 735, 3),
/*eliminations for sport with sport_id 106*/
  (1, 736, 25),
  (2, 736, 3),
  (3, 737, 25),
  (4, 737, 5),
  (5, 738, 25),
  (6, 738, 1),
  (7, 739, 25),
  (8, 739, 3),
/*semis for sport with sport_id 106*/
  (1, 740, 25),
  (3, 740, 1),
  (5, 741, 25),
  (7, 741, 3),
/*finals for sport with sport_id 106*/
  (1, 742, 25),
  (5, 742, 3),
/*eliminations for sport with sport_id 107*/
  (1, 743, 25),
  (2, 743, 3),
  (3, 744, 25),
  (4, 744, 5),
  (5, 745, 25),
  (6, 745, 1),
  (7, 746, 25),
  (8, 746, 3),
/*semis for sport with sport_id 107*/
  (1, 747, 25),
  (3, 747, 1),
  (5, 748, 25),
  (7, 748, 3),
/*finals for sport with sport_id 107*/
  (1, 749, 25),
  (5, 749, 3),
/*eliminations for sport with sport_id 108*/
  (1, 750, 25),
  (2, 750, 3),
  (3, 751, 25),
  (4, 751, 5),
  (5, 752, 25),
  (6, 752, 1),
  (7, 753, 25),
  (8, 753, 3),
/*semis for sport with sport_id 108*/
  (1, 754, 25),
  (3, 754, 1),
  (5, 755, 25),
  (7, 755, 3),
/*finals for sport with sport_id 108*/
  (1, 756, 25),
  (5, 756, 3),
/*eliminations for sport with sport_id 109*/
  (1, 757, 25),
  (2, 757, 3),
  (3, 758, 25),
  (4, 758, 5),
  (5, 759, 25),
  (6, 759, 1),
  (7, 760, 25),
  (8, 760, 3),
/*semis for sport with sport_id 109*/
  (1, 761, 25),
  (3, 761, 1),
  (5, 762, 25),
  (7, 762, 3),
/*finals for sport with sport_id 109*/
  (1, 763, 25),
  (5, 763, 3),
/*eliminations for sport with sport_id 110*/
  (1, 764, 25),
  (2, 764, 3),
  (3, 765, 25),
  (4, 765, 5),
  (5, 766, 25),
  (6, 766, 1),
  (7, 767, 25),
  (8, 767, 3),
/*semis for sport with sport_id 110*/
  (1, 768, 25),
  (3, 768, 1),
  (5, 769, 25),
  (7, 769, 3),
/*finals for sport with sport_id 110*/
  (1, 770, 25),
  (5, 770, 3),
/*eliminations for sport with sport_id 111*/
  (1, 771, 25),
  (2, 771, 3),
  (3, 772, 25),
  (4, 772, 5),
  (5, 773, 25),
  (6, 773, 1),
  (7, 774, 25),
  (8, 774, 3),
/*semis for sport with sport_id 111*/
  (1, 775, 25),
  (3, 775, 1),
  (5, 776, 25),
  (7, 776, 3),
/*finals for sport with sport_id 111*/
  (1, 777, 25),
  (5, 777, 3),
/*eliminations for sport with sport_id 112*/
  (1, 778, 25),
  (2, 778, 3),
  (3, 779, 25),
  (4, 779, 5),
  (5, 780, 25),
  (6, 780, 1),
  (7, 781, 25),
  (8, 781, 3),
/*semis for sport with sport_id 112*/
  (1, 782, 25),
  (3, 782, 1),
  (5, 783, 25),
  (7, 783, 3),
/*finals for sport with sport_id 112*/
  (1, 784, 25),
  (5, 784, 3),
/*eliminations for sport with sport_id 113*/
  (1, 785, 25),
  (2, 785, 3),
  (3, 786, 25),
  (4, 786, 5),
  (5, 787, 25),
  (6, 787, 1),
  (7, 788, 25),
  (8, 788, 3),
/*semis for sport with sport_id 113*/
  (1, 789, 25),
  (3, 789, 1),
  (5, 790, 25),
  (7, 790, 3),
/*finals for sport with sport_id 113*/
  (1, 791, 25),
  (5, 791, 3),
/*eliminations for sport with sport_id 114*/
  (1, 792, 25),
  (2, 792, 3),
  (3, 793, 25),
  (4, 793, 5),
  (5, 794, 25),
  (6, 794, 1),
  (7, 795, 25),
  (8, 795, 3),
/*semis for sport with sport_id 114*/
  (1, 796, 25),
  (3, 796, 1),
  (5, 797, 25),
  (7, 797, 3),
/*finals for sport with sport_id 114*/
  (1, 798, 25),
  (5, 798, 3),
/*eliminations for sport with sport_id 115*/
  (1, 799, 25),
  (2, 799, 3),
  (3, 800, 25),
  (4, 800, 5),
  (5, 801, 25),
  (6, 801, 1),
  (7, 802, 25),
  (8, 802, 3),
/*semis for sport with sport_id 115*/
  (1, 803, 25),
  (3, 803, 1),
  (5, 804, 25),
  (7, 804, 3),
/*finals for sport with sport_id 115*/
  (1, 805, 25),
  (5, 805, 3),
/*eliminations for sport with sport_id 116*/
  (1, 806, 25),
  (2, 806, 3),
  (3, 807, 25),
  (4, 807, 5),
  (5, 808, 25),
  (6, 808, 1),
  (7, 809, 25),
  (8, 809, 3),
/*semis for sport with sport_id 116*/
  (1, 810, 25),
  (3, 810, 1),
  (5, 811, 25),
  (7, 811, 3),
/*finals for sport with sport_id 116*/
  (1, 812, 25),
  (5, 812, 3),
/*eliminations for sport with sport_id 117*/
  (1, 813, 25),
  (2, 813, 3),
  (3, 814, 25),
  (4, 814, 5),
  (5, 815, 25),
  (6, 815, 1),
  (7, 816, 25),
  (8, 816, 3),
/*semis for sport with sport_id 117*/
  (1, 817, 25),
  (3, 817, 1),
  (5, 818, 25),
  (7, 818, 3),
/*finals for sport with sport_id 117*/
  (1, 819, 25),
  (5, 819, 3),
/*eliminations for sport with sport_id 118*/
  (1, 820, 25),
  (2, 820, 3),
  (3, 821, 25),
  (4, 821, 5),
  (5, 822, 25),
  (6, 822, 1),
  (7, 823, 25),
  (8, 823, 3),
/*semis for sport with sport_id 118*/
  (1, 824, 25),
  (3, 824, 1),
  (5, 825, 25),
  (7, 825, 3),
/*finals for sport with sport_id 118*/
  (1, 826, 25),
  (5, 826, 3),
/*eliminations for sport with sport_id 119*/
  (1, 827, 25),
  (2, 827, 3),
  (3, 828, 25),
  (4, 828, 5),
  (5, 829, 25),
  (6, 829, 1),
  (7, 830, 25),
  (8, 830, 3),
/*semis for sport with sport_id 119*/
  (1, 831, 25),
  (3, 831, 1),
  (5, 832, 25),
  (7, 832, 3),
/*finals for sport with sport_id 119*/
  (1, 833, 25),
  (5, 833, 3),
/*eliminations for sport with sport_id 120*/
  (1, 834, 25),
  (2, 834, 3),
  (3, 835, 25),
  (4, 835, 5),
  (5, 836, 25),
  (6, 836, 1),
  (7, 837, 25),
  (8, 837, 3),
/*semis for sport with sport_id 120*/
  (1, 838, 25),
  (3, 838, 1),
  (5, 839, 25),
  (7, 839, 3),
/*finals for sport with sport_id 120*/
  (1, 840, 25),
  (5, 840, 3),
/*eliminations for sport with sport_id 121*/
  (1, 841, 25),
  (2, 841, 3),
  (3, 842, 25),
  (4, 842, 5),
  (5, 843, 25),
  (6, 843, 1),
  (7, 844, 25),
  (8, 844, 3),
/*semis for sport with sport_id 121*/
  (1, 845, 25),
  (3, 845, 1),
  (5, 846, 25),
  (7, 846, 3),
/*finals for sport with sport_id 121*/
  (1, 847, 25),
  (5, 847, 3),
/*eliminations for sport with sport_id 122*/
  (1, 848, 25),
  (2, 848, 3),
  (3, 849, 25),
  (4, 849, 5),
  (5, 850, 25),
  (6, 850, 1),
  (7, 851, 25),
  (8, 851, 3),
/*semis for sport with sport_id 122*/
  (1, 852, 25),
  (3, 852, 1),
  (5, 853, 25),
  (7, 853, 3),
/*finals for sport with sport_id 122*/
  (1, 854, 25),
  (5, 854, 3),
/*eliminations for sport with sport_id 123*/
  (1, 855, 25),
  (2, 855, 3),
  (3, 856, 25),
  (4, 856, 5),
  (5, 857, 25),
  (6, 857, 1),
  (7, 858, 25),
  (8, 858, 3),
/*semis for sport with sport_id 123*/
  (1, 859, 25),
  (3, 859, 1),
  (5, 860, 25),
  (7, 860, 3),
/*finals for sport with sport_id 123*/
  (1, 861, 25),
  (5, 861, 3),
/*eliminations for sport with sport_id 124*/
  (1, 862, 25),
  (2, 862, 3),
  (3, 863, 25),
  (4, 863, 5),
  (5, 864, 25),
  (6, 864, 1),
  (7, 865, 25),
  (8, 865, 3),
/*semis for sport with sport_id 124*/
  (1, 866, 25),
  (3, 866, 1),
  (5, 867, 25),
  (7, 867, 3),
/*finals for sport with sport_id 124*/
  (1, 868, 25),
  (5, 868, 3),
/*eliminations for sport with sport_id 125*/
  (1, 869, 25),
  (2, 869, 3),
  (3, 870, 25),
  (4, 870, 5),
  (5, 871, 25),
  (6, 871, 1),
  (7, 872, 25),
  (8, 872, 3),
/*semis for sport with sport_id 125*/
  (1, 873, 25),
  (3, 873, 1),
  (5, 874, 25),
  (7, 874, 3),
/*finals for sport with sport_id 125*/
  (1, 875, 25),
  (5, 875, 3),
/*eliminations for sport with sport_id 126*/
  (1, 876, 25),
  (2, 876, 3),
  (3, 877, 25),
  (4, 877, 5),
  (5, 878, 25),
  (6, 878, 1),
  (7, 879, 25),
  (8, 879, 3),
/*semis for sport with sport_id 126*/
  (1, 880, 25),
  (3, 880, 1),
  (5, 881, 25),
  (7, 881, 3),
/*finals for sport with sport_id 126*/
  (1, 882, 25),
  (5, 882, 3),
/*eliminations for sport with sport_id 127*/
  (1, 883, 25),
  (2, 883, 3),
  (3, 884, 25),
  (4, 884, 5),
  (5, 885, 25),
  (6, 885, 1),
  (7, 886, 25),
  (8, 886, 3),
/*semis for sport with sport_id 127*/
  (1, 887, 25),
  (3, 887, 1),
  (5, 888, 25),
  (7, 888, 3),
/*finals for sport with sport_id 127*/
  (1, 889, 25),
  (5, 889, 3),
/*eliminations for sport with sport_id 128*/
  (1, 890, 25),
  (2, 890, 3),
  (3, 891, 25),
  (4, 891, 5),
  (5, 892, 25),
  (6, 892, 1),
  (7, 893, 25),
  (8, 893, 3),
/*semis for sport with sport_id 128*/
  (1, 894, 25),
  (3, 894, 1),
  (5, 895, 25),
  (7, 895, 3),
/*finals for sport with sport_id 128*/
  (1, 896, 25),
  (5, 896, 3),
/*eliminations for sport with sport_id 129*/
  (1, 897, 25),
  (2, 897, 3),
  (3, 898, 25),
  (4, 898, 5),
  (5, 899, 25),
  (6, 899, 1),
  (7, 900, 25),
  (8, 900, 3),
/*semis for sport with sport_id 129*/
  (1, 901, 25),
  (3, 901, 1),
  (5, 902, 25),
  (7, 902, 3),
/*finals for sport with sport_id 129*/
  (1, 903, 25),
  (5, 903, 3),
/*eliminations for sport with sport_id 130*/
  (1, 904, 25),
  (2, 904, 3),
  (3, 905, 25),
  (4, 905, 5),
  (5, 906, 25),
  (6, 906, 1),
  (7, 907, 25),
  (8, 907, 3),
/*semis for sport with sport_id 130*/
  (1, 908, 25),
  (3, 908, 1),
  (5, 909, 25),
  (7, 909, 3),
/*finals for sport with sport_id 130*/
  (1, 910, 25),
  (5, 910, 3),
/*eliminations for sport with sport_id 131*/
  (1, 911, 25),
  (2, 911, 3),
  (3, 912, 25),
  (4, 912, 5),
  (5, 913, 25),
  (6, 913, 1),
  (7, 914, 25),
  (8, 914, 3),
/*semis for sport with sport_id 131*/
  (1, 915, 25),
  (3, 915, 1),
  (5, 916, 25),
  (7, 916, 3),
/*finals for sport with sport_id 131*/
  (1, 917, 25),
  (5, 917, 3),
/*eliminations for sport with sport_id 132*/
  (1, 918, 25),
  (2, 918, 3),
  (3, 919, 25),
  (4, 919, 5),
  (5, 920, 25),
  (6, 920, 1),
  (7, 921, 25),
  (8, 921, 3),
/*semis for sport with sport_id 132*/
  (1, 922, 25),
  (3, 922, 1),
  (5, 923, 25),
  (7, 923, 3),
/*finals for sport with sport_id 132*/
  (1, 924, 25),
  (5, 924, 3),
/*eliminations for sport with sport_id 133*/
  (1, 925, 25),
  (2, 925, 3),
  (3, 926, 25),
  (4, 926, 5),
  (5, 927, 25),
  (6, 927, 1),
  (7, 928, 25),
  (8, 928, 3),
/*semis for sport with sport_id 133*/
  (1, 929, 25),
  (3, 929, 1),
  (5, 930, 25),
  (7, 930, 3),
/*finals for sport with sport_id 133*/
  (1, 931, 25),
  (5, 931, 3),
/*eliminations for sport with sport_id 134*/
  (1, 932, 25),
  (2, 932, 3),
  (3, 933, 25),
  (4, 933, 5),
  (5, 934, 25),
  (6, 934, 1),
  (7, 935, 25),
  (8, 935, 3),
/*semis for sport with sport_id 134*/
  (1, 936, 25),
  (3, 936, 1),
  (5, 937, 25),
  (7, 937, 3),
/*finals for sport with sport_id 134*/
  (1, 938, 25),
  (5, 938, 3),
/*eliminations for sport with sport_id 135*/
  (1, 939, 25),
  (2, 939, 3),
  (3, 940, 25),
  (4, 940, 5),
  (5, 941, 25),
  (6, 941, 1),
  (7, 942, 25),
  (8, 942, 3),
/*semis for sport with sport_id 135*/
  (1, 943, 25),
  (3, 943, 1),
  (5, 944, 25),
  (7, 944, 3),
/*finals for sport with sport_id 135*/
  (1, 945, 25),
  (5, 945, 3),
/*eliminations for sport with sport_id 136*/
  (1, 946, 25),
  (2, 946, 3),
  (3, 947, 25),
  (4, 947, 5),
  (5, 948, 25),
  (6, 948, 1),
  (7, 949, 25),
  (8, 949, 3),
/*semis for sport with sport_id 136*/
  (1, 950, 25),
  (3, 950, 1),
  (5, 951, 25),
  (7, 951, 3),
/*finals for sport with sport_id 136*/
  (1, 952, 25),
  (5, 952, 3),
/*eliminations for sport with sport_id 137*/
  (1, 953, 25),
  (2, 953, 3),
  (3, 954, 25),
  (4, 954, 5),
  (5, 955, 25),
  (6, 955, 1),
  (7, 956, 25),
  (8, 956, 3),
/*semis for sport with sport_id 137*/
  (1, 957, 25),
  (3, 957, 1),
  (5, 958, 25),
  (7, 958, 3),
/*finals for sport with sport_id 137*/
  (1, 959, 25),
  (5, 959, 3),
/*eliminations for sport with sport_id 138*/
  (1, 960, 25),
  (2, 960, 3),
  (3, 961, 25),
  (4, 961, 5),
  (5, 962, 25),
  (6, 962, 1),
  (7, 963, 25),
  (8, 963, 3),
/*semis for sport with sport_id 138*/
  (1, 964, 25),
  (3, 964, 1),
  (5, 965, 25),
  (7, 965, 3),
/*finals for sport with sport_id 138*/
  (1, 966, 25),
  (5, 966, 3),
/*eliminations for sport with sport_id 139*/
  (1, 967, 25),
  (2, 967, 3),
  (3, 968, 25),
  (4, 968, 5),
  (5, 969, 25),
  (6, 969, 1),
  (7, 970, 25),
  (8, 970, 3),
/*semis for sport with sport_id 139*/
  (1, 971, 25),
  (3, 971, 1),
  (5, 972, 25),
  (7, 972, 3),
/*finals for sport with sport_id 139*/
  (1, 973, 25),
  (5, 973, 3),
/*eliminations for sport with sport_id 140*/
  (1, 974, 25),
  (2, 974, 3),
  (3, 975, 25),
  (4, 975, 5),
  (5, 976, 25),
  (6, 976, 1),
  (7, 977, 25),
  (8, 977, 3),
/*semis for sport with sport_id 140*/
  (1, 978, 25),
  (3, 978, 1),
  (5, 979, 25),
  (7, 979, 3),
/*finals for sport with sport_id 140*/
  (1, 980, 25),
  (5, 980, 3),
/*eliminations for sport with sport_id 141*/
  (1, 981, 25),
  (2, 981, 3),
  (3, 982, 25),
  (4, 982, 5),
  (5, 983, 25),
  (6, 983, 1),
  (7, 984, 25),
  (8, 984, 3),
/*semis for sport with sport_id 141*/
  (1, 985, 25),
  (3, 985, 1),
  (5, 986, 25),
  (7, 986, 3),
/*finals for sport with sport_id 141*/
  (1, 987, 25),
  (5, 987, 3),
/*eliminations for sport with sport_id 142*/
  (1, 988, 25),
  (2, 988, 3),
  (3, 989, 25),
  (4, 989, 5),
  (5, 990, 25),
  (6, 990, 1),
  (7, 991, 25),
  (8, 991, 3),
/*semis for sport with sport_id 142*/
  (1, 992, 25),
  (3, 992, 1),
  (5, 993, 25),
  (7, 993, 3),
/*finals for sport with sport_id 142*/
  (1, 994, 25),
  (5, 994, 3),
/*eliminations for sport with sport_id 143*/
  (1, 995, 25),
  (2, 995, 3),
  (3, 996, 25),
  (4, 996, 5),
  (5, 997, 25),
  (6, 997, 1),
  (7, 998, 25),
  (8, 998, 3),
/*semis for sport with sport_id 143*/
  (1, 999, 25),
  (3, 999, 1),
  (5, 1000, 25),
  (7, 1000, 3),
/*finals for sport with sport_id 143*/
  (1, 1001, 25),
  (5, 1001, 3),
/*eliminations for sport with sport_id 144*/
  (1, 1002, 25),
  (2, 1002, 3),
  (3, 1003, 25),
  (4, 1003, 5),
  (5, 1004, 25),
  (6, 1004, 1),
  (7, 1005, 25),
  (8, 1005, 3),
/*semis for sport with sport_id 144*/
  (1, 1006, 25),
  (3, 1006, 1),
  (5, 1007, 25),
  (7, 1007, 3),
/*finals for sport with sport_id 144*/
  (1, 1008, 25),
  (5, 1008, 3),
/*eliminations for sport with sport_id 145*/
  (1, 1009, 25),
  (2, 1009, 3),
  (3, 1010, 25),
  (4, 1010, 5),
  (5, 1011, 25),
  (6, 1011, 1),
  (7, 1012, 25),
  (8, 1012, 3),
/*semis for sport with sport_id 145*/
  (1, 1013, 25),
  (3, 1013, 1),
  (5, 1014, 25),
  (7, 1014, 3),
/*finals for sport with sport_id 145*/
  (1, 1015, 25),
  (5, 1015, 3),
/*eliminations for sport with sport_id 146*/
  (1, 1016, 25),
  (2, 1016, 3),
  (3, 1017, 25),
  (4, 1017, 5),
  (5, 1018, 25),
  (6, 1018, 1),
  (7, 1019, 25),
  (8, 1019, 3),
/*semis for sport with sport_id 146*/
  (1, 1020, 25),
  (3, 1020, 1),
  (5, 1021, 25),
  (7, 1021, 3),
/*finals for sport with sport_id 146*/
  (1, 1022, 25),
  (5, 1022, 3),
/*eliminations for sport with sport_id 147*/
  (1, 1023, 25),
  (2, 1023, 3),
  (3, 1024, 25),
  (4, 1024, 5),
  (5, 1025, 25),
  (6, 1025, 1),
  (7, 1026, 25),
  (8, 1026, 3),
/*semis for sport with sport_id 147*/
  (1, 1027, 25),
  (3, 1027, 1),
  (5, 1028, 25),
  (7, 1028, 3),
/*finals for sport with sport_id 147*/
  (1, 1029, 25),
  (5, 1029, 3),
/*eliminations for sport with sport_id 148*/
  (1, 1030, 25),
  (2, 1030, 3),
  (3, 1031, 25),
  (4, 1031, 5),
  (5, 1032, 25),
  (6, 1032, 1),
  (7, 1033, 25),
  (8, 1033, 3),
/*semis for sport with sport_id 148*/
  (1, 1034, 25),
  (3, 1034, 1),
  (5, 1035, 25),
  (7, 1035, 3),
/*finals for sport with sport_id 148*/
  (1, 1036, 25),
  (5, 1036, 3),
/*eliminations for sport with sport_id 149*/
  (1, 1037, 25),
  (2, 1037, 3),
  (3, 1038, 25),
  (4, 1038, 5),
  (5, 1039, 25),
  (6, 1039, 1),
  (7, 1040, 25),
  (8, 1040, 3),
/*semis for sport with sport_id 149*/
  (1, 1041, 25),
  (3, 1041, 1),
  (5, 1042, 25),
  (7, 1042, 3),
/*finals for sport with sport_id 149*/
  (1, 1043, 25),
  (5, 1043, 3),
/*eliminations for sport with sport_id 150*/
  (1, 1044, 25),
  (2, 1044, 3),
  (3, 1045, 25),
  (4, 1045, 5),
  (5, 1046, 25),
  (6, 1046, 1),
  (7, 1047, 25),
  (8, 1047, 3),
/*semis for sport with sport_id 150*/
  (1, 1048, 25),
  (3, 1048, 1),
  (5, 1049, 25),
  (7, 1049, 3),
/*finals for sport with sport_id 150*/
  (1, 1050, 25),
  (5, 1050, 3),
/*eliminations for sport with sport_id 151*/
  (1, 1051, 25),
  (2, 1051, 3),
  (3, 1052, 25),
  (4, 1052, 5),
  (5, 1053, 25),
  (6, 1053, 1),
  (7, 1054, 25),
  (8, 1054, 3),
/*semis for sport with sport_id 151*/
  (1, 1055, 25),
  (3, 1055, 1),
  (5, 1056, 25),
  (7, 1056, 3),
/*finals for sport with sport_id 151*/
  (1, 1057, 25),
  (5, 1057, 3),
/*eliminations for sport with sport_id 152*/
  (1, 1058, 25),
  (2, 1058, 3),
  (3, 1059, 25),
  (4, 1059, 5),
  (5, 1060, 25),
  (6, 1060, 1),
  (7, 1061, 25),
  (8, 1061, 3),
/*semis for sport with sport_id 152*/
  (1, 1062, 25),
  (3, 1062, 1),
  (5, 1063, 25),
  (7, 1063, 3),
/*finals for sport with sport_id 152*/
  (1, 1064, 25),
  (5, 1064, 3),
/*eliminations for sport with sport_id 153*/
  (1, 1065, 25),
  (2, 1065, 3),
  (3, 1066, 25),
  (4, 1066, 5),
  (5, 1067, 25),
  (6, 1067, 1),
  (7, 1068, 25),
  (8, 1068, 3),
/*semis for sport with sport_id 153*/
  (1, 1069, 25),
  (3, 1069, 1),
  (5, 1070, 25),
  (7, 1070, 3),
/*finals for sport with sport_id 153*/
  (1, 1071, 25),
  (5, 1071, 3),
/*eliminations for sport with sport_id 154*/
  (1, 1072, 25),
  (2, 1072, 3),
  (3, 1073, 25),
  (4, 1073, 5),
  (5, 1074, 25),
  (6, 1074, 1),
  (7, 1075, 25),
  (8, 1075, 3),
/*semis for sport with sport_id 154*/
  (1, 1076, 25),
  (3, 1076, 1),
  (5, 1077, 25),
  (7, 1077, 3),
/*finals for sport with sport_id 154*/
  (1, 1078, 25),
  (5, 1078, 3),
/*eliminations for sport with sport_id 155*/
  (1, 1079, 25),
  (2, 1079, 3),
  (3, 1080, 25),
  (4, 1080, 5),
  (5, 1081, 25),
  (6, 1081, 1),
  (7, 1082, 25),
  (8, 1082, 3),
/*semis for sport with sport_id 155*/
  (1, 1083, 25),
  (3, 1083, 1),
  (5, 1084, 25),
  (7, 1084, 3),
/*finals for sport with sport_id 155*/
  (1, 1085, 25),
  (5, 1085, 3),
/*eliminations for sport with sport_id 156*/
  (1, 1086, 25),
  (2, 1086, 3),
  (3, 1087, 25),
  (4, 1087, 5),
  (5, 1088, 25),
  (6, 1088, 1),
  (7, 1089, 25),
  (8, 1089, 3),
/*semis for sport with sport_id 156*/
  (1, 1090, 25),
  (3, 1090, 1),
  (5, 1091, 25),
  (7, 1091, 3),
/*finals for sport with sport_id 156*/
  (1, 1092, 25),
  (5, 1092, 3),
/*eliminations for sport with sport_id 157*/
  (1, 1093, 25),
  (2, 1093, 3),
  (3, 1094, 25),
  (4, 1094, 5),
  (5, 1095, 25),
  (6, 1095, 1),
  (7, 1096, 25),
  (8, 1096, 3),
/*semis for sport with sport_id 157*/
  (1, 1097, 25),
  (3, 1097, 1),
  (5, 1098, 25),
  (7, 1098, 3),
/*finals for sport with sport_id 157*/
  (1, 1099, 25),
  (5, 1099, 3),
/*eliminations for sport with sport_id 158*/
  (1, 1100, 25),
  (2, 1100, 3),
  (3, 1101, 25),
  (4, 1101, 5),
  (5, 1102, 25),
  (6, 1102, 1),
  (7, 1103, 25),
  (8, 1103, 3),
/*semis for sport with sport_id 158*/
  (1, 1104, 25),
  (3, 1104, 1),
  (5, 1105, 25),
  (7, 1105, 3),
/*finals for sport with sport_id 158*/
  (1, 1106, 25),
  (5, 1106, 3),
/*eliminations for sport with sport_id 159*/
  (1, 1107, 25),
  (2, 1107, 3),
  (3, 1108, 25),
  (4, 1108, 5),
  (5, 1109, 25),
  (6, 1109, 1),
  (7, 1110, 25),
  (8, 1110, 3),
/*semis for sport with sport_id 159*/
  (1, 1111, 25),
  (3, 1111, 1),
  (5, 1112, 25),
  (7, 1112, 3),
/*finals for sport with sport_id 159*/
  (1, 1113, 25),
  (5, 1113, 3),
/*eliminations for sport with sport_id 160*/
  (1, 1114, 25),
  (2, 1114, 3),
  (3, 1115, 25),
  (4, 1115, 5),
  (5, 1116, 25),
  (6, 1116, 1),
  (7, 1117, 25),
  (8, 1117, 3),
/*semis for sport with sport_id 160*/
  (1, 1118, 25),
  (3, 1118, 1),
  (5, 1119, 25),
  (7, 1119, 3),
/*finals for sport with sport_id 160*/
  (1, 1120, 25),
  (5, 1120, 3),
/*eliminations for sport with sport_id 161*/
  (1, 1121, 25),
  (2, 1121, 3),
  (3, 1122, 25),
  (4, 1122, 5),
  (5, 1123, 25),
  (6, 1123, 1),
  (7, 1124, 25),
  (8, 1124, 3),
/*semis for sport with sport_id 161*/
  (1, 1125, 25),
  (3, 1125, 1),
  (5, 1126, 25),
  (7, 1126, 3),
/*finals for sport with sport_id 161*/
  (1, 1127, 25),
  (5, 1127, 3),
/*eliminations for sport with sport_id 162*/
  (1, 1128, 25),
  (2, 1128, 3),
  (3, 1129, 25),
  (4, 1129, 5),
  (5, 1130, 25),
  (6, 1130, 1),
  (7, 1131, 25),
  (8, 1131, 3),
/*semis for sport with sport_id 162*/
  (1, 1132, 25),
  (3, 1132, 1),
  (5, 1133, 25),
  (7, 1133, 3),
/*finals for sport with sport_id 162*/
  (1, 1134, 25),
  (5, 1134, 3),
/*eliminations for sport with sport_id 163*/
  (1, 1135, 25),
  (2, 1135, 3),
  (3, 1136, 25),
  (4, 1136, 5),
  (5, 1137, 25),
  (6, 1137, 1),
  (7, 1138, 25),
  (8, 1138, 3),
/*semis for sport with sport_id 163*/
  (1, 1139, 25),
  (3, 1139, 1),
  (5, 1140, 25),
  (7, 1140, 3),
/*finals for sport with sport_id 163*/
  (1, 1141, 25),
  (5, 1141, 3),
/*eliminations for sport with sport_id 164*/
  (1, 1142, 25),
  (2, 1142, 3),
  (3, 1143, 25),
  (4, 1143, 5),
  (5, 1144, 25),
  (6, 1144, 1),
  (7, 1145, 25),
  (8, 1145, 3),
/*semis for sport with sport_id 164*/
  (1, 1146, 25),
  (3, 1146, 1),
  (5, 1147, 25),
  (7, 1147, 3),
/*finals for sport with sport_id 164*/
  (1, 1148, 25),
  (5, 1148, 3),
/*eliminations for sport with sport_id 165*/
  (1, 1149, 25),
  (2, 1149, 3),
  (3, 1150, 25),
  (4, 1150, 5),
  (5, 1151, 25),
  (6, 1151, 1),
  (7, 1152, 25),
  (8, 1152, 3),
/*semis for sport with sport_id 165*/
  (1, 1153, 25),
  (3, 1153, 1),
  (5, 1154, 25),
  (7, 1154, 3),
/*finals for sport with sport_id 165*/
  (1, 1155, 25),
  (5, 1155, 3),
/*eliminations for sport with sport_id 166*/
  (1, 1156, 25),
  (2, 1156, 3),
  (3, 1157, 25),
  (4, 1157, 5),
  (5, 1158, 25),
  (6, 1158, 1),
  (7, 1159, 25),
  (8, 1159, 3),
/*semis for sport with sport_id 166*/
  (1, 1160, 25),
  (3, 1160, 1),
  (5, 1161, 25),
  (7, 1161, 3),
/*finals for sport with sport_id 166*/
  (1, 1162, 25),
  (5, 1162, 3),
/*eliminations for sport with sport_id 167*/
  (1, 1163, 25),
  (2, 1163, 3),
  (3, 1164, 25),
  (4, 1164, 5),
  (5, 1165, 25),
  (6, 1165, 1),
  (7, 1166, 25),
  (8, 1166, 3),
/*semis for sport with sport_id 167*/
  (1, 1167, 25),
  (3, 1167, 1),
  (5, 1168, 25),
  (7, 1168, 3),
/*finals for sport with sport_id 167*/
  (1, 1169, 25),
  (5, 1169, 3),
/*eliminations for sport with sport_id 168*/
  (1, 1170, 25),
  (2, 1170, 3),
  (3, 1171, 25),
  (4, 1171, 5),
  (5, 1172, 25),
  (6, 1172, 1),
  (7, 1173, 25),
  (8, 1173, 3),
/*semis for sport with sport_id 168*/
  (1, 1174, 25),
  (3, 1174, 1),
  (5, 1175, 25),
  (7, 1175, 3),
/*finals for sport with sport_id 168*/
  (1, 1176, 25),
  (5, 1176, 3);