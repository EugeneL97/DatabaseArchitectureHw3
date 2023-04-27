-- 1. List all players who have played for the New England Patriots.
INSERT INTO Team (team_id, team_name, team_city)
VALUES (1, 'New England Patriots', 'New England');

INSERT INTO Player (player_id, player_name, position, team_id)
VALUES (1, 'Tom Brady', 'Quarterback', 1);

INSERT INTO Player (player_id, player_name, position, team_id)
VALUES (2, 'Rob Gronkowski', 'Tight End', 1);


-- 2. Show the number of rushing yards and touchdowns for each running back in the league.
INSERT INTO Player (player_id, player_name, position, team_id)
VALUES (3, 'Ezekiel Elliott', 'Running Back', 2);

INSERT INTO Play (play_id, game_id, player_id, yards_gained, touchdown, fumble)
VALUES (1, 1, 3, 100, 1, 0);

INSERT INTO Play (play_id, game_id, player_id, yards_gained, touchdown, fumble)
VALUES (2, 2, 3, 50, 0, 0);

-- 3. List all players who have thrown for more than 4000 passing yards in a single season.
INSERT INTO Player (player_id, player_name, position, team_id)
VALUES (4, 'Patrick Mahomes', 'Quarterback', 3);

INSERT INTO Play (play_id, game_id, player_id, yards_gained, touchdown, fumble)
VALUES (3, 3, 4, 5000, 30, 5);


-- 4. Show the total number of interceptions for each team in the league.
INSERT INTO Team (team_id, team_name, team_city)
VALUES (2, 'Dallas Cowboys', 'Dallas');

INSERT INTO Play (play_id, game_id, player_id, yards_gained, touchdown, fumble)
VALUES (4, 4, 3, 0, 0, 0);

INSERT INTO Play (play_id, game_id, player_id, yards_gained, touchdown, fumble)
VALUES (5, 5, 3, 0, 0, 1);

INSERT INTO Play (play_id, game_id, player_id, yards_gained, touchdown, fumble)
VALUES (6, 4, 2, 0, 0, 0);


-- 5. List all players who have had a reception of 50 yards or more in a game.
INSERT INTO Play (play_id, game_id, player_id, yards_gained, touchdown, fumble)
VALUES (7, 6, 2, 75, 1, 0);

INSERT INTO Play (play_id, game_id, player_id, yards_gained, touchdown, fumble)
VALUES (8, 7, 1, 50, 0, 0);


-- 6. Show the average yards per play for each team in a given season.
INSERT INTO play (play_id, game_id, player_id, yards_gained, touchdown, fumble)
VALUES (1, 1, 1, 8, 0, 0),
       (2, 1, 1, 6, 1, 0),
       (3, 1, 1, 4, 0, 1),
       (4, 2, 2, 5, 0, 0),
       (5, 2, 2, 3, 0, 0),
       (6, 2, 2, 2, 0, 1),
       (7, 3, 3, 12, 0, 0),
       (8, 3, 3, 9, 1, 0),
       (9, 3, 3, 5, 0, 0),
       (10, 4, 4, 7, 0, 0),
       (11, 4, 4, 3, 0, 0),
       (12, 4, 4, 8, 1, 0),
       (13, 5, 5, 11, 0, 0),
       (14, 5, 5, 4, 0, 0),
       (15, 5, 5, 7, 1, 0),
       (16, 6, 6, 9, 0, 0),
       (17, 6, 6, 12, 1, 0),
       (18, 6, 6, 3, 0, 0),
       (19, 7, 7, 2, 0, 1),
       (20, 7, 7, 7, 0, 0),
       (21, 7, 7, 5, 1, 0),
       (22, 8, 8, 4, 0, 0),
       (23, 8, 8, 3, 0, 0),
       (24, 8, 8, 6, 1, 0),
       (25, 9, 9, 1, 0, 1),
       (26, 9, 9, 11, 0, 0),
       (27, 9, 9, 6, 0, 0),
       (28, 10, 10, 3, 0, 0),
       (29, 10, 10, 9, 1, 0),
       (30, 10, 10, 5, 0, 0);

-- 7. List all players who have played both quarterback and wide receiver in their career.
INSERT INTO player VALUES 
(1, 'Tom Brady', 'Quarterback', 1),
(2, 'Julian Edelman', 'Wide Receiver', 1),
(3, 'Antwaan Randle El', 'Quarterback, Wide Receiver', 2),
(4, 'Kordell Stewart', 'Quarterback, Wide Receiver', 2),
(5, 'Terrelle Pryor', 'Quarterback, Wide Receiver', 3),
(6, 'Randall Cunningham', 'Quarterback, Punter', 4),
(7, 'Josh Cribbs', 'Quarterback, Wide Receiver', 5),
(8, 'Michael Robinson', 'Quarterback, Fullback', 6);

-- 8. Show the total number of tackles for each defensive player in the league.
INSERT INTO player_statistic VALUES
(1, 1, 120), 
(2, 1, 90), 
(3, 1, 65), 
(4, 1, 80), 
(5, 1, 100),
(6, 2, 70), 
(7, 2, 55), 
(8, 2, 45), 
(9, 2, 85), 
(10, 2, 75);


-- 9. List all players who have scored 3 or more touchdowns in a game.
INSERT INTO player (player_id, player_name, position, team_id) 
VALUES (1, 'John Smith', 'wide receiver', 1);

INSERT INTO player (player_id, player_name, position, team_id) 
VALUES (2, 'Jane Doe', 'quarterback', 2);

INSERT INTO game (game_id, home_team_id, away_team_id, game_date) 
VALUES (1, 1, 2, '2022-01-01');

INSERT INTO play (play_id, game_id, player_id, yards_gained, touchdown, fumble) 
VALUES (1, 1, 1, 50, 1, 0);

INSERT INTO play (play_id, game_id, player_id, yards_gained, touchdown, fumble) 
VALUES (2, 1, 1, 20, 1, 0);

INSERT INTO play (play_id, game_id, player_id, yards_gained, touchdown, fumble) 
VALUES (3, 1, 1, 5, 1, 0);

INSERT INTO play (play_id, game_id, player_id, yards_gained, touchdown, fumble) 
VALUES (4, 1, 2, 30, 1, 0);

INSERT INTO play (play_id, game_id, player_id, yards_gained, touchdown, fumble) 
VALUES (5, 1, 2, 60, 1, 0);

INSERT INTO play (play_id, game_id, player_id, yards_gained, touchdown, fumble) 
VALUES (6, 1, 2, 10, 1, 0);

-- 10. Show the win-loss record for each team in a given season.
INSERT INTO Game (game_id, home_team_id, away_team_id, game_date)
VALUES (1, 1, 2, '2022-01-01'),
       (2, 2, 1, '2022-01-08'),
       (3, 1, 3, '2022-01-15'),
       (4, 3, 2, '2022-01-22'),
       (5, 3, 1, '2022-01-29');

INSERT INTO Team (team_id, team_name, team_city)
VALUES (1, 'Patriots', 'New England'),
       (2, 'Bills', 'Buffalo'),
       (3, 'Jets', 'New York');

INSERT INTO GameStats (game_id, team_id, points, yards)
VALUES (1, 1, 28, 365),
       (1, 2, 21, 300),
       (2, 2, 17, 250),
       (2, 1, 10, 150),
       (3, 1, 24, 400),
       (3, 3, 14, 250),
       (4, 3, 21, 350),
       (4, 2, 17, 300),
       (5, 3, 28, 400),
       (5, 1, 17, 350);