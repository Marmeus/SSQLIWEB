--
-- Database: `mydb`
--

CREATE DATABASE IF NOT EXISTS `vulndb`;
USE `vulndb`;

CREATE TABLE IF NOT EXISTS `users` (
    `id` int(20) NOT NULL,
    `username` varchar(30) NOT NULL,
    `email` varchar(30) NOT NULL,
    `password` varchar(30) NOT NULL
);

ALTER TABLE `users`
ADD PRIMARY KEY (`id`);

ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

INSERT INTO `users` (`username`, `email`, `password`) VALUES
('user1','email1@b.c','password1'),
('user2','email2@b.c','password2'),
('user3','email3@b.c','password3'),
('user4','emai41@b.c','password4');
