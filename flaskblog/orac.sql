CREATE TABLE User2 (
    id integer primary key,
    username varchar(20) NOT NULL,
    email varchar(20) NOT NULL,
    image_file varchar(20) not null,
    password varchar(60) not null
);

CREATE TABLE Post (
    id integer,
    title varchar(100) not null,
    date_posted varchar(20),
    content varchar(255) NOT NULL,
    user_id Integer not null,
    FOREIGN KEY (id) REFERENCES User2(id)
);

INSERT INTO User2 
(id, username, email, image_file, password)
VALUES 
('1','CoreyMS','CoreyMSch@gmail.com','default.jpg',
'$2b$12$o0t2MoUK3GK4KY7rpC7iL.1QQyaEimEQa79aHmya6LvIFCspg/.rG');