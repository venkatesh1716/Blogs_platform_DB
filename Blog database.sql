SELECT user_name,count(uid) FROM user_login GROUP BY user_name;
/* Delimiter changed to ; */
/* Connecting to 127.0.0.1 via MariaDB or MySQL (TCP/IP), username root, using password: Yes ... */
SELECT CONNECTION_ID();
/* Connected. Thread-ID: 43 */
/* Characterset: utf8mb4 */
SHOW STATUS;
SELECT NOW();
SHOW VARIABLES;
SHOW DATABASES;
SHOW OPEN TABLES FROM blog_platform WHERE `in_use`!=0;
USE `blog_platform`;
/* Entering session "Unnamed" */
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='blog_platform';
SHOW TABLE STATUS FROM `blog_platform`;
SHOW FUNCTION STATUS WHERE `Db`='blog_platform';
SHOW PROCEDURE STATUS WHERE `Db`='blog_platform';
SHOW TRIGGERS FROM `blog_platform`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='information_schema';
SHOW TABLE STATUS FROM `information_schema`;
SHOW FUNCTION STATUS WHERE `Db`='information_schema';
SHOW PROCEDURE STATUS WHERE `Db`='information_schema';
SHOW TRIGGERS FROM `information_schema`;
SHOW EVENTS FROM `information_schema`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='blog_platform';
SHOW CREATE TABLE `blog_platform`.`user_login`;
SHOW COLLATION;
SHOW ENGINES;
SELECT user_name,count(uid) FROM user_login GROUP BY user_name;
/* Affected rows: 0  Found rows: 1  Warnings: 0  Duration for 1 query: 0.031 sec. */
SHOW CREATE TABLE `blog_platform`.`shares`;
SELECT * FROM `blog_platform`.`shares` LIMIT 1000;
SHOW CREATE TABLE `blog_platform`.`shares`;
SHOW CREATE TABLE `blog_platform`.`user_login`;
SELECT * FROM `blog_platform`.`user_login` LIMIT 1000;
SHOW CREATE TABLE `blog_platform`.`user_login`;
UPDATE `blog_platform`.`user_login` SET `no_of_posts`='' WHERE  `user_name`='vicky';
/* SQL Error (1366): Incorrect integer value: '' for column 'no_of_posts' at row 1 */
UPDATE `blog_platform`.`user_login` SET `no_of_posts`='' WHERE  `user_name`='vicky';
/* SQL Error (1366): Incorrect integer value: '' for column 'no_of_posts' at row 1 */
SHOW CREATE TABLE `blog_platform`.`posts`;
SELECT * FROM `blog_platform`.`posts` LIMIT 1000;
SHOW CREATE TABLE `blog_platform`.`posts`;
UPDATE `blog_platform`.`posts` SET `no_of_posts`='3' WHERE  `no_of_posts`=00000000003 AND `no_of_posts_del`=2 AND `time_del`='2019-06-10 10:56:55' AND `user_name`='vicky' LIMIT 1;
UPDATE `blog_platform`.`posts` SET `no_of_posts`='3' WHERE  `no_of_posts`=00000000003 AND `no_of_posts_del`=2 AND `time_del`='2019-06-10 10:56:55' AND `user_name`='vicky' LIMIT 1;
UPDATE `blog_platform`.`posts` SET `no_of_posts`='3' WHERE  `no_of_posts`=00000000003 AND `no_of_posts_del`=2 AND `time_del`='2019-06-10 10:56:55' AND `user_name`='vicky' LIMIT 1;
UPDATE `blog_platform`.`posts` SET `no_of_posts`='3' WHERE  `no_of_posts`=00000000003 AND `no_of_posts_del`=2 AND `time_del`='2019-06-10 10:56:55' AND `user_name`='vicky' LIMIT 1;
SHOW CREATE TABLE `blog_platform`.`shares`;
SELECT * FROM `blog_platform`.`shares` LIMIT 1000;
SHOW CREATE TABLE `blog_platform`.`shares`;
SHOW CREATE TABLE `blog_platform`.`posts`;
SELECT * FROM `blog_platform`.`posts` LIMIT 1000;
SHOW CREATE TABLE `blog_platform`.`posts`;
SHOW CREATE TABLE `user_login`;
SELECT `user_name`, LEFT(`password`, 256) FROM `user_login` GROUP BY `user_name` ORDER BY `password` LIMIT 1000;
INSERT INTO `blog_platform`.`posts` (`no_of_posts`, `no_of_posts_del`, `time_del`, `user_name`) VALUES ('5', '3', '2019-06-10 13:37:36', 'vicky');
SELECT `no_of_posts`, `no_of_posts_del`, `time_del`, `user_name` FROM `blog_platform`.`posts` WHERE  `no_of_posts`=5 AND `no_of_posts_del`=3 AND `time_del`='2019-06-10 13:37:36' AND `user_name`='vicky' LIMIT 1;
SHOW CREATE TABLE `blog_platform`.`user_login`;
SELECT * FROM `blog_platform`.`user_login` LIMIT 1000;
SHOW CREATE TABLE `blog_platform`.`user_login`;
UPDATE `blog_platform`.`user_login` SET `no_of_posts`='3' WHERE  `user_name`='vicky';
SELECT `uid`, `user_name`, `password`, `no_of_posts`, `DOB`, `phone_No` FROM `blog_platform`.`user_login` WHERE  `user_name`='vicky';
INSERT INTO `blog_platform`.`user_login` (`uid`, `user_name`, `password`, `no_of_posts`, `DOB`, `phone_No`) VALUES ('000', 'virat', 'virat', '5', '2019-06-10', '2542655');
SELECT `uid`, `user_name`, `password`, `no_of_posts`, `DOB`, `phone_No` FROM `blog_platform`.`user_login` WHERE  `user_name`='virat';
SELECT 1 FROM `posts` LIMIT 1;
SHOW COLUMNS FROM `posts`;
SHOW CREATE TABLE `blog_platform`.`posts`;
ALTER TABLE `user_login`
	ADD CONSTRAINT `FK_user_login_posts` FOREIGN KEY (`no_of_posts`) REFERENCES `posts` (`no_of_posts`);
