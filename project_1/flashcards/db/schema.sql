DROP TABLE IF EXISTS categories;


CREATE TABLE categories(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL

);

DROP TABLE IF EXISTS flashcards;

CREATE TABLE flashcards(
  id SERIAL PRIMARY KEY,
  question TEXT NOT NULL,
  answer TEXT NOT NULL,
  score INTEGER,
  is_answered BOOLEAN,
  created_at timestamp,
  category_id INTEGER

);
# keep the drop tables together, eliminate the whitespaces at lines 3,7,20. 
