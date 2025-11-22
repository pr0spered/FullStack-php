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

CREATE TABLE theatres (
    theatre_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    address VARCHAR(255)
);

CREATE TABLE screens (
    screen_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    capacity INT,
    seat_map LONGTEXT,
    theatre_id INT,
    FOREIGN KEY (theatre_id) REFERENCES theatres(theatre_id)
);

CREATE TABLE shows (
    show_id INT AUTO_INCREMENT PRIMARY KEY,
    date DATE,
    time TIME,
    movie_id INT,
    screen_id INT,
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    FOREIGN KEY (screen_id) REFERENCES screens(screen_id),
);

CREATE TABLE tickets (
    ticket_id INT AUTO_INCREMENT PRIMARY KEY,
    seat_number VARCHAR(100),
    show_id INT,
    FOREIGN KEY (show_id) REFERENCES shows(show_id),
    UNIQUE(seat_number, show_id)
);