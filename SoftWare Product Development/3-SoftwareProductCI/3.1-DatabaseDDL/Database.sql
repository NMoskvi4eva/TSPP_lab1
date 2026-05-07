-- Створення таблиці користувачів
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    login VARCHAR(50) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    respect_points INT DEFAULT 0
);

-- Створення таблиці записів температури
CREATE TABLE temperature_records (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    temp_value DECIMAL(5, 2) NOT NULL,
    recorded_at DATETIME NOT NULL,
    is_comfortable BOOLEAN,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Створення таблиці літературних творів
CREATE TABLE books (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(100) NOT NULL,
    genre VARCHAR(50)
);

-- Створення таблиці рецензій
CREATE TABLE reviews (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    book_id INT,
    content TEXT NOT NULL,
    rating INT CHECK (rating BETWEEN 1 AND 10),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (book_id) REFERENCES books(id)
);
