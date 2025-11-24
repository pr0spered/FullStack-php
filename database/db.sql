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

CREATE TABLE transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    payment_method VARCHAR(100),
    date_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    user_id INT,
    amount INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE tickets (
    ticket_id INT AUTO_INCREMENT PRIMARY KEY,
    seat_number VARCHAR(100),
    show_id INT,
    transaction_id INT,
    FOREIGN KEY (show_id) REFERENCES shows(show_id),
    FOREIGN KEY (transaction_id) REFERENCES transactions(transaction_id),
    UNIQUE(seat_number, show_id)
);

CREATE TABLE locks (
    lock_id INT AUTO_INCREMENT PRIMARY KEY,
    seat_number VARCHAR(100),
    user_id INT,
    show_id INT,
    locking_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (show_id) REFERENCES shows(show_id)
);

SET GLOBAL event_scheduler = 'ON';
CREATE EVENT clear_locks ON SCHEDULE EVERY 1 MINUTE DO DELETE FROM locks WHERE locking_time < (NOW() - INTERVAL 5 MINUTE);

CREATE TABLE ratings (
    user_id INT,
    movie_id INT,
    rating INT,
    PRIMARY KEY (user_id, movie_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);