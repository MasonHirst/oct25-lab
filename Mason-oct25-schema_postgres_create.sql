CREATE TABLE users (
	id serial primary key NOT NULL,
	name varchar(64) NOT NULL,
	email varchar(64) NOT NULL UNIQUE,
	password varchar(255) NOT NULL
);

CREATE TABLE ingredients (
	id SERIAL PRIMARY KEY NOT NULL,
	name varchar(32) NOT NULL UNIQUE
);

CREATE TABLE recipes (
	id serial primary key NOT NULL,
	user_id int NOT NULL REFERENCES users(id),
	name varchar(64) NOT NULL,
	ingredient_id integer NOT NULL REFERENCES ingredients(id),
	instructions TEXT,
	public BOOLEAN NOT NULL
); 

CREATE TABLE occasions (
	id serial primary key NOT NULL,
	user_id int NOT NULL REFERENCES users(id),
	name varchar(32) NOT NULL,
	recipe_id int NOT NULL REFERENCES recipes(id)
	);

CREATE TABLE grocery_list (
	id serial primary key NOT NULL,
	user_id int NOT NULL REFERENCES users(id),
	ingredient_id int NOT NULL REFERENCES ingredients(id)
);


`



