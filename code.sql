-- Section1
INSERT INTO Player (id, team, age)
SELECT id, 'Chelsea', 24
FROM Person
WHERE id NOT IN (SELECT id FROM Refree)
  AND id NOT IN (SELECT id FROM Player)
  AND id NOT IN (SELECT id FROM Coach);

-- Section2
SELECT P.id, P.name
FROM Person P
JOIN Coach C ON P.id = C.id
JOIN Player Pl ON P.id = Pl.id
WHERE C.team <> Pl.team;

-- Section3
ALTER TABLE Player
ADD CONSTRAINT FK_Player_Team FOREIGN KEY (team) REFERENCES Team(name) ON DELETE CASCADE;