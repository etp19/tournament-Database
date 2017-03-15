-- Table definitions for the tournament project.
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

--delete database
DROP DATABASE IF EXISTS tournament;

--create databases
CREATE DATABASE tournament;

--connect to the database
\c tournament;

--create table for players
CREATE TABLE players (id SERIAL PRIMARY KEY,
                      name TEXT );

--create table for matches
CREATE TABLE matches (
                      winner INTEGER REFERENCES players(id),
                      loser INTEGER REFERENCES players(id),
                      PRIMARY KEY (winner, loser));



--create a view to get the winners needed for the standing records.
CREATE VIEW winRecords AS
SELECT players.id, COUNT(matches.winner) AS victories
FROM players LEFT JOIN matches ON players.id = matches.winner
GROUP BY players.id ORDER BY victories DESC;

--create a view to get the matches needed for the standing records.
CREATE VIEW matchesRecords AS
SELECT players.id, COUNT(matches.*) AS matches
FROM players LEFT JOIN matches
ON players.id = matches.winner OR players.id = matches.loser
GROUP BY players.id ORDER BY matches DESC;

--create a view that contains id, name, wins, matches getting the results from players, winRecords and matchesRecords.
CREATE VIEW standingRecords AS
SELECT players.id, players.name, winRecords.victories, matchesRecords.matches
FROM players JOIN winRecords
ON players.id = winRecords.id
JOIN matchesRecords
ON players.id = matchesRecords.id
ORDER BY winRecords.victories DESC;
