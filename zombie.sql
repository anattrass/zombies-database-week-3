DROP TABLE biting;

DROP TABLE zombies;

DROP TABLE victims;



CREATE TABLE zombies (
  name VARCHAR(255),
  type VARCHAR(255) not null,
  id SERIAL8 primary key
);
CREATE TABLE victims (
  name VARCHAR(255),
  run_speed INT2 not null,
  id SERIAL8 primary key
);

CREATE TABLE biting(
  z_id INT8 references zombies(id),
  v_id INT8 references victims(id)
);

INSERT INTO zombies (name, type) 
VALUES ('Gary', 'Runner');

INSERT INTO zombies (name, type) 
VALUES ('Kyle', 'Walker');

INSERT INTO zombies (name, type) 
VALUES ('Mary', 'Drooler');

INSERT INTO victims (name, run_speed) 
VALUES ('Adam', 3);

INSERT INTO victims (name, run_speed) 
VALUES ('Tegan', 7);

INSERT INTO victims (name, run_speed) 
VALUES ('Val', 10);

UPDATE zombies 
SET type = 'Bearded'
WHERE name = 'Mary';

INSERT INTO biting (z_id, v_id) 
VALUES (1, 3);
INSERT INTO biting (z_id, v_id) 
VALUES (1, 2);
INSERT INTO biting (z_id, v_id) 
VALUES (2, 3);

UPDATE victims
SET run_speed = 1
WHERE name = 'Val';

INSERT INTO biting (z_id, v_id)
VALUES (3, 1);


SELECT * FROM zombies;

SELECT * FROM victims;

SELECT * FROM biting;