--
-- Creating Comment table and inserting example comments.
-- Create a database and a user having access to this database,
-- this must be done by hand, see commented rows on how to do it.
-- Default database SQL, NOTE that all database name and account details should
-- be replaced by actual information
--



--
-- Create a database for test and user
--
-- CREATE DATABASE IF NOT EXISTS anaxdb;
-- GRANT ALL ON anaxdb.* TO anax@localhost IDENTIFIED BY 'anax';
-- USE anaxdb;

-- Ensure UTF8 on the database connection
SET NAMES utf8;



--
-- Table Comment
--
DROP TABLE IF EXISTS rv1_Comment;
CREATE TABLE rv1_Comment (
    `id` INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `post_id` INTEGER NOT NULL,
    `parent_id` INTEGER NOT NULL,
    `user` INTEGER DEFAULT NULL,
    `created` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `edited` DATETIME ON UPDATE CURRENT_TIMESTAMP,
    `content` TEXT NOT NULL,
    `upvote` INTEGER NOT NULL,
    `downvote` INTEGER NOT NULL,
    `deleted` TINYINT(1) DEFAULT NULL,

    FOREIGN KEY (`user`) REFERENCES `rv1_User` (`id`) ON DELETE SET NULL
) ENGINE INNODB CHARACTER SET utf8 COLLATE utf8_swedish_ci;

INSERT INTO rv1_Comment(post_id, parent_id, user, created, edited, content, upvote, downvote) VALUES
    (1, 0, 3, "2016-07-21 12:00:00", "2017-07-22 13:05:00", "Jag älskar Glass", 3, 2),
    (1, 0, 4, "2015-07-22 12:00:00", NULL, "Sandwich mums", 10, 0),
    (2, 0, 3, "2017-07-21 12:00:00", NULL, "Gillar inte glass.", 3, 2),
    (2, 0, 3, "2016-07-21 12:00:00", NULL, "Nej isglass", 3, 2),
    (1, 1, 5, "2017-09-10 12:00:00", "2017-09-20 12:00:00", "varför", 0, 5)
;
