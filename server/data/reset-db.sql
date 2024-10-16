DROP TABLE IF EXISTS notes;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL
);

CREATE TABLE notes (
  user_id INT REFERENCES users(id),
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  description VARCHAR(255) NOT NULL,
  done BOOLEAN NOT NULL DEFAULT FALSE
);

INSERT INTO users (name, email) VALUES
  ('Alice', 'alice@alice.com'),
  ('Bob', 'bob@bob.com'),
  ('Charlie', 'charlie@charlie.com');

  INSERT INTO notes (user_id, title,description, done) VALUES
  (1, 'Buy Coffee', 'also get some milk', FALSE),
  (2, 'Dentist', 'appointment on friday', FALSE),
  (1, 'Call Jeff', 'ideas for secret invention', FALSE);
