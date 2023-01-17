-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2023 at 04:20 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `desc` text NOT NULL,
  `price` varchar(200) NOT NULL,
  `place` varchar(200) NOT NULL,
  `club` varchar(200) NOT NULL,
  `capacity` int(11) NOT NULL,
  `img` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `desc`, `price`, `place`, `club`, `capacity`, `img`, `date`) VALUES
(1, 'The American Dream', '<p>We are thrilled to invite you to the upcoming event, \"The American Dream: All You Need to Know About the USA,\" organized by JCI TBS-El Mourouj, TIMUN TBS, USA Embassy, and Education USA.</p>\r\n<p>The event, taking place on January 25th at Tunis Business School, is designed to provide attendees with a comprehensive understanding of the opportunities and possibilities available in the United States for students, graduates, and professionals.</p>\r\n<p>Our distinguished guest speakers from the US Embassy, in addition to Education USA Advisors, and TBS alumni who have successfully navigated the application process, will provide valuable insights, guidance, and insider tips on how to nail your applications.</p>\r\n<p>This is a unique opportunity to gain a comprehensive understanding of the various exchange programs and scholarship opportunities available in the United States, as well as how to navigate the application process. The event will also feature interactive games and panel discussions to provide a well-rounded experience. Don\'t miss out on this opportunity to gain valuable information and connect with experts in the field. Secure your spot at this one-of-a-kind event .</p>', 'free', 'Tunis Business School', 'TIMUN TBS - JCI TBS', 100, 'am.jpg', '2023-01-25 14:00:00'),
(2, 'Job Fair', '<p>It is with absolute excitement and pleasure that Tunis Business School in partnership with 4C ,are announcing the 9th Edition of their annual “JOB FAIR TBS” ?</p>\r\n<p>We are Extremely pleased to invite you to one of the best professional framework that allows students and companies to interact in a unique atmosphere, to live the exclusive moments of exchange between the determined, hardworking YOU and your DREAM company✨!!!</p>\r\n<p>One Full Day Of Endless Opportunities, workshops and plenty of companies ready to hire You!</p>\r\n<p>As per plans, the Event will take place on the 7th of December ? at ? Tunis Business School.</p>\r\n<p>So what are waiting for?</p>\r\n<p>Prepare your resume?,</p>\r\n<p>Bring your motivation ?</p>\r\n<p>And link the dots to your new opportunities...</p>', 'free', 'Tunis Business School', 'JCI TBS', 100, 'jo.jpg', '2022-12-07 08:30:00'),
(3, 'Step One', '<p>Want to start your business and don\'t know how?? Eager to enhance your ideation and design thinking skills? And ready to initiate an idea that\'s going to change everything??✌</p>\r\n<p>TBS Startup Nation is now giving you an opportunity to come up with THE IDEA and achieve your dream.?</p>\r\n<p>So don\'t miss the chance to start building your future by joining our event ⚡Step One⚡ to improve your design thinking and Ideation through trainings and workshops with our partner “COMMITT”.</p>\r\n<p>So what are you waiting for? It all starts with an idea...??</p>', 'free', 'Tunis Business School', 'TBS Startup Nation', 50, 'st.jpg', '2022-12-03 08:30:00'),
(4, 'The Trading Eagle', '<p>One of our biggest events this year is just around the corner!</p>\r\nWe JCI TBS are happy to announce that the Tunis Business School trading room is finally here to be added as an incredible asset to our university and to open its doors soon for our junior ambitious traders.</p>\r\n<p>After securing a deal with BNS engineering, the exclusive provider of the software that we will use, and after reaching a partnership with the Tunisian Stock Exchange that will provide a steady flow of the needed information. We are now ready to start a simulation period to gauge the skills of the participants.</p>\r\n<p>To spice things up, the best performers will then have real accounts with equal amounts of money to compete and come up with the best portfolio strategies. This will be an opportunity to display not only their understanding of basic financial markets concepts but also to prove their skills and to, maybe carve their names as the first generation of best traders in Tunis Business School.</p>', 'free', 'Tunis Business School', 'JCI TBS', 100, 'tr.jpg', '2022-11-02 14:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `password`, `name`) VALUES
(3, 'ela', '202cb962ac59075b964b07152d234b70', 'Ela'),
(4, 'elias', '202cb962ac59075b964b07152d234b70', 'elias'),
(5, 'jj', '2db95e8e1a9267b7a1188556b2013b33', 'kk'),
(6, 'kk', '8ce4b16b22b58894aa86c421e8759df3', 'k'),
(7, 'jihene', 'fda766e8ce436bcbef5031cfc4c7cd47', 'jihene');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
