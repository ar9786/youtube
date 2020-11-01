-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 01, 2020 at 11:26 AM
-- Server version: 5.7.29-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `youtube`
--

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(5) NOT NULL,
  `video_type` tinyint(2) DEFAULT NULL,
  `video_id` varchar(50) DEFAULT NULL,
  `title` varchar(500) CHARACTER SET ucs2 COLLATE ucs2_bin DEFAULT NULL,
  `description` varchar(500) NOT NULL,
  `thumbnail_url` varchar(100) DEFAULT NULL,
  `published_at` varchar(30) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `video_type`, `video_id`, `title`, `description`, `thumbnail_url`, `published_at`, `updated_at`, `created_at`) VALUES
(11, 1, 'njVyLme1m7c', 'من فيرجينيا.. موفد إكسترا نيوز يوضح مدى إقبال الناخبين على التصويت المبكر في الانتخابات الرـئاسية', '', 'https://i.ytimg.com/vi/njVyLme1m7c/hqdefault.jpg', '2020-10-31T15:48:44Z', '2020-11-01 03:20:27', '2020-11-01 03:20:27'),
(12, 1, 'YcDl9zOa-yw', 'Talking Horses', '', 'https://i.ytimg.com/vi/YcDl9zOa-yw/hqdefault.jpg', '2020-10-31T15:34:52Z', '2020-11-01 03:20:27', '2020-11-01 03:20:27'),
(13, 1, 'OC_THioVdPc', 'ხმაური აბასთუმნის საარჩევნო უბანთან', '', 'https://i.ytimg.com/vi/OC_THioVdPc/hqdefault.jpg', '2020-10-31T14:31:20Z', '2020-11-01 03:20:27', '2020-11-01 03:20:27'),
(14, 1, 'uUXXEgK2Jh8', 'First Negative Number in every Window of Size K | Sliding Window', '', 'https://i.ytimg.com/vi/uUXXEgK2Jh8/hqdefault.jpg', '2020-10-31T13:04:22Z', '2020-11-01 03:20:27', '2020-11-01 03:20:27'),
(15, 1, 'frgm9nsmy64', 'ქუთაისში , გორას უბანზე, ზონდერები თავს დაესხნენ ქუთაისის მერობის კანდიდატს ირაკლი კიკვაძეს', '', 'https://i.ytimg.com/vi/frgm9nsmy64/hqdefault.jpg', '2020-10-31T12:04:06Z', '2020-11-01 03:20:27', '2020-11-01 03:20:27'),
(16, 1, 'wF0wc0xuVVg', 'Ղարաբաղում թուրք խաղաղապահների տեղակայումը անընդունելի է ԱՄՆ-ի համար.Թրամփի խորհրդական', '', 'https://i.ytimg.com/vi/wF0wc0xuVVg/hqdefault.jpg', '2020-10-31T10:51:19Z', '2020-11-01 03:20:27', '2020-11-01 03:20:27'),
(17, 1, 'LF8ptr4-FWs', '&quot;Biz “Amnesty International” və “Human Rights Watch” təşkilatlarını Azərbaycana dəvət etmişik&quot;', '', 'https://i.ytimg.com/vi/LF8ptr4-FWs/hqdefault.jpg', '2020-10-31T10:38:33Z', '2020-11-01 03:20:27', '2020-11-01 03:20:27'),
(18, 1, 'DTKD6D8Yjsk', 'Bihar Chunav : बाजपट्टी का कौन होगा बाजीगर, लोगों से सुनिए किसकी हो रही जय-जयकार | Bihar News', '', 'https://i.ytimg.com/vi/DTKD6D8Yjsk/hqdefault.jpg', '2020-10-31T10:30:34Z', '2020-11-01 03:20:27', '2020-11-01 03:20:27'),
(19, 1, '3wxGUkkLw0k', 'الرئيس السيسي يشاهد فيلما تسجيليا بعنوان «طريق الأمل»', '', 'https://i.ytimg.com/vi/3wxGUkkLw0k/hqdefault.jpg', '2020-10-31T10:20:56Z', '2020-11-01 03:20:27', '2020-11-01 03:20:27'),
(20, 1, 'uqM54LytL8k', 'Antisipasi Longsor, Dirikan Posko Jalan Darurat', '', 'https://i.ytimg.com/vi/uqM54LytL8k/hqdefault.jpg', '2020-10-31T10:09:29Z', '2020-11-01 03:20:27', '2020-11-01 03:20:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
