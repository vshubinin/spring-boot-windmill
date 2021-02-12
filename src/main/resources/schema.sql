CREATE TABLE users (
  username varchar(255) UNIQUE NOT NULL,
  country varchar(255) DEFAULT NULL,
  full_name varchar(255) DEFAULT NULL,
  password varchar(255) DEFAULT NULL,
  role varchar(255) DEFAULT NULL,
  PRIMARY KEY (username)
);

INSERT INTO users (username, country, full_name, password, role) VALUES
	('admin', 'UK', 'Igor', '$2a$10$Z5F2Elzpnwx6kp0CYLmdo.Tcv8SZWMANvlr/PWr6.IxWWXnAi7KNC', 'ROLE_ADMIN'),
	('user', 'USA', 'Vova', '$2a$10$KFsPE4H9buyijUht5nQU..qdpkDRA5q6zPeACtLVWAaDh3kMzPxXG', 'ROLE_USER');