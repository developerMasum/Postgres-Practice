-- Active: 1708921245946@@127.0.0.1@5432@ph
CREATE Table "user" (
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
)

CREATE Table post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id)
)

ALTER TABLE post 
alter COLUMN user_id set NOT NULL

INSERT INTO "user"(username)VALUES('akash'),('batash'),('nodi'),('sagor')

INSERT INTO post (title, user_id) VALUES
    ('First Post', 2),
    ('Amazing Views', 2),
    ('Travel Adventures', 3),
    ('Exploring Nature', 2),
    ('City Life', 4);

SELECT * from "user"

SELECT * from "post"



DROP TABLE "user"

DROP TABLE post

-------------------------------------------------------------------------------



----------ON DELETE CASCADE
  -- related delete ()
CREATE Table post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id) ON DELETE CASCADE
)

DELETE FROM "user"
  WHERE id = 1;

----------ON DELETE set NULL
  -- related delete ()

  CREATE Table post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id) ON DELETE set NULL
)

DELETE FROM "user"
  WHERE id = 4;


  -------------table key join ph
   SELECT * FROM post 
       JOIN "user" ON post.user_id = "user".id

   SELECT title, username FROM post 
       JOIN "user" ON post.user_id = "user".id

 SELECT * FROM post as p
   JOIN "user" as u on p.user_id = u.id;

-- left and right join ()
   SELECT * FROM post 
     left  JOIN "user" ON post.user_id = "user".id

   SELECT * FROM post 
     RIGHT  JOIN "user" ON post.user_id = "user".id

   SELECT * FROM post 
     FULL OUTER  JOIN "user" ON post.user_id = "user".id
