-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Gép: localhost:3306
-- Létrehozás ideje: 2017. Aug 18. 12:30
-- Kiszolgáló verziója: 5.6.34-log
-- PHP verzió: 7.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `cms`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- A tábla adatainak kiíratása `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'JAVA'),
(2, 'PHP');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_img` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- A tábla adatainak kiíratása `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_img`, `post_content`, `post_tags`, `post_comment_count`, `post_status`) VALUES
(1, 1, 'First Post in myCMS', 'Soocy', '2017-08-17', 'placeholder_dogs.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A accusamus, commodi consequatur eos fugiat fugit id nam natus optio quo sapiente sequi sit tempore ut vel! Et laudantium modi pariatur!', 'soocy, php, javascript, java', 0, 'draft'),
(2, 2, 'Javascript curse', 'Soocy', '2017-08-17', ' ', 'Hi effix-marketing ,\r\n\r\nNow you can display social links on your issuu profile. Add links to your Instagram, Twitter, Facebook and Pinterest profiles, so others can follow you across the web.\r\nNew Mobile Navigation, Larger View and More\r\n\r\nWhile summer is in full swing, we’re still hard at work making sure issuu continues to provide the best global platform for publishing, discovering and reading digital magazines, catalogs and more. We’ve got even more updates for you on our blog.', 'javascript2, course, class, soocy', 0, 'draft'),
(3, 2, 'Javascript curse', 'Soocy', '2017-08-17', ' ', 'Hi effix-marketing ,\r\n\r\nNow you can display social links on your issuu profile. Add links to your Instagram, Twitter, Facebook and Pinterest profiles, so others can follow you across the web.\r\nNew Mobile Navigation, Larger View and More\r\n\r\nWhile summer is in full swing, we’re still hard at work making sure issuu continues to provide the best global platform for publishing, discovering and reading digital magazines, catalogs and more. We’ve got even more updates for you on our blog.', 'javascript2, course, class', 0, 'draft');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- A tábla indexei `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT a táblához `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