/* SQL Error (1822): Failed to add the foreign key constraint. Missing index for constraint 'FK_user_login_posts' in the referenced table 'posts' */
SHOW CREATE TABLE `blog_platform`.`shares`;
SHOW CREATE TABLE `blog_platform`.`user_login`;
ALTER TABLE `user_login`
	ADD COLUMN `no_of_shares` INT NOT NULL AFTER `phone_No`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='blog_platform';
SHOW TABLE STATUS FROM `blog_platform`;
SHOW FUNCTION STATUS WHERE `Db`='blog_platform';
SHOW PROCEDURE STATUS WHERE `Db`='blog_platform';
SHOW TRIGGERS FROM `blog_platform`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='blog_platform';
SHOW CREATE TABLE `blog_platform`.`user_login`;
/* Entering session "Unnamed" */
SHOW CREATE TABLE `blog_platform`.`user_login`;
SHOW CREATE TABLE `blog_platform`.`shares`;
SHOW CREATE TABLE `blog_platform`.`user_login`;
SELECT 1 FROM `shares` LIMIT 1;
SHOW COLUMNS FROM `shares`;
SHOW CREATE TABLE `blog_platform`.`shares`;
ALTER TABLE `user_login`
	ADD CONSTRAINT `FK_user_login_shares` FOREIGN KEY (`no_of_shares`) REFERENCES `shares` (`no_of_shares`);
/* SQL Error (1822): Failed to add the foreign key constraint. Missing index for constraint 'FK_user_login_shares' in the referenced table 'shares' */
ALTER TABLE `user_login`
	ADD CONSTRAINT `FK_user_login_shares` FOREIGN KEY (`no_of_shares`) REFERENCES `shares` (`no_of_shares`);
/* SQL Error (1822): Failed to add the foreign key constraint. Missing index for constraint 'FK_user_login_shares' in the referenced table 'shares' */
SHOW CREATE TABLE `blog_platform`.`shares`;
SHOW CREATE TABLE `blog_platform`.`user_login`;
SHOW CREATE TABLE `blog_platform`.`shares`;
SHOW CREATE TABLE `blog_platform`.`user_login`;
SHOW CREATE TABLE `blog_platform`.`shares`;
SHOW CREATE TABLE `blog_platform`.`user_login`;
SHOW CREATE TABLE `blog_platform`.`shares`;
SHOW CREATE TABLE `blog_platform`.`user_login`;
SELECT 1 FROM `shares` LIMIT 1;
SHOW COLUMNS FROM `shares`;
SHOW CREATE TABLE `blog_platform`.`shares`;
ALTER TABLE `user_login`
	ADD CONSTRAINT `FK_user_login_shares` FOREIGN KEY (`no_of_shares`) REFERENCES `shares` (`no_of_shares`);
