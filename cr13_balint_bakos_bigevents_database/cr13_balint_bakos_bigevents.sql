-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2020 at 11:21 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr13_balint_bakos_bigevents`
--
CREATE DATABASE IF NOT EXISTS `cr13_balint_bakos_bigevents` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cr13_balint_bakos_bigevents`;

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20200806080325', '2020-08-06 10:03:39', 60),
('DoctrineMigrations\\Version20200806134723', '2020-08-06 15:47:34', 832),
('DoctrineMigrations\\Version20200806134831', '2020-08-06 15:48:35', 148);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` double NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `name`, `date`, `description`, `image`, `capacity`, `email`, `phone`, `address`, `url`, `type`) VALUES
(1, 'Tech Jobs Fair Vienna - 2020', '2020-11-26 14:00:00', 'TJF Vienna is the right opportunity to grow your network and built long term relationships with companies. You can learn about HR trends, Bots, AI and Mobile Workers.', 'https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F98252106%2F238666601843%2F1%2Foriginal.20200408-085455?h=150&w=300&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C0%2C2160%2C1080&s=19a89f7a0a7d1dba2667d50d022c4110', 2000, 'techjobs@gmail.com', 6642510025, 'Aula der Wissenschaften, Wollzeile 27a, 1010 Vienna', 'https://techjobsfair.com/', 'technology'),
(2, 'Claptone 2020', '2020-10-22 20:00:00', 'Claptone is a German DJ and producer duo which specializes in house and tech house genres. They are recognizable by their plague doctor-style golden mask, which serves to intrigue the public as well as keeping their identity hidden. It was widely believed that Claptone is a single person, but after the public realized that Claptone often performed at two venues at once, the rumor started to spread that Claptone was two individuals. Claptone has performed at iconic venues including Hï Ibiza (form', 'https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F92812127%2F74229833859%2F1%2Foriginal.20200217-133132?w=800&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C0%2C972%2C486&s=28e31260a7969778f8f22a508c1590a5', 400, 'claptone@gmail.com', 6641710025, 'Pratersauna, Waldsteingartenstraße 135, 1020 Vienna', 'https://www.eventbrite.de/e/claptone-2020-tickets-94165207671?aff=ebdssbcitybrowse', 'music'),
(3, 'Pilzzucht Workshop mit Hut & Stiel', '2020-09-12 09:00:00', 'Ihr wollt mehr über Pilze, Pilzanbau & Co. wissen? Dann lernt mit uns gemeinsam diese spannende Welt kennen! In dem 8-stündigen Workshop stillen wir euren Wissensdurst. Ihr erfährt alles über den Pilz wie er leibt und lebt – direkt in unserer Betriebsstätte. Nach dem Workshop könnt Ihr sogar eure eigene Pilzkultur mit nach Hause nehmen!', 'https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F66242087%2F201298742122%2F1%2Foriginal.20190722-123952?w=800&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C100%2C1610%2C805&s=ecb1a1354cd9689cbe9393b075d1ffa2', 200, 'pilze@gmail.com', 6641710685, 'Hut & Stiel - Die Wiener Pilzkultur, Naufahrtweg 14a, 1220 Vienna', 'https://www.eventbrite.de/e/pilzzucht-workshop-mit-hut-stiel-tickets-66291631053?aff=ebdssbcitybrowse', 'food'),
(4, 'WeAreDevelopers Congress Vienna 2020', '2020-12-22 10:00:00', 'The Congress for Developers. Get ahead and learn from experts about the most dynamic topics for developers.', 'https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F84091375%2F287990365122%2F1%2Foriginal.20191210-103816?w=800&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C0%2C2160%2C1080&s=e516e8f97a7d660de3cfe209efaca2de', 400, 'wearedevs@gmail.com', 6641710000, 'Vienna, tbd, 1010 Vienna', 'https://www.eventbrite.co.uk/e/wearedevelopers-congress-vienna-2020-tickets-85611326783?aff=ebdssbcitybrowse', 'technology'),
(5, 'Falstaff Champagnergala 2020', '2020-09-04 14:30:00', 'Überschäumender Genuss erwartet die Besucher bei der Falstaff Champagnergala, bei der sich die traditionsreichsten und bekanntesten Champagnerhäuser im exklusiven Rahmen des Wiener Palais Ferstel präsentieren und feine Kreszenzen zur Verkostung gereicht werden. Wir stehen selbstverständlich in ständigem Kontakt mit den zuständigen Behörden, um unter strenger Berücksichtigen der Covid19- Maßnahmen allen Gästen ein sicheres und spannendes Verkosten zu ermöglichen.', 'https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F107933543%2F199232672166%2F1%2Foriginal.20191128-125624?w=800&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C409%2C2480%2C1240&s=441633240befacf968e0368056803087', 3000, 'falstaff@gmail.com', 6641258002, 'Palais Ferstel, Strauchgasse 4, 1010 Wien', 'https://www.eventbrite.de/e/falstaff-champagnergala-2020-tickets-79531048507?aff=ebdssbcitybrowse', 'food'),
(10, 'GraphQL Summit Worldwide', '2020-08-07 12:00:00', 'Don\'t miss the GraphQL event of the year! Developers, software architects, and product leaders will gather together online from all over the world to learn, discuss, and advance GraphQL best practices.', 'https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F101554170%2F182934487936%2F1%2Foriginal.20200521-182841?w=800&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C0%2C2160%2C1080&s=c5829e0d844784350be2eeee707daf7a', 0, 'graph@gmail.com', 6458410358, 'Online', 'https://www.eventbrite.com/e/graphql-summit-worldwide-tickets-106102421198?aff=ebdssbonlinesearch', 'technology'),
(11, 'Techno Dampfer w/ Pleasurekraft Vienna', '2020-08-30 17:30:00', 'Ahoi Landratten !\r\nMacht euch bereit für die erste Meuterei im neuen Jahr !\r\nDer weltweit gesuchte Halunke Pleasurekraft am Steuerrad wird uns gekonnt in die Irre manövrieren !\r\nDreifacher Mastbruch - es wird arrrgh - wir fahren mit dem großen Schiff zu den Meerjungfrauen und Seebären, an einen Ort an dem wo uns niemand findet - uns keine langweiligen Menschen plagen und wir unbefangen zu Wasser die Glühwürmchen jagen ♥', 'https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F84035761%2F197870210229%2F1%2Foriginal.20190610-165519?w=800&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C70%2C960%2C480&s=539b26bb428070636c2719d182e30187', 150, 'technodampfer@gmail.com', 6645125841, 'Nußdorf, Relegasse 1, Wien', 'https://www.eventbrite.de/e/techno-dampfer-w-pleasurekraft-vienna-tickets-85556191873?aff=ebdssbcitybrowse', 'music'),
(14, 'Agile Tour Vienna 2020', '2020-10-09 08:30:00', 'The Agile Tour Vienna is a non-profit event that aims at bringing together experts, practioners and everybody else who is interested in agile software development. The main conference language is German but we welcome talks in English as well and look forward to an exchange with international participants.', 'https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F90147649%2F16838724711%2F1%2Foriginal.20200130-123513?w=800&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C0%2C2160%2C1080&s=0aaa81a2485b2dc50b73c55302ac299b', 250, 'agile@gmail.com', 6645125874, 'FH Campus Wien, 226 Favoritenstraße, 1100 Wien', 'https://www.eventbrite.at/e/agile-tour-vienna-2020-tickets-89046688041?aff=ebdssbcitybrowse', 'technology'),
(16, 'VIENNA GIN FESTIVAL 2020', '2020-10-16 16:30:00', 'Neben klassischen Verkostungen und einzigartigen Masterclasses geben wir auch diesmal wieder den besten Gin Bars eine eigene Bühne, um sich und ihre legendären Signature Drinks zu präsentieren.', 'https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F97086718%2F242105689110%2F1%2Foriginal.20200321-084603?w=800&auto=format%2Ccompress&q=75&sharp=10&rect=4%2C0%2C2160%2C1080&s=6085c71529bd15566bb2683522cb1e9d', 1000, 'vginfest@gmail.com', 6642514458, 'Semperdepot, Lehargasse 6, Tor 2, 1060 Wien', 'https://www.eventbrite.de/e/vienna-gin-festival-2020-tickets-78372635663?aff=ebdssbcitybrowse', 'food'),
(17, 'Erste Bank Open 2020', '2020-10-26 13:00:00', 'Die Erste Bank Open in der Wiener Stadthalle sind alljährlich das Tennis-Highlight im heimischen Sportkalender. Seit 1974 geben sich Stars von Agassi über Muster und Thiem bis hin zu Zverev in Wien ein Stelldichein. Ab sofort sind Tickets für das Turnier vom 26. 10. 2020 bis 1. 11. 2020 hier online erhältlich!', 'https://www.erstebank-open.com/wp-content/uploads/2019/04/Logo_RGB-EBO19-640x320.png', 10000, 'eopen500@gmail.com', 6642684566, 'Wiener Stadthalle, Roland-Rainer-Platz 1, 1150 Wien', 'https://www.oeticket.com/?affiliate=B38&fun=page&pagename=artist&artistId=502213&gclid=CjwKCAjwmrn5BRB2EiwAZgL9omYWn6V7suPxxqNdmLJDMquwVZp3b-XbOXDsrInVIx-sM-rieRrdDBoC-bkQAvD_BwE', 'sport');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
