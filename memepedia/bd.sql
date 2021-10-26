CREATE DATABASE memepedia;

CREATE TABLE memes (id SERIAL, url TEXT, category INTEGER, published_by INTEGER);

CREATE TABLE categories (id SERIAL, name TEXT);

CREATE TABLE users (id SERIAL, name TEXT, email TEXT, password TEXT);

INSERT INTO sessions ("userId", token) VALUES (1, '2a881acf-e69c-49f8-856f-2b447da28498');

INSERT INTO users (name, email, password) VALUES ('Uncle Bob', 'clean@code.com', '$2b$10$0KtR/fAF5O1VTqVxt15gfeFF1DHLCAm.hzzNOvZm8T3CZ8DghZmWK');

INSERT INTO memes (url, category, published_by) VALUES ('https://pbs.twimg.com/media/BQkhcYwCYAAqqsn?format=jpg', 1, 1);

INSERT INTO memes (url, category, published_by) VALUES ('https://i.pinimg.com/564x/61/66/e0/6166e05ca0fde6afb8cedad4ed63074b.jpg', 1, 1);

INSERT INTO memes (url, category, published_by) VALUES ('https://res.cloudinary.com/practicaldev/image/fetch/s--wSXvoMKm--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://833250.smushcdn.com/1694534/wp-content/uploads/2021/06/0_kMsTZtiC0ZXfsiyB.jpeg%3Flossy%3D1%26strip%3D1%26webp%3D1', 1, 1);