/* SQL Error (1822): Failed to add the foreign key constraint. Missing index for constraint 'FK_user_login_shares' in the referenced table 'shares' */
SHOW CREATE TABLE `blog_platform`.`likes`;
SHOW CREATE TABLE `blog_platform`.`posts`;
SELECT * FROM `blog_platform`.`posts` LIMIT 1000;
SHOW CREATE TABLE `blog_platform`.`posts`;
SHOW CREATE TABLE `user_login`;
SELECT `user_name`, LEFT(`password`, 256) FROM `user_login` GROUP BY `user_name` ORDER BY `password` LIMIT 1000;
INSERT INTO `blog_platform`.`posts` (`no_of_posts`, `no_of_posts_del`, `time_del`, `user_name`) VALUES ('5', '3', '2019-06-10 13:52:45', 'vicky');
SELECT `no_of_posts`, `no_of_posts_del`, `time_del`, `user_name` FROM `blog_platform`.`posts` WHERE  `no_of_posts`=5 AND `no_of_posts_del`=3 AND `time_del`='2019-06-10 13:52:45' AND `user_name`='vicky' LIMIT 1;
ALTER TABLE `posts`
	ALTER `no_of_posts` DROP DEFAULT;
ALTER TABLE `posts`
	CHANGE COLUMN `no_of_posts` `no_of_posts` INT(11) NOT NULL FIRST;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='blog_platform';
SHOW TABLE STATUS FROM `blog_platform`;
SHOW FUNCTION STATUS WHERE `Db`='blog_platform';
SHOW PROCEDURE STATUS WHERE `Db`='blog_platform';
SHOW TRIGGERS FROM `blog_platform`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='blog_platform';
SHOW CREATE TABLE `blog_platform`.`posts`;
/* Entering session "Unnamed" */
SHOW CREATE TABLE `blog_platform`.`posts`;
SHOW CREATE TABLE `blog_platform`.`user_login`;
SELECT 1 FROM `posts` LIMIT 1;
SHOW COLUMNS FROM `posts`;
SHOW CREATE TABLE `blog_platform`.`posts`;
ALTER TABLE `user_login`
	ALTER `no_of_posts` DROP DEFAULT;
ALTER TABLE `user_login`
	CHANGE COLUMN `no_of_posts` `no_of_posts` INT(11) NOT NULL AFTER `password`,
	ADD CONSTRAINT `FK_user_login_posts` FOREIGN KEY (`no_of_posts`) REFERENCES `posts` (`no_of_posts`);
/* SQL Error (1822): Failed to add the foreign key constraint. Missing index for constraint 'FK_user_login_posts' in the referenced table 'posts' */
ALTER TABLE `user_login`
	ALTER `no_of_posts` DROP DEFAULT;
ALTER TABLE `user_login`
	CHANGE COLUMN `no_of_posts` `no_of_posts` INT(11) NOT NULL AFTER `password`,
	ADD CONSTRAINT `FK_user_login_posts` FOREIGN KEY (`no_of_posts`) REFERENCES `posts` (`no_of_posts`);
/* SQL Error (1822): Failed to add the foreign key constraint. Missing index for constraint 'FK_user_login_posts' in the referenced table 'posts' */
ALTER TABLE `user_login`
	ALTER `no_of_posts` DROP DEFAULT;
ALTER TABLE `user_login`
	CHANGE COLUMN `no_of_posts` `no_of_posts` INT(11) NOT NULL AFTER `password`,
	ADD CONSTRAINT `FK_user_login_posts` FOREIGN KEY (`no_of_posts`) REFERENCES `posts` (`no_of_posts`);
