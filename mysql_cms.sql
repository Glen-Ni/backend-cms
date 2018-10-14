CREATE DATABASE IF NOT EXISTS cms;

use cms;

CREATE TABLE users(
		id INT PRIMARY KEY auto_increment,
		username VARCHAR(50) NOT NULL,
		password VARCHAR(50) NOT NULL,
		email VARCHAR(50) NOT NULL,
		avatar VARCHAR(50) NOT NULL,
		gender bit NULL,
		create_time DATE NOT NULL,
		modify_time DATE NOT NULL
);

CREATE TABLE topics(
		id INT PRIMARY KEY auto_increment,
		title VARCHAR(100) NOT NULL,
		content TEXT NOT NULL,
		user_id INT NOT NULL,
		create_time DATE NOT NULL,
		modify_time DATE NOT NULL
		
);

CREATE TABLE comments(
		id INT PRIMARY KEY auto_increment,
		content TEXT NOT NULL,
		create_time DATE NOT NULL,
		modify_time DATE NOT NULL,
		article_id INT NOT NULL,
		user_id INT NOT NULL,
		reply_id INT NULL
)