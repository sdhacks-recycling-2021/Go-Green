CREATE TABLE IF NOT EXISTS posts(
    id INT(4) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    date_posted UNSIGNED BIGINT(19) NOT NULL,
    location VARCHAR(255) NOT NULL,
    num_large_container INT(4),
    num_small_container INT(4);
)

CREATE TABLE IF NOT EXISTS users(
    id INT(4) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    location VARCHAR(255),
    password VARCHAR(255) NOT NULL,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    user_type VARCHAR(10);
)