/* SQL Error (1822): Failed to add the foreign key constraint. Missing index for constraint 'FK_user_login_posts' in the referenced table 'posts' */

	
	
	
	
	
	
	
	SHOW CREATE TABLE `blog_platform`.`likes`;
ALTER TABLE `likes`
	ALTER `No_Of_Likes` DROP DEFAULT,
	ALTER `Time_liked` DROP DEFAULT;
ALTER TABLE `likes`
	CHANGE COLUMN `No_Of_Likes` `No_Of_Likes` INT(11) NOT NULL FIRST,
	CHANGE COLUMN `Time_liked` `Time_liked` VARCHAR(50) NOT NULL AFTER `No_Of_Likes`,
	ADD COLUMN `user_name` VARCHAR(50) NOT NULL AFTER `Time_liked`;


ALTER TABLE `comments`
	ADD COLUMN `user_name` VARCHAR(50) NOT NULL AFTER `comments_status`;
	

SHOW CREATE TABLE `blog_platform`.`comments`;
/* Entering session "Unnamed" */
SHOW CREATE TABLE `blog_platform`.`comments`;
SHOW CREATE TABLE `blog_platform`.`likes`;
SHOW CREATE TABLE `blog_platform`.`posts`;
ALTER TABLE `posts`
	ADD COLUMN `user_name` VARCHAR(50) NULL AFTER `posts_deleted`;


SHOW CREATE TABLE `blog_platform`.`posts`;
SHOW CREATE TABLE `blog_platform`.`shares`;
ALTER TABLE `shares`
	ADD COLUMN `user_name` VARCHAR(50) NULL AFTER `time`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='blog_platform';
SHOW TABLE STATUS FROM `blog_platform`;
SHOW FUNCTION STATUS WHERE `Db`='blog_platform';
SHOW PROCEDURE STATUS WHERE `Db`='blog_platform';
SHOW TRIGGERS FROM `blog_platform`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='blog_platform';
SHOW CREATE TABLE `blog_platform`.`shares`;
/* Entering session "Unnamed" */
SHOW CREATE TABLE `blog_platform`.`shares`;
SHOW CREATE TABLE `blog_platform`.`user_login`;
SHOW CREATE TABLE `blog_platform`.`shares`;
SHOW CREATE TABLE `blog_platform`.`user_login`;
SHOW CREATE TABLE `blog_platform`.`likes`;
SELECT 1 FROM `user_login` LIMIT 1;
SHOW COLUMNS FROM `user_login`;
ALTER TABLE `likes`
	ADD CONSTRAINT `FK_likes_user_login` FOREIGN KEY (`user_name`) REFERENCES `user_login` () ON UPDATE CASCADE ON DELETE NO ACTION;
/* SQL Error (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ') ON UPDATE CASCADE ON DELETE NO ACTION' at line 2 */
ALTER TABLE `likes`
	ADD CONSTRAINT `FK_likes_user_login` FOREIGN KEY (`user_name`) REFERENCES `user_login` () ON UPDATE CASCADE ON DELETE RESTRICT;
/* SQL Error (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ') ON UPDATE CASCADE ON DELETE RESTRICT' at line 2 */
SELECT 1 FROM `user_login` LIMIT 1;
SHOW COLUMNS FROM `user_login`;
SHOW CREATE TABLE `blog_platform`.`user_login`;
ALTER TABLE `likes`
	ADD CONSTRAINT `FK_likes_user_login` FOREIGN KEY (`user_name`) REFERENCES `user_login` (`user_name`) ON UPDATE CASCADE ON DELETE NO ACTION;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='blog_platform';
SHOW TABLE STATUS FROM `blog_platform`;
SHOW FUNCTION STATUS WHERE `Db`='blog_platform';
SHOW PROCEDURE STATUS WHERE `Db`='blog_platform';
SHOW TRIGGERS FROM `blog_platform`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='blog_platform';
ALTER TABLE `likes`
	ADD CONSTRAINT `FK_likes_user_login` FOREIGN KEY (`user_name`) REFERENCES `user_login` (`user_name`) ON UPDATE CASCADE ON DELETE NO ACTION;
/* SQL Error (1826): Duplicate foreign key constraint name 'FK_likes_user_login' */
SHOW CREATE TABLE `blog_platform`.`likes`;
/* Entering session "Unnamed" */
SHOW CREATE TABLE `blog_platform`.`likes`;
ALTER TABLE `likes`
	DROP FOREIGN KEY `FK_likes_user_login`;
