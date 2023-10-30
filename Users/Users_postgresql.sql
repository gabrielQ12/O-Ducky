CREATE DATABASE USERS;
\c USERS;

CREATE TABLE ARTICLE (
  article_identifier VARCHAR(42),
  title VARCHAR(42),
  content VARCHAR(42),
  pic VARCHAR(42),
  price VARCHAR(42),
  PRIMARY KEY (article_identifier)
);

CREATE TABLE COMMENTS (
  user_identifier VARCHAR(42),
  article_identifier VARCHAR(42),
  content VARCHAR(42),
  PRIMARY KEY (user_identifier, article_identifier)
);

CREATE TABLE CONTAINS (
  article_identifier VARCHAR(42),
  order_identifier VARCHAR(42),
  quantity VARCHAR(42),
  PRIMARY KEY (article_identifier, order_identifier)
);

CREATE TABLE ORDER (
  order_identifier VARCHAR(42),
  status VARCHAR(42),
  user_identifier VARCHAR(42),
  PRIMARY KEY (order_identifier)
);

CREATE TABLE USER (
  user_identifier VARCHAR(42),
  name VARCHAR(42),
  mail VARCHAR(42),
  password VARCHAR(42),
  PRIMARY KEY (user_identifier)
);

ALTER TABLE COMMENTS ADD FOREIGN KEY (article_identifier) REFERENCES ARTICLE (article_identifier);
ALTER TABLE COMMENTS ADD FOREIGN KEY (user_identifier) REFERENCES USER (user_identifier);
ALTER TABLE CONTAINS ADD FOREIGN KEY (order_identifier) REFERENCES ORDER (order_identifier);
ALTER TABLE CONTAINS ADD FOREIGN KEY (article_identifier) REFERENCES ARTICLE (article_identifier);
ALTER TABLE ORDER ADD FOREIGN KEY (user_identifier) REFERENCES USER (user_identifier);