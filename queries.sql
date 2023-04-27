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
SELECT team_name, AVG(yards_gained)
FROM Teams
JOIN Plays ON Teams.team_id = Plays.team_id
JOIN Games ON Plays.game_id = Games.game_id
WHERE Games.game_date BETWEEN '2022-01-01' AND '2022-12-31'
GROUP BY team_name;

-- 7. List all players who have played both quarterback and wide receiver in their career.
SELECT player_name
FROM Players
WHERE player_id IN (
    SELECT player_id
    FROM Statistics
    WHERE player_position = 'QB'
) AND player_id IN (
    SELECT player_id
    FROM Statistics
    WHERE player_position = 'WR'
);

-- 8. Show the total number of tackles for each defensive player in the league.
SELECT player_name, SUM(tackles)
FROM Players
JOIN Statistics ON Players.player_id = Statistics.player_id
WHERE player_position LIKE '%LB%' OR player_position LIKE '%DB%'
GROUP BY player_name;


-- 9. List all players who have scored 3 or more touchdowns in a game.
SELECT player_name, COUNT(*) as num_touchdowns
FROM Players
JOIN Statistics ON Players.player_id = Statistics.player_id
WHERE touchdowns >= 3
GROUP BY player_name
HAVING COUNT(*) >= 1;

-- 10. Show the win-loss record for each team in a given season.
SELECT team_name, 
    SUM(CASE WHEN Teams.team_id = Games.home_team_id AND home_score > away_score THEN 1
             WHEN Teams.team_id = Games.away_team_id AND away_score > home_score THEN 1
             ELSE 0 END) AS wins,
    SUM(CASE WHEN Teams.team_id = Games.home_team_id AND home_score < away_score THEN 1
             WHEN Teams.team_id = Games.away_team_id AND away_score < home_score THEN 1
             ELSE 0 END) AS losses
FROM Teams
JOIN Games ON Teams.team_id = Games.home_team_id OR Teams.team_id = Games.away_team_id
WHERE Games.game_date BETWEEN '2022-01-01' AND '2022-12-31'
GROUP BY team_name;

INSERT INTO Team (team_id, team_name, team_city)
VALUES (1, 'New England Patriots', 'New England');

INSERT INTO Player (player_id, player_name, position, team_id)
VALUES (1, 'Tom Brady', 'Quarterback', 1);

INSERT INTO Player (player_id, player_name, position, team_id)
VALUES (2, 'Rob Gronkowski', 'Tight End', 1);
