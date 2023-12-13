CREATE TABLE newdb.User (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(120) NOT NULL,
    image_file VARCHAR(100),
    password VARCHAR(100) NOT NULL
);


CREATE TABLE newdb.Post (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    date_posted DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    content TEXT NOT NULL,
    user_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (user_id) REFERENCES newdb.User(id)
);

INSERT INTO newdb.User (username, email, password) VALUES ('Corey', 'C@demo.com', 'password');
INSERT INTO newdb.User (username, email, password) VALUES ('JohnDoe', 'jd@demo.com', 'password');

INSERT INTO newdb.Post (title, content, user_id) VALUES ('Blog 1', 'First Post Content!', 1);
INSERT INTO newdb.Post (title, content, user_id) VALUES ('Blog 2', 'Second Post Content!', 2);

select * from newdb.User;

select * from newdb.Post;



ALTER TABLE newdb.User ADD(
    firstname VARCHAR(100) NOT NULL,
    lastname VARCHAR(100) NOT NULL,
    phonenumber VARCHAR(100)
);
