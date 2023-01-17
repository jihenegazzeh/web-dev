-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2023 at 06:35 PM
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
(1, 'The American Dream : All you Need to Know about the U.S.A', '<p>We are thrilled to invite you to the upcoming event, \"The American Dream: All You Need to Know About the USA,\" organized by JCI TBS-El Mourouj, TIMUN TBS, USA Embassy, and Education USA.</p>\r\n<p>The event, taking place on January 25th at Tunis Business School, is designed to provide attendees with a comprehensive understanding of the opportunities and possibilities available in the United States for students, graduates, and professionals.</p>\r\n<p>Our distinguished guest speakers from the US Embassy, in addition to Education USA Advisors, and TBS alumni who have successfully navigated the application process, will provide valuable insights, guidance, and insider tips on how to nail your applications.</p>\r\n<p>This is a unique opportunity to gain a comprehensive understanding of the various exchange programs and scholarship opportunities available in the United States, as well as how to navigate the application process. The event will also feature interactive games and panel discussions to provide a well-rounded experience. Don\'t miss out on this opportunity to gain valuable information and connect with experts in the field. Secure your spot at this one-of-a-kind event .</p>', 'Free', 'Tunis Business School', 'TIMUN TBS - JCI TBS', 100, 'am.jpg', '2023-01-25 14:00:00'),
(2, 'Job Fair : 9th Edition', '<p>It is with absolute excitement and pleasure that Tunis Business School in partnership with 4C ,are announcing the 9th Edition of their annual “JOB FAIR TBS” ?</p>\r\n<p>We are Extremely pleased to invite you to one of the best professional framework that allows students and companies to interact in a unique atmosphere, to live the exclusive moments of exchange between the determined, hardworking YOU and your DREAM company✨!!!</p>\r\n<p>One Full Day Of Endless Opportunities, workshops and plenty of companies ready to hire You!</p>\r\n<p>As per plans, the Event will take place on the 7th of December ? at ? Tunis Business School.</p>\r\n<p>So what are waiting for?</p>\r\n<p>Prepare your resume?,</p>\r\n<p>Bring your motivation ?</p>\r\n<p>And link the dots to your new opportunities...</p>', 'Free', 'Tunis Business School', 'JCI TBS', 100, 'jo.jpg', '2022-12-07 08:30:00'),
(3, 'Step One', '<p>Want to start your business and don\'t know how?? Eager to enhance your ideation and design thinking skills? And ready to initiate an idea that\'s going to change everything??✌</p>\r\n<p>TBS Startup Nation is now giving you an opportunity to come up with THE IDEA and achieve your dream.?</p>\r\n<p>So don\'t miss the chance to start building your future by joining our event ⚡Step One⚡ to improve your design thinking and Ideation through trainings and workshops with our partner “COMMITT”.</p>\r\n<p>So what are you waiting for? It all starts with an idea...??</p>', 'Free', 'Tunis Business School', 'TBS Startup Nation', 50, 'st.jpg', '2022-12-03 08:30:00'),
(4, 'The Trading Eagle', '<p>One of our biggest events this year is just around the corner!</p>\r\nWe JCI TBS are happy to announce that the Tunis Business School trading room is finally here to be added as an incredible asset to our university and to open its doors soon for our junior ambitious traders.</p>\r\n<p>After securing a deal with BNS engineering, the exclusive provider of the software that we will use, and after reaching a partnership with the Tunisian Stock Exchange that will provide a steady flow of the needed information. We are now ready to start a simulation period to gauge the skills of the participants.</p>\r\n<p>To spice things up, the best performers will then have real accounts with equal amounts of money to compete and come up with the best portfolio strategies. This will be an opportunity to display not only their understanding of basic financial markets concepts but also to prove their skills and to, maybe carve their names as the first generation of best traders in Tunis Business School.</p>', 'Free', 'Tunis Business School', 'JCI TBS', 100, 'tr.jpg', '2022-11-02 14:00:00'),
(5, 'TECH-ME 0.1', '<p>It\'s time for a new adventure.\r\nIf you\'re looking for a way to learn more about Machine Learning, Blockchain and Observability, you\'ve come to the right place.</p>\r\n<p>This event is going to be a unique opportunity for you to learn how these topics relate to your life. You can meet with certified trainers who are going to walk you through everything you need to know about those fields, so that you can start using them in your business or personal life.</p>', 'Free', 'Tunis Business School', 'ATAST TBS', 100, 'atast.jpg', '2022-12-14 13:30:00'),
(6, 'Thomas Jefferson 2022 Scholarship Program - Highway Info Session', '<p>We are excited to announce that we are hosting an information session about Thomas Jefferson Scholarship Program for 2023-2024 \r\nThis Program is designed for Tunisian students pursuing their bachelor\'s degree (license) but not graduating this academic year (2022/2023).</p>\r\n<p>You are not eligible to apply if you are pursuing a master\'s degree or have finished your master\'s degree.</p>', 'Free', 'Online', 'N/A', 100, 'tjsp.jpg', '2022-11-19 19:00:00'),
(7, 'Intro to PYTHON', '<p>This workshop is a simple and free way to immerse yourself into the world of Python! Whether this is your first time writing code or your 100th time, by the end of this 2 hour workshop you will have the foundational knowledge to move onto more advanced programming courses.</p>\r\n<p>We\'ll start with an introduction to the language of Python and explain exactly how versatile it is and how it can be applied to Data Science, IoT, Web Development and more. </p>\r\n<p>Next we will cover the basics of Python and breakdown features like variables, lists, data types and so much more. Finally, you will have the chance to build your first program and even play a couple of matches vs the computer!</p>', 'Free', 'Tunis Business School', 'JCI TBS', 100, 'python.jpg', '2022-11-16 14:00:00'),
(8, 'HR workshop: Getting ready for my first interview', '<p>Looking for an internship or a job? Are you stressing about having your first professional interview?\r\nRest assured, Linedata Tunisie, in collaboration with JCI TBS, has got your back!</p>\r\n<p>We are delighted to invite you to participate in our HR Workshop “Getting ready for my first interview”, on Wednesday, 9th of November 2022, where a team of TBS Alumni Specialists will share their knowledge, help you learn the best practices for getting a first job, and share their experiences in the Fintech field.</p>\r\n<p>So what are you waiting for? Register now through the link below as places are limited!</p>', 'Free', 'Tunis Business School', 'JCI TBS', 100, 'hr.jpg', '2022-11-09 14:00:00'),
(9, 'INTRO TO WEB DEVELOPMENT Free Workshop', '<p><!DOCTYPE Introduction to web dev></p>\r\n<p><html></p>\r\n<p><head><title>Hello World!</title></p>\r\n<p></head></p>\r\n<p><body></p>\r\n<p><p></p>\r\n<p>With everything going online, web dev is an incredible tool to have in your portfolio.</p>\r\n<p>Come get an introduction to the world of Web Development!</p>\r\n<p>Learn how to craft your ideas into something real! In this workshop, we\'ll show you how to go from no prior coding knowledge to crafting your own websites using HTML, CSS, and JavaScript.</p>\r\n<p>The workshop will be conducted by Certified Coding Dojo experts and hosted by JCI TBS!</p>', 'Free', 'Tunis Business School', 'JCI TBS', 100, 'web.jpg', '2022-10-26 14:00:00'),
(10, 'The Masters\' Gate', '<p>THE MASTERS’ GATE is an exceptional event that paves the way for students to embrace various opportunities to get the masters they want in highly regarded institutions abroad.</p>\r\n<p>The event is an Info Session organized by INTERNATIONAL HIGHWAY which is a diligent Start-up that aims to lead university students, and provide them with the information needed about local and international universities.</p>\r\n<p>This is a prominent occasion for students to learn about the different Masters programs offered at those universities, and to know more about their career prospects.</p>\r\n<p>If you are eager to learn and explore the world of masters, prepare your questions, and do not miss this golden opportunity.</p>', 'Free', 'Online', 'TBS Junior Entreprise ', 100, 'master.jpg', '2022-11-15 20:00:00'),
(11, 'Welcome Day | TBS 2022/2023', '<p>It’s the day you’ve always anticipated, the one that feels like it will never really come. But it does - and it did. You’re finally a university student – The Next Chapter!</p>\r\n<p>TIP NUMBER 1: There\'s more to university than just attending lectures and spending your time book-bashing.</p>\r\n<p>NOW is the time to get involved and the Welcome Day is the greatest opportunity to do so </p>\r\n<p>The Hult Prize at Tunis Business School is incredibly excited to kick off the new academic year and welcome our new and returning students to campus \r\nThis is your time to connect with new individuals and groups, learn about upcoming campus events, and get involved in many of the different student clubs and organizations at TBS.</p>\r\n<p>Think of it as a runaway for clubs, specially designed for you, and it\'s on you to find a costume that fits!\r\n<p>The event atmosphere will be amped up with music, games, free food, and a lot of other activities for you to discover \r\nAre you ready to take that important first step toward the thrilling university life you’ve always dreamt about? JOIN US on the 12th of October and make that dream happen! </p>\r\n<p>ONE LAST TIP: Networking is key! If you want to make friends, bring your biggest smile on - everyone is less than a smile away!</p>', 'Free', 'Tunis Business School', 'All TBS Clubs', 100, 'welcome.jpg', '2022-10-12 12:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