ALTER TABLE `likes`
	ADD CONSTRAINT `FK_likes_user_login` FOREIGN KEY (`user_name`) REFERENCES `user_login` (`user_name`) ON UPDATE RESTRICT;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='blog_platform';
SHOW TABLE STATUS FROM `blog_platform`;
SHOW FUNCTION STATUS WHERE `Db`='blog_platform';
SHOW PROCEDURE STATUS WHERE `Db`='blog_platform';
SHOW TRIGGERS FROM `blog_platform`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='blog_platform';
SHOW CREATE TABLE `blog_platform`.`likes`;
/* Entering session "Unnamed" */
SHOW CREATE TABLE `blog_platform`.`likes`;
SHOW CREATE TABLE `blog_platform`.`comments`;
SELECT 1 FROM `user_login` LIMIT 1;
SHOW COLUMNS FROM `user_login`;
SHOW CREATE TABLE `blog_platform`.`user_login`;
ALTER TABLE `comments`
	ADD CONSTRAINT `FK_comments_user_login` FOREIGN KEY (`user_name`) REFERENCES `user_login` (`user_name`);
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='blog_platform';
SHOW TABLE STATUS FROM `blog_platform`;
SHOW FUNCTION STATUS WHERE `Db`='blog_platform';
SHOW PROCEDURE STATUS WHERE `Db`='blog_platform';
SHOW TRIGGERS FROM `blog_platform`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='blog_platform';
SHOW CREATE TABLE `blog_platform`.`comments`;
/* Entering session "Unnamed" */
SHOW CREATE TABLE `blog_platform`.`comments`;
SHOW CREATE TABLE `blog_platform`.`likes`;
SHOW CREATE TABLE `blog_platform`.`posts`;
SELECT 1 FROM `user_login` LIMIT 1;
SHOW COLUMNS FROM `user_login`;
SHOW CREATE TABLE `blog_platform`.`user_login`;
ALTER TABLE `posts`
	ADD CONSTRAINT `FK_posts_user_login` FOREIGN KEY (`user_name`) REFERENCES `user_login` (`user_name`);
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='blog_platform';
SHOW TABLE STATUS FROM `blog_platform`;
SHOW FUNCTION STATUS WHERE `Db`='blog_platform';
SHOW PROCEDURE STATUS WHERE `Db`='blog_platform';
SHOW TRIGGERS FROM `blog_platform`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='blog_platform';
SHOW CREATE TABLE `blog_platform`.`posts`;
/* Entering session "Unnamed" */
SHOW CREATE TABLE `blog_platform`.`posts`;
SHOW CREATE TABLE `blog_platform`.`shares`;
SELECT 1 FROM `user_login` LIMIT 1;
SHOW COLUMNS FROM `user_login`;
SHOW CREATE TABLE `blog_platform`.`user_login`;
ALTER TABLE `shares`
	ADD CONSTRAINT `FK_shares_user_login` FOREIGN KEY (`user_name`) REFERENCES `user_login` (`user_name`);
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='blog_platform';
SHOW TABLE STATUS FROM `blog_platform`;
SHOW FUNCTION STATUS WHERE `Db`='blog_platform';
SHOW PROCEDURE STATUS WHERE `Db`='blog_platform';
SHOW TRIGGERS FROM `blog_platform`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='blog_platform';
SHOW CREATE TABLE `blog_platform`.`shares`;
/* Entering session "Unnamed" */
SHOW CREATE TABLE `blog_platform`.`shares`;
SHOW CREATE TABLE `blog_platform`.`admin_login`;
SELECT * FROM `blog_platform`.`admin_login` LIMIT 1000;
SHOW CREATE TABLE `blog_platform`.`admin_login`;
INSERT INTO `blog_platform`.`admin_login` (`Admin_name`, `Admin_Pwd`) VALUES ('TTS', 'Trimind');
SELECT `Admin_name`, `Admin_Pwd` FROM `blog_platform`.`admin_login` WHERE  `Admin_name`='TTS' AND `Admin_Pwd`='Trimind' LIMIT 1;
INSERT INTO `blog_platform`.`admin_login` (`Admin_name`, `Admin_Pwd`) VALUES ('hello', 'hello');
SELECT `Admin_name`, `Admin_Pwd` FROM `blog_platform`.`admin_login` WHERE  `Admin_name`='hello' AND `Admin_Pwd`='hello' LIMIT 1;
DELETE FROM `blog_platform`.`admin_login` WHERE  `Admin_name`='hello' AND `Admin_Pwd`='hello' LIMIT 1;
DELETE FROM `blog_platform`.`admin_login` WHERE  `Admin_name`='admin' AND `Admin_Pwd`='vicky' LIMIT 1;
INSERT INTO `blog_platform`.`admin_login` (`Admin_name`, `Admin_Pwd`) VALUES ('admin', 'admin');
SELECT `Admin_name`, `Admin_Pwd` FROM `blog_platform`.`admin_login` WHERE  `Admin_name`='admin' AND `Admin_Pwd`='admin' LIMIT 1;
SHOW CREATE TABLE `blog_platform`.`user_login`;
SELECT * FROM `blog_platform`.`user_login` LIMIT 1000;
SHOW CREATE TABLE `blog_platform`.`user_login`;
ALTER TABLE `user_login`
	ALTER `phone_No` DROP DEFAULT;
