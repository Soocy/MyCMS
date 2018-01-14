-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Gép: localhost:3306
-- Létrehozás ideje: 2018. Jan 14. 18:29
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
(2, 'PHP'),
(13, 'OOP'),
(14, 'CMS');

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
(7, 1, 'Its a post about cms', 'Soocy', '2018-01-14', 'placeholder_dogs.jpg', '            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sit amet augue accumsan, ullamcorper odio et, laoreet ligula. Fusce eget faucibus erat. Proin euismod pharetra eros eget hendrerit. Mauris in neque auctor, rutrum massa vel, lacinia est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec interdum neque dui, lacinia rhoncus enim congue lobortis. Aliquam fermentum neque nisi, in tristique magna viverra id. In rhoncus enim erat. Cras vel turpis euismod urna elementum cursus. Praesent purus odio, fringilla ut vestibulum et, iaculis vitae tellus. Aliquam vel maximus lorem, eget sodales quam. Curabitur rhoncus nisl massa, non dictum orci sagittis ac. Phasellus tincidunt sapien quis ex pretium euismod.                                ', 'cms, good cms', 4, 'draft'),
(8, 13, 'OOP', 'Sooce', '2018-01-14', 'placeholder_dogs.jpg', 'some text', 'OOP, Object, Programming', 4, 'draft');

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
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT a táblához `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
