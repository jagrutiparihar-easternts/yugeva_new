-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 24, 2023 at 10:12 AM
-- Server version: 5.7.41-log
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yugeva_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `a_id` int(15) NOT NULL,
  `album_type_id` varchar(20) NOT NULL,
  `a_title` varchar(100) NOT NULL DEFAULT '',
  `a_year` year(4) NOT NULL,
  `a_description` text,
  `position` char(1) NOT NULL DEFAULT 'I',
  `username` varchar(50) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `sortorder` int(3) NOT NULL DEFAULT '1',
  `remote_ip` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`a_id`, `album_type_id`, `a_title`, `a_year`, `a_description`, `position`, `username`, `createdate`, `modifieddate`, `status`, `sortorder`, `remote_ip`) VALUES
(1, '8', 'Insight', 0000, 'Description', 'I', 'Keyur', '2015-10-27', '0000-00-00', 'E', 1, '192.168.2.106'),
(2, '8', 'Festivals', 0000, 'description', 'I', 'Keyur', '2015-10-28', '0000-00-00', 'E', 2, '192.168.2.106');

-- --------------------------------------------------------

--
-- Table structure for table `album_type`
--

CREATE TABLE `album_type` (
  `type_id` int(11) NOT NULL,
  `album_title` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `sortorder` varchar(20) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `remote_ip` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `album_type`
--

INSERT INTO `album_type` (`type_id`, `album_title`, `username`, `createdate`, `modifieddate`, `sortorder`, `status`, `remote_ip`) VALUES
(8, 'Album Type 1', 'Keyur', '2015-10-27', '0000-00-00', '1', 'E', '192.168.2.106');

-- --------------------------------------------------------

--
-- Table structure for table `appointment_master`
--

CREATE TABLE `appointment_master` (
  `cid` int(11) NOT NULL,
  `cname` varchar(100) NOT NULL,
  `cemail` varchar(100) NOT NULL,
  `csubject` varchar(100) NOT NULL,
  `cmessage` text NOT NULL,
  `ccontact` varchar(30) DEFAULT '0',
  `cdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `new` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment_master`
--

INSERT INTO `appointment_master` (`cid`, `cname`, `cemail`, `csubject`, `cmessage`, `ccontact`, `cdate`, `new`) VALUES
(20, 'bhavini', 'bhavini@gmail.com', 'bhavini', 'bhavini', '0', '2017-05-05 06:57:15', 1),
(21, 'bgfh', 'gdfg432@vjcxv', '', 'vxcvx', '52563', '2017-05-24 10:33:21', 1),
(22, 'Bhavini Appointment', 'cxffc@gmail.com', '', 'Bhavini Appointment', '123456', '2017-05-24 10:34:09', 1),
(23, 'tet43', 'fvdsf@gdfgfd', '', 'csafds', '432453534534', '2017-06-29 12:39:37', 1),
(24, 'tet43', 'fvdsf@gdfgfd', '', 'csafds', '432453534534', '2017-06-29 12:39:37', 1),
(25, 'tet43', 'fvdsf@gdfgfd', '', 'csafds', '432453534534', '2017-06-29 12:39:37', 1),
(26, 'tet43', 'fvdsf@gdfgfd', '', 'csafds', '432453534534', '2017-06-29 12:39:37', 1),
(27, 'tet43', 'fvdsf@gdfgfd', '', 'csafds', '432453534534', '2017-06-29 12:39:37', 1),
(28, 'tet43', 'fvdsf@gdfgfd', '', 'csafds', '432453534534', '2017-06-29 12:39:37', 1),
(29, 'tet43', 'fvdsf@gdfgfd', '', 'csafds', '432453534534', '2017-06-29 12:39:37', 1),
(30, 'tet43', 'fvdsf@gdfgfd', '', 'csafds', '432453534534', '2017-06-29 12:39:37', 1),
(32, 'bunty', 'bldihbdf@jbdf.com', '', 'i want to book an appointment for therapy', '999999999999', '2018-09-21 10:00:20', 1),
(33, 'Dishant Mukeshbhai Mehta', 'dishant.1712@Gmail.com', '', 'asdfasdf asddfasdf asdf asdf asddf asdfd asdf asddf', '07600015802', '2018-09-21 10:00:20', 1),
(34, 'Dishant Mukeshbhai Mehta', 'dishant.1712@Gmail.com', '', 'asdfasd asdf asdf', '07600015802', '2018-09-21 10:00:20', 1),
(35, 'asdf asdf', 'sadf@asdf.com', '', 'again asdf  asdfsdd', '09879879877', '2018-09-21 10:00:20', 1),
(36, 'bunty', 'bksjhdbf@liusd.com', '', 'pls book my appointment ', '98766787578', '2018-09-21 10:00:20', 1),
(37, 'Bunty', 'hsisidjd@jdkd.com', '', 'I want to be a cool', '9476383973', '2018-09-21 10:00:20', 1),
(38, 'bunty', 'kjbsd@ashyjg.com', '', 'i want to be a cool', '94857498759', '2018-09-21 10:00:20', 1),
(39, 'bunty', 'kjbfd@hsd.com', '', 'i want to be a cool', '98745894569', '2018-09-21 10:00:20', 1),
(40, 'hemish Patel', 'hemish@yugeva.com', '', 'plz confirm it', '9879270092', '2018-09-21 10:00:20', 1),
(41, 'dsgsggs', 'ujhgasvfda@kugsd.com', '', 'sadkubgakuxdygsk', '64565476666666665', '2018-09-21 10:00:20', 1),
(42, 'Dishant Mehta ', 'dishant.1712@Gmail.com', '', 'appointment testing', '7600015802', '2018-09-21 10:00:20', 1),
(43, 'isaug', 'sjzhdvcdsvf@aosn.com', '', 'liqvgfleguyegwfweuyfg', '93560835688', '2018-09-21 10:00:20', 1),
(44, 'VINOD CHHAJER', 'vin32957@yahoo.com', '', 'i want to feel diffrent. ....', '9825132957', '2018-09-21 10:00:20', 1),
(45, 'Barvaliya nirav', 'nirav640@gmail.com', '', 'I want try ', '09033470868', '2018-09-21 10:00:20', 1),
(46, 'Barvaliya nirav', 'nirav640@gmail.com', '', 'I want ', '09033470868', '2018-09-21 10:00:20', 1),
(47, 'Mannish agarwaal', 'rainbow.surat@gmail.com', '', 'Plz let me know the time what time is ypur slot empty ', '9624144444', '2018-11-24 07:15:18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `banner_image`
--

CREATE TABLE `banner_image` (
  `bannerID` int(11) NOT NULL,
  `bannerTitle` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `mobile_image` varchar(255) NOT NULL,
  `username` varchar(30) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `remote_ip` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner_image`
--

INSERT INTO `banner_image` (`bannerID`, `bannerTitle`, `image`, `mobile_image`, `username`, `createdate`, `modifieddate`, `remote_ip`) VALUES
(4, 'How Cryotherapy Works', '4-how_cryotherapy_works.jpg', '', 'Keyur', '2017-04-05', '2017-05-30', '127.0.0.1'),
(6, 'What is Cryotherapy', '6-what_is_cryotherapy.jpg', '6-what_is_cryotherapy_mobile.jpg', 'Keyur', '2017-04-05', '2017-07-10', '::1'),
(7, 'What to expect', '7-what_to_expect.jpg', '7-what_to_expect_mobile.jpg', 'Keyur', '2017-04-05', '2017-07-10', '::1'),
(9, 'About Us', '9-about_banner.jpg', '9-about_banner_mobile.jpg', 'Keyur', '2017-04-05', '2017-07-10', '::1'),
(17, 'Common', '17-Sustainability.jpg', '', 'Keyur', '2017-05-30', '0000-00-00', '127.0.0.1'),
(18, 'Benefit', '18-benifits.jpg', '', 'Keyur', '2017-06-05', '2017-06-09', '127.0.0.1'),
(19, 'Career', '19-career.jpg', '19-career_mobile.jpg', 'Keyur', '2017-06-05', '2017-07-10', '::1'),
(20, 'Contact US', '20-contact.jpg', '20-contact_mobile.jpg', 'Keyur', '2017-06-05', '2017-07-10', '::1'),
(21, 'FAQ', '21-faq.jpg', '21-faq_mobile.jpg', 'Keyur', '2017-06-05', '2017-07-10', '::1'),
(22, 'Services', '22-services.jpg', '', 'Keyur', '2017-06-05', '0000-00-00', '127.0.0.1'),
(23, 'Testimonial', '23-testimonial.jpg', '23-testimonial_mobile.jpg', 'Keyur', '2017-06-05', '2017-07-10', '::1'),
(24, 'Thank you', '24-thankyou.jpg', '24-thankyou_mobile.jpg', 'Keyur', '2017-06-05', '2017-07-10', '::1'),
(25, 'Research', '25-research.jpg', '25-research.jpg', 'Keyur', '2017-06-06', '2017-06-06', '127.0.0.1'),
(26, 'Appointment', '26-make_appointment.jpg', '26-make_appointment_mobile.jpg', 'Keyur', '2017-06-06', '2017-07-10', '::1'),
(30, 'Cryo Beauty', '30-cryo_beauty.jpg', '30-cryo_beauty_mobile.jpg', 'Keyur', '2017-06-16', '2017-07-10', '::1'),
(27, 'Whole Body Cryotherapy ', '27-whole_body_cryo.jpg', '27-whole_body_cryo_mobile.jpg', 'Keyur', '2017-06-15', '2017-07-10', '::1'),
(28, 'Targeted Cryo', '28-tageted_cryo.jpg', '28-tageted_cryo_mobile.jpg', 'Keyur', '2017-06-15', '2017-07-10', '::1'),
(29, 'Cryo Facial', '29-cryo_facial.jpg', '29-cryo_facial_mobile.jpg', 'Keyur', '2017-06-15', '2017-07-10', '::1'),
(31, 'Cryo Health Wealth', '31-cryo_health_wellness.jpg', '31-cryo_health_wellness_mobile.jpg', 'Keyur', '2017-06-16', '2017-07-10', '::1'),
(32, 'Cryo Pain', '32-cryo_pain.jpg', '32-cryo_pain_mobile.jpg', 'Keyur', '2017-06-16', '2017-07-10', '::1'),
(33, 'Cryo Weight Loss', '33-cryo_weightloss.jpg', '33-cryo_weightloss_mobile.jpg', 'Keyur', '2017-06-16', '2017-07-10', '::1'),
(34, 'Sports and Fitness', '34-cryo_sports_fitness.jpg', '34-cryo_sports_fitness_mobile.jpg', 'Keyur', '2017-06-16', '2017-07-10', '::1'),
(35, 'Terms and Condition', '35-terms_conditions.jpg', '35-terms_conditions_mobile.jpg', 'Keyur', '2017-06-17', '2017-07-10', '::1'),
(36, 'Privacy Policy', '36-privacy_policy.jpg', '36-privacy_policy_mobile.jpg', 'Keyur', '2017-06-17', '2017-07-10', '::1'),
(37, 'Disclaimer', '37-disclaimer.jpg', '37-disclaimer_mobile.jpg', 'Keyur', '2017-06-17', '2017-07-10', '::1'),
(38, 'Beauty', '38-Website_beauty_ banner.jpg', '38-Website_beauty_mobile.jpg', 'Bhavini', '2018-09-10', '0000-00-00', '123.201.2.173'),
(39, 'CryoLifting', '39-Website_lifting_ banner.jpg', '39-Website_lifting_mobile.jpg', 'Bhavini', '2018-09-10', '0000-00-00', '123.201.2.173'),
(40, 'NormaTec', '40-Website_ normatec_ Banner.jpg', '40-Website_normatec_mobile.jpg', 'Bhavini', '2018-09-10', '0000-00-00', '123.201.2.173'),
(41, 'CryoSliming', '41-Slimming Banner.jpg', '41-Slimming Banner.jpg', 'Bhavini', '2018-09-10', '2018-11-02', '123.201.2.173'),
(42, 'Cryo T-Shock', '42-T-shock banner black.jpg', '42-T-shock banner black.jpg', 'Bhavini', '2018-11-02', '2018-11-02', '116.74.112.172');

-- --------------------------------------------------------

--
-- Table structure for table `benefit`
--

CREATE TABLE `benefit` (
  `benefitID` int(11) NOT NULL,
  `is_benefit` int(2) NOT NULL DEFAULT '1',
  `benefit_title` varchar(255) NOT NULL,
  `home_image` text,
  `detail_image` text,
  `short_desc` text,
  `detail_desc` text,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `username` varchar(20) NOT NULL,
  `sortorder` int(5) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `remote_ip` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `benefit`
--

INSERT INTO `benefit` (`benefitID`, `is_benefit`, `benefit_title`, `home_image`, `detail_image`, `short_desc`, `detail_desc`, `createdate`, `modifieddate`, `username`, `sortorder`, `status`, `remote_ip`) VALUES
(18, 1, 'Cryo Beauty', '18-benifits_beauty.jpg', '18-cryo_beauty_iner_1.jpg', '<p class=\"text-justify\">Cryotherapy is a safe and natural alternative to achieving best results in beauty &amp; anti-aging without expensive surgical procedures.</p>', '<p>Cryotherapy is a safe and natural alternative to achieving best results in beauty &amp; anti-aging without expensive surgical procedures.</p>\r\n<p>By applying hyper-cool temperatures nearly about -150&deg;C to -180&deg;C to the skin&rsquo;s surface, Whole Body Cryotherapy &ldquo;jumpstarts&rdquo; the body&rsquo;s natural healing and rejuvenation processes. This includes increased circulation, which provides a youthful complexion, and stimulation collagen production, which is the foundation of firm, healthy skin.</p>\r\n<p>Cryotherapy also provokes vasoconstriction followed by vasodilation as the body reheats. This process increases blood circulation and detoxification, enriches the blood with high oxygen, nutrients &amp; enzymes and reduces inflammation.</p>\r\n<p>Cryotherapy increases blood flow to the skin to help remove toxins and rejuvenate the skin, including the reducing of visible cellulite.</p>\r\n<p class=\"main-benefit-list\">Reported benefits of Whole Body Cryotherapy for beauty &amp; Anti-Aging include:</p>\r\n<ul class=\"circle-bullet benifit-list\">\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Rejuvenated &amp; Fully Oxygenated Skin</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">More youthful complexion</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Reduce sign of Aging</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Reduce Wrinkles, Fine Lines, Blemishes, Super facial Scars, Acne</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Improve Skin Tone &amp; Skin Tightening</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">More Firm, Smooth &amp; Elastic skin</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Stimulation of collagen production</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Detoxification</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Stronger, fuller hair &amp; Nails</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Cellulite reduction</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Helps to reduce Psoriasis, Eczema &amp; Dermatitis</li>\r\n</ul>\r\n<ul class=\"circle-bullet benifit-list thumb-icon\">\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Combination of Whole Body Cryotherapy &amp; Facial Cryo multiples the result.</li>\r\n</ul>\r\n<p>**Result may vary based on the individual.</p>', '2017-05-17', '0000-00-00', 'Keyur', 4, 'E', '123.201.2.173'),
(19, 1, 'Cryo Health & Wellness', '19-benifits_health_wellness.jpg', '19-cryo_health_iner_1.png', '<p class=\"text-justify\">Nowadays many people are looking for ways to boost their health naturally and maintain their overall Wellness.</p>', '<p>Health is Wealth !!!</p>\r\n<p>Health and Wellness go hand in hand, but taking care of one&rsquo;s body encompasses more than the food we consume and the lifestyle we lead. Nowadays people are looking for ways to boost their health naturally and maintain their overall Wellness, are turning to cryotherapy in many countries of the world.</p>\r\n<p>The ultra-cool air used in whole body cryotherapy boost own healing abilities of the body, circulation of highly oxygenated blood with nutrients &amp; enzymes to each cells of the body. It is also causes the brain to release higher-than normal level of endorphins and other &ldquo;feel-good&rdquo; hormones. Because of the increased endorphins and adrenaline levels after a WBC session, puts you in a feel good mood, Passionate, and helps you to cope with future challenges you may face with a far more positive attitude. If you are battling with stress, consider cryotherapy to boost your endorphin level and bring stress relief.</p>\r\n<p>WBC effectively treat a number of conditions and improve overall health and wellness.</p>\r\n<p class=\"main-benefit-list\">Chief Benefits:</p>\r\n<ul class=\"circle-bullet benifit-list\">\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Reduce Stress, Depression, Anxiety</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Mood Enhancement</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Boost Sleep, Heal Insomnia</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Youthful ness</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Heal hormonal imbalance</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Increase Passion &amp; Energy in routine life</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Significantly improves psychological competitive edge</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Increase libido &amp; greater testosterone level in men</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Migraine</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Reducing pharmaceutical drug intake</li>\r\n</ul>\r\n<p>**Result may vary based on the individual.</p>', '2017-05-17', '0000-00-00', 'Keyur', 1, 'E', '127.0.0.1'),
(47, 1, 'Cryo Weight Loss', '47-benifits_weight_loss.jpg', '47-cryo_weightloss_iner_1.jpg', '<p>Whole Body Cryotherapy affects the body in a unique way that has several safe and positive effects. Weight loss is one of them.</p>', '<p>Whole Body Cryotherapy affects the body in a unique way that has several safe and positive effects. Weight loss is one of them.</p>\r\n<p>The skin senses the extreme cold temperature about -180&deg; C during a whole body cryotherapy session and send signals to the brain to go into &ldquo;fight or flight&rdquo; mode. In effort to maintain core temperature, blood rushes very rapidly to the core and burn up to 800 calories in each 3 minutes session. Calories continues to burn post-treatment as the body re-heats.</p>\r\n<p>By this extremely high circulation of the blood, body released Adrenaline &amp; Endorphins to increase metabolism and energy. Repeated Cryotherapy sessions helps metabolic rate and naturally increase the body&rsquo;s metabolism can last 3 to 5 days and may become permanent.</p>\r\n<p>Although regular exercise and healthy eating are major factors in maintaining a healthy weight. When you accelerate that weight loss with Diet &amp; Exercise, numbers of calories burn increase and you can significantly enhance the results you get. When you add it up, a few minutes in a cryopod has the same effect on your body as 45 minutes of rigorous swimming &amp; cardiovascular exercise, and it is all perfectly safe.</p>\r\n<p class=\" main-benefit-list\">Reported benefits of Whole Body Cryotherapy for beauty &amp; Anti-Aging include:</p>\r\n<ul class=\"circle-bullet benifit-list\">\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Burn up to 800 calories in single session (Number increase if coupled with Diet &amp; Exercise)</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Boost Metabolism</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Reset body&rsquo;s natural metabolic level</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Convert white fat into brown fat</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Shed Fat &amp; Fat Loss</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Restore proper fat distribution</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Flush Toxin</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Improve blood circulation and increase muscles tone which resulting in passive weight loss</li>\r\n</ul>\r\n<p>**Result may vary based on the individual.</p>', '2017-05-19', '0000-00-00', 'Keyur', 3, 'E', '127.0.0.1'),
(46, 1, 'Cryo  Fitness', '46-benifits_sportfitness.jpg', '46-cryo_sports_iner_1.jpg', '<p>Many professional athletes worldwide swear by Cryotherapy as the ultimate way to speed up muscle recovery allowing them a more</p>', '<p>It has been significantly proved, that body which is exposed to an extremely low temperatures, perform faster recovery after an exhausting workout. Cold helps to recuperate and relieve muscle pain. Whether you are an athlete, Fitness Lover, bodybuilder, weekend warrior or regular exerciser, Cryo sessions help speed up muscle repair allowing you to achieve your peak performance and goals.</p>\r\n<p>Many professional athletes worldwide swear by Cryotherapy as the ultimate way to speed up muscle recovery allowing them a more sustained performance at an elite level. They know that a faster recovery allows you to have the consistent and frequent training schedule that is key to skill development and utmost performance, and that Whole Body Cryotherapy can significantly accelerate recovery. Athletes with poor recovery and frequent injuries are unable to practice with the proper frequency and therefore are prevented from reaching their optimum performance level.</p>\r\n<p>Whole Body Cryotherapy exposes your body to extremely cold temperatures for a short period to increase the rate at which filtered, oxygen-rich blood flows through the muscles. It provides a safe and natural way of decreasing inflammation while accelerating the healing of damaged soft tissue and sore joints and reduces recovery time after vigorous workout by delivering oxygen and nutrients to the muscles.</p>\r\n<p class=\"main-benefit-list\">Reported benefits of Whole Body Cryotherapy for Sports &amp; Fitness Includes:</p>\r\n<ul class=\"circle-bullet benifit-list\">\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Improved High &amp; Effective Performance</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">High on-field Performance</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Increase Stamina, Energy &amp; Tolerance level</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Increase Range of Motion, Flexibility &amp; Strength of Muscles</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Increase Passion, Focus &amp; Concentration</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Faster Recovery</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Relief Pain</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Accelerate Tissue Healing</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Reduce inflammation &amp; Swelling, Soreness</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Fatigue Resistance</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Significantly improves psychological competitive edge</li>\r\n</ul>\r\n<ul class=\"circle-bullet benifit-list thumb-icon\">\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Whole Body Cryotherapy gives dramatically results Before &amp; After workout or Sports event.</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Contact Yugeva Cryo for Pre Workout, Post Workout &amp; Recovery Protocols.</li>\r\n</ul>\r\n<p>**Result may vary based on the individual.</p>', '2017-05-19', '0000-00-00', 'Keyur', 2, 'E', '127.0.0.1'),
(45, 1, 'Cryo  Pain', '45-benifits_pain.jpg', '45-cryo_pain_iner_1.png', '<p>Whole Body Cryotherapy was originally design as a treatment of Rheumatoid Arthritis and Inflammatory Joint Diseases.</p>', '<p>Whole Body Cryotherapy was originally design as a treatment of Rheumatoid Arthritis and Inflammatory Joint Diseases.</p>\r\n<p>Over 4 decades, doctors have been using Cryotherapy as a proven natural healing treatment to combat inflammation and pain in many medical conditions including inflammatory disorders, anxiety, joint pain, back pain and chronic conditions, such as psoriatic arthritis, fibromyalgia and ankylosing spondylitis.</p>\r\n<p>Exposure to an extreme cold temperature stimulates an anti-inflammatory response and results in constriction of the blood vessels. This response leads to regeneration and repair of the tissue and reduction of the pain. The ability of cryotherapy to reduce inflammation and help inspire the production of pain-reducing chemicals makes it an ideal treatment. Cryotherapy also helping with many conditions, such as:</p>\r\n<ul class=\"circle-bullet benifit-list\">\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Relief Pain, Inflammation &amp; Swelling</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Chronic Pain (Back pain, Neck Pain, Knee Pain, Joint Pain etc.)</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Rheumatoid Arthritis &amp; Fibromyalgia</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Accelerate healing of Joint, Muscles &amp; Tendons</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Boost Recovery</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Multiple Sclerosis</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Degenerative disease of the joint &amp; Spine</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Post-surgery recovery increase by 40 %</li>\r\n</ul>\r\n<ul class=\"circle-bullet benifit-list thumb-icon\">\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Combination of Whole Body Cryotherapy and Targeted Cryo help you to recovery more speedy.</li>\r\n</ul>\r\n<p>**Result may vary based on the individual.</p>', '2017-05-19', '0000-00-00', 'Keyur', 5, 'E', '127.0.0.1'),
(48, 1, 'Cryo Slimming', '48-Slimming Banner.jpg', '48-Slimming 750x450.jpg', '<p>If you&rsquo;re looking to lose fat on your <strong>stomach, legs, thighs, arms, hips or back,</strong> here is the non- surgical, safe and painless solution, introducing 1st time in India.</p>', '<p>If you&rsquo;re looking to lose fat on your <strong>stomach, legs, thighs, arms, hips or back,</strong> here is the non- surgical, safe and painless solution, introducing 1st time in India.</p>\r\n<p><strong>CryoSlimming</strong> uses the phenomenon of thermal shock using combination of Cryotherapy and Thermotherapy on the skin through FDA Approved advance technology from Italy.</p>\r\n<p>The combination of <strong>Thermotherapy (Heat)</strong> and <strong>Cryotherapy (Cold)</strong>makes fat cells unstable and accelerates their natural cell death without damaging to the overlying skin. Now these destroyed fat cells drain through your body&rsquo;s lymphatic system and gives miracle results over the fat.</p>\r\n<p>Results can be seen after the first treatment with an impressive 0.5-1.0 inches lost. Optimal results are seen after 5 sessions over 10 weeks. With proper Diet, work-out &amp; healthy lifestyle, you can stimulate lymphatic circulation, elimination of dead fat cells &amp; Detoxification, which boost your results &amp; keep your body attractive.</p>\r\n<p class=\"main-benefit-list\"><strong>Benefits:</strong></p>\r\n<ul class=\"circle-bullet benifit-list\">\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Localised fat removal</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Body Sliming</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Inch loss</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Body shaping</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Body sculpting</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Cellulite reduction</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Skin tightening</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Fat distribution</li>\r\n</ul>\r\n<p class=\"main-benefit-list\"><strong>Area that can benefits:</strong></p>\r\n<ul class=\"circle-bullet benifit-list thumb-icon\">\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\"><strong>Stomach (Belly):</strong> reduce fat</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\"><strong>Back:</strong> stubborn spots , Bra line and love handle</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\"><strong>Thigh:</strong> reduce fat and cellulites</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\"><strong>Hips:</strong> reduce fat and cellulites</li>\r\n</ul>', '2018-08-22', '0000-00-00', 'Bhavini', 6, 'E', '116.74.112.172'),
(49, 1, 'Cryo Lifting', '', '49-51497-beauty-woman.jpg', '<p>It&rsquo;s time to freeze your Ageing, Cellulites, skin toning and other skin problems. We are introducing non- surgical, safe and unique solution in India for the very 1st Time.</p>', '<p>It&rsquo;s time to freeze your Ageing, Cellulites, skin toning and other skin problems. We are introducing non- surgical, safe and unique solution in India for the very 1st Time.</p>\r\n<p><strong>CryoLifting</strong> uses the phenomenon of thermal shock using combination of Cryotherapy and Thermotherapy on the skin through FDA Approved advance technology from Italy.</p>\r\n<p>CryoLifting is a treatment that uses <strong>Thermotherapy (Heat) &amp; Cryotherapy (Cold)</strong> to rejuvenate &amp; smoothing of skin by accelerating bio-chemical reaction, increasing micro blood circulation, oxygen and nutrients supply to the skin which helps to diminish the appearance of cellulites, fine lines and wrinkles. Also collagen production increase which eliminate body cellulite, tones the area, improve skin elasticity, and reduce pore size &amp; sign of aging.</p>\r\n<p>Result can be maximized with Whole body Cryo therapy &amp; Local cryo therapy.</p>\r\n<p class=\"main-benefit-list\"><strong>Area that can benefits:</strong></p>\r\n<ul class=\"circle-bullet benifit-list\">\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\"><strong>Face:</strong> reducing wrinkles, sign of ageing, fine lines, toning, double chin</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\"><strong>Thighs:</strong> removing cellulite and lifting</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\"><strong>Arms:</strong> Toning, Lifting</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\"><strong>Stomach:</strong> skin Lifting</li>\r\n</ul>\r\n<p class=\"main-benefit-list\"><strong>Benefits:</strong></p>\r\n<ul class=\"circle-bullet benifit-list thumb-icon\">\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Skin tightening and lifting</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Anti-ageing</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Skin toning</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Cellulite reduction</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Reduce wrinkles and fine lines</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Reduce Dark circles and Puffiness around the eyes</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Reduce Acne and scar</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Reduce Double chin</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Buffalo hump (Neckline fat)</li>\r\n</ul>', '2018-08-22', '0000-00-00', 'Bhavini', 7, 'E', '116.74.112.172');

-- --------------------------------------------------------

--
-- Table structure for table `contact_master`
--

CREATE TABLE `contact_master` (
  `cid` int(11) NOT NULL,
  `cname` varchar(100) NOT NULL,
  `cemail` varchar(100) NOT NULL,
  `csubject` varchar(100) NOT NULL,
  `cmessage` text NOT NULL,
  `ccontact` varchar(30) DEFAULT '0',
  `cdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `new` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_master`
--

INSERT INTO `contact_master` (`cid`, `cname`, `cemail`, `csubject`, `cmessage`, `ccontact`, `cdate`, `new`) VALUES
(12, 'cxcxc', 'a@jdjdh', 'jxjs', 'ddds', '4898943', '2017-03-13 18:30:00', 1),
(13, 'sasa', 'a2@sjjsd', 'dssdsd', '43343443', '3443', '2017-03-13 18:30:00', 1),
(14, 'dsdsdsds', 'a@jsajd', 'sasa', 'assasa', '34434432', '2017-03-13 18:30:00', 1),
(15, 'dfsdf', 'dsfsddsf@gmail.com', 'dsdf', 'dsdfdsfdsf', '09809809', '2017-03-18 05:34:02', 1),
(17, 'Testing', 'Testing@gmail.com', 'Testing', 'Testing', '123456', '2017-04-08 06:28:09', 1),
(18, 'Testing', 'bhavini.easternts@gmail.com', 'Testing', 'Testing', '124', '2017-04-08 06:28:56', 1),
(19, 'my bhavini', 'bhavini@gmail.com', 'my bhavini', 'my bhavini', '0', '2017-04-20 10:01:10', 1),
(20, 'Bhavini', 'bhavini.easternts@gmail.com', '', 'Testing', '123456', '2017-09-26 09:07:00', 1),
(21, 'Bhavini2', 'bhavini.easternts@gmail.com', '', 'Testing2', '123456789', '2017-09-26 09:07:00', 1),
(22, 'Bhavini Chuahan', 'bhavini.easternts@gmail.com', 'Testing', 'Testing', '1234578542', '2017-09-26 09:07:00', 1),
(23, 'Bhavini Chuahan', 'bhavini.easternts@gmail.com', 'Testing', 'Testing', '1234578542', '2017-09-26 09:07:00', 1),
(24, 'Bhavini Chuahan', 'bhavini.easternts@gmail.com', 'Testing', 'Testing', '1234578542', '2017-09-26 09:07:00', 1),
(25, 'RUPEN MALAVIA', 'Rupenmalaviya@gmail.com', 'Regarding therapy', 'What chryotherapy is for?', '9824166708', '2017-09-26 09:07:00', 1),
(26, 'sfgsfgg', 'vsdvsvv@df.com', 'dfsffdsfggsgs', 'sdgargsegrgasfgr', '9999999999', '2017-09-26 09:07:00', 1),
(27, 'Bhavini Mail', 'bhavini.easternts@gmail.com', 'Bhavini Mail', 'Bhavini Mail', '23434345', '2017-09-26 09:07:00', 1),
(28, 'Bhavini Testing1', 'bhavini.easternts@gmail.com', 'Testing', 'Bhavini Testing1', '44558784758454', '2017-09-26 09:07:00', 1),
(29, 'asdf asdf', 'sadf@asdf.com', 'asdfsadf', 'asdfasdfasdf', '9879879877', '2017-09-26 09:07:00', 1),
(30, 'Nilesh', 'nileshkeda@gmail.com', 'Inquiry ', 'Wanna inquire about the pruduct and how does it releave pain .', '9909406161', '2017-09-26 09:07:00', 1),
(31, 'Live', 'bhavini.easternts@gmail.com', 'Testing', 'Live', '557987875636535+', '2017-09-26 10:31:33', 1),
(32, 'Live', 'bhavini.easternts@gmail.com', 'Live', 'Live', '44558784758454', '2017-09-26 10:31:33', 1),
(33, 'demo demo', 'anupriya.easternts@gmail.com', 'Icon testing', 'vdsfgsegfse', '44558784758454', '2017-09-26 10:31:33', 1),
(34, 'Ndndj', 'nxjnxbzkjs@hshs.com', 'Jsndjnss', 'Jsjjsjkshsjsksbsks', '99768483739', '2017-10-05 06:24:06', 1),
(35, ' J j j ', 'ivicici@chcycu.com', 'Jcjcicjc', 'Kgzitsgxogxyxkhxho', '48484848485', '2017-10-05 06:24:06', 1),
(36, 'KJHASVBCJHDV', 'JHVCJHDC@CDHD.COM', 'JACGSVCD', 'KJHDVCKHJDVC', '98789465876', '2018-11-24 07:15:16', 1),
(37, 'Dishant Mukeshbhai Mehta', 'sadf@asdf.com', 'asdf ', '087yih iuyhiuher', '7600015802', '2018-11-24 07:15:16', 1),
(38, 'wiubn', 'jbhgca@jyafsd.com', 'bjysfgdc', 'knugyasdcnfkusd', '983675398', '2018-11-24 07:15:16', 1),
(39, 'asfdsf', 'dfsadf@df.com', 'WKUBEYGFC', 'KU VGWFIUYGVFC IWRC', '346456366453', '2018-11-24 07:15:16', 1),
(40, 'dishant', 'dishant.1712@gmail.com', 'contact us testing', 'contact us testing frm yugeva', '7600015802', '2018-11-24 07:15:16', 1),
(41, 'jhfvckhgc', 'nhgcdj@jhvgf.com', 'jhgcfhgc', 'vdjfivftyf', '8698769876', '2018-11-24 07:15:16', 1),
(42, 'Jay kapopara', 'Jaykumarkapopara@gmail.com', 'Details', 'I want some details about this', '9428841882', '2018-11-24 07:15:16', 1),
(43, 'JITEN DESAI', 'JITEN.COM@GMAIL.COM', 'FOR TREATMENT', 'COST FOR TREATMENT ?', '9879066290', '2018-11-24 07:15:16', 1),
(44, 'Jai Kishan Khatri', 'jai_mosl@yahoo.co.in', 'Query', 'I want to know more about this therapy', '9694400005', '2018-11-24 07:15:16', 1),
(45, 'Bhavini Eastern', 'bhavini.easternts@gmail.com', 'Testing', 'Easternts Testing', '43534535', '2018-11-24 07:15:16', 1),
(46, 'Navratan agrawal', 'canavratanagrawal@gmail.com', 'BNI-CHANAKYA TAKE THERAPY', 'I WAN TO TAKE THERAPY WHAT ARE THE CHARGES', '9376699998', '2018-11-24 07:15:16', 1),
(47, 'Chintan Shah', 'Chins03@gmail.com', 'Inquiry before making an appointment', 'Hello,\r\n\r\nWhatsApp the details of the theraies that you offer and the prices for the same ?\r\n\r\nAlso, how can i make an appointment ?\r\n\r\nThanks,\r\n\r\nChintan', '9712966245', '2018-11-24 07:15:16', 1),
(48, 'Roshni patel', 'ckp12356@gmail.com', 'Call me', 'Hi \r\nI wanna come check your place today in between 3 to 4 ', '7600791502', '2018-11-24 07:15:16', 1),
(49, 'Roshni patel', 'ckp12356@gmail.com', 'Call me', 'Hi \r\nI wanna come check your place today in between 3 to 4 ', '7600791502', '2018-11-24 07:15:16', 1),
(50, 'GAURANG', 'genius_gaurang@yahoo.co.in', 'this treatment will cure (breast)fibroadenoma ', 'hi\r\n\r\ncan this treatment will cure (breast)fibroadenoma ?', '9687151034', '2022-10-29 09:59:27', 0),
(51, 'Kavita Chauhan ', 'luvtanu_86@yahoo.co.in', 'Appointment ', 'Hello,\r\nTrying to reach you but your no one is answering. \r\nI need appointment for tomorrow. \r\nPlease call. ', '9724241186', '2023-02-24 13:17:35', 0);

-- --------------------------------------------------------

--
-- Table structure for table `content_master`
--

CREATE TABLE `content_master` (
  `content_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `remote_ip` varchar(150) NOT NULL,
  `description` text,
  `image_id` int(11) NOT NULL,
  `image` text,
  `type` varchar(100) NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT 'E'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content_master`
--

INSERT INTO `content_master` (`content_id`, `username`, `createdate`, `modifieddate`, `remote_ip`, `description`, `image_id`, `image`, `type`, `status`) VALUES
(2, '', '2016-09-05', '2017-04-18', '::1', 'a:5:{s:4:\"type\";s:1:\"I\";s:3:\"url\";s:41:\"https://www.youtube.com/embed/OwF6jgpbGKM\";s:7:\"caption\";s:32:\"Group Website Under Construction\";s:11:\"description\";s:18:\"Under Construction\";s:12:\"redirect_url\";s:1:\"#\";}', 212, '1/212-Group-Website-.jpg', 'popup', 'E');

-- --------------------------------------------------------

--
-- Table structure for table `download_brochure`
--

CREATE TABLE `download_brochure` (
  `b_id` int(11) NOT NULL,
  `bname` varchar(100) NOT NULL,
  `bemail` varchar(100) NOT NULL,
  `bphone` varchar(20) NOT NULL,
  `bdate` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `download_brochure`
--

INSERT INTO `download_brochure` (`b_id`, `bname`, `bemail`, `bphone`, `bdate`) VALUES
(1, 'Bhavini', 'xvxgd@fdgd', '44558784758454', '2017-07-29'),
(2, 'd', 'd@gmail.com', '989898980', '2017-08-17'),
(3, 'hei', 'ndsahdkh@kjhkad.com', '98763645', '2017-08-18'),
(4, 'Bunty Patel', 'buntypatel20@yahoo.com', '9979993456', '2017-08-18'),
(5, 'asdf asdf', 'sadf@asdf.com', '9879879877', '2017-09-01'),
(6, 'bkhjgbh', 'hdtdjytdytd@jhgh.com', '9999999999999999999', '2017-09-01'),
(7, 'mjyhf', 'jhdavgjhd@ajkdhc.com', '9999999999999', '2017-09-15'),
(8, 'kjhg', 'khgjkhj@jhgf.com', '989898989898', '2017-09-26'),
(9, 'Dishant', 'bjadjasdas@bcfxvc', '44558784758454', '2017-09-26'),
(10, 'Dishant', 'xvxgd@fdgd', '557987875636535', '2017-09-26'),
(11, 'kjhb', 'blkjbhd@kjb.com', '9897877987', '2017-09-26'),
(12, 'Bunty', 'jbkdjbf@jhff.com', '9987564562', '2017-10-03'),
(13, 'bunty', 'kjdbf@jkhaf.com', '987986986', '2017-10-03'),
(14, 'Dishant', 'bjadjasdas@bcfxvc', '44558784758454', '2017-10-03'),
(15, 'Dishant ', 'xvxgd@fdgd', '23434345', '2017-10-03'),
(16, 'Bhavini', 'cdsdf@gmail.com', '534535345634636', '2017-10-03'),
(17, 'kjhg', 'ljhgb@jh.in', '097948545', '2017-10-03'),
(18, 'dishant', 'abcgbh@hbh.com', '6561615615616', '2017-10-05'),
(19, 'ksjbad', 'lkjsbndkjs@jhd.com', '98754568475', '2017-11-21'),
(20, 'cdxdvsfdv', 'vsdvsdvv@sd.com', '7468768762', '2017-11-21'),
(21, 'jdahvf', 'aksjbgd@kajfd.com', '894549857485', '2017-11-29'),
(22, 'BUNTY', 'lkijsdbkjdbf@kjhsdbf.com', '9857630957656', '2017-11-30'),
(23, 'Dishant Mukeshbhai Mehta', 'dishant.1712@Gmail.com', '9879879877', '2017-12-04'),
(24, 'bunty', 'kjbhjd@hg.com', '874629374545', '2018-02-15'),
(25, 'bjkashvd', 'kajdgbkashjd@ajghsvd.com', '872563454345435', '2018-02-15'),
(26, 'Hemaang Gandhi', 'hsg@rioconn.in', '918980007200', '2018-05-29'),
(27, 'Jayesh', 'jay_mistry777@yahoo.co.in', '9824144469', '2018-08-01'),
(28, 'sdjbsdifb', 'svbisdjvbsib@ajhsd.com', '94385739867598', '2018-08-02'),
(29, 'JITEN DESAI', 'JITEN.COM@GMAIL.COM', '9879066290', '2018-08-10'),
(30, 'Dhirendra', 'vyasdhirendra@gmail.com', '8511976882', '2018-08-14'),
(31, 'Chintan Patel', 'Chintan.patel@socialee.in', '9978931292', '2018-08-18'),
(32, 'Hiren', 'patelhiru@yahoo.in', '9824612000', '2018-09-27'),
(33, 'Priyank ', 'priyankbhalala@yahoo.com', '9898932008', '2018-09-29'),
(34, 'skddfk ldfjwwid', 'kfjkd@gmail.com', '9865985698', '2018-10-25'),
(35, 'Sean  Dawson', 'sdawson777@gmail.com', '9143849564', '2018-11-28'),
(36, 'adfdsd', 'sdfdsff@sdg.com', '98798789687', '2018-12-01'),
(37, 'ggjhgjh', 'ghjgj@fhgfhgfh.com', '8765432312', '2018-12-03'),
(38, 'aiyudg', 'ibglib@jhvd.com', '098748956555', '2018-12-04'),
(39, 'asgwi', 'asgwi@gamil.com', '9634267567', '2022-08-07'),
(40, 'Darshan', 'darshan@unicorn-enterprise.com', '7990293301', '2022-08-13'),
(41, 'karan', 'milliare@outlook.com', '+919726550066', '2022-08-13'),
(42, 'Keerthana Muralitharan', 'keerthanamurali95@gmail.com', '+919842576336', '2022-09-08'),
(43, 'Darshil Patel', 'darshilrakholiya2@gmail.com', '+91 95129 00346', '2022-10-27'),
(44, 'ahfbdsjhfb', 'jdshfbjsdhfb@jadhfvdshjf.com', '237827642745', '2022-11-30');

-- --------------------------------------------------------

--
-- Table structure for table `epanel_aes`
--

CREATE TABLE `epanel_aes` (
  `content_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `modifieddate` date NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `epanel_master`
--

CREATE TABLE `epanel_master` (
  `id` int(11) NOT NULL,
  `home_content` text NOT NULL,
  `copyright` varchar(100) NOT NULL,
  `powered_by` varchar(255) NOT NULL,
  `ga_view_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `create_date` date NOT NULL,
  `modified_date` date NOT NULL,
  `remote_ip` varchar(70) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `epanel_master`
--

INSERT INTO `epanel_master` (`id`, `home_content`, `copyright`, `powered_by`, `ga_view_id`, `username`, `create_date`, `modified_date`, `remote_ip`) VALUES
(1, '<p><span>Eastern Techno Solution (ETS) is headquartered in Surat, Gujarat. An IT Company established by ex- employees of COGNIZANT and INFOSYS.</span><br /><br /><span>It principally focused on</span><span>&nbsp;Customized Software Development, Web Applications</span><span>&nbsp;(which includes Web Designing and Ecommerce Websites),&nbsp;</span><span>Mobile Applications and Training Institute.</span><span>&nbsp;Within 3 years from its inception, ETS has been able to make a mark in Gujarat.</span><br /><br /><span>We are a company with leading specialized professionals whose striking experiences reveal a comprehensible indulgent that industries today are faced with the confrontation of harnessing the eternally changing landscape of a complicated and spirited business world.</span><br /><br /><span>It\'s essential for businesses today to stay on the callous edge of technology to build and implement the tools necessary to compete and succeed taking care of innovation. ETS has showed that with apparent understanding of your business attached to our analytical proficiency; a policy can be forged heartening your company to a whole new plateau of triumph.</span><br /><br /><span>Our all-embracing case of services includes Customized software&rsquo;s</span><span>, Web</span><span>&nbsp;application development and Mobile application development (Android development and iPhone development). ETS sets it a challenge to make finest use of the resources, and the precious business intelligence entrenched in a range of verticals - Insurance, Finance, Hotels &amp; Travel, Healthcare, Retail, Distribution, Government, and Manufacturing etc.</span><br /><span><br /><strong>We as Training Institute</strong></span><br /><span>ETS also offers a wide range of training programs for school as well as college students and IT professionals. It provides high class principles and top priority to deliver best learning know-how by following best business practices projected to help the students to expand valuable newest knowledge and experience in grounding for an innovative, pleasing career in an ever-changing marketplace.</span></p>\r\n<p><span><br /><strong>We as Consultancy Firm</strong><br /><span>ETS is also a consultancy firm that helps college students and IT professionals to be placed in the best IT companies. We have tie- ups with many companies. So the students/ IT Professionals, after attending the corporate training program, maximize their chances of getting placed in the best IT companies. Thus, we are helping the industry by providing IT technocrats.</span></span></p>', 'Eastern Techno Solutions', 'a:2:{s:5:\"title\";s:24:\"Eastern Techno Solutions\";s:4:\"link\";s:25:\"http://www.easternts.com/\";}', 154844729, 'Keyur', '2015-10-26', '2017-09-26', '116.72.9.166');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `faq_Id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `image` varchar(256) DEFAULT NULL,
  `review` text NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `modifieddate` date DEFAULT NULL,
  `sortorder` int(8) DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `remote_ip` varchar(100) DEFAULT NULL,
  `faq_type` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`faq_Id`, `name`, `image`, `review`, `username`, `createdate`, `modifieddate`, `sortorder`, `status`, `remote_ip`, `faq_type`) VALUES
(18, 'Protocols of the Therapy', NULL, '<p class=\"text-justify\">Customers Health, Safety, Privacy &amp; comfort are our priority. We have design all system and work protocols according to it. Our train staff will guide and inform you everything related therapy &amp; all safety instructions. All necessary steps will taken after your permissions only.</p>\r\n<p class=\"text-justify\">At the time of therapy, they will be with you for any assistant. We also have strict protocols for your changing room, bathrobe &amp; chamber door opening while you will be in minimum clothing in the chamber. Don&rsquo;t worry you will be comfortable.</p>', 'Keyur', '2017-05-15', NULL, 8, 'E', '127.0.0.1', '4'),
(19, 'What should I do in Emergency ?', NULL, '<p class=\"text-justify\">The door of the chamber will never locked, you can step out anytime if needed. Our cryotherapist will always by your side for your assistance.</p>', 'Keyur', '2017-05-15', NULL, 9, 'E', '127.0.0.1', '4'),
(20, 'Who should not do cryotherapy ? ', NULL, '<p class=\"text-justify\">In such type of medical condition, we do not recommend client to take cryotherapy. Please contact YUGEVA CRYO to check contradiction about cryotherapy.</p>', 'Keyur', '2017-05-15', '2017-07-08', 10, 'E', '127.0.0.1', '4'),
(15, 'Is nitrogen is safe for human beings ?', NULL, '<p class=\"text-justify\">Yes, Nitrogen is a non-toxic gas. The air that we breathe is made up of 16% Oxygen, 1% Hydrogen, 78% Nitrogen and 5% of other components.</p>', 'Keyur', '2017-05-15', NULL, 5, 'E', '127.0.0.1', '4'),
(16, 'Are there any age restrictions ?', NULL, '<p class=\"text-justify\">The minimum age for cryotherapy is 14 years old. Individuals under the age of 18 must be accompanied by a parent or guardian in order to receive cryotherapy with parental consent. There is no upper age limit.</p>', 'Keyur', '2017-05-15', NULL, 6, 'E', '127.0.0.1', '4'),
(17, 'What should I wear?', NULL, '<ul class=\"circle-bullet\">\r\n<li>Men remove all clothing except underwear.</li>\r\n<li>Women may wear a non-underwire bra, underwear or may remove all clothing.</li>\r\n<li>Less Clothing will maximize exposure.</li>\r\n<li>Clients must remove all jewelry or other metal on their body.</li>\r\n<li>Clients must be 100 percent dry: towels + hairdryers are provided.</li>\r\n<li>Put on a Robe &amp; Fur Shoe.</li>\r\n</ul>', 'Keyur', '2017-05-15', '2017-05-16', 7, 'E', '127.0.0.1', '4'),
(12, 'How Does Cryotherapy Works?', NULL, '<p class=\"text-justify\">The Cryosauna uses gas form nitrogen to lower the client&rsquo;s skin surface temperature by 30-50 degrees Fahrenheit over a period of two-three minutes. The Cryochamber is cooled using liquid nitrogen but clients are not in direct contact with the gas. The exposed skin reacts to the extreme temperatures by sending messages to the brain that stimulant natural regulatory functions of the body. In addition, the skins exposure to these subzero temperatures trigger the release of anti-inflammatory molecules, endorphins, toxins, and increases oxygen circulation within the bloodstream. Please click here to understand entire process.</p>', 'Keyur', '2017-05-15', '2017-05-15', 2, 'D', '127.0.0.1', '4'),
(13, 'Is Whole Body Cryotherapy a proven treatment for recovery and health?', NULL, '<p class=\"text-justify\">Yes. Whole Body Cryotherapy has been used in its modern form in Europe and Asia for over 30 years by health practitioners (including MDs). Countless studies have been done on the various health benefits of Whole Body Cryotherapy.</p>', 'Keyur', '2017-05-15', '2017-05-15', 3, 'E', '127.0.0.1', '4'),
(14, 'Is it Comfortable ?', NULL, '<p class=\"text-justify\">Yes, it is comfortable &amp; Tolerable a. Before entering cryo chamber, we provide all necessary stuffs for cryo therapy. The treatment is of short duration (1.5 - 3 minutes), and the cold is &lsquo;dry&rsquo;, so it is very tolerable. Towards the end of the treatment, you may get a &lsquo;pins and needles&rsquo; sensation, which disappears immediately after the treatment.</p>', 'Keyur', '2017-05-15', NULL, 4, 'E', '127.0.0.1', '4'),
(11, 'Is Whole Body Cryotherapy is safe?', NULL, '<p class=\"text-justify\">Yes, as Yugeva Cryo\'s highest priority is guest\'s health. WBC uses cold air, the cooling agents never actually come into contact with your skin. The air is chilled using liquid nitrogen, and nitrogen makes up 78% of the air we breathe. Because the temperature change to your body is only superficial, your internal body temperature remains constant throughout treatment. Your head is always kept outside of the low temperature area.</p>\r\n<p class=\"text-justify\">Before a session, we takes every guests&rsquo; blood pressure and asks several medical history questions. We also inform the guest about all information about safety like contradictions, Do\'s &amp; Dont\'s, Emergency etc.. Additionally, we provides all required stuffs to be used in cryotherapy.</p>\r\n<p class=\"text-justify\">The Cryosauna is equipped with a number of safety features. While the door closes, it never locks, so you are in full control of your environment. A trained cryotherapist is always present to ensure your maximum safety. In addition, the room is equipped with oxygen sensors and proper ventilation systems to ensure optimal air quality. Our staff is fully trained to make sure you experience both ultimate healing and ultimate safety.</p>', 'Keyur', '2017-05-15', NULL, 1, 'E', '127.0.0.1', '4'),
(21, 'I am claustrophobic. Can I use whole body cryotherapy ?', NULL, '<p class=\"text-justify\">Yes, you may. The chamber is open at the top and your head is raised above the level of the chamber allowing you to see in all direction &amp; breathe natural air in the room. Furthermore, the door will never locked. If needed, you can step out anytime. Our cryotherapist is always by your side for your comfort.</p>\r\n<p class=\"text-justify\">Clients who suffer from claustrophobia report that they are comfortable in the device.</p>', 'Keyur', '2017-05-15', NULL, 11, 'E', '127.0.0.1', '4'),
(22, 'How much time I need to spend for cryotherapy?', NULL, '<p class=\"text-justify\">Not&nbsp; Required</p>', 'Keyur', '2017-05-15', '2017-05-25', 12, 'D', '127.0.0.1', '4'),
(23, 'How often & How many treatments should I do?', NULL, '<p class=\"text-justify\">The optimal number of cryotherapy sessions is dependent on client&rsquo;s health, medical condition, concern &amp; objective. Our trained staff will guide for the same as per your condition &amp; requirement after the individual discussion.</p>', 'Keyur', '2017-05-15', '2017-07-08', 13, 'E', '127.0.0.1', '4'),
(24, 'How do I feel after the treatment?', NULL, '<p class=\"text-justify\">Most clients will feel great &amp; energetic right after their first treatment due to the release of endorphins. Depending on your physical condition, you may feel immediate relief from joint and muscle pain, improved energy, and increased flexibility for several hours or even days. Many clients have expressed that they have the best night of sleep after a cryotherapy session.</p>', 'Keyur', '2017-05-15', NULL, 14, 'E', '127.0.0.1', '4'),
(25, 'How soon I can expect the result?', NULL, '<p class=\"text-justify\">Depending on your physical condition, you may feel immediate relief from joint and muscle pain, improved energy, and increased flexibility that will last for several hours or even days. Changes in skin texture and reduction in cellulite and weight loss will take longer to see results and may require a series of treatments for maximum results.</p>', 'Keyur', '2017-05-15', '2017-05-25', 15, 'D', '127.0.0.1', '4'),
(26, 'Is it necessary to do exercise before or after treatment?', NULL, '<p class=\"text-justify\">Not Required</p>', 'Keyur', '2017-05-15', '2017-05-25', 16, 'D', '127.0.0.1', '4'),
(27, 'Do I take shower before or after the treatment?', NULL, '<p class=\"text-justify\">No, you don&rsquo;t. The treatment is completely dry and will not make your skin wet.</p>', 'Keyur', '2017-05-15', NULL, 17, 'D', '127.0.0.1', '4'),
(28, 'What happens if I am wet or have used moisturizer before my session?', NULL, '<p class=\"text-justify\">Any moisture on the skin can cause skin burns. (A towel will be provided to dry yourself before your session.)</p>', 'Keyur', '2017-05-15', NULL, 18, 'D', '127.0.0.1', '4'),
(29, 'Can I work out immediately before or after cryotherapy? ', NULL, '<p class=\"text-justify\">Yes. In fact, it is recommended.</p>\r\n<p class=\"text-justify\">If you workout before your exposure, you can expect greater recovery due to the inflammation reduction. If you work-out after your exposure, you can expect a higher pain tolerance, more energy and greater flexibility. 3 minutes of WBC session is highly recommended before race or an event for batter performance.</p>', 'Keyur', '2017-05-15', NULL, 19, 'E', '127.0.0.1', '4'),
(30, 'Is there anything I should avoid following a cryotherapy treatment?', NULL, '<p class=\"text-justify\">Yes. Do not enter a hot sauna or Jacuzzi for at least six hours. You should also minimize alcohol consumption for several hours following treatment.</p>', 'Keyur', '2017-05-15', NULL, 20, 'E', '127.0.0.1', '4'),
(31, 'I am pregnant; can I use whole body cryotherapy?', NULL, '<p class=\"text-justify\">Congratulations! However, you should not use whole body cryotherapy while pregnant. See you after the baby is born.</p>', 'Keyur', '2017-05-15', NULL, 21, 'E', '127.0.0.1', '4'),
(32, 'How Do I Warmup after the treatment ?', NULL, '<p class=\"text-justify\">Light cardio exercise recommended after the cryotherapy session to reheat your body. Exercise equipment are available in YUGEVA CRYO for your light cardio work out.</p>', 'Keyur', '2017-05-15', '2017-07-08', 22, 'E', '127.0.0.1', '4'),
(33, 'What is the Risk ?', NULL, '<p class=\"text-justify\">Whole body Cryotherapy is very well tolerated and has minimal risks: Fluctuations in blood pressure during the procedure by up to 10 points systolically (this effect reverses after the end of the procedure, as peripheral circulation returns to normal), allergic reaction to extreme cold (rare), claustrophobia, redness, and skin burns (only if exposed to low temperatures longer than recommended).</p>', 'Keyur', '2017-05-15', NULL, 23, 'E', '127.0.0.1', '4'),
(34, 'How long NormaTec been around?', NULL, '<p class=\"text-justify\">NormaTec was founded in 1998 by Laura F. Jacobs, MD, PhD, in response to a desperate need for new technology to rapidly and non-invasively treat circulation-related disorders. In 2002, the company introduced the NormaTec PCD (Pneumatic Compression Device), an FDA-cleared medical device that yields highly effective clinical results for patients with peripheral vascular diseases. After hearing reports from athletes that they were using their NormaTec Systems for workout and performance recovery (not just acute injuries), NormaTec started its Athlete Technologies division in 2007. Today, many of the world\'s best athletes regularly use their NormaTec Recovery Systems for maximum performance recovery.</p>', 'Bhavini', '2018-08-22', '2018-08-22', 24, 'D', '116.74.103.171', '5'),
(35, 'How does the NormaTec recovery system works?', NULL, '<p class=\"text-justify\">The most important element for effective compression is the massage pattern. NormaTec\'s founder, Laura F. Jacobs, MD, PhD, a physician bioengineer, realized this fundamental principle when she developed and patented the Sequential Pulse Pneumatic Waveform. Unlike more simplistic compression patterns, NormaTec Pulse Technology is based on normal physiology, and it synergistically combines three distinctive massage techniques to speed the body&rsquo;s normal recovery process: pulsing compression, gradients, and distal release. Through these mechanisms, the NormaTec Recovery System maximizes circulation throughout the body to help you train harder, recover faster, and perform better.</p>', 'Bhavini', '2018-08-22', '2018-08-22', 25, 'D', '116.74.103.171', '5'),
(36, 'WHAT CONDITIONS WOULD PREVENT ME FROM USING A NORMATEC?', NULL, '<p class=\"text-justify\">The NormaTec Recovery Systems are FDA cleared devices that are safe for home use. Please consult the product page for the PULSE and the PULSE PRO for each system\'s specific safety information.</p>', 'Bhavini', '2018-08-22', '2018-08-22', 26, 'D', '116.74.103.171', '5'),
(37, 'Why isn\'t there ice in the NormaTec Recovery System? ', NULL, '<p class=\"text-justify\">Ice is a vasoconstrictor; it constricts your vessels and decreases blood flow. While this is beneficial in the acute phase of an injury to reduce immediate inflammation, in the long run it actually impairs healing and recovery. On the other hand, the NormaTec Recovery System uses NormaTec Pulse Technology to increase circulation and blood flow.</p>', 'Bhavini', '2018-08-22', '2018-08-22', 27, 'D', '116.74.103.171', '5'),
(38, 'What makes NormaTec Recovery system the best?', NULL, '<p class=\"text-justify\">Compression technology has been around for decades in both static and simple dynamic forms. But the NormaTec Pulse Technology found in NormaTec Recovery Systems takes dynamic compression to a new level. This unique pneumatic waveform, which is exclusive to NormaTec products, is designed to externally compress the limbs in a way that mimics normal physiology, featuring a sophisticated pulsing, gradient, and distal release compression pattern. Initially developed for medical patients with severe circulatory and peripheral vascular disorders, the NormaTec Recovery System is now the most effective recovery tool for athletes who want maximum performance recovery.</p>', 'Bhavini', '2018-08-22', '2018-08-22', 28, 'D', '116.74.103.171', '5'),
(39, 'When and for how long should I use my NormaTec system? ', NULL, '<p class=\"text-justify\">The NormaTec Recovery System can be used both before and after exercise, whether it is routine training or high-level competition.</p>\r\n<p class=\"text-justify\">Before exercise, the NormaTec acts as a high-tech massage to warm up your muscles. Pre-workout sessions are generally 10 to 20 minutes long with a moderate intensity level.</p>\r\n<p class=\"text-justify\">Using the NormaTec Recovery System after intense exercise will significantly speed up your recovery process, allowing you to train harder and perform better. We recommend using your NormaTec within a few hours after exercise to expedite your recovery process. Post-workout recovery sessions are generally 20 to 60 minutes long with a moderate to high intensity level (it is safe to pump as long as you want). Sit back, relax, and enjoy the high-tech massage found only in a NormaTec Recovery System.</p>', 'Bhavini', '2018-08-22', '2018-08-22', 29, 'D', '116.74.103.171', '5');

-- --------------------------------------------------------

--
-- Table structure for table `faq_master`
--

CREATE TABLE `faq_master` (
  `faq_master_id` int(11) NOT NULL,
  `faq_type` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `sortorder` int(11) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `remote_ip` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faq_master`
--

INSERT INTO `faq_master` (`faq_master_id`, `faq_type`, `username`, `createdate`, `modifieddate`, `sortorder`, `status`, `remote_ip`) VALUES
(4, 'Cryotherapy', 'Bhavini', '2017-05-05', '2018-08-22', 1, 'E', '60.254.22.150'),
(5, 'NormaTec', 'Bhavini', '2018-08-22', '0000-00-00', 2, 'E', '60.254.22.150');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_master`
--

CREATE TABLE `gallery_master` (
  `image_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `createdate` date NOT NULL DEFAULT '0000-00-00',
  `modifieddate` date NOT NULL DEFAULT '0000-00-00',
  `a_id` int(8) NOT NULL DEFAULT '0',
  `image_title` varchar(255) NOT NULL DEFAULT '',
  `image_description` text NOT NULL,
  `gallery_image` text NOT NULL,
  `video_link` text,
  `gallery_type` char(4) DEFAULT NULL,
  `sortorder` int(5) NOT NULL DEFAULT '0',
  `isFront` varchar(100) NOT NULL DEFAULT '',
  `status` char(1) NOT NULL DEFAULT 'E',
  `remote_ip` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery_master`
--

INSERT INTO `gallery_master` (`image_id`, `username`, `createdate`, `modifieddate`, `a_id`, `image_title`, `image_description`, `gallery_image`, `video_link`, `gallery_type`, `sortorder`, `isFront`, `status`, `remote_ip`) VALUES
(1, 'Keyur', '2017-04-19', '0000-00-00', 1, 'Test', '', '', '', 'I', 1, 'D', 'E', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `group_master`
--

CREATE TABLE `group_master` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(50) NOT NULL DEFAULT '',
  `group_status` char(1) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 PACK_KEYS=0;

--
-- Dumping data for table `group_master`
--

INSERT INTO `group_master` (`group_id`, `group_name`, `group_status`) VALUES
(1, 'Administrator', 'E'),
(2, 'Developer', 'E');

-- --------------------------------------------------------

--
-- Table structure for table `homecontent`
--

CREATE TABLE `homecontent` (
  `content_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `home_content` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `homecontent`
--

INSERT INTO `homecontent` (`content_id`, `username`, `createdate`, `modifieddate`, `home_content`) VALUES
(1, 'Keyur', '2017-04-05', '2017-04-06', '<div class=\"col-md-10 col-sm-10 text-center center-col\"><span class=\"margin-three no-margin-top display-block letter-spacing-2\">EST. 1987</span>\n<h1>About Hindva Group</h1>\n<p class=\"text-med width-95 center-col margin-seven margin-custom\" style=\"text-align: center;\">Hindva International &ndash; a premium global organisation is a prosperous wing and commercial business journey of M.K Group which was established in the year 1987. M.K Group was founded and established by two influential families Kheni &amp; Patel, migrated to Surat from Saurashtra of Gujarat in India. Over the past decades, M.K Group has built its own empire and earned a reputation for being successful in Diamond Manufacturing based out at Surat Gujarat. In the year 2008, the group introduced its own brand Hindva, and put all group companies under one umbrella.</p>\n</div>');

-- --------------------------------------------------------

--
-- Table structure for table `job_master`
--

CREATE TABLE `job_master` (
  `job_id` int(11) NOT NULL,
  `j_name` varchar(150) NOT NULL,
  `j_email` varchar(50) NOT NULL,
  `j_message` text,
  `j_resume` varchar(255) NOT NULL,
  `j_contact` varchar(100) DEFAULT NULL,
  `j_date` datetime DEFAULT NULL,
  `j_area` varchar(256) NOT NULL,
  `j_exp` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_master`
--

INSERT INTO `job_master` (`job_id`, `j_name`, `j_email`, `j_message`, `j_resume`, `j_contact`, `j_date`, `j_area`, `j_exp`) VALUES
(17, 'bhavini', 'bhavini.bcm@gmail.com', 'dsfsf', 'bhavini', '02455', '2017-04-20 00:00:00', 'bhavini', 'bhavini'),
(20, 'Bhavini1', 'bhavini.easternts@gmail.com', 'Bhavini1', '20-slider2.jpg', '4353534', '2017-05-24 10:46:50', '', ''),
(21, 'bunty', 'lkergbrb@kbj.com', 's;dvjsongj;boisf', '21-presentation changes.docx', '9979993456', '2017-08-19 08:20:10', '', ''),
(22, 'JITENDRA KHAMKAR', 'ndp.jitu@gmail.com', 'Application for the post of Accountant', '22-J S Khamkar Resume.pdf', '09173384403', '2017-08-31 13:21:14', '', ''),
(23, 'asdf asdf', 'sadf@asdf.com', 'asdfsdaf', '23-1_1494225190_VINEET.jpg', '09879879877', '2017-09-26 11:27:04', '', ''),
(24, 'Career Inquiry', 'bhavini.easternts@gmail.com', 'bvngfvjgj', '24-pdf-sample.pdf', '123456', '2017-09-26 12:03:17', '', ''),
(25, 'Nikhar Nanavati', 'sadf@asdf.com', 'asdf', '25-ajax_admin.php', '09879879874', '2017-11-21 13:15:57', '', ''),
(26, 'Nikhar Nanavati', 'sadf@asdf.com', 'asdf', '26-ajax_admin.php', '09879879874', '2017-11-21 13:16:45', '', ''),
(27, 'Nikhar Nanavati', 'sadf@asdf.com', 'asdf', '27-ajax_admin.php', '09879879874', '2017-11-21 13:16:51', '', ''),
(28, 'Nikhar Nanavati', 'sadf@asdf.com', 'asdf', '28-ajax_admin.php', '09879879874', '2017-11-21 13:16:55', '', ''),
(29, 'BALRAM MAKHIJA', 'balram.makhija@gmail.com', 'Dear HemishSir,\r\n\r\nPlease find my updated CV attached herewith with respect to your in response in our update in facebook dated-23-11-2017.\r\n\r\nI am a Qualified CA looking for an opportunity in industry, as i relocated to gujarat from west bengal and started working with an Consulting firm and actively looking for an opportunity in industry.\r\n\r\nI am having  4+  years of experience post qualifying CA, overall experience of more than 6 years.\r\nI am currently based in Vapi, Gujarat and willing to relocate from Vapi.\r\n\r\nThe other details are here as below:-\r\n\r\nTotal experience (relevant) - 4+ Years post qualifying\r\nCurrent CTC                       - Rs. 6,00,000 \r\nNotice Period                      - 2 months (Negotiable)\r\nReason for job change       -  Vapi  being highly polluted and to work into industry.\r\nThanks & Regards,\r\nBalram Makhija ,\r\n9681297661, 9903092463', '29-Balram Makhija Resume (1).doc', '09903092463', '2017-11-23 18:01:54', '', ''),
(30, 'Arvind vishvakrma ', 'arvind.182953@gmail.com ', '', '30-Resume-1.docx', '7567908227', '2017-11-27 13:12:17', '', ''),
(31, 'Arvind vishvakrma', 'arvind.182953@gmail.com', 'APPLY POST : PART TIME ACCOUNTANT ', '31-Resume-1.docx', '7567908227', '2017-11-27 13:14:09', '', ''),
(32, 'bunty', 'jhdbfjhwdf@jshd.com', 'safsavsvara', '32-GPL License Terms.pdf', '8745684778', '2017-11-29 10:58:06', '', ''),
(33, 'mjbgku', 'jvfbjyu@hytcfd.com', 'hiuytrbvguytvbr', '33-resume- SHREYA.DOC', '98678875687', '2017-11-29 11:01:17', '', ''),
(34, 'jkhsvd', 'kjhvdcjhsd@auyhgc.com', 'kudbygwkudywgfwf', '34-1 (2) .jpg', '984735799', '2017-11-30 06:35:49', '', ''),
(35, 'dishant mehta', 'dishant.1712@gmail.com', 'career testing', '35-Company_Profile_Eastern_Techno_Solutions.pdf', '7600015802', '2017-12-04 17:01:57', '', ''),
(36, 'Bijal Gandhi', 'drbijalgandhi86@gmail.com', 'I saw your ad for the post of Physiotherapist and hence am taking the opportunity to apply for the same.   I am currently in Canada am planning to move to Surat, A physiotherapist wit 7 years of experience and also a certified fitness trainer from Indian Association of Fitness trainers and CAN FIT Pro. You can conduct my interview over Whatsapp by contact on the following number.\r\n\r\n+1 365 777 2619', '36-Bijal CV 2017 Surat.docx', '+919712905604', '2018-01-30 03:10:19', '', ''),
(37, 'zeel', 'zeel0509@gmail.com', '', '37-zeel.docx', '9662511857', '2018-03-22 07:00:57', '', ''),
(38, 'Mukesh Pandey', 'mukesh14306@gmail.com', 'Presently designated as Sr. Executive - Administration (PA to Administrator) in G.D Goenka International School, Surat â€“ Assisting the Administrator in General Administration work, Transport, Security, Food-Court, House Keeping, Estate, Labour and Staff Accommodation.) From 01 Jan - 2015 to till now.', '38-Mukesh CV 2017.docx', '9879085123', '2018-07-10 14:15:54', '', ''),
(39, 'Megha Chevli ', 'chevlimegha94@gmail.com', 'I just completed my post graduation in field of biotechnology.  And i would like to work in your company. ', '39-CV.pdf', '9624257318', '2018-08-20 14:06:05', '', ''),
(40, 'Priyanka Chauhan', 'src1911@yahoo.com', 'Resume for marketing executive', '40-Priyanka Chuahan.docx', '9714889719', '2018-10-08 07:33:42', '', ''),
(41, 'Chevli megha ', 'chevlimegha94@gmail.com', 'I have 6 month experienced in biotech company i.e. Nutricore bioscience, surat. ', '41-CV.pdf', '9624257318', '2018-12-05 10:23:38', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `module_master`
--

CREATE TABLE `module_master` (
  `module_id` int(5) NOT NULL,
  `module_title` varchar(50) NOT NULL,
  `module_name` varchar(100) NOT NULL,
  `module_file` varchar(25) NOT NULL,
  `module_parent` varchar(20) NOT NULL,
  `module_seo_slug` varchar(25) NOT NULL,
  `sortorder` int(3) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'D',
  `username` varchar(30) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `remote_ip` varchar(50) NOT NULL,
  `module_controller` varchar(70) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `module_master`
--

INSERT INTO `module_master` (`module_id`, `module_title`, `module_name`, `module_file`, `module_parent`, `module_seo_slug`, `sortorder`, `status`, `username`, `createdate`, `modifieddate`, `remote_ip`, `module_controller`) VALUES
(1, 'Contact', 'Contact', 'contact', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'contact'),
(2, 'User Management', 'User', 'user', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'user'),
(3, 'User Group Management', 'User Group', 'usergroup', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'user'),
(4, 'Slider Management', 'Slider', 'slider', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'slider'),
(5, 'Permission Management', 'Permission', 'permission', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'permission'),
(6, 'Pages Management', 'Pages', 'pages', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'pages'),
(7, 'Page Image Management', 'Page Images', 'pageimages', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'pages'),
(8, 'Homecontent Management', 'Homecontent', 'homecontent', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'pages'),
(9, 'Subscription List', 'Subscription List', 'subscription', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'subscription'),
(10, 'Job Data', 'Job Data', 'job', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'job'),
(11, 'epanel', 'epanel', 'epanel', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'settings'),
(12, 'website', 'website', 'website', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'settings'),
(13, 'News', 'News', 'news', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'news'),
(14, 'News Type', 'News Type', 'newsmaster', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'news'),
(15, 'Testimonial', 'Testimonial', 'testimonial', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'testimonial'),
(16, 'Testimonial Type', 'Testimonial Type', 'testimonialtype', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'testimonial'),
(17, 'Album Type', 'Album Type', 'albumtype', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'gallery'),
(18, 'Album', 'Album', 'album', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'gallery'),
(19, 'Gallery', 'Gallery', 'gallery', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'gallery'),
(20, 'Project Type', 'Project Type', 'project_type', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'projects'),
(21, 'Projects', 'Projects', 'projects', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'projects'),
(22, 'Project Floor Plans', 'Project Floor Plans', 'projectfloors', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'projects'),
(23, 'Project Slider Images', 'Project Slider Images', 'projectslider', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'projects'),
(24, 'Project Images', 'Project Images', 'projectimages', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'projects'),
(25, 'Brochure Download', 'Brochure Download', 'downloads_list', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'downloads_list'),
(26, 'Our Team', 'Our Team', 'team', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'team'),
(27, 'Banners', 'Banners', 'banner', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'banner'),
(28, 'Company', 'Company', 'company', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'projects'),
(29, 'Brochure', 'Brochure', 'brochure', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'brochure'),
(30, 'Home Page Popup', 'Home Page Popup', 'popup', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'popup'),
(31, 'Faq', 'Faq', 'faq', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'faq'),
(32, 'Faq Type', 'Faq Type', 'faqtype', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'faq'),
(33, 'Benifit', 'Benifit', 'benifit', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'benifit'),
(34, 'Appointment', 'Appointment', 'appointment', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'appointment'),
(35, 'Research', 'Research', 'research', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'research'),
(37, 'Services', 'Services', 'services', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'services'),
(36, 'Product', 'Product', 'products', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'products'),
(38, 'Results', 'Results', 'results', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'results'),
(39, 'Brochure Downloads', 'Brochure Downloads', 'brochure', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'brochure'),
(40, 'Personality', 'Personality', 'personality', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'personality');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `news_type` int(1) NOT NULL,
  `news_title` varchar(150) NOT NULL DEFAULT '',
  `news_desc` text NOT NULL,
  `news_date` date NOT NULL,
  `remote_ip` varchar(50) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `sortorder` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `username`, `createdate`, `modifieddate`, `news_type`, `news_title`, `news_desc`, `news_date`, `remote_ip`, `status`, `sortorder`) VALUES
(7, 'Kerul', '2014-07-29', '0000-00-00', 1, 'The construction work of Hindva Paradise begins.', '<p>The construction work of Hindva Paradise begins.</p>', '2013-12-16', '192.168.0.25', 'E', 6),
(8, 'Kerul', '2014-07-29', '2014-07-29', 1, 'Hindva\'s Mumbai office is now Operational.', '<p>Hindva\'s Mumbai office is now Operational.</p>', '2013-10-14', '192.168.0.25', 'E', 7),
(6, 'Kerul', '2014-07-29', '0000-00-00', 1, 'Superhit Surat Property Festival announced by Hindva.', '<p>Hindva Builders announces the co-sponsorship of \'Superhit Surat Property Festival\' organised by CREDAI - SURAT &amp; SGCCI, to be held on 7-8-9 February 2014 at SIECC, Surat. This is an open Invitation for you all, to develop a way beyond Construction &amp; Real Estate.</p>', '2014-01-02', '192.168.0.25', 'E', 5),
(5, 'Kerul', '2014-07-29', '0000-00-00', 1, 'Hindva launches The World - Luxury Hotel Apartments.', '<p>Hindva launches The World - Luxury Hotel Apartments.</p>', '2014-01-18', '192.168.0.25', 'E', 4),
(4, 'Kerul', '2014-07-29', '0000-00-00', 1, 'Hindva receives a Runner-Up Award', '<p>Hindva receives a Runner-Up Award in the category of Associate Sponsors &amp; Co-Sponsors at Surat Superhit Property Festival held by CREDAI-Surat &amp; SGCCI.</p>', '2014-02-09', '192.168.0.25', 'E', 3),
(3, 'Kerul', '2014-07-29', '2014-07-29', 1, 'The construction work of Palazzo begins', '<p>The construction work of Palazzo begins.</p>', '2014-02-14', '192.168.0.25', 'E', 2),
(1, 'Keyur', '2014-07-21', '2017-04-08', 1, 'The World construction begins', '<p>The construction work of The World - Luxury Hotel Apartments begins</p>', '2014-04-03', '::1', 'E', 1),
(9, 'Kerul', '2014-07-29', '0000-00-00', 1, 'The site-office of Palazzo is operational.', '<p>The site-office of Palazzo is operational. Locate it behind Marvella Mall, opposite of new R.T.O (Pal - Adajan - Surat).</p>', '2013-10-08', '192.168.0.25', 'E', 8),
(10, 'Kerul', '2014-07-29', '0000-00-00', 1, 'Executed The Palladium Mall\'s Ground Breaking Ceremony', '<p>Executed The Palladium Mall\'s Ground Breaking Ceremony (Khat Muhurat Bhoomi Pooja).</p>', '2013-09-04', '192.168.0.25', 'E', 9),
(11, 'Kerul', '2014-07-29', '0000-00-00', 1, 'Hindva enters to luxurious location Pal, surat.', '<p>Hindva is set to move ahead and enter in luxurious location Pal (Surat). Get ready to taste the unique experience of lifestyle.</p>', '2013-08-22', '192.168.0.25', 'E', 10),
(12, 'Kerul', '2014-07-29', '0000-00-00', 1, 'Hindva finalizes Hindva Paradise.', '<p>Hindva finalizes its 2BHK Lifestyle Apartments nearby The Palladium Mall, names it as Hindva Paradise.</p>', '2013-08-01', '192.168.0.25', 'E', 11),
(13, 'Kerul', '2014-07-29', '0000-00-00', 1, 'The construction work of Sicilia begins.', '<p>The construction work of Sicilia begins.</p>', '2013-06-10', '192.168.0.25', 'E', 12),
(14, 'Kerul', '2014-07-29', '0000-00-00', 1, 'Hindva unveils its prominent dream project â€“ The Palladium Mall â€“ in Yogi Chowk, Surat.', '<p>Hindva unveils its prominent dream project &ndash; The Palladium Mall &ndash; in Yogi Chowk, Surat.</p>', '2013-05-01', '192.168.0.25', 'E', 13),
(15, 'Kerul', '2014-07-29', '0000-00-00', 1, 'Hindva completes its R&D study on coming \'Supreme Residential Service\' Apartment project.', '<p>Hindva completes its R&amp;D study on coming \'Supreme Residential Service\' Apartment project. Location rummage begins.</p>', '2013-04-06', '192.168.0.25', 'E', 14),
(16, 'Kerul', '2014-07-29', '0000-00-00', 1, 'Hindva finalizes Sicilia in Mota Varachha.', '<p>Hindva finalizes its suitable location for the project &ndash; Sicilia &ndash; in Mota Varachha.</p>', '2013-03-15', '192.168.0.25', 'E', 15),
(17, 'Kerul', '2014-07-29', '0000-00-00', 1, 'Shantiniketan 2 completes in Ahmedabad, Ready to move-in.', '<p>Shantiniketan 2 completes in Ahmedabad, Ready to move-in.</p>', '2013-02-01', '192.168.0.25', 'E', 16),
(18, 'Keyur', '2015-01-11', '2017-04-08', 1, 'A Pledge to Build the Green Nation', '<p>Hindva Builders proudly chooses Gyproc India - a Saint-Gobain company for the supply of Drywall products in association with Smart-Tech</p>', '2014-07-26', '::1', 'E', 1),
(19, 'Keyur', '2015-01-11', '2015-01-11', 1, 'Vibrant Gujarat Summit 2015', '<p>Hindva Builders participates in the showcase of Urban Development of Surat in association with CREDAI Surat at Vibrant Gujarat Summit - Infrastructure &amp; Property Show 2015</p>', '2015-01-06', '123.201.218.90', 'E', 1),
(20, 'Keyur', '2015-04-24', '2015-04-24', 1, 'Structural Steel Construction Summit 2015 - Ahmedabad', '<p>Hindva presents its Construction &amp; Advance Steel Technology - Drywall - at Structural Steel Construction Summit 2015</p>', '2015-04-22', '123.201.27.23', 'E', 19),
(21, 'Keyur', '2015-05-14', '2015-05-14', 1, 'We speak digitally, may be through an Aura energy !', '<p>Hindva receives The Best Real Estate Website of the Year 2015 at Realty Plusâ€¬ &lrm;Conclaveâ€¬ &amp; Excellenceâ€¬ â€ªAwards by LIC Housing, held at Courtyard by Marriott in Ahmedabad</p>', '2015-05-08', '175.100.148.109', 'E', 20),
(22, 'Keyur', '2015-05-14', '2015-05-14', 1, 'First Smart Card BUC from AMC', '<p>Hindva Receives First Smart Card BU Certificate from Ahmedabad Municipal Corporation</p>', '2015-05-01', '175.100.148.109', 'E', 21),
(23, 'Keyur', '2015-06-06', '2015-07-04', 1, 'Hindva unveils the look of Ahmedabad Project - Hindva Pavilion.. a mall with restaurants and multiplex', '<p>Hindva unveils the look of Ahmedabad Project - Hindva Pavilion.. a mall with restaurants and multiplex</p>', '2015-05-23', '203.109.74.60', 'E', 22),
(24, 'Keyur', '2015-06-06', '0000-00-00', 1, 'WCRC Ranks Hindva among Top 100 Fastest Growing Asian Companies', '<p>WCRC Ranks Hindva among Top 100 Fastest Growing Asian Companies</p>', '2015-05-21', '40.140.24.2', 'E', 23),
(25, 'Keyur', '2015-07-06', '2015-07-06', 1, 'Hindva Dreams ! The Multi Industrial Park ', '<p>Hindva unveils its most ambitious project Hindva Dreams - The Multi Industrial Park&nbsp;</p>', '2015-07-07', '122.170.115.186', 'E', 24),
(26, 'Keyur', '2015-09-27', '2015-09-27', 1, 'One Dream.. One Pledge.. Lets Build a Green Nation..', '<p>Hindva Builders celebrates DIGITAL GREEN WEEK and spreads awareness of Green initiatves in association with IGBC Surat Chapter and leaders of Surat, India from SGCCI - The Southern Gujarat Chamber Of Commerce &amp; Industry, CREDAI Surat &amp; The Times of India</p>', '2015-09-27', '175.100.146.100', 'E', 25),
(28, 'Anil', '2016-04-07', '2016-04-07', 1, 'Awareness Campaign for Prime Minister\\\'s Housing Scheme.', '<p>Hindva Participates in Awareness Campaign for Prime Minister\\\'s Housing Scheme in Collaboration with SMC.</p>', '2016-04-05', '116.203.255.143', 'E', 35),
(29, 'Anil', '2016-04-14', '0000-00-00', 1, 'MK Group Premier League  takes place.', '<p><span>MK Group Premier League - The InterCompany Tournament between subsidaries of MK Group takes place.</span></p>', '2016-03-16', '103.244.123.92', 'E', 34),
(30, 'Anil', '2016-04-19', '0000-00-00', 1, 'Hindva Launches The Commercial Hub \\\'Dreamland\\\'.', '<p>Hindva launches &nbsp;\\\'Dreamland\\\' to grow up the business vicinity of Kamrej &amp; Varachha in Surat.</p>', '2014-02-12', '103.244.123.92', 'E', 26),
(31, 'Keyur', '2016-04-19', '2017-04-08', 1, '\'Dreamland\' is ready for Possession.', '<p>Dreamland completes in Sarthana, Surat, ready to start up.</p>', '2015-12-01', '::1', 'E', 27),
(32, 'Anil', '2016-04-19', '2016-04-19', 1, 'Hindva Completes its Prominent Project \\\'The Palladium Mall\\\'.', '<p>Hindva completes its prominent dream project \\\'The Palladium Mall\\\' in the heart of the Varachha area in Surat.</p>', '2016-03-15', '103.244.123.92', 'E', 28),
(33, 'Anil', '2016-04-19', '0000-00-00', 1, 'Sicilia Completes in Surat', '<p>Sicilia Completes in Mota Varachha(Surat). Ready For Possession.</p>', '2015-03-15', '103.244.123.92', 'E', 29),
(34, 'Anil', '2016-04-19', '0000-00-00', 1, 'Hindva Pavilion Completes in Ahmedabad.', '<p>Hindva Pavilion - Mall With Multiplex Completes in Ahmedabad.</p>', '2015-06-12', '103.244.123.92', 'E', 30),
(35, 'Anil', '2016-04-19', '0000-00-00', 1, 'Shantiniketan Flora Business Hub Completes in Surat. ', '<p>Shantiniketan Flora Business Hub Completes, ready to boom the business vicinity of the Mota Varachha &amp; Abrama in Surat.</p>', '2015-08-15', '103.244.123.92', 'E', 31),
(36, 'Anil', '2016-04-19', '0000-00-00', 1, 'Hindva Safe Deposit Vault Opens in Surat.', '<p>Hindva Safe Deposit Vault with the Advanced Locker System Designed by the Godrej opens in Sarthana, Surat.</p>', '2015-10-22', '103.244.123.92', 'E', 32),
(37, 'Anil', '2016-04-19', '0000-00-00', 1, 'Hindva Unveils the Look of Shantiniketan Residency.', '<p>Hindva unveils the first look of their upcoming project \\\'Shantiniketan Residency\\\' in Kathodara, Surat.</p>', '2016-03-23', '103.244.123.92', 'E', 33),
(38, 'Anil', '2016-04-26', '2016-04-26', 1, 'The construction work of Shantiniketan Residency begins.', '<p>The construction work (Khat Muhurat Bhoomi Pooja) of Shantiniketan Residency begins Kathodara, Surat.</p>', '2016-04-22', '103.244.123.92', 'E', 36),
(39, 'Anil', '2016-05-16', '2016-05-16', 1, 'Hindva Reveals the First Cut of SkyBell', '<p>Hindva Reveals the first cut of SkyBell - The New Age Lifestyle Apartments in Vastral (Ahmedabad).</p>', '2016-05-14', '103.244.123.92', 'E', 37),
(40, 'Anil', '2016-06-14', '2016-06-14', 1, 'Hindva Paradise is Ready for Possession.', '<p>Hindva Paradise is ready for Possession, Residents ready to move in.</p>', '2016-06-15', '103.244.123.92', 'E', 38),
(41, 'Anil', '2016-07-02', '0000-00-00', 1, 'Hindva Bags the Awards for the Best Hospitality Project of the Year and Marketer of the Year', '<p><span>Hindva receives the Awards for the &lsquo;Marketer of the year&rsquo; and &lsquo;Best Hospitality Project of the year&rsquo; for the Project &lsquo;The World - Luxury Hotel Apartments&rsquo; at Realty Plus Conclave &amp; Excellence Awards - 2016 by CRISIL &amp; LIC Housing Limited, held at Courtyard by Marriott in Ahmedabad.</span></p>', '2016-07-01', '103.244.123.92', 'E', 39),
(42, 'Ghanshyam', '2016-10-13', '0000-00-00', 1, 'Hindva unveils the look of their upcoming project \\\'Celino\\\' in Nikol (Ahmedabad)', '<p>Hindva unveils the look of their upcoming project \\\'Celino\\\' in Nikol (Ahmedabad)</p>', '2016-08-27', '103.244.123.92', 'E', 40);

-- --------------------------------------------------------

--
-- Table structure for table `news_type`
--

CREATE TABLE `news_type` (
  `news_type_id` int(11) NOT NULL,
  `news_type` varchar(50) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `sortorder` int(3) NOT NULL,
  `remote_ip` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news_type`
--

INSERT INTO `news_type` (`news_type_id`, `news_type`, `createdate`, `modifieddate`, `username`, `status`, `sortorder`, `remote_ip`) VALUES
(1, 'News', '2014-07-21', '2015-10-27', 'Keyur', 'E', 1, '192.168.2.106');

-- --------------------------------------------------------

--
-- Table structure for table `page_master`
--

CREATE TABLE `page_master` (
  `page_id` bigint(11) NOT NULL,
  `parent_id` bigint(11) NOT NULL,
  `page_template` varchar(200) NOT NULL,
  `page_slug` varchar(255) NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `page_content` text NOT NULL,
  `page_image` varchar(100) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_desc` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `sortorder` int(8) NOT NULL,
  `status` char(1) NOT NULL COMMENT 'E-Enable D- Disable',
  `user_id` int(8) NOT NULL,
  `createdate` datetime NOT NULL,
  `modifieddate` datetime NOT NULL,
  `remote_ip` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page_master`
--

INSERT INTO `page_master` (`page_id`, `parent_id`, `page_template`, `page_slug`, `page_title`, `page_content`, `page_image`, `meta_title`, `meta_desc`, `meta_keyword`, `sortorder`, `status`, `user_id`, `createdate`, `modifieddate`, `remote_ip`) VALUES
(9, 0, 'inner_page.tpl.php', 'our-story', 'Our Story', '<p class=\"text-justify\"><strong>Hindva International &ndash; </strong>a premium global organisation is a prosperous wing and commercial business journey of M.K Group which was established in the year 1987. M.K Group was founded and established by two influential families Kheni &amp; Patel, migrated to Surat from Saurashtra of Gujarat in India. Over the past decades, M.K Group has built its own empire and earned a reputation for being successful in Diamond Manufacturing based out at Surat Gujarat. In the year 2008, the group introduced its own brand <strong>Hindva</strong>, and put all group companies under one umbrella.</p>\r\n<p class=\"text-justify\">Hindva is active in the business of Import &ndash; Export &amp; Manufacturing of <strong>Diamonds</strong>. The group also ventures into <strong>Constructions &amp; Real Estate</strong> Development, <strong>Textiles, Mining, Hospitality</strong> and <strong>Education</strong>. Today, with the combination of innovation and excellence, Hindva Group remains as the most prosperous name for its clientele and has earned the tag of being <strong>Socially Responsible</strong> by remaining active in communal welfare activities. Hindva&rsquo;s <strong>Diamond Manufacturing</strong> wing runs under name of <strong>Carbon Creation</strong>. Real Estate development is carried out under <strong>Hindva Builders</strong> with projects being delivered in Surat, Ahmedabad &amp; Mumbai. Hotel and Hospitality business is carried out under the name of <strong>Hindva Hospitality LLP</strong>. Mining &amp; Processing of High-Quality Bauxite into Calcined, as well as value addition of alumina-based products, is carried out in JV with <strong>Thankys Group</strong> under the name of <strong>Valbaux Minetech</strong>. Hindva&rsquo;s Textile business is separated into two division namely <strong>Riya Trends</strong> which is into manufacturing of Textile Products for other Retailers and <strong>E-Commerce</strong> bulk-supply division <strong>Vritika Lifestyle</strong> is into the retail business. To create a strong foundation and quality education Hindva has endeavour into <strong>Education</strong> field, under the name of <strong>Ashadeep Group of Schools</strong>.</p>\r\n<p class=\"text-justify\">Each of Hindva&rsquo;s entities are operated independently under the guidance and supervision of its promoters, and with their vast experience and entrepreneurial spirit, Hindva has spawned into several industries of National Importance and has moved from <strong>National</strong> to an International brand. The same spirit, coupled with innovativeness has been displayed in its entities. Going forward, <strong>Hindva</strong> is continuously seeking to differentiate themselves through customer-centricity, innovation, entrepreneurship, trustworthiness and values-driven business operations, while balancing the interests of employees and society.</p>', '9-Chrysanthemum.jpg', '', '', '', 1, 'E', 3, '2015-10-28 10:31:57', '2017-04-10 14:46:14', '::1'),
(10, 0, 'inner_page.tpl.php', 'how-cryo-therapy-works', 'How Cryo Therapy Works', '<div class=\"row cryotherapy-work-row auto-container spacing\">\r\n<div class=\"col-sm-8 col-md-8 col-xs-12 cryotherapy-work-div wow fadeInDown\">\r\n<div class=\"sqs-block-content\">\r\n<h3>Phase 1:&nbsp;<strong>REFINE</strong></h3>\r\n</div>\r\n<hr />\r\n<div class=\"sqs-block-content\">\r\n<p class=\"text-justify\">Entering the cryosauna for 1.5-3 minutes at hyper cooled temperatures activates the body\'s thermoregulation mechanisms as the cold, though completely tolerable, is interpreted as a survival threat which causes the need to restore balance through vasoconstriction. This is the first step the body takes to protect its core temperature.Blood vessels in the skin and muscle tissues constrict, forcing blood away from the surface and peripheral tissues to the core.</p>\r\n<ul class=\"yugeva-bullet\">\r\n<li>Jump-starts the body\'s natural filtration system</li>\r\n<li>Eliminates toxins and inflammatory properties</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-sm-4 col-md-4 col-xs-12 nopadd wow fadeInDown\"><img class=\"img-responsive\" src=\"/images/yugevaimages/work1.jpeg\" alt=\"\" /></div>\r\n</div>\r\n<div class=\"gray-block spacing \">\r\n<div class=\"row cryotherapy-work-row auto-container\">\r\n<div class=\"col-sm-8 col-md-8 col-xs-12 cryotherapy-work-div wow fadeInDown\">\r\n<div class=\"sqs-block-content\">\r\n<h3>Phase 2:&nbsp;<strong>Rejuvenate</strong></h3>\r\n</div>\r\n<hr />\r\n<div class=\"sqs-block-content\">\r\n<p class=\"text-justify\">Vasodilation occurs at the conclusion of the treatment upon exiting the cryosauna as the body reheats itself. Vessels expand up to four (4) times their normal diameter allowing a significant increase in flow of that filtered blood to the skin and extremities, enriching cells with healthy oxygen, nutrients and enzymes at a greater capacity than normal.</p>\r\n<ul class=\"yugeva-bullet\">\r\n<li>Hormones are released as the body\'s natural morphine creating a sense of euphoria</li>\r\n<li>Muscle tissues begin to warm promoting a wealth of benefits that continue to work after your session.</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-sm-4 col-md-4 col-xs-12 nopadd wow fadeInDown\"><img class=\"img-responsive\" src=\"/images/yugevaimages/work2.jpeg\" alt=\"\" /></div>\r\n</div>\r\n</div>\r\n<div class=\"row cryotherapy-work-row auto-container spacing\">\r\n<div class=\"col-sm-8 col-md-8 col-xs-12 cryotherapy-work-div wow fadeInDown\">\r\n<div class=\"sqs-block-content\">\r\n<h3>Phase 3:&nbsp;<strong>Recover</strong></h3>\r\n</div>\r\n<hr />\r\n<div class=\"sqs-block-content\">\r\n<p class=\"text-justify\">Following the treatment, proliferation of the cryo benefits will continue to occur over the next 48 hours providing an optimal condition of reduced pain and shortened recovery time. Cryotherapy enhances the body\'s ability to better heal itself to promote enhanced performance.</p>\r\n<ul class=\"yugeva-bullet\">\r\n<li>The cold exposure reduces the body\'s ability to communicate pain signals which after multiple sessions, allows the body to adapt its sustained perception to pain stimuli</li>\r\n<li>Pro-inflammatory cytokines are reduced while anti-inflammatory properties are increased which provokes a powerful anti-inflammatory response</li>\r\n<li>Muscle relaxation occurs, energy levels are increased, and the body\'s overall anti-oxidative status is increased</li>\r\n<li>Calories are burnt, comparable to that of an intense workout as a part of the body\'s reheating mechanism. Reports suggest that 400-800 calories are expended from a single session with multiple sessions leading to a long-term increase in metabolism.</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-sm-4 col-md-4 col-xs-12 nopadd wow fadeInDown\"><img class=\"img-responsive\" src=\"/images/yugevaimages/work3.png\" alt=\"\" /></div>\r\n</div>', '', '', '', '', 2, 'E', 4, '2017-05-22 09:25:43', '2017-06-06 11:10:57', '127.0.0.1'),
(17, 0, 'inner_page.tpl.php', 'company', 'Company', '<div class=\"sqs-block-content\">\r\n<p class=\"text-justify\">Whole Body Cryotherapy is an innovative &amp; sophisticated method of cold therapy involving 3 minutes of skin exposure to temperatures between -150&deg;C to -180&deg;C.&nbsp;</p>\r\n<p class=\"text-justify\">While this modality was first utilized in Japan in 1978 By Dr. Toshiro Yamauchi to treat rheumatic diseases, studies conducted over the last two decades have established cryotherapy as a powerful adjunct treatment for reducing symptoms of pain and inflammation associated with a number of chronic conditions. Furthermore, cryotherapy significantly improves recovery time for athletes, treats skin conditions, and helps to loss the weight, enhance health &amp; Wellness. Please go to out benefits section for more detailing about all benefits.&nbsp;</p>\r\n<p class=\"text-justify\">The skin senses the extreme cold during a 3-minute whole body cryotherapy session and signals the brain to go into &ldquo;fight or flight&rdquo; mode. The sympathetic nervous system is stimulated by the skin&rsquo;s cold receptors, causing severe vasoconstriction, followed by rapid vasodilation.Blood flow to the skin&rsquo;s surface and extremities is redirected to insulate vital organs and maintain the core temperature, which can fluctuate by only 4.5&deg; C between states of hypothermia and hyperthermia.</p>\r\n</div>', '', '', '', '', 9, 'E', 4, '2017-06-06 11:03:29', '2017-06-06 11:03:56', '127.0.0.1'),
(11, 0, 'inner_page.tpl.php', 'what-is-cryotherapy', 'What is Cryotherapy', '<div class=\"row\">\r\n<div class=\"col-sm-7 col-md-7 col-xs-12 wow fadeInLeft animated\">\r\n<div class=\"sqs-block-content\">\r\n<h2 class=\"what-cryotherapy-title\">What Is Cryotherapy</h2>\r\n</div>\r\n<div class=\"sqs-block-content\">\r\n<p class=\"text-justify\">Whole Body Cryotherapy is an innovative &amp; sophisticated method of cold therapy involving 3 minutes of skin exposure to temperatures between -150&deg;C to -180&deg;C.&nbsp;</p>\r\n<p class=\"text-justify\">While this modality was first utilized in Japan in 1978 By Dr. Toshiro Yamauchi to treat rheumatic diseases, studies conducted over the last two decades have established cryotherapy as a powerful adjunct treatment for reducing symptoms of pain and inflammation associated with a number of chronic conditions. Furthermore, cryotherapy significantly improves recovery time for athletes, treats skin conditions, and helps to loss the weight, enhance health &amp; Wellness. Please go to out benefits section for more detailing about all benefits.&nbsp;</p>\r\n<p class=\"text-justify\">The skin senses the extreme cold during a 3-minute whole body cryotherapy session and signals the brain to go into &ldquo;fight or flight&rdquo; mode. The sympathetic nervous system is stimulated by the skin&rsquo;s cold receptors, causing severe vasoconstriction, followed by rapid vasodilation. Its release many hormones and chemicals, which are used for betterment of the body. Blood flow to the skin&rsquo;s surface and extremities is redirected to insulate vital organs and maintain the core temperature, which can fluctuate by only 4.5&deg; C between states of hypothermia and hyperthermia.</p>\r\n<p class=\"text-justify\">Cryotherapy immediately improves blood circulation, ensuring adequate delivery of oxygen and nutrients to bodily tissues, while improving the body&rsquo;s natural ability to eliminate toxins. This is not a medical procedure, but a radical, non-invasive option for people seeking exceptional results.</p>\r\n</div>\r\n</div>\r\n<div class=\"col-sm-5 col-md-5 col-xs-12 wow fadeInRight animated\"><img class=\"img-responsive\" src=\"/images/yugevaimages/what_is_cryo.jpg\" alt=\"\" /></div>\r\n</div>', '', '', '', '', 3, 'E', 4, '2017-05-22 11:21:11', '2017-06-08 17:28:09', '127.0.0.1'),
(12, 0, 'inner_page.tpl.php', 'what-to-expect', 'What to Expect', '<div class=\"row\">\r\n<div class=\"col-sm-12 col-md-12 col-xs-12 wow fadeInDown\">\r\n<div class=\"sqs-block-content\">\r\n<h2 class=\"titlebar\">Initial Consultation</h2>\r\n</div>\r\n<div class=\"sqs-block-content\">\r\n<ul class=\"yugeva-bullet\">\r\n<li>Introduction about Cryotherapy</li>\r\n<li>Discussion about therapies</li>\r\n<li>Discuss client&rsquo;s concerns &amp; Objective for treatment</li>\r\n<li>Discuss Medical history &amp; Contradictions</li>\r\n<li>Check Blood pressure, Weight, BMR</li>\r\n<li>Signup Consent / Waiver form</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n<hr />\r\n<div class=\"row\">\r\n<div class=\"col-sm-12 col-md-12 col-xs-12 wow fadeInDown\">\r\n<div class=\"sqs-block-content\">\r\n<h2 class=\"titlebar\">Preparation for the Therapy</h2>\r\n</div>\r\n<div class=\"sqs-block-content\">\r\n<ul class=\"yugeva-bullet\">\r\n<li>Access to the changing room and put your belongings in to Locker</li>\r\n<li>Dress up for the therapy</li>\r\n<li>Men remove all clothing expect underwear</li>\r\n<li>Women may wear a non-underwire bra, underwear or may remove all clothing</li>\r\n<li>Less clothing will maximize exposure</li>\r\n<li>Client must remove all jewelry or other metal on their body</li>\r\n<li>Client must be 100% dry</li>\r\n<li>Put on Robe &amp; Fur shoe &amp; Get ready to be FREEZED</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n<hr />\r\n<div class=\"row\">\r\n<div class=\"col-sm-12 col-md-12 col-xs-12 wow fadeInDown\">\r\n<div class=\"sqs-block-content\">\r\n<h2 class=\"titlebar\">In The Therapy Room</h2>\r\n</div>\r\n<div class=\"sqs-block-content\">\r\n<ul class=\"yugeva-bullet\">\r\n<li>Client enters the cryotherapy machine while robed</li>\r\n<li>Cryotechnician elevates the floor until client&rsquo;s head and neck are exposed,&nbsp;allowing&nbsp;for visual and verbal contact with the client at all times</li>\r\n<li>Client removes robe to maximize skin exposure and benefit</li>\r\n<li>Cryotechnician will inform about Do&rsquo;s &ndash; Don&rsquo;ts &amp; Emergency</li>\r\n<li>Cryotechnician will start the chamber will designed Protocols</li>\r\n<li>The cooled air begins you will instantly feel the effects of the cryosauna healing your body, relieving your pain and rejuvenating your skin.</li>\r\n<li>When the session ends, client re-robes and exists the cryosauna</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n<hr />\r\n<div class=\"row\">\r\n<div class=\"col-sm-12 col-md-12 col-xs-12 wow fadeInDown\">\r\n<div class=\"sqs-block-content\">\r\n<h2 class=\"titlebar\">Post Therapy</h2>\r\n</div>\r\n<div class=\"sqs-block-content\">\r\n<ul class=\"yugeva-bullet\">\r\n<li>We recommend for 10 to 15 minutes cardio exercise to reheat your body and maximize the result.</li>\r\n<li>Cryotherapy reduces inflammation + activates detoxification. Some clients may experience mild flu-like symptoms 1 &ndash; 2 days after treatment. This is a good sign&ndash;your body is shedding toxins and inflammation.</li>\r\n<li>Drink more water than usual to aid the detoxification process</li>\r\n<li>Enjoy a deep sleep that night, reduced pain, Feel energized, Passionate and good mood!</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n<hr />\r\n<div class=\"row\">\r\n<div class=\"col-sm-12 col-md-12 col-xs-12 wow fadeInDown\">\r\n<div class=\"sqs-block-content\">\r\n<h2 class=\"titlebar\">Control</h2>\r\n</div>\r\n<div class=\"sqs-block-content\">\r\n<ul class=\"yugeva-bullet\">\r\n<li>At Yugeva Cryo, we recognize it is your body and you have a better understanding than anyone on how you feel. We encourage you to share throughout the process what you are feeling and remember that if at ANY time you feel uncomfortable during your session, you have complete control to stop at any time.</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', '', '', '', '', 4, 'E', 4, '2017-05-22 12:01:41', '2017-06-08 17:03:12', '127.0.0.1'),
(13, 0, 'inner_page.tpl.php', 'about-us', 'About us', '<p class=\"text-justify\">Evlee Healthcare Pvt. Ltd., is a progressive conglomerate of health professional from India.</p>\r\n<p class=\"text-justify\">The young and vivacious company has been formed with a very clear focus to give innovative technological advancements to India and all over the world.</p>\r\n<p class=\"text-justify\">Across the globe, the healthcare sector is witnessing rapid changes. With the lines between medical therapeutic sectors and wellness approaches getting thinner and thinner, people are getting more and more aware of the need of leading a truly meaningful and healthy life.</p>\r\n<p class=\"text-justify\">Bringing in new technologies and fostering a new era of unconventional, yet highly effective and scientifically backed healthcare processes and practices to India, Evlee is all set to usher in a new regime of health and happiness to the classes and masses of the country and around the world.</p>', '', '', '', '', 5, 'E', 4, '2017-05-24 17:04:18', '2017-07-08 10:08:22', '127.0.0.1'),
(14, 0, 'inner_page.tpl.php', 'terms', 'Terms & Condition', '<p class=\"text-justify\">Welcome to our website \"Yugeva Cryo\". If you continue to browse and use this website, you are agreeing to comply with and be bound by the following terms and conditions of use, which together with our privacy policy govern Yugeva cryo\'s relationship with you in relation to this website. If you disagree with any part of these terms and conditions, please do not use our website.</p>\r\n<p class=\"text-justify\">The use of this website is subject to the following terms of use:</p>\r\n<ul class=\"yugeva-bullet\">\r\n<li>The content of the pages of this website is for your general information and use only. It is subject to change without notice.</li>\r\n<li>This website uses cookies to monitor browsing preferences. If you do allow cookies to be used, the following personal information may be stored by us for use by third parties.</li>\r\n<li>Neither we nor any third parties provide any warranty or guarantee as to the accuracy, timeliness, performance, completeness or suitability of the information and materials found or offered on this website for any particular purpose. You acknowledge that such information and materials may contain inaccuracies or errors and we expressly exclude liability for any such inaccuracies or errors to the fullest extent permitted by law.</li>\r\n<li>Your use of any information or materials on this website is entirely at your own risk, for which we shall not be liable. It shall be your own responsibility to ensure that any products, services or information available through this website meet your specific requirements.</li>\r\n<li>This website contains material which is owned by or licensed to us. This material includes, but is not limited to, the design, layout, look, appearance and graphics. Reproduction is prohibited other than in accordance with the copyright notice, which forms part of these terms and conditions.</li>\r\n<li>All trade marks reproduced in this website which are not the property of, or licensed to, the operator are acknowledged on the website.</li>\r\n<li>Unauthorised use of this website may give rise to a claim for damages and/or be a criminal offence.</li>\r\n<li>From time to time this website may also include links to other websites. These links are provided for your convenience to provide further information. They do not signify that we endorse the website(s). We have no responsibility for the content of the linked website.</li>\r\n</ul>', '', '', '', '', 6, 'E', 4, '2017-05-27 09:13:20', '2017-06-17 10:58:03', '127.0.0.1'),
(15, 0, 'inner_page.tpl.php', 'privacy-policy', 'Privacy Policy', '<p class=\"text-justify\">This privacy policy sets out how \"Yugeva Cryo\" uses and protects any information that you give \"Yugeva Cryo\" when you use this website.</p>\r\n<p class=\"text-justify\">\"Yugeva Cryo\" is committed to ensuring that your privacy is protected. Should we ask you to provide certain information by which you can be identified when using this website, then you can be assured that it will only be used in accordance with this privacy statement.</p>\r\n<p class=\"text-justify\">\"yugeva Cryo\" may change this policy from time to time by updating this page. You should check this page from time to time to ensure that you are happy with any changes.</p>\r\n<h3>What we collect</h3>\r\n<p class=\"text-justify\">We may collect the following information:</p>\r\n<ul class=\"yugeva-bullet\">\r\n<li>Name</li>\r\n<li>Contact information including email address</li>\r\n<li>Other information relevant to customer surveys and/or offers</li>\r\n</ul>\r\n<h3>What we do with the information we gather</h3>\r\n<p class=\"text-justify\">We require this information to understand your needs and provide you with a better service, and in particular for the following reasons:</p>\r\n<ul class=\"yugeva-bullet\">\r\n<li>Internal record keeping.</li>\r\n<li>We may use the information to improve our services.</li>\r\n<li>We may periodically send promotional emails about new services, special offers or other information which we think you may find interesting using the email address which you have provided.</li>\r\n<li>From time to time, we may also use your information to contact you for market research purposes. We may contact you by email, phone, fax or mail. We may use the information to customise the website according to your interests.</li>\r\n</ul>\r\n<h3>Security</h3>\r\n<p class=\"text-justify\">We are committed to ensuring that your information is secure. In order to prevent unauthorised access or disclosure, we have put in place suitable physical, electronic and managerial procedures to safeguard and secure the information we collect online.</p>\r\n<h3>How we use cookies</h3>\r\n<p class=\"text-justify\">We are committed to ensuring that your information is secure. In order to prevent unauthorised access or disclosure, we have put in place suitable physical, electronic and managerial procedures to safeguard and secure the information we collect online.</p>\r\n<p class=\"text-justify\">A cookie is a small file which asks permission to be placed on your computer\'s hard drive. Once you agree, the file is added and the cookie helps analyse web traffic or lets you know when you visit a particular site. Cookies allow web applications to respond to you as an individual. The web application can tailor its operations to your needs, likes and dislikes by gathering and remembering information about your preferences.</p>\r\n<p class=\"text-justify\">We use traffic log cookies to identify which pages are being used. This helps us analyse data about webpage traffic and improve our website in order to tailor it to customer needs. We only use this information for statistical analysis purposes and then the data is removed from the system.</p>\r\n<p class=\"text-justify\">Overall, cookies help us provide you with a better website by enabling us to monitor which pages you find useful and which you do not. A cookie in no way gives us access to your computer or any information about you, other than the data you choose to share with us.</p>\r\n<p class=\"text-justify\">You can choose to accept or decline cookies. Most web browsers automatically accept cookies, but you can usually modify your browser setting to decline cookies if you prefer. This may prevent you from taking full advantage of the website.</p>\r\n<h3>Links to other websites</h3>\r\n<p class=\"text-justify\">Our website may contain links to other websites of interest. However, once you have used these links to leave our site, you should note that we do not have any control over that other website. Therefore, we cannot be responsible for the protection and privacy of any information which you provide whilst visiting such sites and such sites are not governed by this privacy statement. You should exercise caution and look at the privacy statement applicable to the website in question.</p>\r\n<h3>Controlling your personal information</h3>\r\n<p class=\"text-justify\">You may choose to restrict the collection or use of your personal information in the following ways:</p>\r\n<ul class=\"yugeva-bullet\">\r\n<li>whenever you are asked to fill in a form on the website, look for the box that you can click to indicate that you do not want the information to be used by anybody for direct marketing purposes</li>\r\n<li>if you have previously agreed to us using your personal information for direct marketing purposes, you may change your mind at any time by writing to or emailing us at <a style=\"text-transform: lowercase;\" href=\"mailto:noreply.yugeva@gmail.com\">noreply.yugeva@gmail.com</a></li>\r\n</ul>\r\n<p class=\"text-justify\">We will not sell, distribute or lease your personal information to third parties unless we have your permission or are required by law to do so. We may use your personal information to send you promotional information about third parties which we think you may find interesting if you tell us that you wish this to happen.</p>\r\n<p class=\"text-justify\">If you believe that any information we are holding on you is incorrect or incomplete, please write to or email us as soon as possible at the above address. We will promptly correct any information found to be incorrect.</p>', '', '', '', '', 7, 'E', 4, '2017-05-27 09:13:47', '2017-06-17 10:58:29', '127.0.0.1'),
(16, 0, 'inner_page.tpl.php', 'disclaimer', 'Disclaimer', '<p class=\"text-justify\">The information contained in \"Yugeva Cryo\" is for general information purposes only. The information is provided by Yugeva and while we endeavour to keep the information up to date and correct, we make no representations or warranties of any kind, express or implied, about the completeness, accuracy, reliability, suitability or availability with respect to the website or the information, products, services, or related graphics contained on the website for any purpose. Any reliance you place on such information is therefore strictly at your own risk.</p>\r\n<p class=\"text-justify\">In no event will we be liable for any loss or damage including without limitation, indirect or consequential loss or damage, or any loss or damage whatsoever arising from loss of data or profits arising out of, or in connection with, the use of this website.</p>\r\n<p class=\"text-justify\">Through this website you are able to link to other websites which are not under the control of \"Yugeva Cryo\". We have no control over the nature, content and availability of those sites. The inclusion of any links does not necessarily imply a recommendation or endorse the views expressed within them.</p>\r\n<p class=\"text-justify\">Every effort is made to keep the website up and running smoothly. However, \"Yugeva Cryo\" takes no responsibility for, and will not be liable for, the website being temporarily unavailable due to technical issues beyond our control.</p>', '', '', '', '', 8, 'E', 4, '2017-05-27 09:14:02', '2017-06-17 10:58:52', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `permission_master`
--

CREATE TABLE `permission_master` (
  `permission_id` int(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `group_id` varchar(20) NOT NULL,
  `module` varchar(20) NOT NULL,
  `permissions` varchar(7) NOT NULL DEFAULT 'a,e,d,v',
  `module_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permission_master`
--

INSERT INTO `permission_master` (`permission_id`, `username`, `createdate`, `modifieddate`, `group_id`, `module`, `permissions`, `module_id`) VALUES
(778, 'Keyur', '2017-11-13', '2017-11-13', '1', 'benifit', 'a,d,e,v', 33),
(777, 'Keyur', '2017-11-13', '2017-11-13', '1', 'faqtype', 'a,d,e,v', 32),
(776, 'Keyur', '2017-11-13', '2017-11-13', '1', 'faq', 'a,d,e,v', 31),
(775, 'Keyur', '2017-11-13', '2017-11-13', '1', 'popup', 'a,d,e,v', 30),
(774, 'Keyur', '2017-11-13', '2017-11-13', '1', 'brochure', 'a,d,e,v', 29),
(773, 'Keyur', '2017-11-13', '2017-11-13', '1', 'company', 'a,d,e,v', 28),
(772, 'Keyur', '2017-11-13', '2017-11-13', '1', 'banner', 'a,d,e,v', 27),
(771, 'Keyur', '2017-11-13', '2017-11-13', '1', 'team', 'a,d,e,v', 26),
(770, 'Keyur', '2017-11-13', '2017-11-13', '1', 'downloads_list', 'a,d,e,v', 25),
(769, 'Keyur', '2017-11-13', '2017-11-13', '1', 'projectimages', 'a,d,e,v', 24),
(768, 'Keyur', '2017-11-13', '2017-11-13', '1', 'projectslider', 'a,d,e,v', 23),
(767, 'Keyur', '2017-11-13', '2017-11-13', '1', 'projectfloors', 'a,d,e,v', 22),
(766, 'Keyur', '2017-11-13', '2017-11-13', '1', 'projects', 'a,d,e,v', 21),
(765, 'Keyur', '2017-11-13', '2017-11-13', '1', 'project_type', 'a,d,e,v', 20),
(764, 'Keyur', '2017-11-13', '2017-11-13', '1', 'gallery', 'a,d,e,v', 19),
(763, 'Keyur', '2017-11-13', '2017-11-13', '1', 'album', 'a,d,e,v', 18),
(762, 'Keyur', '2017-11-13', '2017-11-13', '1', 'albumtype', 'a,d,e,v', 17),
(761, 'Keyur', '2017-11-13', '2017-11-13', '1', 'testimonialtype', 'a,d,e,v', 16),
(760, 'Keyur', '2017-11-13', '2017-11-13', '1', 'testimonial', 'a,d,e,v', 15),
(759, 'Keyur', '2017-11-13', '2017-11-13', '1', 'newsmaster', 'a,d,e,v', 14),
(758, 'Keyur', '2017-11-13', '2017-11-13', '1', 'news', 'a,d,e,v', 13),
(757, 'Keyur', '2017-11-13', '2017-11-13', '1', 'website', 'a,d,e,v', 12),
(756, 'Keyur', '2017-11-13', '2017-11-13', '1', 'epanel', 'a,d,e,v', 11),
(755, 'Keyur', '2017-11-13', '2017-11-13', '1', 'job', 'a,d,e,v', 10),
(754, 'Keyur', '2017-11-13', '2017-11-13', '1', 'subscription', 'a,d,e,v', 9),
(753, 'Keyur', '2017-11-13', '2017-11-13', '1', 'homecontent', 'a,d,e,v', 8),
(752, 'Keyur', '2017-11-13', '2017-11-13', '1', 'pageimages', 'a,d,e,v', 7),
(751, 'Keyur', '2017-11-13', '2017-11-13', '1', 'pages', 'a,d,e,v', 6),
(750, 'Keyur', '2017-11-13', '2017-11-13', '1', 'permission', 'a,d,e,v', 5),
(749, 'Keyur', '2017-11-13', '2017-11-13', '1', 'slider', 'a,d,e,v', 4),
(748, 'Keyur', '2017-11-13', '2017-11-13', '1', 'usergroup', 'a,d,e,v', 3),
(747, 'Keyur', '2017-11-13', '2017-11-13', '1', 'user', 'a,d,e,v', 2),
(746, 'Keyur', '2017-11-13', '2017-11-13', '1', 'contact', 'a,d,e,v', 1),
(779, 'Keyur', '2017-11-13', '2017-11-13', '1', 'appointment', 'a,d,e,v', 34),
(780, 'Keyur', '2017-11-13', '2017-11-13', '1', 'research', 'a,d,e,v', 35),
(781, 'Keyur', '2017-11-13', '2017-11-13', '1', 'services', 'a,d,e,v', 37),
(782, 'Keyur', '2017-11-13', '2017-11-13', '1', 'products', 'a,d,e,v', 36),
(783, 'Keyur', '2017-11-13', '2017-11-13', '1', 'results', 'a,d,e,v', 38),
(784, 'Keyur', '2017-11-13', '2017-11-13', '1', 'brochure', 'a,d,e,v', 39),
(785, 'Keyur', '2017-11-13', '2017-11-13', '1', 'personality', 'a,d,e,v', 40);

-- --------------------------------------------------------

--
-- Table structure for table `personality`
--

CREATE TABLE `personality` (
  `personalityID` int(11) NOT NULL,
  `personalityTitle` varchar(255) DEFAULT NULL,
  `personalitySubTitle` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `username` varchar(30) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `sortorder` int(8) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `remote_ip` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personality`
--

INSERT INTO `personality` (`personalityID`, `personalityTitle`, `personalitySubTitle`, `image`, `username`, `status`, `sortorder`, `createdate`, `modifieddate`, `remote_ip`) VALUES
(1, 'Cristiano Ronaldo', 'Professional Footballer', '1-ronaldo.jpg', 'Keyur', 'E', 1, '2017-11-13', '2017-11-14', '175.100.148.240'),
(2, 'Jessica Alba', 'Actress', '2-jessica-alba-red-lips.jpg', 'Keyur', 'E', 2, '2017-11-13', '2017-11-14', '175.100.148.240'),
(3, 'Derek Hough', 'Professional Dancer', '3-derek_hough_judge.jpg', 'Keyur', 'E', 3, '2017-11-13', '2017-11-14', '175.100.148.240'),
(4, 'Kobe Bryant', 'NBA player', '4-kobe-bryant.jpg', 'Keyur', 'E', 4, '2017-11-13', '2017-11-14', '175.100.148.240'),
(5, 'Mandy Moore', 'Singer-songwriter  Actress', '5-mandy moore.jpg', 'Keyur', 'E', 5, '2017-11-13', '2017-11-14', '175.100.148.240'),
(6, 'Daniel Craig', 'Actor', '6-daniel_craig-1381.jpg', 'Keyur', 'E', 6, '2017-11-14', '0000-00-00', '175.100.148.240'),
(7, 'Floyd Mayweather', 'World Champion Boxer', '7-Floyd Mayweather.jpg', 'Keyur', 'E', 7, '2017-11-14', '0000-00-00', '175.100.148.240'),
(8, 'Usian Bolt', 'Olympic Athlete', '8-Usain-Bolt-200.jpg', 'Keyur', 'E', 8, '2017-11-14', '0000-00-00', '175.100.148.240'),
(9, 'Mark Webber', 'F1 Racing Driver', '9-mark webber.jpg', 'Keyur', 'E', 9, '2017-11-14', '0000-00-00', '175.100.148.240'),
(10, 'LeBron James ', 'NBA Player', '10-Lebrown james.jpeg', 'Keyur', 'E', 10, '2017-11-14', '0000-00-00', '175.100.148.240'),
(11, 'Demi Moore', 'Actress', '11-Demi moore.jpg', 'Keyur', 'E', 11, '2017-11-14', '0000-00-00', '175.100.148.240'),
(12, 'Tony Ribbons', 'Motivational Speaker', '12-tony.png', 'Keyur', 'E', 12, '2017-11-14', '0000-00-00', '175.100.148.240');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `projectID` int(11) NOT NULL,
  `pTypeID` int(11) NOT NULL,
  `projectTitle` varchar(100) NOT NULL,
  `projectTypeTitle` varchar(50) NOT NULL,
  `projectDescr` text NOT NULL,
  `projectStatus` varchar(25) NOT NULL,
  `projectBS` varchar(10) NOT NULL,
  `projectArea` varchar(200) DEFAULT NULL,
  `projectUnits` varchar(100) NOT NULL,
  `projectAbout` text,
  `projectPlans` text,
  `projectBrochure` varchar(200) DEFAULT NULL,
  `conceptPresentation` varchar(200) DEFAULT NULL,
  `projectLocation` varchar(200) DEFAULT NULL,
  `projectThumbnail` varchar(100) DEFAULT NULL,
  `projectSpeciality` text,
  `projectVideo` text,
  `projectVideoUrl` varchar(200) DEFAULT NULL,
  `projectsUrl` varchar(200) DEFAULT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `username` varchar(20) NOT NULL,
  `sortorder` int(5) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `remote_ip` varchar(20) NOT NULL,
  `hasForm` varchar(6) DEFAULT 'No',
  `hasmasterplan` varchar(6) DEFAULT 'No',
  `hasWhy` varchar(6) DEFAULT 'Yes',
  `hasmainFeatures` varchar(6) DEFAULT 'No',
  `hasexclusiveServices` varchar(6) DEFAULT 'No',
  `projectWhy` text,
  `mainFeatures` text,
  `mobilemainfeatures` text,
  `exclusiveServices` text,
  `mobileexclusiveservices` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`projectID`, `pTypeID`, `projectTitle`, `projectTypeTitle`, `projectDescr`, `projectStatus`, `projectBS`, `projectArea`, `projectUnits`, `projectAbout`, `projectPlans`, `projectBrochure`, `conceptPresentation`, `projectLocation`, `projectThumbnail`, `projectSpeciality`, `projectVideo`, `projectVideoUrl`, `projectsUrl`, `createdate`, `modifieddate`, `username`, `sortorder`, `status`, `remote_ip`, `hasForm`, `hasmasterplan`, `hasWhy`, `hasmainFeatures`, `hasexclusiveServices`, `projectWhy`, `mainFeatures`, `mobilemainfeatures`, `exclusiveServices`, `mobileexclusiveservices`) VALUES
(5, 9, 'demo project', '', '', 'Ongoing', '', '', '', NULL, 'Yes', NULL, NULL, NULL, NULL, NULL, '', NULL, '', '2015-10-29', '0000-00-00', '', 1, 'E', '192.168.2.105', 'Yes', 'No', 'No', 'No', 'No', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `project_gallery`
--

CREATE TABLE `project_gallery` (
  `galleryID` int(11) NOT NULL,
  `projectID` int(11) NOT NULL DEFAULT '0',
  `galleryTitle` varchar(100) NOT NULL DEFAULT '',
  `galleryImage` varchar(100) NOT NULL,
  `type` char(1) NOT NULL DEFAULT 'G',
  `sortorder` int(3) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `username` varchar(50) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `remote_ip` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_gallery`
--

INSERT INTO `project_gallery` (`galleryID`, `projectID`, `galleryTitle`, `galleryImage`, `type`, `sortorder`, `status`, `username`, `createdate`, `modifieddate`, `remote_ip`) VALUES
(22, 5, 'demo image', '22-Tulips.jpg', 'G', 6, 'E', '', '0000-00-00', '0000-00-00', '192.168.2.136'),
(21, 5, 'Image 4', '21-Chrysanthemum.jpg', 'G', 4, 'E', 'Keyur', '0000-00-00', '2016-01-09', '192.168.2.136'),
(18, 0, 'Image 1', 'Koala.jpg', 'G', 1, 'E', 'Keyur', '0000-00-00', '2016-01-09', '192.168.2.136'),
(19, 0, 'Image 2', 'Koala.jpg', 'G', 2, 'E', 'Keyur', '0000-00-00', '2016-01-09', '192.168.2.136'),
(23, 5, 'title1', '23-Lighthouse.jpg', 'G', 1, 'E', '', '0000-00-00', '0000-00-00', '192.168.2.133'),
(24, 5, 'title2', '24-Penguins.jpg', 'G', 2, 'E', '', '0000-00-00', '0000-00-00', '192.168.2.133'),
(25, 5, 'title3', '25-Tulips.jpg', 'G', 3, 'E', '', '0000-00-00', '0000-00-00', '192.168.2.133');

-- --------------------------------------------------------

--
-- Table structure for table `project_slider`
--

CREATE TABLE `project_slider` (
  `sliderID` int(11) NOT NULL,
  `projectID` int(11) NOT NULL DEFAULT '0',
  `sliderTitle` varchar(100) NOT NULL DEFAULT '',
  `sliderImage` text NOT NULL,
  `isFront` char(1) NOT NULL DEFAULT 'E',
  `sortorder` int(3) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `username` varchar(50) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `remote_ip` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `research`
--

CREATE TABLE `research` (
  `researchID` int(11) NOT NULL,
  `researchTitle` varchar(255) NOT NULL,
  `type` varchar(30) NOT NULL,
  `file` varchar(255) NOT NULL,
  `username` varchar(30) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `sortorder` int(8) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `remote_ip` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `research`
--

INSERT INTO `research` (`researchID`, `researchTitle`, `type`, `file`, `username`, `createdate`, `modifieddate`, `sortorder`, `status`, `remote_ip`) VALUES
(1, 'Biomedical Engeneering', 'General', '1-Biomedical Engeneering-2.pdf', 'Keyur', '2017-11-13', '2017-11-13', 1, 'E', '127.0.0.1'),
(2, 'Cryotherapy for Beauty', 'Beauty', '2-Beauty.docx', 'Keyur', '2017-11-13', '2017-11-23', 2, 'E', '123.201.249.64'),
(3, 'Athletic Recovery', 'Fitness', '3-Athletic-Recovery.docx', 'Keyur', '2017-11-13', '2017-11-22', 3, 'E', '207.244.89.90'),
(5, 'Delayed onset muscle soreness', 'Pain', '5-Delayed onset muscle soreness.pdf', 'Keyur', '2017-11-13', '2017-11-13', 5, 'E', '127.0.0.1'),
(7, 'Aerobic and Anaerobic capacity and on selected blood count parameters', 'Fitness', '7-Impact of 10 sessions on aerobic and anaerobic capacity and on selected blood count parameters.pdf', 'Keyur', '2017-11-21', '0000-00-00', 7, 'E', '123.201.241.248'),
(8, 'WBC in Athlets', 'Fitness', '8-Whole-Body-Cryotherapy-in-Athletes.pdf', 'Keyur', '2017-11-21', '0000-00-00', 8, 'E', '123.201.241.248'),
(9, 'Serum mediators of inflammation and serum muscle enzymes in athletes', 'Fitness', '9-Serum mediators of inflammation and serum muscle enzymes in athletes.pdf', 'Keyur', '2017-11-21', '0000-00-00', 9, 'E', '123.201.241.248'),
(10, 'Body Performance', 'Fitness', '10-Body-performance.pdf', 'Keyur', '2017-11-21', '0000-00-00', 10, 'E', '123.201.241.248'),
(11, 'Hormonal changes in soccer players', 'Fitness', '11-Hormones in professional soccer players.pdf', 'Keyur', '2017-11-21', '0000-00-00', 11, 'E', '123.201.241.248'),
(12, 'Hormonal Response ', 'Health & Wellness', '12-Hormones in professional soccer players.pdf', 'Keyur', '2017-11-21', '0000-00-00', 12, 'E', '123.201.241.248'),
(13, 'Benifits on Sport Haemolysis', 'Fitness', '13-Sport Haemolysis.pdf', 'Keyur', '2017-11-21', '2017-11-22', 13, 'E', '207.244.89.90'),
(14, 'cryotherapy for Yoga Lovers', 'Fitness', '14-Yoga-Lovers.pdf', 'Keyur', '2017-11-21', '2017-11-23', 14, 'E', '123.201.249.64'),
(16, 'Thermal responses during and After Therapy', 'General', '16-Thermal responses during and after.pdf', 'Keyur', '2017-11-21', '0000-00-00', 16, 'E', '123.201.241.248'),
(17, 'Three Levels of Influence ', 'General', '17-Whole-Body-Cryotherapy-an-overview-of-benefits.pdf', 'Keyur', '2017-11-21', '2017-11-21', 17, 'E', '123.201.241.248'),
(18, 'Antioxidant Capacity ', 'Health & Wellness', '18-Improving Antioxidant Capacity in Healthy Men.pdf', 'Keyur', '2017-11-21', '0000-00-00', 18, 'E', '123.201.241.248'),
(19, 'Depressive and Anxiety disorders', 'Health & Wellness', '19-Depression-and-Anxiety.pdf', 'Keyur', '2017-11-21', '0000-00-00', 19, 'E', '123.201.241.248'),
(20, 'Primary Insomnia', 'Health & Wellness', '20-Primary Insomnia.pdf', 'Keyur', '2017-11-21', '0000-00-00', 20, 'E', '123.201.241.248'),
(21, 'Secondary Insomnia', 'Health & Wellness', '21-Secondary Insomnia.pdf', 'Keyur', '2017-11-21', '0000-00-00', 21, 'E', '123.201.241.248'),
(22, 'Mental Health ', 'Health & Wellness', '22-Mental-Health.pdf', 'Keyur', '2017-11-21', '0000-00-00', 22, 'E', '123.201.241.248'),
(23, 'Preventive Medicine', 'Health & Wellness', '23-Mental-Health.pdf', 'Keyur', '2017-11-21', '0000-00-00', 23, 'E', '123.201.241.248'),
(24, 'Pain-dependent Sleep disorders', 'Health & Wellness', '24-sleep disorder.pdf', 'Keyur', '2017-11-21', '0000-00-00', 24, 'E', '123.201.241.248'),
(25, 'Alzheimer\'s disease', 'Health & Wellness', '25-The prevention of Alzheimerâ€™s disease.pdf', 'Keyur', '2017-11-21', '0000-00-00', 25, 'E', '123.201.241.248'),
(26, 'Fibromylgia', 'Pain', '26-FIBROMYALGIA-SYNDROMES.pdf', 'Keyur', '2017-11-21', '0000-00-00', 26, 'E', '123.201.241.248'),
(27, 'Frozen Shoulder ', 'Pain', '27-Treating frozen shoulder.pdf', 'Keyur', '2017-11-21', '0000-00-00', 27, 'E', '123.201.241.248'),
(28, 'Inflammation', 'Pain', '28-Different amounts of sessions on chosen pro- and anti-inflammatory cytokines levels in healthy men.pdf', 'Keyur', '2017-11-21', '0000-00-00', 28, 'E', '123.201.241.248'),
(29, 'Lower Back Pain', 'Pain', '29-Low-Back-Pain-2.pdf', 'Keyur', '2017-11-21', '0000-00-00', 29, 'E', '123.201.241.248'),
(30, 'Multiple Sclerosis', 'Pain', '30-Multiple-Sclerosis-2.pdf', 'Keyur', '2017-11-21', '0000-00-00', 30, 'E', '123.201.241.248'),
(31, 'Muscle Damage', 'Pain', '31-Proprioception and Muscle Damage.pdf', 'Keyur', '2017-11-21', '0000-00-00', 31, 'E', '123.201.241.248'),
(32, 'Pain and Spasticity', 'Pain', '32-Pain and Spasticity.pdf', 'Keyur', '2017-11-21', '0000-00-00', 32, 'E', '123.201.241.248'),
(33, 'Osteoarthritis', 'Pain', '33-Thermotherapy for treatment of osteoarthritis.pdf', 'Keyur', '2017-11-21', '0000-00-00', 33, 'E', '123.201.241.248'),
(34, 'Cryotherapy for Psoriasis', 'Beauty', '34-psoriasis.pdf', 'Keyur', '2017-11-21', '2017-11-22', 34, 'E', '207.244.89.90'),
(35, 'Rheumatic Diseases', 'Pain', '35-Rheumatic-Diseases.pdf', 'Keyur', '2017-11-21', '0000-00-00', 35, 'E', '123.201.241.248'),
(36, 'Spinal Syndromes', 'Pain', '36-Spinal syndrome.pdf', 'Keyur', '2017-11-21', '0000-00-00', 36, 'E', '123.201.241.248'),
(37, 'Cryotherapy for Weight Loss', 'Weight loss', '37-weightloss (brown adipose tissue oxidative metabolism).pdf', 'Keyur', '2017-11-21', '2017-11-23', 37, 'E', '123.201.249.64'),
(38, 'Weight Management', 'Weight loss', '38-Weight-Management-Option.pdf', 'Keyur', '2017-11-21', '2017-11-23', 38, 'E', '123.201.249.64'),
(39, 'Cryotherapy for Radiant Skin', 'Beauty', '39-Cryo Facial-2.pdf', 'Keyur', '2017-11-21', '2017-11-23', 39, 'E', '123.201.249.64'),
(40, 'Cryotherapy for Anti-ageing', 'Beauty', '40-Defy-the-Ageing-Process.pdf', 'Keyur', '2017-11-21', '2017-11-22', 40, 'E', '207.244.89.90');

-- --------------------------------------------------------

--
-- Table structure for table `seo_link_master`
--

CREATE TABLE `seo_link_master` (
  `seo_link_id` int(8) NOT NULL,
  `module_name` varchar(100) NOT NULL,
  `module_id` int(8) NOT NULL,
  `seo_slug` varchar(255) NOT NULL,
  `user_id` int(8) NOT NULL,
  `createdate` datetime NOT NULL,
  `modifieddate` datetime NOT NULL,
  `remote_ip` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seo_link_master`
--

INSERT INTO `seo_link_master` (`seo_link_id`, `module_name`, `module_id`, `seo_slug`, `user_id`, `createdate`, `modifieddate`, `remote_ip`) VALUES
(164, 'pages', 17, 'company', 4, '2017-06-06 11:03:29', '2017-06-06 11:03:56', '127.0.0.1'),
(163, 'pages', 16, 'disclaimer', 4, '2017-05-27 09:14:02', '2017-06-17 10:58:52', '127.0.0.1'),
(162, 'pages', 15, 'privacy-policy', 4, '2017-05-27 09:13:47', '2017-06-17 10:58:29', '127.0.0.1'),
(161, 'pages', 14, 'terms', 4, '2017-05-27 09:13:20', '2017-06-17 10:58:03', '127.0.0.1'),
(146, 'benefit', 45, 'cryo-pain', 4, '2017-05-19 18:20:24', '2017-07-29 17:20:48', '127.0.0.1'),
(138, 'benefit', 19, 'cryo-health-amp-wellness', 4, '2017-05-17 11:05:16', '2017-07-29 16:46:45', '127.0.0.1'),
(137, 'benefit', 18, 'cryo-beauty', 4, '2017-05-17 11:01:43', '2017-09-26 11:09:46', '123.201.2.173'),
(147, 'benefit', 46, 'cryo-fitness', 4, '2017-05-19 18:24:03', '2017-07-29 17:16:17', '127.0.0.1'),
(148, 'benefit', 47, 'cryo-weight-loss', 4, '2017-05-19 18:27:23', '2017-07-29 16:49:50', '127.0.0.1'),
(149, 'pages', 10, 'how-cryo-therapy-works', 4, '2017-05-22 09:25:43', '2017-06-06 11:10:57', '127.0.0.1'),
(150, 'pages', 11, 'what-is-cryotherapy', 4, '2017-05-22 11:21:11', '2017-06-08 17:28:09', '127.0.0.1'),
(151, 'pages', 12, 'what-to-expect', 4, '2017-05-22 12:01:41', '2017-06-08 17:03:12', '127.0.0.1'),
(152, 'services', 9, 'service1', 4, '2017-05-22 16:49:13', '2017-05-22 16:49:13', '127.0.0.1'),
(160, 'pages', 13, 'about-us', 4, '2017-05-24 17:04:18', '2017-07-08 10:08:22', '127.0.0.1'),
(154, 'services', 8, 'valuation', 4, '2017-05-22 16:57:50', '2017-05-22 16:57:50', '127.0.0.1'),
(155, 'services', 11, 'whole-body-cryo', 4, '2017-05-22 17:13:25', '2017-09-26 11:08:52', '123.201.2.173'),
(159, 'services', 15, 'facial-cryo', 4, '2017-05-22 17:21:44', '2017-07-08 13:59:18', '123.201.2.173'),
(157, 'services', 13, 'targeted-cryo', 4, '2017-05-22 17:16:28', '2017-06-05 17:10:51', '127.0.0.1'),
(158, 'services', 14, 'mir', 4, '2017-05-22 17:16:58', '2017-05-22 17:36:35', '127.0.0.1'),
(116, 'FAQ', 3, 'faq', 4, '2017-05-05 09:42:23', '2017-05-05 09:42:23', '127.0.0.1'),
(117, 'faq', 4, 'cryotherapy', 6, '2017-05-05 09:43:08', '2018-08-22 06:35:36', '60.254.22.150'),
(118, 'faq', 4, 'cryotherapy', 6, '2017-05-05 10:17:26', '2018-08-22 06:35:36', '60.254.22.150'),
(165, 'personality', 16, 'p1', 4, '2017-11-13 14:48:03', '2017-11-13 14:48:03', '127.0.0.1'),
(166, 'personality', 17, 'p2', 4, '2017-11-13 14:49:00', '2017-11-13 14:49:00', '127.0.0.1'),
(167, 'personality', 18, 'p3', 4, '2017-11-13 14:52:21', '2017-11-13 14:52:21', '127.0.0.1'),
(168, 'personality', 1, 'cristiano-ronaldo', 4, '2017-11-13 15:12:36', '2017-11-14 08:00:57', '175.100.148.240'),
(169, 'personality', 2, 'jessica-alba', 4, '2017-11-13 15:13:36', '2017-11-14 10:55:35', '175.100.148.240'),
(170, 'personality', 3, 'derek-hough', 4, '2017-11-13 15:15:00', '2017-11-14 10:53:33', '175.100.148.240'),
(171, 'personality', 4, 'kobe-bryant', 4, '2017-11-13 15:16:22', '2017-11-14 08:10:24', '175.100.148.240'),
(172, 'personality', 5, 'mandy-moore', 4, '2017-11-13 15:17:08', '2017-11-14 08:07:07', '175.100.148.240'),
(173, 'personality', 6, 'daniel-craig', 4, '2017-11-14 08:05:29', '2017-11-14 08:05:29', '175.100.148.240'),
(174, 'personality', 7, 'floyd-mayweather', 4, '2017-11-14 11:00:59', '2017-11-14 11:00:59', '175.100.148.240'),
(175, 'personality', 8, 'usian-bolt', 4, '2017-11-14 11:03:34', '2017-11-14 11:03:34', '175.100.148.240'),
(176, 'personality', 9, 'mark-webber', 4, '2017-11-14 11:07:01', '2017-11-14 11:07:01', '175.100.148.240'),
(177, 'personality', 10, 'lebron-james', 4, '2017-11-14 11:09:31', '2017-11-14 11:09:31', '175.100.148.240'),
(178, 'personality', 11, 'demi-moore', 4, '2017-11-14 11:14:08', '2017-11-14 11:14:08', '175.100.148.240'),
(179, 'personality', 12, 'tony-ribbons', 4, '2017-11-14 11:50:14', '2017-11-14 11:50:14', '175.100.148.240'),
(180, 'Testimonial', 1, 'cosmetic', 4, '2017-12-29 12:44:51', '2017-12-29 12:44:51', '123.201.225.120'),
(181, 'Testimonial', 3, 'imaging', 4, '2017-12-29 12:44:57', '2017-12-29 12:44:57', '123.201.225.120'),
(182, 'faq', 5, 'normatec', 6, '2018-08-22 06:35:14', '2018-08-22 06:35:14', '60.254.22.150'),
(183, 'benefit', 48, 'cryo-slimming', 6, '2018-08-22 07:11:06', '2018-11-02 05:42:24', '116.74.112.172'),
(184, 'benefit', 49, 'cryo-lifting', 6, '2018-08-22 07:28:05', '2018-10-02 09:12:37', '116.74.112.172'),
(185, 'services', 16, 'normatec', 6, '2018-08-22 08:05:21', '2018-09-10 08:17:52', '123.201.2.173'),
(186, 'services', 17, 'cryo-t-shock', 6, '2018-11-02 05:58:33', '2018-11-02 07:24:45', '123.201.2.173');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `serviceID` int(11) NOT NULL,
  `serviceTitle` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `username` varchar(30) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `sortorder` int(8) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `remote_ip` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`serviceID`, `serviceTitle`, `image`, `description`, `username`, `status`, `sortorder`, `createdate`, `modifieddate`, `remote_ip`) VALUES
(15, 'Facial Cryo', '15-caryo_Facial_1.jpg', '<p class=\"text-justify\">Facial Cryo is basically a cryotherapy of whole head and neck area which ultimately result in a complete facial experience. This is a non-invasive treatment, hence facial cryo is truly something different.</p>\r\n<p class=\"text-justify\">It constitutes a Cryogenic treatment, in which a controlled beam of nitrogen vapor is used to &lsquo;freeze&rsquo; the skin of the face, scalp, and neck area.</p>\r\n<p class=\"text-justify\">The skin becomes tighter, more even-toned, and blood circulation gets improved. Over the period of time, skin will become more elastic due to the increase in collagen.</p>\r\n<p class=\"text-justify\">The Facial Cryo will flush away all the harmful toxins which have settled on your skin, dramatically reduce pore size and soothe any skin inflammation.</p>\r\n<h3>Why Choose Facial Cryo ?</h3>\r\n<ul class=\"circle-bullet\">\r\n<li>Increased collagen production</li>\r\n<li>Tighter, smoother more youthful skin</li>\r\n<li>Decrease pore size</li>\r\n<li>Reduction in face inflammation</li>\r\n<li>Reduction of skin blemishes, Acne, Scars</li>\r\n<li>Trigger hair follicle growth thickening hair volume of eyelashes and eyebrows</li>\r\n<li>Treat chronic skin conditions like psoriasis, eczema, dermatitis</li>\r\n<li>Reduction in toxins</li>\r\n<li>Decrease in wrinkles and lines</li>\r\n</ul>', 'Keyur', 'E', 2, '2017-05-22', '2017-07-08', '123.201.2.173'),
(13, 'Targeted Cryo', '13-targeted_Cryo_1.jpg', '<p class=\"text-justify\">While Whole Body Cryotherapy achieves systemic responses, there is still a need to focus on specific injuries. Local cryotherapy is used to target specific areas more intensively to reduce pain, inflammation, and swelling.</p>\r\n<p class=\"text-justify\">A spot area treatment only needs to be conducted for about 5-10 minutes, with a benefit exceeding that of hours of icing. Clients frequently combine this application with Whole Body Cryotherapy, to treat problem areas both from the \"inside out\" as well as from the \"outside in.\"</p>\r\n<h3>Most popular applications:</h3>\r\n<ul class=\"circle-bullet\">\r\n<li>Pain Reduction</li>\r\n<li>Arthritis</li>\r\n<li>Lower back pain (Sciatica, slipped discs, post spinal surgery, muscle spasm)</li>\r\n<li>Frozen shoulder and other shoulder dysfunction</li>\r\n<li>Neck and mid- back pain and spasm</li>\r\n<li>Knee pain and post knee surgery</li>\r\n<li>Hip pain</li>\r\n<li>Sprains and strains</li>\r\n<li>Tennis elbow, Golfers elbow</li>\r\n<li>Sport injuries</li>\r\n<li>Tendonitis (Achilles, plantar fasciitis)</li>\r\n<li>Gout</li>\r\n</ul>', 'Keyur', 'E', 3, '2017-05-22', '2017-07-08', '127.0.0.1'),
(11, 'Whole Body Cryo', '11-whole_body_cryo_1.jpg', '<p class=\"text-justify\">At Yugeva Cryo, we believe anybody can benefit from our flagship treatment whole body cryotherapy. In this whole body cryotherapy, you ought to freeze yourself and get lot of benefits in conditions like Health &amp; Wellness, Fitness, Weight loss, Beauty enhancement and Pain relief. At Yugeva Cryo we wish and ask our client to Rediscover NEW YOU.</p>\r\n<p class=\"text-justify\">The 3-minute treatment reduces inflammation and releases endorphins and other hormones, that help to alleviate pain, boost energy and metabolism, increase the body&rsquo;s natural healing abilities and restore all motor function of the body.</p>\r\n<p class=\"text-justify\">We welcome anyone that wants to experience the benefits of cryotherapy; it is great and only opportunity at YUGEVA CRYO. Let&rsquo;s share some proud moment as we are pioneer in India offering cryotherapy centers and you are also the pioneer in India who using a cryotherapy.</p>', 'Keyur', 'E', 1, '2017-05-22', '2017-09-26', '123.201.2.173'),
(16, 'NormaTec', '16-normatec_track-running_boots.jpg', '<p class=\"text-justify\">The NormaTec PULSE Recovery System is patented dynamic compression devices designed for recovery and rehab.</p>\r\n<p class=\"text-justify\">The leg recovery system uses compressed air to massage your limbs, mobilize fluid, and speed recovery. NormaTec is mostly used by fitness freak, athletes and non-athletes to improve the performance of their bodies, muscles recovery, muscles relaxation and to recover from surgery.</p>\r\n<p class=\"text-justify\">Blood loses almost all of the momentum created by the heart after it passes through ultra-fine capillaries of the muscles. The body has entirely different system to take the blood back to the heart. Muscle contraction and one-way valves in the veins create a natural pumping mechanism, in which leg muscles play the role of the heart. Engaging this system, however, requires activity. The NormaTec is designed to mimic this pumping action while lying on the couch.</p>\r\n<p class=\"main-benefit-list\"><strong>Benefits:</strong></p>\r\n<ul class=\"circle-bullet benifit-list\">\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Faster recovery after exercise</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Soreness and Swollen legs and arms (including those with lymphedema)</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Reduced pain, cramping and soreness</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Improvement in limited range of motion</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Aids in the removal of toxins like lactic acid Improves Circulation</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Immediate relief for &ldquo;heavy legs&rdquo;</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Helps avoid the development of cellulite</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Reduces inflammation and decreases water accumulation</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Varicose veins</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Prevention/elimination of first-stage varicose</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Reduce spider vein</li>\r\n<li class=\"col-md-12 col-sm-12 col-xs-12\">Edema</li>\r\n</ul>', 'Bhavini', 'E', 4, '2018-08-22', '2018-09-10', '123.201.2.173'),
(17, 'Cryo T-Shock', '17-T-shock side image 750 x 450.jpg', '<p class=\"text-justify\">According to statistics, over 80% of women suffer from fat, cellulite and other beauty problem, and until now there hasn&rsquo;t been much of a solution. Modern technology provides us with the answer &ndash; CRYO T-SHOCK.</p>\r\n<p class=\"text-justify\">It consists of a special developed technique where warm and cold are used and applied directly to the skin&rsquo;s subcutaneous fat cells are naturally more vulnerable to the effects of cold than other surrounding tissue. Exposure to cooling causes fat cell apoptosis &ndash; a natural, controlled cell death, which leads to the release of cytokines and other inflammatory mediators that gradually eliminate the affected cells. As well as increase the production of Collagen which results in skin Lifting and tightening.</p>\r\n<h3>Benefits:</h3>\r\n<p><strong>1. Slimming</strong></p>\r\n<ul class=\"circle-bullet\">\r\n<li>Fat loss</li>\r\n<li>Inch loss</li>\r\n<li>Increase metabolism</li>\r\n<li>Cellulite reduction</li>\r\n<li>Body shaping</li>\r\n</ul>\r\n<p style=\"margin-top: 20px;\"><strong>2. Skin Lifting</strong></p>\r\n<ul class=\"circle-bullet\">\r\n<li>Skin toning</li>\r\n<li>Anti-ageing</li>\r\n<li>Double chin</li>\r\n<li>Acne, wrinkles, fine lines</li>\r\n<li>Skin tightening</li>\r\n<li>Face lifting</li>\r\n</ul>', 'Bhavini', 'E', 5, '2018-11-02', '2018-11-02', '123.201.2.173');

-- --------------------------------------------------------

--
-- Table structure for table `session_log_master`
--

CREATE TABLE `session_log_master` (
  `session_log_id` bigint(11) NOT NULL,
  `user_id` bigint(11) NOT NULL,
  `loginID` varchar(100) NOT NULL,
  `remote_ip` varchar(100) NOT NULL,
  `last_access` datetime NOT NULL,
  `status` char(1) NOT NULL COMMENT 'LogiIn(I) / Logout (O)'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session_log_master`
--

INSERT INTO `session_log_master` (`session_log_id`, `user_id`, `loginID`, `remote_ip`, `last_access`, `status`) VALUES
(1, 3, 'admin-jainglass', '192.168.0.109', '2014-11-26 11:30:33', 'I'),
(2, 3, 'admin-jainglass', '192.168.0.11', '2014-11-26 13:00:10', 'I'),
(3, 3, 'admin-jainglass', '192.168.0.101', '2014-11-26 13:38:42', 'I'),
(4, 3, 'admin-jainglass', '192.168.0.11', '2014-11-26 13:45:52', 'O'),
(5, 3, 'admin-jainglass', '192.168.0.101', '2014-11-26 14:19:57', 'O'),
(6, 3, 'admin-jainglass', '192.168.0.101', '2014-11-26 14:20:34', 'I'),
(7, 3, 'admin-jainglass', '192.168.0.109', '2014-11-26 14:22:19', 'O'),
(8, 3, 'admin-jainglass', '192.168.0.109', '2014-11-26 14:22:29', 'I'),
(9, 3, 'admin-jainglass', '192.168.0.101', '2014-11-26 14:24:08', 'O'),
(10, 3, 'admin-jainglass', '192.168.0.109', '2014-11-26 14:24:14', 'O'),
(11, 3, 'admin-jainglass', '192.168.0.101', '2014-11-26 14:24:17', 'I'),
(12, 3, 'admin-jainglass', '192.168.0.109', '2014-11-26 14:24:24', 'I'),
(13, 3, 'admin-jainglass', '192.168.0.101', '2014-11-26 14:27:26', 'O'),
(14, 3, 'admin-jainglass', '192.168.0.101', '2014-11-26 14:27:46', 'I'),
(15, 3, 'admin-jainglass', '192.168.0.25', '2014-11-26 16:03:53', 'I'),
(16, 3, 'Adm-hindva', '192.168.0.14', '2014-11-26 17:00:10', 'O'),
(17, 3, 'admin-jainglass', '192.168.0.14', '2014-11-26 17:00:23', 'I'),
(18, 0, '', '192.168.0.25', '2014-11-26 17:30:22', 'O'),
(19, 3, 'admin-jainglass', '192.168.0.25', '2014-11-26 18:42:48', 'I'),
(20, 3, 'admin-jainglass', '192.168.0.25', '2014-11-26 19:25:01', 'O'),
(21, 3, 'admin-jainglass', '192.168.0.109', '2014-11-27 10:36:29', 'I'),
(22, 3, 'admin-jainglass', '192.168.0.25', '2014-11-27 11:05:57', 'I'),
(23, 3, 'admin-jainglass', '192.168.0.25', '2014-11-27 11:33:55', 'I'),
(24, 1, 'adm-trnl', '192.168.0.14', '2014-11-27 17:18:18', 'O'),
(25, 3, 'admin-jainglass', '192.168.0.14', '2014-11-27 17:18:56', 'I'),
(26, 3, 'admin-jainglass', '202.47.116.138', '2014-11-27 06:50:21', 'I'),
(27, 3, 'admin-jainglass', '202.47.116.138', '2014-11-27 06:50:46', 'I'),
(28, 3, 'admin-jainglass', '202.47.116.138', '2014-11-27 06:52:02', 'O'),
(29, 3, 'admin-jainglass', '202.47.116.138', '2014-11-27 06:52:06', 'I'),
(30, 3, 'admin-jainglass', '202.47.116.138', '2014-11-27 06:53:06', 'O'),
(31, 3, 'admin-jainglass', '202.47.116.138', '2014-11-29 02:00:08', 'I'),
(32, 3, 'admin-jainglass', '202.47.116.138', '2014-11-29 03:33:47', 'I'),
(33, 3, 'admin-jainglass', '202.47.116.138', '2014-11-29 03:33:53', 'I'),
(34, 3, 'admin-jainglass', '202.47.116.138', '2014-11-29 03:58:07', 'I'),
(35, 3, 'admin-jainglass', '202.47.116.138', '2014-11-29 04:11:22', 'I'),
(36, 3, 'admin-jainglass', '175.100.157.142', '2014-11-30 22:16:24', 'I'),
(37, 3, 'admin-jainglass', '175.100.157.142', '2014-11-30 22:16:42', 'I'),
(38, 3, 'admin-jainglass', '202.47.116.138', '2014-11-30 23:55:26', 'I'),
(39, 3, 'admin-jainglass', '202.47.116.138', '2014-12-01 00:03:34', 'I'),
(40, 3, 'admin-jainglass', '202.47.116.138', '2014-12-01 00:07:10', 'I'),
(41, 3, 'admin-jainglass', '202.47.116.138', '2014-12-01 00:33:12', 'O'),
(42, 3, 'admin-jainglass', '202.47.116.138', '2014-12-18 07:17:22', 'I'),
(43, 3, 'admin-jainglass', '202.47.116.138', '2014-12-18 07:37:56', 'I'),
(44, 3, 'admin-jainglass', '202.47.116.138', '2014-12-18 07:38:39', 'I'),
(45, 3, 'admin-jainglass', '202.47.116.138', '2014-12-18 22:53:13', 'I'),
(46, 3, 'admin-jainglass', '202.47.116.138', '2014-12-18 23:00:12', 'O'),
(47, 3, 'admin-jainglass', '202.47.116.138', '2014-12-19 00:10:50', 'I'),
(48, 3, 'admin-jainglass', '202.47.116.138', '2014-12-19 02:42:30', 'O'),
(49, 3, 'admin-jainglass', '202.47.116.138', '2014-12-20 02:05:52', 'I'),
(50, 3, 'admin-jainglass', '202.47.116.138', '2014-12-22 07:44:13', 'I'),
(51, 3, 'admin-jainglass', '202.47.116.138', '2014-12-22 07:57:00', 'O'),
(52, 3, 'admin-jainglass', '202.47.116.138', '2014-12-22 07:58:16', 'I'),
(53, 3, 'admin-jainglass', '202.47.116.138', '2014-12-22 07:58:32', 'O'),
(54, 3, 'admin-jainglass', '202.47.116.138', '2014-12-22 23:26:50', 'I'),
(55, 3, 'admin-jainglass', '202.47.116.138', '2014-12-24 00:54:03', 'I'),
(56, 3, 'admin-jainglass', '202.47.116.138', '2014-12-27 05:51:20', 'I'),
(57, 3, 'admin-jainglass', '202.47.116.138', '2014-12-27 05:57:28', 'I'),
(58, 3, 'admin-jainglass', '202.47.116.138', '2014-12-27 06:02:05', 'O'),
(59, 3, 'admin-jainglass', '116.74.113.206', '2015-01-05 12:37:26', 'I'),
(60, 3, 'admin-jainglass', '202.47.116.138', '2015-01-13 05:36:13', 'I'),
(61, 3, 'admin-jainglass', '202.47.116.138', '2015-01-13 05:44:53', 'I'),
(62, 3, 'admin-jainglass', '202.47.116.138', '2015-01-13 05:48:52', 'O'),
(63, 3, 'admin-jainglass', '202.47.116.138', '2015-01-13 07:39:15', 'I'),
(64, 3, 'admin-jainglass', '202.47.116.138', '2015-01-13 07:49:48', 'O'),
(65, 3, 'admin-jainglass', '123.201.80.119', '2015-01-17 05:20:04', 'I'),
(66, 3, 'admin-jainglass', '123.201.80.119', '2015-01-17 05:37:57', 'O'),
(67, 3, 'admin-jainglass', '123.201.80.119', '2015-01-17 05:40:05', 'I'),
(68, 3, 'admin-jainglass', '202.47.116.138', '2015-01-17 08:05:07', 'I'),
(69, 3, 'admin-jainglass', '122.170.31.159', '2015-01-17 10:30:04', 'I'),
(70, 3, 'admin-jainglass', '122.170.31.159', '2015-01-17 10:30:47', 'I'),
(71, 3, 'admin-jainglass', '203.109.75.214', '2015-02-04 16:19:25', 'I'),
(72, 3, 'admin-jainglass', '203.109.75.214', '2015-02-04 16:20:04', 'O'),
(73, 3, 'admin-jainglass', '202.47.116.138', '2015-02-26 17:10:14', 'I'),
(74, 3, 'admin-jainglass', '202.47.116.138', '2015-02-26 17:10:44', 'I'),
(75, 3, 'admin-jainglass', '123.201.80.41', '2015-03-20 11:07:14', 'I'),
(76, 3, 'admin-jainglass', '123.201.80.41', '2015-03-20 11:07:56', 'I'),
(77, 0, 'admin-jainglass', '123.201.80.41', '2015-03-20 11:09:35', 'O'),
(78, 3, 'admin-jainglass', '123.201.80.41', '2015-03-20 11:09:46', 'I'),
(79, 3, 'admin-jainglass', '123.201.80.41', '2015-03-20 11:13:34', 'O'),
(80, 3, 'admin-jainglass', '123.201.1.220', '2015-03-23 17:12:28', 'I'),
(81, 3, 'admin-jainglass', '123.201.1.220', '2015-03-23 17:12:42', 'I'),
(82, 3, 'admin-jainglass', '123.201.1.220', '2015-03-23 17:18:02', 'O'),
(83, 3, 'admin-jainglass', '202.47.116.138', '2015-05-11 11:11:23', 'I'),
(84, 3, 'admin-jainglass', '202.47.116.138', '2015-05-11 11:11:33', 'O'),
(85, 3, 'admin-jainglass', '202.47.116.138', '2015-05-11 11:12:05', 'I'),
(86, 3, 'admin-jainglass', '202.47.116.138', '2015-05-11 11:12:55', 'I'),
(87, 3, 'admin-jainglass', '203.109.74.60', '2015-05-11 12:00:28', 'I'),
(88, 3, 'admin-jainglass', '175.100.149.13', '2015-07-27 07:08:14', 'I'),
(89, 3, 'admin-jainglass', '123.201.83.126', '2015-07-28 07:48:10', 'I'),
(90, 3, 'admin-jainglass', '123.201.83.126', '2015-07-28 07:48:57', 'O'),
(91, 3, 'admin-jainglass', '123.201.83.126', '2015-07-28 07:49:25', 'I'),
(92, 3, 'admin-jainglass', '123.201.83.126', '2015-07-28 07:49:37', 'O'),
(93, 3, 'admin-jainglass', '123.201.83.65', '2015-07-31 09:48:48', 'I'),
(94, 3, 'admin-jainglass', '123.201.83.65', '2015-07-31 09:55:25', 'O'),
(95, 3, 'admin-jainglass', '175.100.149.75', '2015-08-12 09:50:00', 'I'),
(96, 3, 'admin-jainglass', '175.100.149.75', '2015-08-12 09:52:28', 'O'),
(97, 3, 'admin-jainglass', '175.100.149.5', '2015-08-15 09:19:10', 'I'),
(98, 3, 'admin-jainglass', '175.100.149.5', '2015-08-15 09:21:05', 'O'),
(99, 4, 'admin-glass', '192.168.2.104', '2015-10-26 11:08:55', 'I'),
(100, 4, 'admin-glass', '192.168.2.104', '2015-10-26 11:54:20', 'I'),
(101, 4, 'admin-glass', '192.168.2.104', '2015-10-26 15:59:16', 'O'),
(102, 1, 'admin-epanel', '192.168.2.104', '2015-10-26 15:59:34', 'I'),
(103, 1, 'admin-epanel', '192.168.2.104', '2015-10-26 18:33:21', 'I'),
(104, 1, 'admin-epanel', '192.168.2.106', '2015-10-27 10:09:00', 'I'),
(105, 1, 'admin-epanel', '192.168.2.106', '2015-10-27 11:34:53', 'I'),
(106, 1, 'admin-epanel', '192.168.2.106', '2015-10-27 16:30:33', 'I'),
(107, 1, 'admin-epanel', '192.168.2.106', '2015-10-28 10:07:54', 'I'),
(108, 1, 'admin-epanel', '192.168.2.106', '2015-10-28 12:44:56', 'I'),
(109, 1, 'admin-epanel', '192.168.2.106', '2015-10-28 13:50:13', 'I'),
(110, 1, 'admin-epanel', '192.168.2.105', '2015-10-29 16:36:43', 'I'),
(111, 1, 'admin-epanel', '192.168.2.105', '2015-10-30 10:05:25', 'I'),
(112, 1, 'admin-epanel', '192.168.2.106', '2015-11-03 11:05:02', 'I'),
(113, 1, 'admin-epanel', '192.168.2.109', '2015-11-03 14:04:20', 'I'),
(114, 1, 'admin-epanel', '192.168.2.102', '2015-11-16 15:35:47', 'I'),
(115, 1, 'admin-epanel', '192.168.2.102', '2015-12-01 16:01:19', 'I'),
(116, 1, 'admin-epanel', '192.168.2.103', '2015-12-18 18:51:10', 'I'),
(117, 1, 'admin-epanel', '192.168.2.142', '2016-01-07 13:14:48', 'I'),
(118, 1, 'admin-epanel', '192.168.2.129', '2016-01-08 12:49:26', 'I'),
(119, 1, 'admin-epanel', '192.168.2.136', '2016-01-09 10:04:23', 'I'),
(120, 1, 'admin-epanel', '192.168.2.136', '2016-01-09 10:35:56', 'I'),
(121, 1, 'admin-epanel', '192.168.2.136', '2016-01-09 16:32:17', 'I'),
(122, 1, 'admin-epanel', '192.168.2.136', '2016-01-09 16:40:16', 'I'),
(123, 1, 'admin-epanel', '192.168.2.126', '2016-01-11 10:05:19', 'I'),
(124, 1, 'admin-epanel', '192.168.2.133', '2016-01-21 12:29:37', 'I'),
(125, 1, 'admin-epanel', '192.168.2.131', '2016-02-03 11:58:47', 'I'),
(126, 1, 'admin-epanel', '192.168.2.105', '2016-02-10 16:58:54', 'I'),
(127, 1, 'admin-epanel', '192.168.2.115', '2016-03-28 17:57:29', 'I'),
(128, 3, 'adm-hindvagroup', '::1', '2017-04-05 13:11:15', 'I'),
(129, 3, 'adm-hindvagroup', '::1', '2017-04-06 09:45:24', 'I'),
(130, 3, 'adm-hindvagroup', '::1', '2017-04-06 22:23:43', 'I'),
(131, 3, 'adm-hindvagroup', '::1', '2017-04-08 09:34:34', 'I'),
(132, 3, 'adm-hindvagroup', '::1', '2017-04-09 18:53:44', 'I'),
(133, 3, 'adm-hindvagroup', '::1', '2017-04-10 13:18:27', 'I'),
(134, 3, 'adm-hindvagroup', '::1', '2017-04-13 10:48:45', 'I'),
(135, 3, 'adm-hindvagroup', '::1', '2017-04-14 12:43:16', 'I'),
(136, 3, 'adm-hindvagroup', '::1', '2017-04-15 10:36:09', 'I'),
(137, 3, 'adm-hindvagroup', '::1', '2017-04-16 11:59:19', 'I'),
(138, 3, 'adm-hindvagroup', '::1', '2017-04-17 15:57:16', 'I'),
(139, 3, 'adm-hindvagroup', '::1', '2017-04-17 16:14:12', 'I'),
(140, 2, 'admin-bankimdave', '127.0.0.1', '2017-04-19 17:12:29', 'I'),
(141, 2, 'admin-bankimdave', '127.0.0.1', '2017-04-20 11:02:08', 'I'),
(142, 2, 'admin-bankimdave', '127.0.0.1', '2017-04-20 14:21:58', 'I'),
(143, 2, 'admin-bankimdave', '127.0.0.1', '2017-04-20 16:55:35', 'I'),
(144, 2, 'admin-bankimdave', '127.0.0.1', '2017-04-20 17:45:12', 'O'),
(145, 2, 'admin-bankimdave', '127.0.0.1', '2017-04-21 11:44:50', 'I'),
(146, 5, 'bhavini', '127.0.0.1', '2017-04-21 12:04:44', 'I'),
(147, 2, 'admin-bankimdave', '127.0.0.1', '2017-04-21 12:05:35', 'I'),
(148, 2, 'admin-bankimdave', '127.0.0.1', '2017-04-21 14:32:09', 'I'),
(149, 5, 'bhavini', '127.0.0.1', '2017-04-21 15:27:22', 'I'),
(150, 2, 'admin-bankimdave', '127.0.0.1', '2017-04-21 17:11:14', 'I'),
(151, 2, 'admin-bankimdave', '127.0.0.1', '2017-04-21 17:11:55', 'O'),
(152, 2, 'admin-bankimdave', '127.0.0.1', '2017-04-21 17:12:07', 'I'),
(153, 5, 'bhavini', '127.0.0.1', '2017-04-21 17:13:14', 'I'),
(154, 5, 'bhavini', '127.0.0.1', '2017-04-21 17:36:14', 'O'),
(155, 2, 'admin-bankimdave', '127.0.0.1', '2017-04-21 17:37:27', 'O'),
(156, 2, 'admin-bankimdave', '127.0.0.1', '2017-04-22 09:07:54', 'I'),
(157, 5, 'bhavini', '127.0.0.1', '2017-04-22 09:57:34', 'I'),
(158, 2, 'admin-bankimdave', '127.0.0.1', '2017-04-22 10:22:01', 'O'),
(159, 4, 'admin-yugeva', '127.0.0.1', '2017-04-27 11:38:47', 'I'),
(160, 4, 'admin-yugeva', '127.0.0.1', '2017-04-29 17:56:43', 'I'),
(161, 4, 'admin-yugeva', '127.0.0.1', '2017-04-29 18:17:19', 'I'),
(162, 4, 'admin-yugeva', '127.0.0.1', '2017-05-01 09:18:31', 'I'),
(163, 4, 'admin-yugeva', '127.0.0.1', '2017-05-03 15:55:52', 'I'),
(164, 4, 'admin-yugeva', '127.0.0.1', '2017-05-05 09:34:00', 'I'),
(165, 4, 'admin-yugeva', '127.0.0.1', '2017-05-15 14:36:08', 'I'),
(166, 4, 'admin-yugeva', '127.0.0.1', '2017-05-16 12:29:39', 'I'),
(167, 4, 'admin-yugeva', '127.0.0.1', '2017-05-16 13:49:20', 'I'),
(168, 4, 'admin-yugeva', '127.0.0.1', '2017-05-16 17:40:49', 'I'),
(169, 4, 'admin-yugeva', '127.0.0.1', '2017-05-17 09:06:51', 'I'),
(170, 4, 'admin-yugeva', '127.0.0.1', '2017-05-17 11:46:23', 'I'),
(171, 4, 'admin-yugeva', '127.0.0.1', '2017-05-17 13:40:51', 'I'),
(172, 4, 'admin-yugeva', '127.0.0.1', '2017-05-17 16:27:55', 'I'),
(173, 4, 'admin-yugeva', '127.0.0.1', '2017-05-18 08:44:43', 'I'),
(174, 4, 'admin-yugeva', '127.0.0.1', '2017-05-19 18:14:55', 'I'),
(175, 4, 'admin-yugeva', '192.168.0.7', '2017-05-20 10:32:26', 'I'),
(176, 4, 'admin-yugeva', '127.0.0.1', '2017-05-20 10:32:50', 'I'),
(177, 4, 'admin-yugeva', '127.0.0.1', '2017-05-22 09:24:31', 'I'),
(178, 4, 'admin-yugeva', '127.0.0.1', '2017-05-22 10:11:29', 'I'),
(179, 4, 'admin-yugeva', '127.0.0.1', '2017-05-22 13:30:50', 'I'),
(180, 4, 'admin-yugeva', '127.0.0.1', '2017-05-22 14:09:19', 'I'),
(181, 4, 'admin-yugeva', '127.0.0.1', '2017-05-22 15:51:04', 'I'),
(182, 4, 'admin-yugeva', '127.0.0.1', '2017-05-23 17:03:06', 'I'),
(183, 4, 'admin-yugeva', '127.0.0.1', '2017-05-24 11:46:01', 'I'),
(184, 4, 'admin-yugeva', '127.0.0.1', '2017-05-24 15:46:46', 'I'),
(185, 4, 'admin-yugeva', '127.0.0.1', '2017-05-25 12:23:39', 'I'),
(186, 4, 'admin-yugeva', '127.0.0.1', '2017-05-25 14:57:39', 'I'),
(187, 4, 'admin-yugeva', '127.0.0.1', '2017-05-27 09:12:40', 'I'),
(188, 4, 'admin-yugeva', '127.0.0.1', '2017-05-27 11:57:56', 'I'),
(189, 4, 'admin-yugeva', '127.0.0.1', '2017-05-27 16:31:25', 'I'),
(190, 4, 'admin-yugeva', '127.0.0.1', '2017-05-29 11:06:25', 'I'),
(191, 4, 'admin-yugeva', '127.0.0.1', '2017-05-30 10:17:53', 'I'),
(192, 4, 'admin-yugeva', '127.0.0.1', '2017-05-30 11:52:02', 'I'),
(193, 4, 'admin-yugeva', '127.0.0.1', '2017-06-05 16:58:12', 'I'),
(194, 4, 'admin-yugeva', '127.0.0.1', '2017-06-06 09:01:51', 'I'),
(195, 4, 'admin-yugeva', '127.0.0.1', '2017-06-06 10:37:27', 'I'),
(196, 4, 'admin-yugeva', '127.0.0.1', '2017-06-06 13:10:13', 'I'),
(197, 4, 'admin-yugeva', '127.0.0.1', '2017-06-06 14:43:05', 'I'),
(198, 4, 'admin-yugeva', '127.0.0.1', '2017-06-06 15:56:51', 'I'),
(199, 4, 'admin-yugeva', '127.0.0.1', '2017-06-08 12:46:26', 'I'),
(200, 4, 'admin-yugeva', '127.0.0.1', '2017-06-08 17:01:24', 'I'),
(201, 4, 'admin-yugeva', '127.0.0.1', '2017-06-09 09:17:41', 'I'),
(202, 4, 'admin-yugeva', '127.0.0.1', '2017-06-09 11:37:24', 'I'),
(203, 4, 'admin-yugeva', '127.0.0.1', '2017-06-09 13:20:13', 'I'),
(204, 4, 'admin-yugeva', '127.0.0.1', '2017-06-09 17:57:46', 'I'),
(205, 4, 'admin-yugeva', '127.0.0.1', '2017-06-10 09:28:03', 'I'),
(206, 4, 'admin-yugeva', '127.0.0.1', '2017-06-10 11:29:22', 'I'),
(207, 4, 'admin-yugeva', '127.0.0.1', '2017-06-10 15:22:10', 'I'),
(208, 4, 'admin-yugeva', '127.0.0.1', '2017-06-10 17:02:41', 'I'),
(209, 4, 'admin-yugeva', '127.0.0.1', '2017-06-15 14:12:14', 'I'),
(210, 4, 'admin-yugeva', '127.0.0.1', '2017-06-15 17:30:33', 'I'),
(211, 4, 'admin-yugeva', '127.0.0.1', '2017-06-16 12:45:32', 'I'),
(212, 4, 'admin-yugeva', '127.0.0.1', '2017-06-17 10:57:26', 'I'),
(213, 4, 'admin-yugeva', '127.0.0.1', '2017-06-17 11:40:50', 'I'),
(214, 4, 'admin-yugeva', '127.0.0.1', '2017-06-17 15:00:48', 'I'),
(215, 4, 'admin-yugeva', '127.0.0.1', '2017-06-23 10:12:33', 'I'),
(216, 4, 'admin-yugeva', '127.0.0.1', '2017-06-23 11:39:47', 'I'),
(217, 4, 'admin-yugeva', '127.0.0.1', '2017-06-27 16:57:09', 'I'),
(218, 4, 'admin-yugeva', '127.0.0.1', '2017-07-07 17:53:19', 'I'),
(219, 4, 'admin-yugeva', '127.0.0.1', '2017-07-08 08:55:38', 'I'),
(220, 4, 'admin-yugeva', '127.0.0.1', '2017-07-08 11:10:12', 'I'),
(221, 4, 'admin-yugeva', '123.201.2.173', '2017-07-08 11:39:46', 'I'),
(222, 4, 'admin-yugeva', '123.201.2.173', '2017-07-08 14:37:42', 'I'),
(223, 4, 'admin-yugeva', '123.201.2.173', '2017-07-08 14:47:32', 'I'),
(224, 4, 'admin-yugeva', '123.201.2.173', '2017-07-10 13:29:50', 'I'),
(225, 4, 'admin-yugeva', '116.74.88.189', '2017-07-10 13:43:20', 'I'),
(226, 4, 'admin-yugeva', '116.74.88.189', '2017-07-10 14:36:01', 'O'),
(227, 4, 'admin-yugeva', '123.201.2.173', '2017-07-11 08:09:02', 'I'),
(228, 4, 'admin-yugeva', '123.201.2.173', '2017-07-17 06:11:46', 'I'),
(229, 4, 'admin-yugeva', '116.72.28.80', '2017-07-19 05:40:16', 'I'),
(230, 4, 'admin-yugeva', '116.74.64.204', '2017-07-28 12:11:53', 'I'),
(231, 4, 'admin-yugeva', '127.0.0.1', '2017-07-29 16:34:50', 'I'),
(232, 4, 'admin-yugeva', '116.74.88.19', '2017-08-29 08:46:31', 'I'),
(233, 4, 'admin-yugeva', '116.72.9.166', '2017-09-26 10:25:10', 'I'),
(234, 4, 'admin-yugeva', '123.201.2.173', '2017-09-26 11:04:14', 'I'),
(235, 4, 'admin-yugeva', '123.201.2.173', '2017-09-26 11:04:33', 'I'),
(236, 4, 'admin-yugeva', '116.72.9.166', '2017-09-26 11:19:13', 'I'),
(237, 4, 'admin-yugeva', '123.201.2.173', '2017-09-26 11:25:33', 'O'),
(238, 4, 'admin-yugeva', '219.91.138.120', '2017-09-26 12:27:56', 'I'),
(239, 4, 'admin-yugeva', '116.72.9.166', '2017-09-26 12:41:24', 'I'),
(240, 4, 'admin-yugeva', '116.72.9.166', '2017-09-26 13:59:10', 'I'),
(241, 4, 'admin-yugeva', '116.74.70.118', '2017-09-30 14:40:33', 'I'),
(242, 4, 'admin-yugeva', '116.72.36.138', '2017-10-02 07:16:54', 'I'),
(243, 4, 'admin-yugeva', '123.201.2.173', '2017-10-02 09:01:52', 'I'),
(244, 4, 'admin-yugeva', '116.73.208.182', '2017-10-02 09:16:21', 'I'),
(245, 4, 'admin-yugeva', '116.72.9.166', '2017-10-02 10:56:20', 'I'),
(246, 4, 'admin-yugeva', '175.100.148.120', '2017-10-05 08:23:32', 'I'),
(247, 4, 'admin-yugeva', '175.100.148.120', '2017-10-05 08:23:55', 'I'),
(248, 4, 'admin-yugeva', '127.0.0.1', '2017-11-13 10:52:08', 'I'),
(249, 4, 'admin-yugeva', '127.0.0.1', '2017-11-13 11:45:56', 'I'),
(250, 4, 'admin-yugeva', '127.0.0.1', '2017-11-13 13:51:26', 'I'),
(251, 4, 'admin-yugeva', '123.201.2.173', '2017-11-13 11:10:26', 'I'),
(252, 4, 'admin-yugeva', '175.100.148.240', '2017-11-14 07:37:49', 'I'),
(253, 4, 'admin-yugeva', '175.100.148.240', '2017-11-14 10:23:58', 'I'),
(254, 4, 'admin-yugeva', '175.100.148.240', '2017-11-14 11:49:27', 'I'),
(255, 4, 'admin-yugeva', '123.201.241.248', '2017-11-21 07:46:56', 'I'),
(256, 4, 'admin-yugeva', '123.201.241.248', '2017-11-21 10:17:29', 'I'),
(257, 4, 'admin-yugeva', '116.73.213.147', '2017-11-22 07:41:11', 'I'),
(258, 4, 'admin-yugeva', '207.244.89.90', '2017-11-22 08:38:52', 'I'),
(259, 4, 'admin-yugeva', '207.244.89.108', '2017-11-22 12:10:50', 'I'),
(260, 4, 'admin-yugeva', '123.201.249.64', '2017-11-23 08:43:12', 'I'),
(261, 4, 'admin-yugeva', '116.74.98.152', '2017-12-04 16:16:59', 'I'),
(262, 4, 'admin-yugeva', '219.91.236.242', '2017-12-16 07:38:59', 'I'),
(263, 4, 'admin-yugeva', '219.91.236.242', '2017-12-16 07:41:19', 'O'),
(264, 4, 'admin-yugeva', '123.201.228.124', '2017-12-29 07:14:34', 'I'),
(265, 4, 'admin-yugeva', '123.201.228.124', '2017-12-29 07:59:39', 'I'),
(266, 4, 'admin-yugeva', '123.201.225.120', '2017-12-29 12:43:26', 'I'),
(267, 4, 'admin-yugeva', '116.74.126.60', '2018-01-02 06:35:17', 'I'),
(268, 4, 'admin-yugeva', '116.74.126.60', '2018-01-02 07:06:44', 'I'),
(269, 4, 'admin-yugeva', '123.201.227.118', '2018-01-02 07:33:12', 'I'),
(270, 4, 'admin-yugeva', '116.74.110.132', '2018-06-19 16:23:20', 'I'),
(271, 4, 'admin-yugeva', '123.201.228.32', '2018-07-07 12:41:16', 'I'),
(272, 4, 'admin-yugeva', '123.201.228.32', '2018-07-07 12:42:52', 'I'),
(273, 4, 'admin-yugeva', '219.91.236.246', '2018-08-02 07:57:19', 'I'),
(274, 6, 'bhavini-admin', '116.72.12.180', '2018-08-02 07:59:08', 'I'),
(275, 6, 'bhavini-admin', '116.72.12.180', '2018-08-02 07:59:29', 'O'),
(276, 6, 'bhavini-admin', '116.72.12.180', '2018-08-02 07:59:32', 'I'),
(277, 4, 'admin-yugeva', '123.201.226.189', '2018-08-07 09:03:01', 'I'),
(278, 4, 'admin-yugeva', '219.91.236.248', '2018-08-13 14:35:24', 'I'),
(279, 6, 'bhavini-admin', '60.254.52.34', '2018-08-18 06:34:51', 'I'),
(280, 4, 'admin-yugeva', '123.201.228.1', '2018-08-20 08:52:29', 'I'),
(281, 6, 'bhavini-admin', '60.254.22.150', '2018-08-22 06:34:21', 'I'),
(282, 6, 'bhavini-admin', '123.201.2.173', '2018-08-22 06:39:53', 'I'),
(283, 4, 'admin-yugeva', '123.201.227.174', '2018-08-23 11:41:35', 'I'),
(284, 6, 'bhavini-admin', '123.201.2.173', '2018-08-29 09:11:21', 'I'),
(285, 6, 'bhavini-admin', '116.74.112.172', '2018-08-31 10:49:08', 'I'),
(286, 6, 'bhavini-admin', '123.201.2.173', '2018-09-10 07:27:35', 'I'),
(287, 4, 'admin-yugeva', '116.74.88.64', '2018-09-21 11:58:58', 'I'),
(288, 4, 'admin-yugeva', '116.74.112.240', '2018-09-28 09:05:17', 'I'),
(289, 4, 'admin-yugeva', '116.74.112.240', '2018-09-28 10:05:49', 'I'),
(290, 6, 'bhavini-admin', '116.74.112.172', '2018-10-02 09:11:48', 'I'),
(291, 6, 'bhavini-admin', '116.74.112.172', '2018-10-02 09:11:48', 'I'),
(292, 6, 'bhavini-admin', '116.74.112.172', '2018-11-02 05:36:15', 'I'),
(293, 6, 'bhavini-admin', '123.201.2.173', '2018-11-02 07:00:48', 'I'),
(294, 6, 'bhavini-admin', '116.74.112.172', '2018-11-24 08:13:58', 'I'),
(295, 6, 'bhavini-admin', '123.201.2.173', '2018-11-27 11:24:59', 'I');

-- --------------------------------------------------------

--
-- Table structure for table `sliderimage`
--

CREATE TABLE `sliderimage` (
  `sliderID` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `mobile_image` text NOT NULL,
  `sliderTitle` varchar(255) NOT NULL,
  `username` varchar(30) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `sortorder` int(8) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `sliderPosition` char(1) NOT NULL DEFAULT 'H',
  `remote_ip` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliderimage`
--

INSERT INTO `sliderimage` (`sliderID`, `image`, `mobile_image`, `sliderTitle`, `username`, `createdate`, `modifieddate`, `sortorder`, `status`, `sliderPosition`, `remote_ip`) VALUES
(9, '9-slider_01.jpg', 'slider9_mobile.jpg', 'Rediscover NEW YOU', 'Keyur', '2015-10-27', '2017-07-28', 1, 'E', 'H', '116.74.64.204'),
(8, '8-slider_02.jpg', 'slider8_mobile.jpg', 'Chill Relax & Refresh', 'Keyur', '2015-10-27', '2017-07-28', 4, 'E', 'H', '116.74.64.204'),
(10, '10-10-slider_03.jpg', 'slider10_mobile.jpg', 'Rediscover NEW YOU', 'Bhavini', '2017-04-06', '2018-08-31', 3, 'E', 'H', '116.74.112.172'),
(13, '13-slider_04.jpg', 'slider13_mobile.jpg', 'Slider4', 'Keyur', '2017-07-08', '2017-07-28', 2, 'E', 'H', '116.74.64.204');

-- --------------------------------------------------------

--
-- Table structure for table `subscription_master`
--

CREATE TABLE `subscription_master` (
  `s_id` int(11) NOT NULL,
  `s_name` varchar(100) DEFAULT NULL,
  `s_email` varchar(200) DEFAULT NULL,
  `s_mobile` varchar(20) DEFAULT NULL,
  `s_date` date NOT NULL,
  `new` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscription_master`
--

INSERT INTO `subscription_master` (`s_id`, `s_name`, `s_email`, `s_mobile`, `s_date`, `new`) VALUES
(1, 'Ankit Patel', 'ankit@prodesignz.net', '4705518088', '2014-11-26', 1),
(2, 'Ankit Patel', 'ankit@prodesignz.net', '4705518088', '2014-11-26', 1),
(3, 'Ankit Patel', 'ankit@prodesignz.net', '4705518088', '2014-11-26', 1),
(4, 'Ankit Patel', 'ankit@prodesignz.net', '4705518088', '2014-11-27', 1),
(5, 'Jitendra', 'jitendra29.jain@gmail.com', '7404513204', '2014-12-08', 1),
(8, 'Nirav Mevawala', 'Nirav_2112@yahoo.com', '9409263250', '2015-01-28', 1),
(9, 'Vicky Patel', 'VickyPatel_4964@yahoo.com', '9586159669', '2015-01-28', 1),
(11, 'salman', 'newmodernglass@gamail.com', '9624824635', '2015-02-09', 1),
(12, 'shivkrupa wood art', 'alpeshpanchal08@yahoo.com', '9824347266', '2015-03-26', 1),
(13, 'shivkrupa wood art', 'alpeshpanchal08@yahoo.com', '9824347266', '2015-03-26', 1),
(14, 'parth enterprise', 'parthenterprise6011@gmail.com', '9824360611 ', '2015-04-11', 1),
(20, 'zil Mehta', 'zil@gmail.com', '45345345', '2017-04-09', 1);

-- --------------------------------------------------------

--
-- Table structure for table `template_master`
--

CREATE TABLE `template_master` (
  `template_id` int(11) NOT NULL,
  `template_name` varchar(100) NOT NULL,
  `template_title` varchar(100) NOT NULL,
  `sortorder` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `template_master`
--

INSERT INTO `template_master` (`template_id`, `template_name`, `template_title`, `sortorder`) VALUES
(1, 'inner_page.tpl.php', 'Inner Page Template', 1),
(3, 'full_width_page.tpl.php', 'full_width_page', 0);

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `testimonial_Id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `image` varchar(256) DEFAULT NULL,
  `review` text NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `modifieddate` date DEFAULT NULL,
  `sortorder` int(8) DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `remote_ip` varchar(100) DEFAULT NULL,
  `testimonial_type` varchar(256) NOT NULL,
  `tour_Name` varchar(256) NOT NULL,
  `home` char(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`testimonial_Id`, `name`, `designation`, `image`, `review`, `username`, `createdate`, `modifieddate`, `sortorder`, `status`, `remote_ip`, `testimonial_type`, `tour_Name`, `home`) VALUES
(1, 'Mrs. BHAVISHA', '', '1-testimonial-3.jpg', 'By using Facial Cryo my facial skin become brighter and glowing. Highly recommend for Beauty.', 'Keyur', '2016-12-19', '2018-09-28', 1, 'E', '116.74.112.240', '1', 'Surat', 'Y'),
(2, 'Mrs. SHREYA SHAH', '', '2-testimonial-2.jpg', 'First time trying Cryotherapy, I was nervous, but the process was explained well and the staff was knowledgeable and polite.', 'Keyur', '2016-12-19', '2018-09-28', 2, 'E', '116.74.112.240', '1', 'Surat', 'Y'),
(4, 'Mr. MUKESH PATEL', '', '', 'Yugeva Cryo Centre has proved to provide the best quality service.', 'Keyur', '2017-03-29', '2018-09-28', 3, 'E', '116.74.112.240', '3', 'Surat', ''),
(7, 'Mr. MANISH TAMAKUWALA', NULL, '', 'Facing Psoriasis from last 4 years, after coupling 5-6 sessions of WBC I feel 60% of recovery.  ', 'Keyur', '2017-12-29', '2018-09-28', 4, 'E', '116.74.112.240', '1', 'Surat', ''),
(9, 'Mr. AMAR RAVAL', NULL, '', 'When you get out of it you feel really good, like youâ€™ve got a ton of energy & liveliness â€¦ the benefits of that are huge.', 'Keyur', '2017-12-29', '2018-09-28', 6, 'E', '116.74.112.240', '1', 'Surat', ''),
(10, ' Mr. PRASHANT DESAI', NULL, '', 'I have Psoriasis from last 30 years and after taking 5 sessions of Whole body cryotherapy there is 35% recovery. I believe this therapy will help to cure my Psoriasis. Also this has helped me to come out of depression.', 'Keyur', '2018-08-23', '2018-09-28', 7, 'E', '116.74.112.240', '1', 'Surat', ''),
(11, 'Ms. BHAVISHA', NULL, '', 'My experience with Yugevacryo is very nice. Facial Cryotherapy has enhanced my beauty. My skin has become more brighter, tighter and glowing.', 'Keyur', '2018-08-23', '2018-09-28', 8, 'E', '116.74.112.240', '1', 'Surat', ''),
(12, 'Mr. SHIVAM SHARMA', NULL, '', 'Being an athlete I get injuries quite often. When I visited Yugevacryo I was suffering from acute back pain since 5 years. With the treatment it has minimized to hardly 5-10%.  Overall stamina has increased. Also my migraine has marginally reduced. Kudos to the team for bringing quality treatment to India. Will surely recommend to others.', 'Keyur', '2018-08-23', '2018-09-28', 9, 'E', '116.74.112.240', '1', 'Surat', ''),
(13, 'Mr. NIHAR PATEL', NULL, '', 'I had hip joint operation. Due to which i was not even able to walk properly. I was suffering from severe pain and stiffness. Before Navratri  I started taking cryotherapy which gave me immense benefits that to after the very  first session. And after taking 8 to 10 sessions I got relieved from pain and played Navratri very well.', 'Keyur', '2018-09-28', '2018-09-28', 10, 'E', '116.74.112.240', '1', 'Surat', ''),
(14, 'Mrs. BHAVNA LAKHANI', NULL, NULL, 'I am taking targeted cryotherapy for Arthritis pain. Before taking this therapy I had intolerable chronic pain in my joints and fingers. It was very difficult for me to move my hand and to work as a housewife.\r\n\r\nAfter 10 sessions of whole boy cryotherapy and targeted cryotherapy, I got miracle result in my arthritis pain, even I wad able to work without pain. I am very happy with the results which I got from cryotherapy.\r\n\r\nThanks to Yugeva Cryo', 'Keyur', '2018-09-28', NULL, 11, 'E', '116.74.112.240', '1', 'Surat', ''),
(15, 'Mrs. JINAL PATEL', NULL, '', 'My skin has improved a lot in 10 sessions of Whole Body Cryotherapy and Facial Cryotherapy. There is a glow on my skin. I feel younger. Also my health has improved. I feel healthier than before.', 'Keyur', '2018-09-28', '2018-09-28', 12, 'E', '116.74.112.240', '1', 'Surat', ''),
(16, 'Ms. KARISHMA DESAI', NULL, '', 'Facial cryotherapy has enhanced my beauty. Firstly I didn\'t believe it will be helpful to my skin but after taking few sessions I must say it\'s worth it. Highly recommended to the people who are concerned about their skin.', 'Keyur', '2018-09-28', '2018-09-28', 13, 'E', '116.74.112.240', '1', 'Surat', ''),
(17, 'Mr. SHIVLAL SAKARIA', NULL, NULL, 'I am suffering from chornic leg pain since 2 years. After the very second session  I feel the difference. There is lot of improvement in my left leg after 5 sessions. Worth it.', 'Keyur', '2018-09-28', NULL, 14, 'E', '116.74.112.240', '1', 'Surat', ''),
(18, 'Mrs. SHILA SAKARIA', NULL, NULL, 'This treatment is very effective for weight loss. I lost 2 kg after 3 sessions of Whole Body Cryotherapy.  Apart from weight loss  there are many other benefits.  I feel more energetic  and more fit.', 'Keyur', '2018-09-28', NULL, 15, 'E', '116.74.112.240', '1', 'Surat', ''),
(19, 'Mrs. RINA PATEL', NULL, NULL, 'With Yugeva Cryo  I had very good experience. Took 5 facial cryotherapy sessions. A lot of improvement in my skin face. It has toned and tightened my skin. Even my pores size has reduced. Will surely recommend to others.', 'Keyur', '2018-09-28', NULL, 16, 'E', '116.74.112.240', '1', 'Surat', ''),
(20, 'Mr. PARESH DESAI', NULL, NULL, 'I am suffering from Psoriasis from past 8 years. After taking 10 sessions of cryotherapy  I am very happy with the result. Reduction in pain and inflammation. Definitely good for skin and Psoriasis.', 'Keyur', '2018-09-28', NULL, 17, 'E', '116.74.112.240', '1', 'Surat', '');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial_master`
--

CREATE TABLE `testimonial_master` (
  `testimonial_master_id` int(11) NOT NULL,
  `testimonial_type` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `sortorder` int(11) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `remote_ip` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonial_master`
--

INSERT INTO `testimonial_master` (`testimonial_master_id`, `testimonial_type`, `username`, `createdate`, `modifieddate`, `sortorder`, `status`, `remote_ip`) VALUES
(1, 'Cosmetic', 'Keyur', '2015-10-27', '2017-12-29', 1, 'E', '123.201.225.120'),
(3, 'Imaging', 'Keyur', '2017-03-29', '2017-12-29', 2, 'E', '123.201.225.120');

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

CREATE TABLE `user_master` (
  `userID` int(11) NOT NULL,
  `group_id` int(11) NOT NULL DEFAULT '0',
  `loginID` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `firstname` varchar(50) NOT NULL DEFAULT '',
  `lastname` varchar(50) NOT NULL DEFAULT '',
  `address` text NOT NULL,
  `contacts` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`userID`, `group_id`, `loginID`, `email`, `password`, `firstname`, `lastname`, `address`, `contacts`) VALUES
(4, 1, 'admin-yugeva', 'contact@easternts.com', 'a5c130aaa71628ec212883018e777001a80a0909f6c68212edff77ca922a401f', 'Keyur', 'Mehta', '', ''),
(5, 2, 'bhavini', 'bhavini.easternts@gmail.com(jdhvwzxvej5)', '82b901e6eecd23fb45443ae39d6b4afa3443afb71004db7590c997a273c78f20cd17128192d1f36cb7d693bf7c80a3502eeaaa9faef0691f553670636e842f9d', 'Bhavini', 'Chauhan', 'Bhavini', '123456789'),
(6, 1, 'bhavini-admin', 'contact@easternts.com(v10oy2ana0n)', 'fa1cd5f350a50a55ef5ef5e31733088b15c319a56b204b00a173d0c95bed7b8e', 'Bhavini', 'Chauhan', 'Bhavini', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `website_master`
--

CREATE TABLE `website_master` (
  `id` int(11) NOT NULL,
  `email1` varchar(255) NOT NULL,
  `email2` varchar(255) NOT NULL,
  `tel1` varchar(25) NOT NULL,
  `tel2` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `address1` text,
  `terms` text,
  `timings` text,
  `diamonds_address1` text,
  `diamonds_email1` varchar(255) DEFAULT NULL,
  `diamonds_tel1` varchar(255) DEFAULT NULL,
  `diamonds_address2` text,
  `diamonds_email2` varchar(255) DEFAULT NULL,
  `diamonds_tel2` varchar(255) DEFAULT NULL,
  `re_address1` text,
  `re_email1` varchar(255) DEFAULT NULL,
  `re_tel1` varchar(255) DEFAULT NULL,
  `re_address2` text,
  `re_email2` varchar(255) DEFAULT NULL,
  `re_tel2` varchar(255) DEFAULT NULL,
  `re_address3` text,
  `re_email3` varchar(255) DEFAULT NULL,
  `re_tel3` varchar(255) DEFAULT NULL,
  `mi_address1` text,
  `mi_address2` text,
  `mi_address3` text,
  `mi_tel1` varchar(255) DEFAULT NULL,
  `mi_tel2` varchar(255) DEFAULT NULL,
  `mi_tel3` varchar(255) DEFAULT NULL,
  `mi_email1` varchar(255) DEFAULT NULL,
  `mi_email2` varchar(255) DEFAULT NULL,
  `mi_email3` varchar(255) DEFAULT NULL,
  `ed_address1` text,
  `ed_email1` text,
  `ed_tel1` varchar(255) DEFAULT NULL,
  `te_address1` text,
  `te_address2` text,
  `te_email1` varchar(255) DEFAULT NULL,
  `te_email2` varchar(255) DEFAULT NULL,
  `te_tel1` varchar(255) DEFAULT NULL,
  `te_tel2` varchar(255) DEFAULT NULL,
  `ho_address1` text,
  `ho_email1` text,
  `ho_tel1` varchar(255) DEFAULT NULL,
  `fax` varchar(25) NOT NULL,
  `map_code` text NOT NULL,
  `logo` text NOT NULL,
  `social` text NOT NULL,
  `sharing` text NOT NULL,
  `copyright` varchar(70) NOT NULL,
  `powered_by` text NOT NULL,
  `coming_soon` varchar(1) NOT NULL DEFAULT 'N',
  `username` varchar(70) NOT NULL,
  `remote_ip` varchar(70) NOT NULL,
  `create_date` date NOT NULL,
  `modified_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `website_master`
--

INSERT INTO `website_master` (`id`, `email1`, `email2`, `tel1`, `tel2`, `address`, `address1`, `terms`, `timings`, `diamonds_address1`, `diamonds_email1`, `diamonds_tel1`, `diamonds_address2`, `diamonds_email2`, `diamonds_tel2`, `re_address1`, `re_email1`, `re_tel1`, `re_address2`, `re_email2`, `re_tel2`, `re_address3`, `re_email3`, `re_tel3`, `mi_address1`, `mi_address2`, `mi_address3`, `mi_tel1`, `mi_tel2`, `mi_tel3`, `mi_email1`, `mi_email2`, `mi_email3`, `ed_address1`, `ed_email1`, `ed_tel1`, `te_address1`, `te_address2`, `te_email1`, `te_email2`, `te_tel1`, `te_tel2`, `ho_address1`, `ho_email1`, `ho_tel1`, `fax`, `map_code`, `logo`, `social`, `sharing`, `copyright`, `powered_by`, `coming_soon`, `username`, `remote_ip`, `create_date`, `modified_date`) VALUES
(1, 'info@yugeva.com', '', '+91 90671 12345', '', '<p><span class=\"evlee-add-img\">Yugeva Cryo</span> <br />A-1, 1st Floor, Sanskrut Complex,<br />Above Subway,<br />Beside Rajhans Cinema,<br />Piplod, Surat - 395007<br />Gujarat, India</p>', 'Hindva, Near Yash Plaza,<br /> Varachha Road, Surat - 395006  <br /> Gujarat, India', '<h5><strong>Privacy Statement and Consent to Use of Data</strong></h5>\r\n<h5><strong>IMPORTANT</strong></h5>\r\n<h6>Acknowledgement of Our Privacy Statement</h6>\r\n<p>By using this Site, you acknowledge that you have reviewed the terms of our Privacy Statement and Consent to Use of Data (the &ldquo;Privacy Statement and Consent&rdquo;) and agree that we may collect, use and transfer your Personal Data and User Data in accordance therewith. If you do not agree with these terms, you may choose not to use our Site, and please do not provide any Personal Data through this Site. This Privacy Statement and Consent forms part of our Site Terms of Use and such shall be governed by and construed in accordance with the laws of the State of Gujarat in India. Please note that this Privacy Statement and Consent does not apply to the providing or use of Personal Data other than through the Site, nor to the providing or use of Personal Data of past or present employees of, or consultants engaged by, Hindva Builders and/or its subsidiaries, for employment or benefits administration purposes.</p>\r\n<p>What follows is a table of contents listing the areas covered by our Privacy Statement and Consent. Please read our entire Privacy Statement and Consent carefully. Should you have any questions about this Statement or about our data collection, storage and use practices, please contact us.</p>\r\n<h6>Privacy Statement and Consent Table of Contents</h6>\r\n<p>Changes to Hindva&rsquo; Privacy Statement and Consent This Site and our business change constantly. As a result, at times it may be necessary for Hindva Builders to make changes to this Privacy Statement and Consent. Hindva Builders reserves the right to update or modify this Privacy Statement and Consent at any time and from time to time without prior notice. Please review this Statement periodically, and especially before you provide any Personal Data. This Privacy Statement and Consent was last updated on 24 Oct 2016. Your continued use of the Site after any changes or revisions to this Privacy Statement and Consent shall indicate your agreement with the terms of such revised Privacy Statement and Consent.</p>\r\n<h6>Welcome</h6>\r\n<p>Welcome to www.hindva.com (the &ldquo;Site&rdquo;). This Site is operated by Hindva Builders (&ldquo;Hindva&rdquo; or &ldquo;we&rdquo; or &ldquo;us&rdquo;) and has been created to provide our customers the information, products and other initiatives developed and/or offered by Hindva and its subsidiaries and affiliates. You are important to Hindva and, as described in this Privacy Statement and Consent, we will take appropriate measures to protect your privacy as you use this Site. This Privacy Statement and Consent sets forth Hindva&rsquo;s approach with respect to information that is collected from users of this Site. This Site is intended for users in the India.</p>\r\n<h6>Definitions</h6>\r\n<p>&ldquo;Aggregated Data&rdquo; includes customer demographics, interests and behavior based on Personal Data and other information provided to us which is compiled and analyzed on an aggregate and anonymous basis.</p>\r\n<p>\"Personal Data\" includes all information that enables an individual to be identified, including, by way of example, the individual&rsquo;s name and e-mail address.</p>\r\n<p>&ldquo;Public Information&rdquo; includes information posted to any public areas of the Site, such as bulletin boards, chat rooms and comment areas. Please refer to our discussion of \"Public and Unsolicited Information\".</p>\r\n<p>\"Unsolicited Information\" includes any ideas for new products or modifications to existing project and other unsolicited communications. Personal Data included in Unsolicited Information will be handled in the manner set forth in this Privacy Statement and Consent.</p>\r\n<p>\"User Data\" includes all information passively collected from users of the Site that does not identify a particular individual, including, by way of example, statistical information on Site usage. The terms \"you\", \"your\" and \"yours\" when used in this Privacy Statement and Consent means any user of this Site.</p>\r\n<h6>What Information Do We Collect?</h6>\r\n<p>Information That You Give Us: We collect Personal Data such as your name, date of birth, e-mail or mailing address from you when you voluntarily choose to register for or use certain Hindva Services at this Site. We use the Personal Data that we collect in an effort to provide you with a superior customer experience on the Site and to improve and market Hindva Services. Hindva may store such Personal Data itself or it may be stored in databases owned and maintained by Hindva&rsquo;s affiliates, agents or service providers. Hindva retains its rights to these databases and the information contained in them.</p>\r\n<p>If you Subscribe with Hindva or use certain other of the personalized options we offer, we will create a profile that includes your name, mailing address, e-mail address, and other information that you provide that is pertinent to your specific situation. We may combine such information with data gathered from other sources. For instance, if incorrect postal codes are received, we may use third party software to correct them. We also may collect e-mail or other addresses from prospect lists of other companies, for example, in connection with a joint marketing effort. When we do so, (1) we acknowledge in our correspondence how the recipient was added to our list and (2) we provide a means for recipients to opt out of further communications from us. In addition, we may ask you for Personal Data if you enter an educational program, contest or promotion sponsored by Hindva. When you contact Hindva we may keep a record of that correspondence and may occasionally ask you to complete surveys for sales and research purposes.</p>\r\n<p>In some instances, we contract with outside parties to collect and maintain our information collection servers and to perform technology and related services. We seek to provide any such third parties with only the information they need to perform their specific function and we require them to protect your Personal Data in accordance with this Privacy Statement and Consent. Wherever Hindva collects Personal Data we will provide a link to this Privacy Statement and Consent.</p>\r\n<h6>Personally Non-Identifiable Information:</h6>\r\n<p>Passively Collected User Data: When you interact with Hindva through this Site, we receive and store certain \"User Data\". Such User Data, which is collected passively using various technologies, is not used to specifically identify you. Hindva may store such User Data itself or it may be stored in databases owned and maintained by Hindva&rsquo;s affiliates, agents or service providers. Hindva retains all rights to these databases and the information contained in them.</p>\r\n<p>This Site will use such User Data together with data provided by other parties and pool it with other information to track, for example, the total number of visitors to our Site, the number of visitors to each page of our Site, the keywords visitors used to find our Site and the domain names of our visitors\' Internet service providers. We also may disclose User Data in order to describe our services to current and prospective business partners, and to other third parties for other lawful purposes. It is important to note that no Personal Data is available or used in this process.</p>\r\n<h6>Transfer of Your Data Abroad.</h6>\r\n<p>By voluntarily providing us with your Personal Data, you are consenting to our use of it in accordance with this Privacy Statement and Consent. Due to the nature of the Internet if you are visiting this Site from a country other than the India, your communications will inevitably result in the transfer of information across international boundaries. By visiting this web site you consent to these transfers. If you provide Personal Data to this Site, you acknowledge and agree that such Personal Data may be transferred from your current location to the offices and servers of Hindva and the affiliates, agents and service providers referred to herein located in the India and in other countries.</p>\r\n<h6>What are Your Choices?</h6>\r\n<p>You can use this Site without providing your Personal Data, although doing so may limit your ability to obtain certain information or to use other valuable Hindva Services, including, for example, informational newsletters and responses to specific inquiries you may have. Where no Personal Data is legally required or is necessary for a particular service (for example, to contact you in response to your request), the use of a pseudonym is accepted.</p>\r\n<p>We keep your Personal Data only for as long as reasonably necessary for the purposes for which it was collected or to comply with any applicable legal reporting or document retention requirements. We will take reasonable steps to update, correct or, upon your request, delete your Personal Data in our possession that you have previously submitted via this Site. In order to request an update, with respect to your Personal Data, please contact us as provided below. If at any time you wish not to receive further communications, you may also follow the unsubscribe procedure included in our communication.</p>\r\n<h6>How Do We Use Your Personal Data and Other Information?</h6>\r\n<p>Hindva uses the Personal Data you provide for our business purposes in a manner that is consistent with this Privacy Statement and Consent.</p>\r\n<ul>\r\n<li>If you provide Personal Data for a certain reason, that Personal Data will be available to us for use in connection with the reason for which it was provided or for a consistent purpose, including, if applicable, processing an order placed by you or informing you that the product is no longer available. For instance, if you contact us by e-mail, we may use the Personal Data you provide to respond to you; or if you contact us about a job listing, the information you provide to us may be used to consider you for the position. We may also combine Personal Data that you have provided to us with information obtained by us from other parties.</li>\r\n<li>Hindva and its affiliates also may use your Personal Data, User Data and other information collected through the Site to help us improve the content and functionality of the Site, to better understand our customers and markets, to improve our products and services and to effect and facilitate sales.</li>\r\n<li>Hindva and its affiliates may use this information to contact you, electronically, through telemarketing or otherwise, in the future to tell you about, and to offer for sale, products or services we believe will be of interest to you. If we do so, each communication we send you will contain instructions permitting you to \"opt out\" of receiving future communications.</li>\r\n<li>If at any time you wish not to receive any future communications or to have your name deleted from our mailing lists, you may follow the \"unsubscribe\" procedure included with our communication. In addition, you may e-mail us at info@hindva.com. See How to Contact Hindva below.</li>\r\n</ul>\r\n<p>Do Not Track browser settings: www.hindva.com does not use pervasive online web tracking for behavioural advertisements. Enabling of the Do Not Track setting in your browser will have no effect on the types of data Hindva collects and uses as follows:</p>\r\n<ul>\r\n<li>Personally non-identifiable information is used only for commonly accepted practices such as visit and click-through rates collected to improve site design and navigation</li>\r\n<li>Personally identifiable information is only gathered when data is explicitly entered into a Hindva on-line form and you have explicitly accepted the Hindva privacy policy. At any time, you can also opt-out of receiving any future communications.</li>\r\n</ul>\r\n<h6>Do We Share the Information that We Receive?</h6>\r\n<p>Hindva considers your information to be a vital part of our relationship with you. Hindva will share information including Personal Data with its subsidiaries and affiliates that have also agreed to be bound by this Privacy Statement and Consent. In addition, Hindva, like many businesses, sometimes hires other companies to perform certain business-related functions. Examples include mailing information, maintaining databases and processing payments. When we retain another non-affiliated company to perform a function of this nature, we seek to provide them with only the information that they need to perform their specific functions, and we require them to protect your Personal Data in accordance with this Privacy Statement and Consent and Hindva &lsquo;s restrictions.</p>\r\n<p>In addition, if you input Personal Data on a co-branded registration page, relating, for example, to a contest co-sponsored by both Hindva and a partner company, then your Personal Data will be available both to Hindva and to such partner company. While Hindva will only use such Personal Data in accordance with this Privacy Statement and Consent, such partner company\'s use of your Personal Data will be subject to the privacy policy of that company and Hindva cannot be responsible for their use of your information. We encourage you to review the privacy policy of such partner company before providing information on any such co-sponsored page or promotion.</p>\r\n<p>There are also a limited number of circumstances in which we may share your Personal Data and other information in our possession with certain additional third parties without further notice to you, as set forth below:</p>\r\n<h6>Legal Requirements:</h6>\r\n<p>Hindva may disclose your Personal Data, User Data and other information if required to do so by law or in the good faith belief that such action is necessary to (a) comply with a legal obligation, (b) protect and defend the rights or property of Hindva or its affiliates, (c) act in urgent circumstances to protect the personal safety of users of the Site or the public, or (d) protect against legal liability.</p>\r\n<h6>Business Transfers, Combinations and Related Activities:</h6>\r\n<p>As we develop our business, we might sell, buy, restructure or reorganize businesses or assets. In the event of any sale, merger, reorganization, restructuring, dissolution or similar event involving our business or assets, Personal Data may be part of the transferred assets.</p>\r\n<h6>Security</h6>\r\n<p>Hindva takes reasonable steps to protect any Personal Data you provide to us and to protect such information from loss, misuse, and unauthorized access, disclosure, alteration, or destruction. Unless otherwise stated on the relevant page of the Site, Hindva uses general security standards but has not taken additional action to secure data provided to its sites, and such transmissions are subject to normal Internet security risks. As noted, no Internet or e-mail transmission is ever fully secure or error free. In particular, e-mail sent to or from this Site may not be secure, and you should therefore take special care in deciding what information you send to us. Please keep this in mind when disclosing any Personal Data to Hindva or to any other party via the Internet. Moreover, when you use passwords, ID numbers, or other special access features on this Site, it is your responsibility to safeguard them.</p>\r\n<h6>How to Contact Hindva</h6>\r\n<p>Please also feel free to contact us if you have any questions about Hindva Privacy Statement and Consent or the information practices of this Site.</p>\r\n<p>You may contact us as follows:</p>\r\n<p>Hindva Builders 3rd Floor C/o M Kantilal Exports, 251, Shree Ambika, Near Yash Plaza, Varachha Road, Surat 395006</p>\r\n<p>Or visit our &ldquo;Contact Us&rdquo; section.</p>', 'Mon - Sat: 9:00am - 5:00pm', '<p class=\"text-med black-text letter-spacing-1 margin-ten no-margin-bottom text-uppercase font-weight-600 xs-margin-top-five\">Surat - Office</p>\r\n<p>Carbon Creation, C/o Hindva, <br /> Near Yash Plaza,<br /> Varachha Road, Surat - 395006 <br /> Gujarat, India</p>', 'info@carboncreation.in', '+91 261 2551475', '<p class=\"text-med black-text letter-spacing-1 margin-ten no-margin-bottom text-uppercase font-weight-600 xs-margin-top-five\">Maharashtra - Office</p>\r\n<p>Carbon Creation , FC-7010, <br /> Bharat Diamond Bourse Bandra Kurla Complex, <br />Bandra (East) Mumbai - 400051 <br /> Maharashtra, India</p>', 'info@carboncreation.in', '+91 22 40730730', '<p class=\"text-med black-text letter-spacing-1 margin-ten no-margin-bottom text-uppercase font-weight-600 xs-margin-top-five\">Surat - Office</p>\r\n<p>Hindva Builders , <br />Near Yash Plaza, <br /> Varachha Road, Surat - 395006 <br />Gujarat, India</p>', 'surat@hindva.com', '+91 261 2551475', '<p class=\"text-med black-text letter-spacing-1 margin-ten no-margin-bottom text-uppercase font-weight-600 xs-margin-top-five\">Mumbai - Office</p>\r\n<p>Hindva Builders, <br />905, 9th Floor, Business Suites - 9, 83, S.V. Road, <br /> Near Dynasty Restaurant Santacruz (West), <br />Mumbai - 400054, Maharashtra, India</p>', 'mumbai@hindva.com', '+91 22 26481010', '<p class=\"text-med black-text letter-spacing-1 margin-ten no-margin-bottom text-uppercase font-weight-600 xs-margin-top-five\">Ahmedabad - Office</p>\r\n<p>Hindva Builders , Shantiniketan Solitaire, <br /> Opp. Vrundavan Party Plot, <br />S.P. Ring Road, Nikol,<br />Ahmedabad - 380038, Gujarat, India</p>', 'ahmedabad@hindva.com', '+91 74 05058991', '<p class=\"text-med black-text letter-spacing-1 margin-ten no-margin-bottom text-uppercase font-weight-600 xs-margin-top-five\">Surat - Office</p>\r\n<p>Valbaux MineTech, C/o Hindva, <br /> Near Yash Plaza, <br /> Varachha Road, Surat - 395006 <br /> Gujarat, India</p>', '<p class=\"text-med black-text letter-spacing-1 margin-ten no-margin-bottom text-uppercase font-weight-600 xs-margin-top-five\">Porbandar - Office</p>\r\n<p>Valbaux MineTech, <br /> Jeevan Jyot, M.G Road, <br />Porbandar - 360575 <br /> Gujarat, India</p>', '<p class=\"text-med black-text letter-spacing-1 margin-ten no-margin-bottom text-uppercase font-weight-600 xs-margin-top-five\">Jamnagar - Office</p>\r\n<p>Valbaux MineTech, <br /> Kuranga, <br />Jamnagar - 361315<br /> Gujarat, India</p>', '+91 261 2551475', '+91 286 2244345', '+91 286 2244345', 'info@valbaux.com', 'info@valbaux.com', 'info@valbaux.com', '<p class=\"text-med black-text letter-spacing-1 margin-ten no-margin-bottom text-uppercase font-weight-600 xs-margin-top-five\">Surat - Office</p>\r\n<p>Ashadeep Vidhyalay, <br />C/o Hindva, <br /> Near Yash Plaza, <br /> Varachha Road, Surat - 395006 <br /> Gujarat, India</p>', 'edu@hindva.com', '+91 261 2551475', '<p class=\"text-med black-text letter-spacing-1 margin-ten no-margin-bottom text-uppercase font-weight-600 xs-margin-top-five\">Surat - Office</p>\r\n<p>Vritika Lifestyle, 28-33, <br /> Hari Om Industrial Estate, <br /> Near Bharat Hospital, Kadodara Road, <br /> Saroli, Surat &ndash; 395010 <br />Gujarat, India</p>', '<p class=\"text-med black-text letter-spacing-1 margin-ten no-margin-bottom text-uppercase font-weight-600 xs-margin-top-five\">Surat - Office</p>\r\n<p>Riya Fashion, 28-33, <br /> Hari Om Industrial Estate, <br /> Near Bharat Hospital, Kadodara Road, <br /> Saroli, Surat &ndash; 395010 <br />Gujarat, India</p>', 'sales@vritika.in', 'info@riyatrendz.in', '+91 261 2647777', '+91 261 2647777', '<p class=\"text-med black-text letter-spacing-1 margin-ten no-margin-bottom text-uppercase font-weight-600 xs-margin-top-five\">Surat - Office</p>\r\n<p>The World, Behind Pramukh Aranya, <br /> Godadra - Dindoli Road, <br /> Parvat - Magob, Surat - 395010 <br /> Gujarat, India</p>', 'theworld@hindva.com', '+91 261 6554666', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3719.6049709077743!2d72.84377501529566!3d21.207845985901656!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be04efc060b5c67%3A0x2772d8122f5cf13b!2sYash+Plaza%2C+Varachha+Rd%2C+Ramdarshan+Society%2C+Varachha%2C+Surat%2C+Gujarat+395006!5e0!3m2!1sen!2sin!4v1491563615963', 'yugeva_logo.png', 'a:6:{s:8:\"facebook\";s:87:\"https://www.facebook.com/Yugeva-CRYO-2162689240628253/?view_public_for=2162689240628253\";s:7:\"twitter\";s:0:\"\";s:6:\"google\";s:0:\"\";s:9:\"instagram\";s:44:\"https://www.instagram.com/yugeva_cryo/?hl=en\";s:8:\"linkedin\";s:0:\"\";s:9:\"pinterest\";s:0:\"\";}', 'a:6:{s:8:\"facebook\";s:1:\"1\";s:7:\"twitter\";s:1:\"1\";s:6:\"google\";s:1:\"1\";s:9:\"pinterest\";s:1:\"1\";s:9:\"instagram\";N;s:8:\"linkedin\";s:1:\"1\";}', 'Yugeva Cryo. All Rights Reserved.', 'a:2:{s:5:\"title\";s:24:\"Eastern Techno Solutions\";s:4:\"link\";s:28:\"http://www.easternts.com.au/\";}', '', 'Bhavini', '60.254.52.34', '2015-10-26', '2018-08-18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `album_type`
--
ALTER TABLE `album_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `appointment_master`
--
ALTER TABLE `appointment_master`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `banner_image`
--
ALTER TABLE `banner_image`
  ADD PRIMARY KEY (`bannerID`);

--
-- Indexes for table `benefit`
--
ALTER TABLE `benefit`
  ADD PRIMARY KEY (`benefitID`);

--
-- Indexes for table `contact_master`
--
ALTER TABLE `contact_master`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `content_master`
--
ALTER TABLE `content_master`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `download_brochure`
--
ALTER TABLE `download_brochure`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`faq_Id`);

--
-- Indexes for table `faq_master`
--
ALTER TABLE `faq_master`
  ADD PRIMARY KEY (`faq_master_id`);

--
-- Indexes for table `gallery_master`
--
ALTER TABLE `gallery_master`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `group_master`
--
ALTER TABLE `group_master`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `homecontent`
--
ALTER TABLE `homecontent`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `job_master`
--
ALTER TABLE `job_master`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `module_master`
--
ALTER TABLE `module_master`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `eve_date` (`news_date`);

--
-- Indexes for table `news_type`
--
ALTER TABLE `news_type`
  ADD PRIMARY KEY (`news_type_id`);

--
-- Indexes for table `page_master`
--
ALTER TABLE `page_master`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `permission_master`
--
ALTER TABLE `permission_master`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `personality`
--
ALTER TABLE `personality`
  ADD PRIMARY KEY (`personalityID`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`projectID`),
  ADD KEY `pTypeID` (`pTypeID`),
  ADD KEY `pTypeID_2` (`pTypeID`);

--
-- Indexes for table `project_gallery`
--
ALTER TABLE `project_gallery`
  ADD PRIMARY KEY (`galleryID`);

--
-- Indexes for table `project_slider`
--
ALTER TABLE `project_slider`
  ADD PRIMARY KEY (`sliderID`);

--
-- Indexes for table `research`
--
ALTER TABLE `research`
  ADD PRIMARY KEY (`researchID`);

--
-- Indexes for table `seo_link_master`
--
ALTER TABLE `seo_link_master`
  ADD PRIMARY KEY (`seo_link_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`serviceID`);

--
-- Indexes for table `session_log_master`
--
ALTER TABLE `session_log_master`
  ADD PRIMARY KEY (`session_log_id`);

--
-- Indexes for table `sliderimage`
--
ALTER TABLE `sliderimage`
  ADD PRIMARY KEY (`sliderID`);

--
-- Indexes for table `subscription_master`
--
ALTER TABLE `subscription_master`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `template_master`
--
ALTER TABLE `template_master`
  ADD PRIMARY KEY (`template_id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`testimonial_Id`);

--
-- Indexes for table `testimonial_master`
--
ALTER TABLE `testimonial_master`
  ADD PRIMARY KEY (`testimonial_master_id`);

--
-- Indexes for table `user_master`
--
ALTER TABLE `user_master`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `website_master`
--
ALTER TABLE `website_master`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `a_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `album_type`
--
ALTER TABLE `album_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `appointment_master`
--
ALTER TABLE `appointment_master`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `banner_image`
--
ALTER TABLE `banner_image`
  MODIFY `bannerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `benefit`
--
ALTER TABLE `benefit`
  MODIFY `benefitID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `contact_master`
--
ALTER TABLE `contact_master`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `content_master`
--
ALTER TABLE `content_master`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `download_brochure`
--
ALTER TABLE `download_brochure`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `faq_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `faq_master`
--
ALTER TABLE `faq_master`
  MODIFY `faq_master_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `gallery_master`
--
ALTER TABLE `gallery_master`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `group_master`
--
ALTER TABLE `group_master`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `homecontent`
--
ALTER TABLE `homecontent`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `job_master`
--
ALTER TABLE `job_master`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `module_master`
--
ALTER TABLE `module_master`
  MODIFY `module_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `news_type`
--
ALTER TABLE `news_type`
  MODIFY `news_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `page_master`
--
ALTER TABLE `page_master`
  MODIFY `page_id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `permission_master`
--
ALTER TABLE `permission_master`
  MODIFY `permission_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=786;

--
-- AUTO_INCREMENT for table `personality`
--
ALTER TABLE `personality`
  MODIFY `personalityID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `projectID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `project_gallery`
--
ALTER TABLE `project_gallery`
  MODIFY `galleryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `project_slider`
--
ALTER TABLE `project_slider`
  MODIFY `sliderID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `research`
--
ALTER TABLE `research`
  MODIFY `researchID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `seo_link_master`
--
ALTER TABLE `seo_link_master`
  MODIFY `seo_link_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `serviceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `session_log_master`
--
ALTER TABLE `session_log_master`
  MODIFY `session_log_id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=296;

--
-- AUTO_INCREMENT for table `sliderimage`
--
ALTER TABLE `sliderimage`
  MODIFY `sliderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `subscription_master`
--
ALTER TABLE `subscription_master`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `template_master`
--
ALTER TABLE `template_master`
  MODIFY `template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `testimonial_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `testimonial_master`
--
ALTER TABLE `testimonial_master`
  MODIFY `testimonial_master_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_master`
--
ALTER TABLE `user_master`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `website_master`
--
ALTER TABLE `website_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