ALTER TABLE `user_login`
	CHANGE COLUMN `phone_No` `phone_No` BIGINT NOT NULL AFTER `DOB`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='blog_platform';
SHOW TABLE STATUS FROM `blog_platform`;
SHOW FUNCTION STATUS WHERE `Db`='blog_platform';
SHOW PROCEDURE STATUS WHERE `Db`='blog_platform';
SHOW TRIGGERS FROM `blog_platform`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='blog_platform';
ALTER TABLE `user_login`
	ALTER `phone_No` DROP DEFAULT;
ALTER TABLE `user_login`
	CHANGE COLUMN `phone_No` `phone_No` BIGINT NOT NULL AFTER `DOB`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='blog_platform';
SHOW TABLE STATUS FROM `blog_platform`;
SHOW FUNCTION STATUS WHERE `Db`='blog_platform';
SHOW PROCEDURE STATUS WHERE `Db`='blog_platform';
SHOW TRIGGERS FROM `blog_platform`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='blog_platform';
SHOW CREATE TABLE `blog_platform`.`user_login`;
/* Entering session "Unnamed" */
SHOW CREATE TABLE `blog_platform`.`user_login`;
SHOW CREATE TABLE `blog_platform`.`admin_login`;
SELECT * FROM `blog_platform`.`admin_login` LIMIT 1000;
SHOW CREATE TABLE `blog_platform`.`admin_login`;
SHOW CREATE TABLE `blog_platform`.`comments`;
SELECT * FROM `blog_platform`.`comments` LIMIT 1000;
SHOW CREATE TABLE `blog_platform`.`comments`;
SHOW CREATE TABLE `user_login`;
SELECT `user_name`, LEFT(`password`, 256) FROM `user_login` GROUP BY `user_name` ORDER BY `password` LIMIT 1000;
INSERT INTO `blog_platform`.`comments` (`Time_Comment`, `no_of_comments`, `comments_status`, `user_name`) VALUES ('2019-06-10', '10', 'true', 'vicky');
/* SQL Error (1366): Incorrect integer value: 'true' for column 'comments_status' at row 1 */
INSERT INTO `blog_platform`.`comments` (`Time_Comment`, `no_of_comments`, `comments_status`, `user_name`) VALUES ('2019-06-10', '10', '1', 'vicky');
SELECT `Time_Comment`, `no_of_comments`, `comments_status`, `user_name` FROM `blog_platform`.`comments` WHERE  `Time_Comment`='2019-06-10' AND `no_of_comments`=10 AND `comments_status`=1 AND `user_name`='vicky' LIMIT 1;
SHOW CREATE TABLE `blog_platform`.`likes`;
SELECT * FROM `blog_platform`.`likes` LIMIT 1000;
SHOW CREATE TABLE `blog_platform`.`likes`;
ALTER TABLE `likes`
	ALTER `user_name` DROP DEFAULT;
ALTER TABLE `likes`
	CHANGE COLUMN `user_name` `user_name` TIMESTAMP NOT NULL AFTER `Time_liked`;
