CREATE TABLE  IF NOT EXISTS Productos (
id SERIAL PRIMARY KEY,
name VARCHAR(50) NOT NULL,
description VARCHAR(300) NOT NULL,
price float NOT NULL,
stock int NOT NULL
);