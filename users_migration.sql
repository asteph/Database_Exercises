USE codeup_test_db;

DROP TABLE IF EXISTS users;

CREATE TABLE users(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	username VARCHAR(255) NOT NULL,
	password VARCHAR(255) NOT NULL,
	current_account_balance DECIMAL(15, 2),
	phonenumber VARCHAR(13) NOT NULL,
	member_since DATE NOT NULL,
	last_login_time DATETIME NOT NULL,
	customer_history TEXT, 
	UNIQUE(username),
	PRIMARY KEY (id)
);