/* SQL Error (3780): Referencing column 'user_name' and referenced column 'user_name' in foreign key constraint 'FK_likes_user_login' are incompatible. */
ALTER TABLE `likes`
	ALTER `Time_liked` DROP DEFAULT,
	ALTER `user_name` DROP DEFAULT;
ALTER TABLE `likes`
	CHANGE COLUMN `Time_liked` `Time_liked` TIMESTAMP NOT NULL AFTER `No_Of_Likes`,
	CHANGE COLUMN `user_name` `user_name` VARCHAR(50) NOT NULL AFTER `Time_liked`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='blog_platform';
SHOW TABLE STATUS FROM `blog_platform`;
SHOW FUNCTION STATUS WHERE `Db`='blog_platform';
SHOW PROCEDURE STATUS WHERE `Db`='blog_platform';
SHOW TRIGGERS FROM `blog_platform`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='blog_platform';
INSERT INTO `blog_platform`.`likes` (`No_Of_Likes`) VALUES ('5');
/* SQL Error (1364): Field 'Time_liked' doesn't have a default value */
SHOW CREATE TABLE `blog_platform`.`likes`;
/* Entering session "Unnamed" */
SHOW CREATE TABLE `blog_platform`.`likes`;
SELECT * FROM `blog_platform`.`likes` LIMIT 1000;
SHOW CREATE TABLE `blog_platform`.`likes`;
SHOW CREATE TABLE `user_login`;
SELECT `user_name`, LEFT(`password`, 256) FROM `user_login` GROUP BY `user_name` ORDER BY `password` LIMIT 1000;
INSERT INTO `blog_platform`.`likes` (`No_Of_Likes`, `Time_liked`, `user_name`) VALUES ('5', '2019-06-10 10:55:06', 'vicky');
SELECT `No_Of_Likes`, `Time_liked`, `user_name` FROM `blog_platform`.`likes` WHERE  `No_Of_Likes`=5 AND `Time_liked`='2019-06-10 10:55:06' AND `user_name`='vicky' LIMIT 1;
SHOW CREATE TABLE `blog_platform`.`posts`;
SELECT * FROM `blog_platform`.`posts` LIMIT 1000;
SHOW CREATE TABLE `blog_platform`.`posts`;
ALTER TABLE `posts`
	ALTER `posts_deleted` DROP DEFAULT;
ALTER TABLE `posts`
	CHANGE COLUMN `posts_deleted` `no_of_posts_del` INT(11) NOT NULL AFTER `no_of_posts`,
	ADD COLUMN `time_del` TIMESTAMP NOT NULL AFTER `no_of_posts_del`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='blog_platform';
SHOW TABLE STATUS FROM `blog_platform`;
SHOW FUNCTION STATUS WHERE `Db`='blog_platform';
SHOW PROCEDURE STATUS WHERE `Db`='blog_platform';
SHOW TRIGGERS FROM `blog_platform`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='blog_platform';
SHOW CREATE TABLE `blog_platform`.`posts`;
/* Entering session "Unnamed" */
SHOW CREATE TABLE `blog_platform`.`posts`;
SELECT * FROM `blog_platform`.`posts` LIMIT 1000;
SHOW CREATE TABLE `blog_platform`.`posts`;
SHOW CREATE TABLE `user_login`;
SELECT `user_name`, LEFT(`password`, 256) FROM `user_login` GROUP BY `user_name` ORDER BY `password` LIMIT 1000;
INSERT INTO `blog_platform`.`posts` (`no_of_posts`, `no_of_posts_del`, `time_del`, `user_name`) VALUES ('3', '2', '2019-06-10 10:56:55', 'vicky');
SELECT `no_of_posts`, `no_of_posts_del`, `time_del`, `user_name` FROM `blog_platform`.`posts` WHERE  `no_of_posts`=3 AND `no_of_posts_del`=2 AND `time_del`='2019-06-10 10:56:55' AND `user_name`='vicky' LIMIT 1;
SHOW CREATE TABLE `blog_platform`.`shares`;
SELECT * FROM `blog_platform`.`shares` LIMIT 1000;
SHOW CREATE TABLE `blog_platform`.`shares`;
ALTER TABLE `shares`
	ALTER `no_of_shares` DROP DEFAULT,
	ALTER `time` DROP DEFAULT;
