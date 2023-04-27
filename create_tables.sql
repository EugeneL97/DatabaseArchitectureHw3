CREATE TABLE Player (
  player_id INT PRIMARY KEY,
  player_name varchar(255),
  position varchar(255),
  team_id INT,
  FOREIGN KEY (team_id) REFERENCES Team(team_id)
);

CREATE TABLE Team (
  team_id INT PRIMARY KEY,
  team_name varchar(255),
  team_city varchar(255),
);

CREATE TABLE Game (
  game_id INT PRIMARY KEY,
  home_team_id INT,
  away_team_id INT,
  game_date varchar(255),
  FOREIGN KEY (home_team_id) REFERENCES Team(team_id),
  FOREIGN KEY (away_team_id) REFERENCES Team(team_id)
);

CREATE TABLE Play (
  play_id INT PRIMARY KEY,
  game_id INT,
  player_id INT,
  yards_gained INT,
  touchdown BOOLEAN,
  fumble BOOLEAN,
  FOREIGN KEY (game_id) REFERENCES Game(game_id),
  FOREIGN KEY (player_id) REFERENCES Player(player_id)
);

CREATE TABLE Position (
  position_id INT PRIMARY KEY,
  position_name varchar(255),
);

CREATE TABLE Statistic (
  statistic_id INT PRIMARY KEY,
  statistic_name varchar(255),
  statistic_description varchar(255),
);
