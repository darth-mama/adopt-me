
DROP DATABASE IF EXISTS  adopt;

CREATE DATABASE adopt;

\c adopt

CREATE TABLE pets
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  species TEXT NOT NULL,
  photo_url TEXT,
  age INT,
  notes TEXT,
  available BOOLEAN NOT NULL DEFAULT TRUE
);

INSERT INTO pets
  (name, species, photo_url, age, notes, available)
VALUES
  ('Golden', 'dog', null, 3, 'Unoriginal name', 't'),
  ('Max', 'Princess of Wales', null, 4, 'Chatty', 't'),
  ('Luci', 'cat', null, 4, null, 't'),
  ('Cyn', 'cat', null, 1, null, 't');