ALTER TABLE `shares`
	CHANGE COLUMN `no_of_shares` `no_of_shares` INT NOT NULL FIRST,
	CHANGE COLUMN `time` `time` TIMESTAMP NOT NULL AFTER `no_of_shares`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='blog_platform';
SHOW TABLE STATUS FROM `blog_platform`;
SHOW FUNCTION STATUS WHERE `Db`='blog_platform';
SHOW PROCEDURE STATUS WHERE `Db`='blog_platform';
SHOW TRIGGERS FROM `blog_platform`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='blog_platform';
SHOW CREATE TABLE `blog_platform`.`shares`;
/* Entering session "Unnamed" */
SHOW CREATE TABLE `blog_platform`.`shares`;
SELECT * FROM `blog_platform`.`shares` LIMIT 1000;
SHOW CREATE TABLE `blog_platform`.`shares`;
SHOW CREATE TABLE `user_login`;
SELECT `user_name`, LEFT(`password`, 256) FROM `user_login` GROUP BY `user_name` ORDER BY `password` LIMIT 1000;
INSERT INTO `blog_platform`.`shares` (`no_of_shares`, `time`, `user_name`) VALUES ('10', '2019-06-10 10:57:40', 'vicky');
SELECT `no_of_shares`, `time`, `user_name` FROM `blog_platform`.`shares` WHERE  `no_of_shares`=10 AND `time`='2019-06-10 10:57:40' AND `user_name`='vicky' LIMIT 1;
SHOW CREATE TABLE `blog_platform`.`shares`;
SELECT * FROM user_table u LEFT JOIN shares s ON u.user_name=s.user_name;
/* SQL Error (1146): Table 'blog_platform.user_table' doesn't exist */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0.000 sec. */
SELECT * FROM user_login u LEFT JOIN shares s ON u.user_name=s.user_name;
/* Affected rows: 0  Found rows: 1  Warnings: 0  Duration for 1 query: 0.000 sec. */
SHOW CREATE TABLE `blog_platform`.`user_login`;
SELECT * FROM `blog_platform`.`user_login` LIMIT 1000;
SHOW CREATE TABLE `blog_platform`.`user_login`;
SELECT * FROM `blog_platform`.`shares` LIMIT 1000;
SHOW CREATE TABLE `blog_platform`.`shares`;
SELECT * FROM user_login u LEFT JOIN likes s ON u.user_name=s.user_name;
/* Affected rows: 0  Found rows: 1  Warnings: 0  Duration for 1 query: 0.000 sec. */
SELECT * FROM user_login u LEFT JOIN comments s ON u.user_name=s.user_name;
/* Affected rows: 0  Found rows: 1  Warnings: 0  Duration for 1 query: 0.000 sec. */
SHOW CREATE TABLE `blog_platform`.`admin_login`;
SELECT * FROM `blog_platform`.`admin_login` LIMIT 1000;
SHOW CREATE TABLE `blog_platform`.`admin_login`;
DELETE FROM `blog_platform`.`admin_login` WHERE  `Admin_name`='admin' AND `Admin_Pwd`='admin' LIMIT 1;
SELECT * FROM `blog_platform`.`admin_login` ORDER BY `Admin_Pwd` ASC LIMIT 1000;
SHOW CREATE TABLE `blog_platform`.`admin_login`;
DELETE FROM `blog_platform`.`admin_login` WHERE  `Admin_name`='TTS' AND `Admin_Pwd`='Trimind' LIMIT 1;
SHOW DATABASES;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='blog_platform';
SHOW TABLE STATUS FROM `blog_platform`;
SHOW FUNCTION STATUS WHERE `Db`='blog_platform';
SHOW PROCEDURE STATUS WHERE `Db`='blog_platform';
SHOW TRIGGERS FROM `blog_platform`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='blog_platform';
SHOW CREATE TABLE `blog_platform`.`admin_login`;
/* Entering session "Unnamed" */
SELECT * FROM `blog_platform`.`admin_login` ORDER BY `Admin_Pwd` ASC LIMIT 1000;
SHOW CREATE TABLE `blog_platform`.`admin_login`;



