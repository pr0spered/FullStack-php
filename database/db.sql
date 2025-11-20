CREATE DATABASE box_office;

USE box_office;

CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(250),
    password VARCHAR(250)
);

CREATE TABLE movies (
    movie_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    poster VARCHAR(100)
);

CREATE TABLE shows (
    show_id INT AUTO_INCREMENT PRIMARY KEY,
    date DATE,
    time TIME,
    movie_id INT,
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);