-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 08, 2022 at 11:49 PM
-- Server version: 10.3.34-MariaDB-cll-lve
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myedusoft_usersAccess`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminUser`
--

CREATE TABLE `adminUser` (
  `id` int(11) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `fullName` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminUser`
--

INSERT INTO `adminUser` (`id`, `username`, `email`, `fullName`, `password`, `type`, `status`, `date`) VALUES
(1, 'admin', 'maruti2050@gmail.com', 'sbrandwala', 'e64b78fc3bc91bcbc7dc232ba8ec59e0', 1, 1, '2020-10-20');

-- --------------------------------------------------------

--
-- Table structure for table `checkUser`
--

CREATE TABLE `checkUser` (
  `id` int(11) NOT NULL,
  `token` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hdId` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activeAt` date DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `product` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validity` int(11) DEFAULT 7,
  `activeTill` date DEFAULT NULL,
  `noComputers` int(11) DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `checkUser`
--

INSERT INTO `checkUser` (`id`, `token`, `name`, `email`, `mobile`, `hdId`, `activeAt`, `createdAt`, `status`, `product`, `validity`, `activeTill`, `noComputers`, `remark`) VALUES
(1, 'K9Z5x-bPZku-64Td-jy', 'Sandeep', 'sklfdjhljkf@gmail.com', '8383838838', 'f09fefe447c3fb54cff6ab665d080865f699c5962dea3c961bed5d527dc95993', '2021-06-06', '2021-06-06 04:59:39', 1, NULL, 7, '2021-06-13', NULL, NULL),
(2, 'KN5tv-kywxV-ZhqD-wT', 'Shiavji Shinde', 'shivajicitpl1980@gmail.com', '7744916699', 'ba51581065105b7623b14dfd1959ce5aabbee1c3de53d6d2072b2012302270c1', '2021-06-06', '2021-06-06 05:03:21', 1, NULL, 7, '2021-06-13', NULL, NULL),
(3, '7Hcez-tHEyt-rmfv-1m', 'Sandeep', 'sandeep@ennovat.com', '48348848', '2323', '2021-06-06', '2021-06-06 05:03:38', 1, NULL, 7, '2021-06-13', NULL, NULL),
(4, 'H58pZ-KxVGQ-6Wcg-Ey', 'Nitin Zagade', 'nitinzagade.edusoft@gmail.com', '7744906699', '658c16060915dce20040739737738496527f49f4fac2bc1c3e7ba9be701f9868', '2021-06-06', '2021-06-06 05:03:51', 1, NULL, 7, '2021-06-15', NULL, NULL),
(5, 'HtgW8-549fa-ujM8-4j', 'Nitin Zagade', 'nitinzagade.edusoft@gmail.com', '7744906699', '658c16060915dce20040739737738496527f49f4fac2bc1c3e7ba9be701f9868', '2021-06-06', '2021-06-06 05:04:15', 1, NULL, 7, '2021-06-15', NULL, NULL),
(6, '2u3uk-TDJ8v-EVcR-wz', NULL, NULL, NULL, NULL, NULL, '2021-06-06 05:13:01', 0, NULL, 15, NULL, NULL, NULL),
(7, 'HCX3V-Dn7CM-fKFr-Rg', NULL, NULL, NULL, NULL, NULL, '2021-06-06 08:57:34', 0, NULL, 15, NULL, NULL, NULL),
(8, 'exw36-pgqx4-v6kN-uz', NULL, NULL, NULL, NULL, NULL, '2021-06-06 09:05:33', 0, NULL, 8, NULL, NULL, NULL),
(9, 'EBC9Y-UTuRt-KUEZ-nD', NULL, NULL, NULL, NULL, NULL, '2021-06-06 17:35:40', 0, NULL, 331, NULL, NULL, NULL),
(10, 'n6cZr-EzEeH-BfZV-R5', NULL, NULL, NULL, NULL, NULL, '2021-06-06 17:35:48', 0, NULL, 331, NULL, NULL, NULL),
(11, 'xvQEd-pUc8w-xNmx-KY', NULL, NULL, NULL, NULL, NULL, '2021-06-06 17:35:53', 0, NULL, 331, NULL, NULL, NULL),
(12, '4Hgvw-kKHWk-pvVb-D7', 'Excel World Infotech', 'bbjundalemcs@gmail.com', '9420266008', '5c965ba22e6a1f7bec5a8019527aee6f79aec32f7b739e59ee0054bcbf4cfbc3', '2021-06-10', '2021-06-06 17:35:59', 1, NULL, 331, '2022-05-07', NULL, NULL),
(13, '6YNjx-W9tUT-G3TV-Yu', NULL, NULL, NULL, NULL, NULL, '2021-06-06 17:36:03', 0, NULL, 331, NULL, NULL, NULL),
(14, 'VtPMe-2yEk4-Z82B-TZ', NULL, NULL, NULL, NULL, NULL, '2021-06-06 17:36:08', 0, NULL, 331, NULL, NULL, NULL),
(15, 'Agx7k-MYR86-Qk6z-vG', NULL, NULL, NULL, NULL, NULL, '2021-06-06 17:36:14', 0, NULL, 331, NULL, NULL, NULL),
(16, 'Yzg5Q-eXBHF-4BnQ-ud', 'National Computer Wagholi', 'nce734@gmail.com', '9545458080', '119768ee05eab9fe680fd03d4dc1ac0043f5d26c47508fc94d0c482b829ef08f', '2021-06-07', '2021-06-06 17:36:18', 1, NULL, 331, '2022-05-04', NULL, NULL),
(17, 'dyNP1-VXu46-ZqcN-ZU', 'Ajinkya Classes', '47210069mkcl@gmail.com', '9921713536', '37365edb73c5edcbf519da14c05fda0784a67c18a4c8976a7b3da1e2ec619540', '2021-06-07', '2021-06-06 17:36:27', 0, NULL, 331, '2022-05-04', NULL, NULL),
(18, 'dgFDG-wMpAb-CBF2-fm', 'Taj Tamboli', 'tajtamboli75@gmail.com', '9975087861', '645af2a11b982d86572b413d995ffcac034db7dd0efc9fb04b04dab7e76d0deb', '2021-06-08', '2021-06-06 17:36:39', 1, NULL, 331, '2022-05-05', NULL, NULL),
(19, 'GfxPx-1Cqry-3dXu-HQ', NULL, NULL, NULL, NULL, NULL, '2021-06-06 17:36:52', 0, NULL, 331, NULL, NULL, NULL),
(20, '7zUq7-CMwTB-1mtb-ba', NULL, NULL, NULL, NULL, NULL, '2021-06-06 17:47:29', 0, NULL, 332, NULL, NULL, NULL),
(21, 'ZBeHu-AWHGt-A5ap-5C', 'Friends Computer', 'alc67210110fiends@gmail.com', '9766040569', 'a2f7daa44c57b8ef3cddd9e5a09c270fa2ccc4bdf8bf348491e5cf76d46bd656', '2021-06-14', '2021-06-06 17:47:35', 0, NULL, 332, '2022-05-12', NULL, NULL),
(22, 'HmQMu-R4wgT-mY6e-Gj', NULL, NULL, NULL, NULL, NULL, '2021-06-06 17:47:39', 0, NULL, 332, NULL, NULL, NULL),
(23, 'zDrEJ-u3x4R-4xH7-X6', 'kiran Pawar', 'kpawar_lic@rediffmail.com', '9423241444', 'e3f8307d8f148293a2b340f8e5df00e56015897d111c8af3302176d2c40a8fcd', '2021-06-09', '2021-06-06 17:47:43', 1, NULL, 332, '2022-05-07', NULL, NULL),
(24, 'ZkJGh-ZVX8y-DFMY-rn', 'Rudrawar Computers', 'rudrawarcomputers@gmail.com', '9423919663', 'e4d62ed01cf46e713dfc5534db3bc936c7a6b168b60251e885b218488f618d2c', '2021-06-08', '2021-06-06 17:48:14', 1, NULL, 333, '2022-05-07', NULL, NULL),
(25, 'kTF8g-Q7qZ6-EgQp-81', 'DINESH ARVIND SARDESAI', 'dineshsardesai@gmail.com', '9423855736', '2215fcdf4e17000ec4c709b28141063c76d91f40e852be9cd3288137ed6ff998', '2021-07-21', '2021-06-06 17:48:18', 1, NULL, 333, '2022-06-19', NULL, NULL),
(26, 'Fry3v-YeKM3-QjEX-at', NULL, NULL, NULL, NULL, NULL, '2021-06-06 17:48:23', 0, NULL, 333, NULL, NULL, NULL),
(27, 'VwvaX-mqrfz-x7ej-H5', 'creative computer ', '16210020@mkcl.org', '9623921097', '08c5108686caa288358324805ccd0322c7cfa15286328fdb2be04f0b3b6e7b9b', '2021-06-16', '2021-06-06 17:48:46', 1, NULL, 334, '2022-05-16', NULL, NULL),
(28, 'rtHGm-DyGBK-wKjD-MC', 'GIT COMPUTERS', 'gitcomputers@yahoo.com', '8805255888', 'f318dbd1168641f8c8b9724477865c8f9e304fb43e90f7d0d9d701405d31b499', '2021-06-07', '2021-06-06 17:48:51', 1, NULL, 334, '2022-05-07', NULL, NULL),
(29, 'Z2FAQ-Gx2kn-qarz-Zf', 'Santosh Lalwani', 'santoshlalvani@gmail.com', '9822132100', '86ec4ff7047f349fe33ec58c038f95551207bbca7681c51e592661bcbb8b6a79', '2021-06-09', '2021-06-06 17:49:34', 0, NULL, 335, '2022-05-10', NULL, NULL),
(30, 'B8hef-TCNRE-3AuF-Kg', 'SANDEEP RANGRAO HUBALE', 'santech08@rediffmail.com', '9096545054', 'cf6d78ccc28359987687b43cac54590e3b280d578ca3906e81974da0dcb1fe7b', '2021-06-14', '2021-06-06 17:49:38', 1, NULL, 335, '2022-05-15', NULL, NULL),
(31, 'ka4ur-W9ruD-9HUQ-Kw', NULL, NULL, NULL, NULL, NULL, '2021-06-06 17:49:42', 0, NULL, 335, NULL, NULL, NULL),
(32, 'tg6ev-VTF4D-2xy8-Xv', 'Ashadeep Computer institue', '68210049@mkcl.org', '9619733814', '30f8759f51860a194bb99d54c5b444577a3d30e940e9d6211c22ddabcb27c451', '2021-06-07', '2021-06-06 17:49:47', 1, NULL, 335, '2022-05-08', NULL, NULL),
(33, 'q8jAx-7H5jJ-9UbZ-mA', 'MY KNOWLEDGE HUB', 'myknowldgehub.uran@gmail.com', '9224679999', '40c326bbec7947d55dadb4e36621fdadfed9c0ad979048e468233b4959305d77', '2021-06-09', '2021-06-06 17:50:27', 1, NULL, 336, '2022-05-11', NULL, NULL),
(34, 'hr2xY-Xn3yj-x66Y-3z', 'Rahel Anil Waghalekar', 'arlfinserv@gmail.com', '9552411811', 'd281d0b5b50d856dade2de32067c72275f59c4ba403a7d04502b323b0ecece50', '2021-06-07', '2021-06-06 17:50:38', 1, NULL, 336, '2022-05-09', NULL, NULL),
(35, 'Jtenf-A6JuZ-pCgD-1e', 'Devendar Gawade', 'gatescompac@gmail.com', '9420207902', '74e20c61ffc341cc8f5aebd9680522479f18bbd210a47e3a5163d08714c6c698', '2021-06-07', '2021-06-06 17:50:41', 0, NULL, 336, '2022-05-09', NULL, NULL),
(36, 'gDquE-MyPkp-VEer-v5', 'Madhura Mahendra Chavan', 'madhura.roha@gmail.com', '9271186405', '4b71fb201232718471b13e343a2a498a6a528fa4cccde0c56a4e7afcea090c25', '2021-06-11', '2021-06-06 17:50:44', 1, NULL, 336, '2022-05-13', NULL, NULL),
(37, 'whnpm-695gA-EXHE-XW', NULL, NULL, NULL, NULL, NULL, '2021-06-06 17:50:51', 0, NULL, 336, NULL, NULL, NULL),
(38, '8NPuR-7pg4D-6QeA-Cd', NULL, NULL, NULL, NULL, NULL, '2021-06-06 17:51:30', 0, NULL, 337, NULL, NULL, NULL),
(39, 'w31P9-gm1eW-Yuag-6j', 'Rajendra Pundalik Chamangale', 'pcei98@gmail.com', '9270848764', 'dd44c89dbda37ada8bd25f3dfbfd8b1259642c28d4ba88291d5e5525a1e6a6d6', '2021-06-07', '2021-06-06 17:51:34', 1, NULL, 337, '2022-05-10', NULL, NULL),
(40, 'vKe54-Cqz3N-F36P-Pr', NULL, NULL, NULL, NULL, NULL, '2021-06-06 17:51:38', 0, NULL, 337, NULL, NULL, NULL),
(41, 'hahJ5-8REzJ-3mRH-wP', 'Sandeep kamble', 'sandeepkamble1@yahoo.com', '9226727968', '0942b32c1eebee3be5d3f0d426dd5b668317d4da480dda90dbf9e3c716f57bcb', '2021-06-14', '2021-06-06 17:52:01', 1, NULL, 338, '2022-05-18', NULL, NULL),
(42, 'Hm3HZ-Bz1UN-r528-J2', 'Jyotiram Balkrishna Jadhav', 'shreesaiinstitute@gmail.com', '9833153760', 'b1526419d44b23236d5a0f8043dd29b7950e4d4c46698d57ed5c2cf4f6f095b2', '2021-06-15', '2021-06-06 17:52:18', 1, NULL, 339, '2022-05-20', NULL, NULL),
(43, 'yW3RE-BnJ8e-ygGp-Dz', 'IGM Copmputer Education ', 'igmjalgaon@gmail.com', '9822464931', 'c20ba72938dcda6b00e6a84a0ed3fd0f2fad6ad64b43ff2b66a30fa876cb1642', '2021-06-22', '2021-06-06 17:52:21', 1, NULL, 339, '2022-05-27', NULL, NULL),
(44, 'J6Qq8-nchAq-xZPR-jX', NULL, NULL, NULL, NULL, NULL, '2021-06-06 17:52:25', 0, NULL, 339, NULL, NULL, NULL),
(45, 'PrCY9-9kD81-1UNM-Vd', NULL, NULL, NULL, NULL, NULL, '2021-06-06 17:52:50', 0, NULL, 341, NULL, NULL, NULL),
(46, '4fp44-C8VgF-3Ry4-bw', 'Santosh Subhash Kokate', 'a29210011@gmail.com', '7722073562', 'a788d1a626d704cf701112b7e67234419544582ebe5f79e79fa65189fb7e1a61', '2021-06-16', '2021-06-06 17:52:53', 1, NULL, 341, '2022-05-23', NULL, NULL),
(47, 'gk2Cb-vu4qb-qa7G-f8', NULL, NULL, NULL, NULL, NULL, '2021-06-06 17:53:17', 0, NULL, 342, NULL, NULL, NULL),
(48, 'Nkm4z-akjKt-Kr7V-fh', 'ISHANA Technologies', 'ishanatechno@gmail.com', '9422431371', '455c0734ec14d8317dcbd914ee48921bb8403c06494bcf1a0b7689c4cbd8d673', '2021-06-07', '2021-06-06 17:53:21', 1, NULL, 342, '2022-05-15', NULL, NULL),
(49, '9dpzC-m9Yrq-hTMT-kH', NULL, NULL, NULL, NULL, NULL, '2021-06-06 17:53:39', 0, NULL, 343, NULL, NULL, NULL),
(50, '1eVVe-KV4TJ-8zzq-aU', 'disha computer institute', 'subhashgaikwad1210@yahoo.com', '9021211210', 'b455d43c1c8791e453efc25d1bbaf22cafb696974fbecfbc7a8ac220595fdf9d', '2021-06-07', '2021-06-06 17:53:55', 1, NULL, 344, '2022-05-17', NULL, NULL),
(51, 'Ubxvd-6TKzM-ZhAf-uB', NULL, NULL, NULL, NULL, NULL, '2021-06-06 17:54:07', 0, NULL, 345, NULL, NULL, NULL),
(52, 'V9Xk5-CUydw-mX2C-Mw', 'MANCERS INFO SERVICES PRIVATE LIMITED', 'aarti.taware@gmail.com', '8805983043', 'bf7f973dc334f82c8da9522218438f02f9c015efb654f942cf5e9293a1edacb8', '2021-06-21', '2021-06-06 17:54:17', 1, NULL, 346, '2022-06-03', NULL, NULL),
(53, '5UWAD-GQact-c5gM-xM', 'SPARK SALES CORPORATION', 'sparksales.pune@gmail.com', '7620515287', '82c9bb940b7599b779268124211497e3b48c46268c75095b40ca7a712588812d', '2021-07-15', '2021-06-06 17:54:22', 1, NULL, 346, '2022-06-26', NULL, NULL),
(54, 'QPrUg-vkKWJ-BabW-AU', 'arif yasin sayyad', 'arif.sayyad10@gmail.com', '7972518761', 'b8e09f95523f4c5bb953768b9318477ba989976fcbce68fec9a2d7e276fe0627', '2021-06-11', '2021-06-06 17:54:41', 1, NULL, 347, '2022-05-24', NULL, NULL),
(55, 'Fh9Tg-Q8Aqn-8eZa-Zk', 'DIPAK PATIL', '47210161@mkcl.org', '9175868606', '3064f90d08635532a8addf5c7dae376cfd3112335180ad879ce23af811042091', '2021-06-08', '2021-06-06 17:54:46', 1, NULL, 347, '2022-05-21', NULL, NULL),
(56, 'uZeUj-gRcMJ-WaUy-Xy', 'samay computer and Coaching classes', 'samaywashim@gmail.com', '9657729108', '8932cbfb7d73bea81a3a16ebcd0ad18b578424cbbe7bbf842bde4a6b749d1b62', '2021-06-16', '2021-06-06 17:55:02', 0, NULL, 350, '2022-06-01', NULL, NULL),
(57, 'aQ1CP-E4kJF-zmzq-qZ', 'Akshay Shikshan Sansthaa', 'rjere652@gmail.com', '9850890962', '1b0a7db26f6f71e5f26429e02168a5e57c8e7b97f2c8ea952ff960f24de2d48d', '2021-06-14', '2021-06-06 17:55:07', 0, NULL, 350, '2022-05-31', NULL, NULL),
(58, 'jF5mJ-pP3w5-Bxvc-BH', 'Rajendra Ingle', 'studymantraaa123@gmail.com', '7559315534', '657c1680e9b980c7b3f3ca1d00e01a56e9bb64a7cd87fdf05784e3dcb202b785', '2021-07-13', '2021-06-06 17:55:22', 1, NULL, 351, '2022-06-29', NULL, NULL),
(59, 't1GC8-agU2Q-G9jX-qt', 'VARSHA NILESH  MANDARE', 'varshaam1989@gmail.com', '7038914499', 'b1e889b348c4a99f4b580711e63fd56be1722dcd518f78409dc8d02f35989cda', '2021-06-08', '2021-06-06 17:55:34', 1, NULL, 86, '2021-09-02', NULL, NULL),
(60, '34MDK-kFNY8-Rrzz-Qu', 'sandeep namdeo amle', '12210084@mkcl.org', '9689603015', '269389bde7774d13b018514f0d54637a880d9efe47ab708d97d53f51e450b6ac', '2021-06-07', '2021-06-06 17:55:47', 1, NULL, 352, '2022-05-25', NULL, NULL),
(61, 'uMxyb-KFe83-c6wB-6C', 'Jagdish A Mundhe', 'support@bharat-it.org', '7709842553', '063d2a9874ac4f5b447eca16082df8f0d325991feb8fa3c4c3d4d7087fbd83eb', '2021-06-14', '2021-06-06 17:55:59', 0, NULL, 353, '2022-06-02', NULL, NULL),
(62, 'adaJ4-jXQc7-rBJw-4m', NULL, NULL, NULL, NULL, NULL, '2021-06-06 17:56:11', 0, NULL, 354, NULL, NULL, NULL),
(63, 'N481D-GtAqx-PPVP-DB', 'CHANDRAKANT', 'chandhgt@gmail.com', '8888359566', '19dd6043653d875f3d6d0104fd56d61d76b6916ba003bc98891b5604ea4e5ce5', '2021-06-07', '2021-06-06 17:56:16', 0, NULL, 354, '2022-05-27', NULL, NULL),
(64, 'yn2Va-MTkkE-tKWx-Fn', NULL, NULL, NULL, NULL, NULL, '2021-06-06 17:56:21', 0, NULL, 354, NULL, NULL, NULL),
(65, 'cBxxc-NnyPN-aHbP-AE', 'Sandesh Gajanan Salvi', 'salvisandesh1@gmail.com', '9422591173', '0e0178bb8ac070193f1eb1cf20aef46689707df44f825b455a078a2e3136b159', '2021-07-14', '2021-06-06 17:56:41', 1, NULL, 355, '2022-07-04', NULL, NULL),
(66, '2HTGM-GK54E-hcMk-xE', NULL, NULL, NULL, NULL, NULL, '2021-06-06 17:57:24', 0, NULL, 21, NULL, NULL, NULL),
(67, 'BjuuY-3UWWy-P92C-Gz', NULL, NULL, NULL, NULL, NULL, '2021-06-06 17:57:44', 0, NULL, 355, NULL, NULL, NULL),
(68, 'CawR2-rhhmg-VdnC-42', NULL, NULL, NULL, NULL, NULL, '2021-06-06 17:57:47', 0, NULL, 355, NULL, NULL, NULL),
(69, 'fDAeu-rYeVj-tQ6b-jZ', NULL, NULL, NULL, NULL, NULL, '2021-06-06 17:57:51', 0, NULL, 355, NULL, NULL, NULL),
(70, 'JPfVe-cGkJa-HhHT-Rp', NULL, NULL, NULL, NULL, NULL, '2021-06-06 17:57:54', 0, NULL, 355, NULL, NULL, NULL),
(71, 'rg3Bz-qf8fK-gg3a-b9', 'SAI COMPUTER ACADEMY BAVDHAN', 'saicomputeracademybavdhan@gmail.com', '9359269352', '8cfa171dc21e7936fe2f8a6f169592b5865d90a8b5a9a9266a70a0559e867867', '2021-06-08', '2021-06-06 17:58:22', 1, NULL, 356, '2022-05-30', NULL, NULL),
(72, 'hxVcP-2NrpU-898V-Ju', 'Anupama Patil', 'anua_patil@yahoo.com', '9763216361', '1565697419d0f280d6b7383db72054a4a4c717746497116fcc7283e17ea2cf26', '2021-06-09', '2021-06-06 17:58:27', 1, NULL, 356, '2022-05-31', NULL, NULL),
(73, 'KeagV-NEBQX-5cNg-K7', 'Nitin Krishna Wadkar', 'growchemsoluitons@gmail.com', '9325775327', '493d75035a173cd771dddbef86c2cb2e4cb647d6399372402aeafea59bce380f', '2021-06-21', '2021-06-06 17:58:44', 0, NULL, 358, '2022-06-14', NULL, NULL),
(74, 'wpAgb-jxQ7u-7U4c-Zv', 'VASANT PAWASE', 'v9850986557@gmail.com', '9850986557', 'd473f679cbd66af6e91f66de478c43c89537479f20e475af358193306134634a', '2021-06-07', '2021-06-06 17:58:49', 1, NULL, 358, '2022-05-31', NULL, NULL),
(75, 'Pbtpw-6QN4y-9BwB-79', 'Yogesh Shinde', 'yogesh.shinde2011@gmail.com', '9370601010', 'ceeff7139be4483eebfd276911f42ac6f86963362658c0e995d7423c03cd1898', '2021-06-07', '2021-06-06 17:59:16', 0, NULL, 360, '2022-06-02', NULL, NULL),
(76, '4ZrZh-8T9KT-gthb-zq', 'Dinesh Kapoor', 'vdatechnologies@yahoo.co.in', '8806080091', '15685f5451648f6eb41ffe9ae7b85fbb4ee020fbae04e5e08e339ded658201a1', '2021-06-07', '2021-06-06 17:59:20', 0, NULL, 360, '2022-06-02', NULL, NULL),
(77, 'q6hHK-787d5-bgpB-DX', 'MANGAL ALANKAR', 'mangalalankar@gmail.com', '8880640900', '13991b7b1049fa3d2a066296a3637f88b4dfec83633dd43e3320950055ff0171', '2021-06-21', '2021-06-07 04:32:24', 1, NULL, 365, '2022-06-21', NULL, NULL),
(78, '5ffWV-Av5A7-yeBv-6B', 'Akshar world ', 'ravindrakambale2@gmail.com', '8999318982', '8667b2a3832cdddcd206d5f754f5e2b79c77c2bbd8ff7563ac412e37d64390cb', '2021-06-07', '2021-06-07 06:35:48', 0, NULL, 300, '2022-04-03', NULL, NULL),
(79, 'anh4C-QakY2-buQz-MH', 'Online Digital CArd', 'mahaphotoflash@gmail.com', '9665763971', 'b271a16835e09c63919d0b77aebb6ac8abf3882088b9edd2161a0fff28214aa8', '2021-06-14', '2021-06-07 07:46:17', 1, NULL, 365, '2022-06-15', NULL, NULL),
(80, 'E7Kzh-jQd97-UMgz-4x', 'Kisan Rangnath Jadhav', 'saisigma27210018k@gmail.com', '9960003479', '8fefaba04a9b02465cc087aff2d6286a4b8f36b34ee1db15a5ff8e34e4a57efa', '2021-06-07', '2021-06-07 07:59:01', 1, NULL, 300, '2022-04-03', NULL, NULL),
(82, 'TtZTk-XmQ7n-aHqR-Ta', NULL, NULL, NULL, NULL, NULL, '2021-06-08 15:54:07', 0, NULL, 365, NULL, NULL, NULL),
(83, 'bwerP-ztCTj-fkFq-jr', NULL, NULL, NULL, NULL, NULL, '2021-06-08 15:54:22', 0, NULL, 365, NULL, NULL, NULL),
(84, 'Ubw1F-pEd76-CZbF-BC', NULL, NULL, NULL, NULL, NULL, '2021-06-08 15:54:36', 0, NULL, 365, NULL, NULL, NULL),
(85, 'cJB2Z-Tw9FT-VQux-89', NULL, NULL, NULL, NULL, NULL, '2021-06-08 15:54:50', 0, NULL, 365, NULL, NULL, NULL),
(86, 'UAaeY-x47WU-AchR-fh', NULL, NULL, NULL, NULL, NULL, '2021-06-08 15:55:08', 0, NULL, 365, NULL, NULL, NULL),
(87, 'yemXj-K6jB7-UtkE-zR', NULL, NULL, NULL, NULL, NULL, '2021-06-08 15:55:19', 0, NULL, 365, NULL, NULL, NULL),
(88, 'zjrtf-g6f5d-pMDU-W8', NULL, NULL, NULL, NULL, NULL, '2021-06-08 15:55:34', 0, NULL, 365, NULL, NULL, NULL),
(89, 'g9p5M-m9T2D-H6yA-cG', NULL, NULL, NULL, NULL, NULL, '2021-06-08 15:56:58', 0, NULL, 365, NULL, NULL, NULL),
(90, 'fuvTE-y2pF7-m4Ah-8Z', NULL, NULL, NULL, NULL, NULL, '2021-06-08 15:57:12', 0, NULL, 365, NULL, NULL, NULL),
(91, 'g6T1w-vhdvY-QGHX-re', NULL, NULL, NULL, NULL, NULL, '2021-06-08 15:57:22', 0, NULL, 365, NULL, NULL, NULL),
(92, 'RZEAU-CWc8R-V4Jh-p5', NULL, NULL, NULL, NULL, NULL, '2021-06-08 15:58:09', 0, NULL, 365, NULL, NULL, NULL),
(93, 'bwXC4-wTNEX-TPtj-ZV', NULL, NULL, NULL, NULL, NULL, '2021-06-08 15:58:20', 0, NULL, 365, NULL, NULL, NULL),
(94, 'h8jv7-g746E-zfD7-TC', NULL, NULL, NULL, NULL, NULL, '2021-06-08 15:58:31', 0, NULL, 365, NULL, NULL, NULL),
(95, '6mJWt-vyw3Z-w398-Wb', NULL, NULL, NULL, NULL, NULL, '2021-06-08 15:58:41', 0, NULL, 365, NULL, NULL, NULL),
(96, '5n9zt-cP7F6-AjNE-tG', NULL, NULL, NULL, NULL, NULL, '2021-06-08 15:58:51', 0, NULL, 365, NULL, NULL, NULL),
(97, 'FTzxn-ekBrd-a4hn-4F', NULL, NULL, NULL, NULL, NULL, '2021-06-08 15:59:02', 0, NULL, 365, NULL, NULL, NULL),
(98, 'YU4Zk-QB1cv-rFJy-gM', NULL, NULL, NULL, NULL, NULL, '2021-06-08 15:59:11', 0, NULL, 365, NULL, NULL, NULL),
(99, 'gHtDh-uCCAr-DwgD-X1', 'jawahar Potdar', 'jawaharpotdar@gmail.com', '9960352084', '12182b85e061410839bf3aa7e5911ed7184f1e445c0affaec5164d644f8ec9b5', '2021-07-07', '2021-06-08 15:59:20', 1, NULL, 365, '2022-07-07', NULL, NULL),
(100, 'kFn3T-KMAvn-ZuFF-xZ', NULL, NULL, NULL, NULL, NULL, '2021-06-08 15:59:29', 0, NULL, 365, NULL, NULL, NULL),
(101, 'MzJaV-kYw79-18AW-zd', 'OM SAIRAM JEWELLERS (SATARKAR)', 'satyasupriya205@gmail.com', '9769797941', 'acfd3708192a29340a54d7934346100ba50cb6cea4f748e72aad84ccc11ded32', '2021-07-02', '2021-06-08 15:59:43', 1, NULL, 365, '2022-07-02', NULL, NULL),
(102, '3GMFN-GJpet-dwvt-By', 'devidas narayn badal', 'Devidasnbadal@gmail.com', '9691919160', '723cde4c1d56ef19d14d570fbe99bffe1120d1d26f5845c4b256c87c96c9af1b', '2021-06-26', '2021-06-08 15:59:53', 1, NULL, 365, '2022-06-26', NULL, NULL),
(103, 'XwCju-qjgP8-2bJJ-3E', 'mahesh Dixit', 'mahesh13792@gmail.com', '8888959549', '0f5a008bb40b0155e8b740dca155435c7ffd04bb60ee2bf3b6b0e5e0eccfa36b', '2021-06-26', '2021-06-08 16:00:03', 1, NULL, 365, '2022-06-26', NULL, NULL),
(104, 'GKYbx-Z3gHJ-D4xc-rV', NULL, NULL, NULL, NULL, NULL, '2021-06-08 16:00:13', 0, NULL, 365, NULL, NULL, NULL),
(105, 'BNfAW-UhVPJ-YTaF-n6', NULL, NULL, NULL, NULL, NULL, '2021-06-08 16:00:24', 0, NULL, 365, NULL, NULL, NULL),
(106, 'gTKw3-5kGpz-GxAd-g2', 'Nikhil Hirulkar', 'admin@muzikala.com', '9921227984', '6efb5aafc00f4c5a977b9277380ab1b53c5954f234257ccd524ddc0f2a9de16e', '2021-06-09', '2021-06-08 16:00:34', 1, NULL, 365, '2022-06-09', NULL, NULL),
(107, 'fGuV7-d1btJ-9aff-N8', 'CMS Computers', 'etsinstitutepune@gmail.com', '7499601410', 'e6b20ca016e26c8fffc5eeb1c0a0beb4cb0b06c38765bb1564cd981d99f47329', '2021-06-09', '2021-06-09 05:34:06', 1, NULL, 180, '2021-12-06', NULL, NULL),
(108, 'KwA3w-UCRbt-tmZd-dV', 'Asset Computer Education Vikhroli', 'assetcomputervikhroli@gmail.com', '9324239654', '38da5099b64e7f29b71ec720aee3c25823e1223ec1ddd9605bcf10f72f81bb59', '2021-06-09', '2021-06-09 06:15:39', 1, NULL, 365, '2022-06-09', NULL, NULL),
(109, 'AgEB3-p1n5E-DEeQ-cu', 'ASSET COMPUTER EDUCATION VIKHROLI', 'assetcomputervikhroli@gmail.com', '9324239654', '38da5099b64e7f29b71ec720aee3c25823e1223ec1ddd9605bcf10f72f81bb59', '2021-06-09', '2021-06-09 06:41:41', 1, NULL, 365, '2022-06-09', NULL, NULL),
(110, 'F3E9h-PjzQV-KnYk-ur', 'SUSHIL BORA', 'sushilbora1971@gmail.com', '9657292929', '367c4768840eeab49979cec062209766aaf46d0483c0f9237d0e806356a1e26c', '2021-06-09', '2021-06-09 10:53:37', 1, NULL, 365, '2022-06-09', NULL, NULL),
(111, 'Q241E-6nv5r-FxBu-va', 'RAHUL FADTARE', 'rahullic@gmail.com', '9822336065', 'db4f02cbfdc73c2f6e773fdbbb06b54d9456bc034d7dd9c9dfa82cb329f176fd', '2021-06-09', '2021-06-09 12:25:11', 1, NULL, 365, '2022-06-09', NULL, NULL),
(112, 'PZX76-Dkq8y-182Q-Pn', 'Gajanan Nagre', 'life7.lic@gmail.com', '9607550988', 'c561e43d63cde3af27b1606537555b0160e395c39cdcdbb11804bc70d72cd680', '2021-06-10', '2021-06-10 03:41:18', 1, NULL, 365, '2022-06-10', NULL, NULL),
(113, 'g51PN-9G2ak-tB1u-Vn', 'Suraj Bhujal', 'vishalnirmal14@gmail.com', '8446505725', '59f0a3c7c2ad38420dc92d3b78b8d475f418c7f853e2bbe6b50c6769ed74dc69', '2021-06-10', '2021-06-10 07:55:23', 1, NULL, 365, '2022-06-10', NULL, NULL),
(114, 'xPPE3-A1KzW-7JD5-2c', 'Ajit Insurance & Investment Services', 'ajitwinner@rediffmail.com', '8484006468', 'fd5d210cd8d89c6d83550380340784509bf4cffddd5bd85bd6a3990c4bd4dd84', '2021-06-10', '2021-06-10 12:31:34', 1, NULL, 365, '2022-06-10', NULL, NULL),
(115, 'NvhBz-hb8Jj-GPQX-dA', 'manasvi milind jadhav', 'knowledgenskillskeerti@gmail.com', '7400311445', '2fe5b883c02d45238e917b6b40c7b6e11bdf7fec6d8656e293f09f151fb2d375', '2021-06-30', '2021-06-10 15:39:13', 1, NULL, 365, '2022-06-30', NULL, NULL),
(116, 'cr9gA-a1eQh-bYbw-2c', 'sahyadri career academy baramati ', 'sahyadriacademybaramati@gmail.com', '9767100473', 'a00b6d9da817b92069999960d1baeadbd7bf8633013f4244dede02754d3b225f', '2021-06-11', '2021-06-11 03:01:31', 1, NULL, 365, '2022-06-11', NULL, NULL),
(117, 'g1bqg-2n5GY-fH17-kH', 'Maruti', NULL, NULL, NULL, NULL, '2021-06-11 06:12:43', 1, NULL, 7, NULL, NULL, 'testing  value'),
(118, 'ZZFVj-1AM45-p7dR-Rk', 'Sandip Modak', '18210047@mkcl.org', '9769554199', '9309ef5bd3ef557166c47ede2f7ed15e7dace31367a40f4b55c732155ab0c9ff', '2021-06-11', '2021-06-11 15:21:14', 1, NULL, 365, '2022-06-11', NULL, 'Rs. 3000/- deposited in SBI'),
(119, 'xJb3c-qYhGz-ezrb-hd', 'test', NULL, NULL, NULL, NULL, '2021-06-13 08:16:11', 0, NULL, 5, NULL, NULL, 'test key'),
(120, 'YENDj-Wzk17-Ndgb-xH', NULL, NULL, NULL, NULL, NULL, '2021-06-13 08:16:41', 0, NULL, 1, NULL, NULL, NULL),
(121, 'VHvFe-NjteP-XunP-Mw', '', NULL, NULL, NULL, NULL, '2021-06-13 08:29:09', 0, NULL, 8, NULL, NULL, ''),
(122, 'ttrYy-E4vrq-6VBv-Ky', 'Shivaji Shinde', 'shivajicitpl1980@gmail.com', '7744916699', 'ba51581065105b7623b14dfd1959ce5aabbee1c3de53d6d2072b2012302270c1', '2021-06-13', '2021-06-13 09:29:13', 1, NULL, 21, '2021-07-04', NULL, ''),
(123, '7pXwx-mnPKr-cjn8-Dy', 'sandip', '33210122@mkcl.org', '8788148762', '10fbeea339dde42b0dfa8063254df5d409918f12ab23679910c4ae7ff8f12562', '2021-06-14', '2021-06-14 07:08:20', 1, NULL, 300, '2022-04-10', NULL, 'Old version activated on 30-03-2021, Remaining 300 Days Licence'),
(124, 'dxr9P-daYRR-BnGW-Bv', 'ASSET COMPUTER EDUCATION', '19210106@mkcl.org', '9004306696', 'ebb6dd92efa3f1d488a4e4ed2f49d360fdc314c12a987c097d5379fb3b0fa39e', '2021-06-16', '2021-06-14 09:37:59', 1, NULL, 365, '2022-06-16', NULL, 'Old Customer'),
(125, 'vZDkW-XFr7R-MMMx-GR', 'Mandar Date', 'mandardate@yahoo.com', '9823051302', '0e97d45bd4aed4283fe921f883792714bd59b61790bff6f6d2b4344901c34664', '2021-06-14', '2021-06-14 10:50:07', 0, NULL, 365, '2022-06-14', NULL, 'New Sale'),
(126, 'dJgct-M95B7-nde4-mB', 'KIRAN PATIL', 'patilki1991@gmail.com', '9975674463', '785b0f6b980b6ba3972d4ba6382ca5c36779b8aefb881a15f8bf48157772053a', '2021-06-14', '2021-06-14 12:04:21', 1, NULL, 300, '2022-04-10', NULL, 'Old Customer'),
(127, '9E59R-r6a9g-VMNf-A9', 'Deepak Mozarkar', 'deepakdsoft@gmail.com', '7499569168', 'db44e588962cd9f5074fa66fd81de4b468ce191fd42e07916dc366f1a2437c46', '2021-06-16', '2021-06-15 05:21:18', 1, NULL, 365, '2022-06-16', NULL, 'New 1'),
(128, 'KGQJc-U1YdE-x8Uk-TD', 'Deepak Mozarkar', 'deepakdsoft@gmai.com', '9850756677', 'c5a808782c830b31166cd2bbb59f21e6847a0e9d06eea281b5f0614636f56e80', '2021-06-19', '2021-06-15 05:21:33', 1, NULL, 365, '2022-06-19', NULL, 'New 2'),
(129, 'GcGqf-Pgmc7-R5FA-UX', 'Omkar Computers', 'omkarmes2012@gmial.com', '8626021623', '3f4b4ca2151a86bae342d942031a23825ba0a9ca63c08b5bffd8f90f4dcf0f73', '2021-06-19', '2021-06-15 06:53:04', 0, NULL, 365, '2022-06-19', NULL, 'New Token'),
(130, 'u1Cj5-rEkup-md8E-Be', 'Nitin Zagade', 'nitinzagade.edusoft@gmail.com', '7744906699', '658c16060915dce20040739737738496527f49f4fac2bc1c3e7ba9be701f9868', '2021-06-15', '2021-06-15 07:07:04', 0, NULL, 365, '2022-06-15', NULL, ''),
(131, '3A9HF-bFndT-q4RB-VU', 'Shahaji Sudam Masulkar', 'ssmasulkar@gmail.com', '9371037079', '689efe563a6b5844f96a9a19ebd93f643a474a7f41dfd372e86ea0b8f99427cf', '2021-06-15', '2021-06-15 07:41:02', 1, NULL, 365, '2022-06-15', NULL, ''),
(132, 'kApK3-cnbPW-fCq7-D9', 'Birari Ramkrushna Ambadas', 'ram_birari@rediffmail.com', '9423962755', '7f8856efd84fed959ba5afb81e8153c9c3469a3caeefa02464d257e52c0d7bcc', '2021-06-15', '2021-06-15 12:52:09', 1, NULL, 300, '2022-04-11', NULL, 'Old Customer with Rs. 2000/-'),
(133, '9ccEd-KpyK4-BWFR-e7', 'SARASWATI COMPUTER INSTITUTE MANDANGAD', 'saraswatitechmgd@gmail.com', '9552096676', 'c54fcbfddafb40094a63ee721c74665e239202bce7b83c740bf5be7958ccce22', '2021-11-12', '2021-06-16 06:35:40', 1, NULL, 365, '2022-11-12', NULL, 'All in one Customer'),
(134, 'aCRAz-kT3Xy-7yFN-2P', 'Mr. Santosh Sudam Nimbalkar', 'santoshnimbalkar676@gmail.com', '9420115000', '03220f0e7221b24a9fcdfa644cfe078d0e8f5102e136dd81abef0fe1fa444c40', '2021-06-16', '2021-06-16 08:34:13', 1, NULL, 365, '2022-06-16', NULL, 'New Sale'),
(135, 'DAR7H-U7Zey-CXmQ-8a', 'Atul Appasaheb Kardile', '46210149@mkcl.org', '9960996030', 'bc296d419fd4db36a2b0474765705fac54a45dd8905a0e6d2ac3ca639f91a583', '2021-06-16', '2021-06-16 08:35:51', 1, NULL, 365, '2022-06-16', NULL, 'New Sale'),
(136, 'QAyzg-Ca7Wn-Nxey-qT', 'NATIONAL TECHNICAL COMPUTER EDUCATION BRAMHAPURI', 'nationalcomputercenter.com@gmail.com', '8788068427', '716d941ce34e692bc86087099683564b5f6ea0cd6285fa225bd9fe4a7a1245d5', '2021-06-16', '2021-06-16 08:37:41', 1, NULL, 365, '2022-06-17', NULL, 'New Sale _ One Month'),
(137, 'VEKhg-VVFrx-B1Dz-DR', 'Ganesh Mahadeo Pimpalkar, Moharsh Computer Education, Shivaji Nagar Nanda Fata.', NULL, NULL, NULL, NULL, '2021-06-16 08:41:29', 0, NULL, 365, NULL, NULL, 'New Sale'),
(138, 'P3wHk-GC3C7-21Kq-cp', 'Dinesh Kapoor', 'vdatechnx@gmail.com', '9075080091', '76937b58ef8c656af0a9965d09208000720468ba1e7af9c8ce2ae1fc8f021f90', '2021-06-16', '2021-06-16 10:35:12', 0, NULL, 350, '2022-06-01', NULL, 'Computer Changed'),
(139, 'j5JGr-TevKU-VFuq-fG', 'SANDHYA', 'sandhya.insurance@gmail.com', '9527043600', '6a973d7f35dbf1fb7bde321833c4c9fe631733126e9925996e6ca402a0deb25f', '2021-06-17', '2021-06-17 14:11:01', 1, NULL, 365, '2022-06-17', NULL, 'New Sale'),
(140, 'CrBXd-bcAg8-jN1W-TG', 'Babasaheb Bhaguji Rohokale', 'a17210211@gmail.com', '9922741737', 'c9b1964a044ee70e66cc852c0af142a53f0666c54cde8848f683ded1c5c08b19', '2021-06-18', '2021-06-18 05:18:24', 1, NULL, 335, '2022-05-19', NULL, 'All in one customer'),
(141, '3agGe-hD2pP-gKdW-7a', 'Saisonu Computers, Junnar, Pune', NULL, NULL, NULL, NULL, '2021-06-18 07:14:16', 0, NULL, 365, NULL, NULL, 'New Sale'),
(142, 'cMG8H-Bybu5-jAha-Ne', 'Noble Computer Education', '39210087@mkcl.org', '7588562464', 'ca83b250b55567c1d52832dbee84c87a42b8b7e0fe12be068248b12401753737', '2021-06-21', '2021-06-18 07:39:48', 1, NULL, 100, '2021-09-29', NULL, 'Old Customer'),
(143, 'uZFZ6-vPHCX-c45N-CY', 'Shrikrishna Computer Institute', 'jalindar.chaure111@gmail.com', '7058686100', '0ef0ba5c2d0ba623ed77545f54df774b20087bad4eb0ac588a8a9bdbb001f550', '2021-06-19', '2021-06-19 04:49:51', 1, NULL, 300, '2022-04-15', NULL, 'Purchased in March 2021'),
(144, 'YBmgY-U6gQK-ftq8-mM', 'Kisan Borate', 'krborate67@gmail.com', '9960984095', '5ea56b30c5444c0fd365e7af735f2b3fc632096497415287970b6f3ff2a30673', '2021-06-19', '2021-06-19 09:30:53', 1, NULL, 200, '2022-01-05', NULL, 'Old Customer'),
(145, 'w9Uvg-ytuPv-VhnE-ER', 'Yogesh shinde', 'yogesh.shinde2011@gmail.com', '9370601010', '7b28652d5ef8aad15f51307014d3a0e2fc724aaaa288c1799e64dfd5ab8b8be2', '2021-06-19', '2021-06-19 13:05:00', 0, NULL, 360, '2022-06-14', NULL, 'Computer Changed'),
(146, 'ecPGj-uzWF2-W39T-55', 'Vidhyadhar Karanjkar', 'vrkaranjkar67@gmail.com', '9822186400', 'c7e34c8c7b6109f5f7eb6d3c69b3dc115a60dcdffced170eed7bd0e37ce7b2a5', '2021-06-19', '2021-06-19 14:45:55', 1, NULL, 365, '2022-06-19', NULL, 'New Sale'),
(147, '552dc-bZ19Y-GJHf-fQ', 'ANITA INGALE', 'dnyanshilpcomputer7721@gmail.com', '9850684546', '10c9559c533f543631fa18be4fd3dce30f9c11b8472833c238dbbd6391251741', '2021-06-21', '2021-06-21 09:34:11', 1, NULL, 365, '2022-06-21', NULL, 'New Sale'),
(148, 'z5Cgq-jnK1Y-AZWA-kQ', 'Naresh Vasant Kalaskar', 'dhanshree.com2012@gmail.com', '9673517920', 'acb9bb978859ac68ebff08ed3776cd5a801f109e12aa731c916359c3109bb523', '2021-06-21', '2021-06-21 10:44:39', 0, NULL, 365, '2022-06-21', NULL, 'All in one Customer'),
(149, 'nX7Dt-WYqtt-jX8P-eJ', 'Kunal Malviya', 'malviyakunal72@gmail.com', '7721929496', '7ebffd168b426678c3c2dab5e37acd24f7dc920fb6ea4d10fc1a50530110ae8d', '2021-06-21', '2021-06-21 11:08:59', 0, NULL, 365, '2022-06-21', NULL, 'New Sale'),
(150, 'H4Ryz-eXtgh-U8bB-3v', 'Dinesh Balkrishna Kadam', 'dineshkadam30101972@gmail.com', '9422379262', 'e7d910102260d69683c76fe3d29f9554c6c3dd57989ce3f127b8604d90151e1e', '2021-06-21', '2021-06-21 13:26:20', 1, NULL, 300, '2022-04-17', NULL, '2000 '),
(151, '3p4xk-aR75r-W6pe-R8', 'Active computers', 'manishmm1412@gmail.com', '9823589524', '516b4a763c29f8db003a22e63dd235af9d8b0fc9a33ec9cb53ddf19c6c68b55f', '2021-06-21', '2021-06-21 13:41:23', 0, NULL, 300, '2022-04-17', NULL, 'all in one'),
(152, 'fbzm5-9Ptpx-Ktc4-hP', 'Yogesh Shinde', 'yogesh.shinde2011@gmail.com', '9370601010', '43f07619cc773ab53993c37703e463e567ff3738399014508c5dfb299985dd5a', '2021-06-22', '2021-06-22 06:25:01', 0, NULL, 340, '2022-05-28', NULL, 'AIO Customer'),
(153, 'zkz3Y-FWC9q-CakG-F1', 'Success Computer Institute', 'successcomputersinstitute@gmail.com', '9764252515', '30dd57aa575019d21668fffc306c90a28efdd89aaaf21af939abeed8dcebcc19', '2021-06-22', '2021-06-22 06:59:02', 1, NULL, 200, '2022-01-08', NULL, 'Old Customer'),
(154, 'FTHDQ-Kxx4D-dcmD-RM', 'National Computer Wagholi', 'nce734@gmail.com', '9545458080', 'b50def8e2c1f962420f4b30c52ebdea821ff222f07fce2d3efeb00238b12127c', '2021-08-14', '2021-06-22 11:13:52', 1, NULL, 365, '2022-08-14', NULL, 'AIO Licence'),
(155, '7TuPd-W5Ntc-4bwH-hT', 'Kunal Malviya', 'malviyakunal72@gmail.com', '7721929496', '024482a69ad5bfd4e420390d0c96efd2f4b57e65d1c95c0f84f977abdee03ddd', '2021-06-23', '2021-06-23 07:50:23', 1, NULL, 363, '2022-06-21', NULL, 'New Laptop Purchased'),
(156, 'xa4NW-q2JDH-zQ4B-B9', 'Chirayu Lalwani', 'santoshlalvani@gmail.com', '9822132100', 'fc95f85f3742e91ec7c9a387c07b43e5758c41807d7913e1d1faba0f94b1eadd', '2021-06-23', '2021-06-23 11:17:22', 0, NULL, 30, '2021-07-23', NULL, 'Lalwani_2nd Machine'),
(157, '7aj13-Rkjam-cuwM-na', 'AAMANTRAN', 'satish1467@yahoo.com', '9730039300', 'a699371dc8334ccdf5aa655bafe1656e6ef639d92a1e489ce51b2031b15f46f2', '2021-06-24', '2021-06-24 08:47:28', 0, NULL, 365, '2022-06-24', NULL, 'New Sale'),
(158, 'faDm9-1Hdgg-jppD-KD', 'Shri Sai Computer Institute', 'niteshraj7777@gmail.com', '9579482977', '3dccba855cf4f6db86e68ee687ca8dc4246924c65df4d1fb062e5dbe72b9342b', '2021-06-24', '2021-06-24 14:51:20', 1, NULL, 330, '2022-05-20', NULL, 'AIO Customer'),
(159, 'J9jwF-abqXY-MC5Y-Q4', 'Ujwal Anil Sharma', 'ujwasharma94@gmail.com', '9307500539', 'e86c2cb8bcc3c10b30b89d136e16deb20d8b03f97668a206ee085d8e6f683ad7', '2021-06-25', '2021-06-25 08:27:01', 1, NULL, 150, '2021-11-22', NULL, 'Old customer'),
(160, '7ynM4-8nUhr-aj4C-U2', 'AMOL BHAT', 'myguru23@gmail.com', '9970744554', '14b6b80be1bd4617dc5dea821cebae6d14f733f05b0a7ca13181978cfa64773a', '2021-06-25', '2021-06-25 08:36:49', 1, NULL, 365, '2022-06-25', NULL, 'AIO'),
(161, 'b7aDn-nKME2-nBUr-4N', 'Bhalchandra Parab', 'bhalchandra.shubh78@gmail.com', '9821987119', '27139cf8467fb82cce6e476d672af1f3f59ac64e2a1905fa35161429f86a6d75', '2021-06-25', '2021-06-25 08:37:28', 1, NULL, 365, '2022-06-25', NULL, 'AIO'),
(162, 'AKzGh-ByUzx-9ADd-b1', 'Subodh Sitaram Khairnar', 'rscomputer1210@gmail.com', '9096340080', 'd034c51cce58096441b7485803aa0b36cf3cae59e4e311fa7eeaa7c6bd732c20', '2021-06-25', '2021-06-25 13:38:18', 0, NULL, 365, '2022-06-25', NULL, 'New Sale'),
(163, 'hNUZ5-BGWj1-h1cB-gh', 'Arjun Choudhary', 'pravinchoudhary231@gmail.com', '8329984693', '13ff51ef2fcbacb4fc8a4cf98b877353d4b0dcaad683381971456cfac69fd438', '2021-06-25', '2021-06-25 13:38:29', 1, NULL, 365, '2022-06-25', NULL, 'New Sale'),
(164, 'RtuQb-53Bmq-QMa7-rV', 'Ravindra Katkar', 'omcomputer333r@gmail.com', '7620714779', 'ef3c3606a9df4dfb8711f82d8fbf0bdafc3d089a15a2dfbd1221e43a3e608535', '2021-06-26', '2021-06-26 05:32:06', 0, NULL, 365, '2022-06-26', NULL, 'New'),
(165, 'BpUhd-tmNmp-772M-pB', 'SACHIN SONAWANE', 'rncalc@gmail.com', '9623853057', '6370c3b858971cf9b8ec8b0ae2630f62a66d51d15920faf4a33674f29bf9f4eb', '2021-06-26', '2021-06-26 06:24:54', 1, NULL, 330, '2022-05-22', NULL, 'Old Customer'),
(166, 'fwHab-9uFKM-7Dbt-UZ', 'creation multimedia Animation & Vfx', 'creationmultimedia3d@gmail.com', '9225247779', 'cef11825d59506531dc3ab48b61c52dba50f9c2f250d879b654949fa5f772d91', '2021-06-26', '2021-06-26 09:31:04', 0, NULL, 365, '2022-06-26', NULL, 'New'),
(167, 'WKRwA-9Efca-aw62-jp', 'Yogesh Shinde', 'yogesh.shinde2011@gmail.com', '9370601010', '0de04e83e962b7ccb89365c8be34c56411343e60115233c6cfd3435a78962db9', '2021-06-28', '2021-06-28 04:37:46', 1, NULL, 365, '2022-06-28', NULL, 'New Sale - Raj Computers, Pandharpur (Phaltan)'),
(168, 'JQqhK-33zQM-nc2f-Dp', 'Maruti B Dhotre', 'd.maruti@gmail.com', '9922738252', '7a5cb51cc99ea464454504f4517e9a58e925eab5bf7dd395433a6e2d11a97e3e', '2021-06-28', '2021-06-28 10:04:18', 0, NULL, 50, '2021-08-17', NULL, 'Only SpreadAroundPro in Rs. 2000/-'),
(169, 'ZnAv3-qPw4U-Cc31-4v', 'RAJARAM MATE', 'rjrmt@reidiffmail.com', '9011561769', '44dac109c32daf74e352853b2a2b11734f393025d36104a6bdb96ec86b525df4', '2021-06-29', '2021-06-29 11:30:14', 1, NULL, 365, '2022-06-29', NULL, 'New _ Samarth computer typing institute, Shinde, Nashik Road, Nashik'),
(170, 'JTmZQ-eBwG3-c8xA-RN', 'JAY PARAB', 'rainbowfoundationn@gmail.com', '8850012929', '0317d496fa2611295a23abd6a45f31369f6a98bae2b0e213a625f0d86d2b57a3', '2021-06-30', '2021-06-30 07:31:34', 1, NULL, 365, '2022-06-30', NULL, 'New'),
(171, 'KXC9T-TxnNU-V6HW-cP', 'SHRAVANI INFOTECH', '16210225@MKCL.ORG', '9762532999', 'd0f1df6ff936d2305802b3ef05eb8d87ada6dd35a1c579c9c73c44c925a992c0', '2021-07-01', '2021-06-30 11:54:01', 1, NULL, 200, '2022-01-17', NULL, 'Old Customer'),
(172, 'HADA9-DKCFy-CGn5-Np', 'National Technical Computer Education, Brahmapuri', NULL, NULL, NULL, NULL, '2021-07-02 05:38:23', 0, NULL, 365, NULL, NULL, 'New'),
(173, 'T68Ut-nWz7p-eBDU-ZF', 'SONALI KRUSHNA YADAV', 'swamisamarthonlineservice2015@gmail.ocm', '9028414573', 'f83cfc6b06c98e585bb2c0d1115703ddaa7d91ad27750964ec4f4854409c2d92', '2021-07-02', '2021-07-02 06:08:32', 1, NULL, 365, '2022-07-02', NULL, 'Swami Samarth Online Service Center, Akkalkot _ New'),
(174, '7kCtP-7me6M-tCVC-QM', 'Vinodkumar Dhananjay Dudhagundi', 'vina.shree@gmail.com', '9209999250', 'd8956bf4b01082ae99795034a0efc09ab83f80828076ae2072ccfc577cbe9142', '2021-07-02', '2021-07-02 07:40:03', 1, NULL, 365, '2022-07-02', NULL, 'Vinashree Computers & Typing Institute, Shelgi, Solapur_New'),
(175, 'RG2jh-Tyknh-dhjc-Wx', 'ganesh madhukarrao turak', 'ccecomputer2@gmail.com', '9766136182', '850c4b0da1c28ff305d73b4294887aa86f04b4ed9f85ac132cd63017157cc911', '2021-07-03', '2021-07-03 05:24:21', 1, NULL, 365, '2022-07-03', NULL, 'CCIT COMPUTER EDUCATION PULGOAN_New'),
(176, 'vRVJD-73Ex6-BD7a-ZJ', 'Dattratraya Dinkar Khedekar', 'rainbowsaswad@gmail.com', '9404056377', 'b4fa6a3bd4a4cd698fec76c49fed40f5e9556fdb96ca4ef0f22baa827d1c6ea7', '2021-07-03', '2021-07-03 08:59:42', 1, NULL, 335, '2022-06-03', NULL, 'Rainbow Computers Saswad_All in one customer'),
(177, 'jqz9t-M9rZd-m7Pv-QD', 'Shivaji Shinde', 'shivajicitpl1980@gmail.com', '7744916699', 'ba51581065105b7623b14dfd1959ce5aabbee1c3de53d6d2072b2012302270c1', '2021-07-05', '2021-07-05 06:11:13', 1, NULL, 365, '2022-07-05', NULL, ''),
(178, 'ggmHP-jw4f4-a9eP-mn', 'AjaySoneji', 'ajaysoneji2008@gmail.com', '9323142512', 'ebd70874afb114564f582c892c4b6e5a7489e6c16eaa0fc86989c5b0021bd5dc', '2021-07-05', '2021-07-05 06:36:59', 1, NULL, 365, '2022-07-05', NULL, 'Dr Meena Sonde W'),
(179, 'APM7n-F7ZDV-EDNw-HY', 'RAKESH SAMBHAJI NIKUMBH', 'rakeshlic125796k@gmail.com', '9420534297', '8009da3668d535ce0af56d823057b95caed64e5a24f8b3eeca2a43ab795919ce', '2021-07-20', '2021-07-05 13:00:51', 1, NULL, 365, '2022-07-20', NULL, 'RAKESH PATIL '),
(180, 'Dumv8-fgMku-xaeN-jD', 'Akshay Bhurat', 'aksjyot1008@gmail.com', '9420957181', 'aa40bfe9efc9bf5f444326ee5db7f33eb47cdedf4d195d8b6b5e1ac273d93b8a', '2021-07-06', '2021-07-06 04:27:22', 1, NULL, 100, '2021-10-14', NULL, ''),
(181, '5Jcf6-GWj6p-vPk2-pG', 'Smit Bhurat', 'aksjyot1008@gmail.com', '7972301044', 'c7816a5b3ecae57fe2069486e275448cbf651a90caa42e51e0e425743879b7a8', '2021-07-06', '2021-07-06 04:27:35', 1, NULL, 100, '2021-10-14', NULL, ''),
(182, 'CE9vc-Ph1bh-hwvM-zN', 'R S COMPUTERS', 'rscomputer1210@gmail.com', '9096340080', '7e135aa2c5f533fa9d86f1a8f2cd3dcb72fe6fd494eec842007e4d00fb817ce6', '2021-07-06', '2021-07-06 12:46:24', 1, NULL, 365, '2022-07-06', NULL, 'Computer Changed'),
(183, '9wuaW-xhb1V-EGmv-Ck', 'YOGESH BABULAL YADAV SOLASKAR', '47210045@mkcl.org', '9960555707', '780b0d83b766bc97e6189951eb185914f052c27cea8108ca0357f40a3ab663a0', '2021-07-07', '2021-07-07 04:43:41', 1, NULL, 300, '2022-05-03', NULL, 'Someshwarnagar'),
(184, 'MYXM7-EtHvF-2J26-Pa', 'Vinayak Achyut Deshpande', 'licvinayak@gmail.com', '9823199718', 'b91ee7c52079e2ade6946c2e934df1b91c671cc17947e25b5a53368d57c6345a', '2021-07-07', '2021-07-07 05:13:51', 1, NULL, 365, '2022-07-07', NULL, 'Deshpande'),
(185, 'cGugg-uyZz4-4ktV-gf', 'ravindra', 'aryainfotechs@gmail.com', '7972134633', '0af0102d0a8a390f7d86bffa8a8621b35a5feaae4517bf7d094fa6a2f5dfa419', '2021-09-01', '2021-07-07 07:02:42', 1, NULL, 365, '2022-09-01', NULL, 'Pragati Classes Chakan'),
(186, 'r83HD-kvxw2-wAYN-mY', 'Umesh Rupnawar ', 'umeshrupnawar1979@gmail.com', '9767168676', 'fb367f1f701de973cfe032cd347e4920e640a9ef39cbaf87bdfcfd6eb8cde3db', '2021-07-07', '2021-07-07 09:21:48', 1, NULL, 300, '2022-05-03', NULL, 'Sahyadri Institute, Baramati'),
(187, 'x8kMM-Tewk4-4Q1C-r2', 'POOJA RUDRAWAR', 'rudrawarcomputers@gmail.com', '8308711093', '4cef4b96c0e478d1de87e9a8ac3f885ccb2bc85d188540ab4bfe11aa50d82c48', '2021-07-10', '2021-07-10 13:52:52', 1, NULL, 300, '2022-05-06', NULL, 'Rudrawar Computers, Majalgaon'),
(188, 'GnQ7e-nFZDm-A19Z-dF', 'bhairavnath balkrishna jundale', 'bbjundalemcs@gmail.com', '7276799144', 'df36d16f4b4e4a928056cec7d51e5d4e12308a51c17190d0b19946beb738b5d0', '2021-07-10', '2021-07-10 14:15:14', 1, NULL, 300, '2022-05-06', NULL, 'Excel Word Infotech, Laxmi Dahiwali'),
(189, 'Puqzj-7kBDJ-gXZ2-KP', 'Omkar Computer Education', 'mukundchavan2013@gmail.com', '9860170651', 'ac5071adcdb052723098f64709aef04b0b238fba6df15e169ea93421ac216ada', '2021-07-22', '2021-07-12 05:42:44', 1, NULL, 335, '2022-06-22', NULL, 'Omkar Computers, Morgaon_Machine Changed'),
(190, 'dNnwT-qxYxm-2xAH-uA', 'Maruti B Dhotre', 'd.maruti@gmail.com', '9922738252', '5ba5698b42b1a2145735be5af98bf4e9cbb707e5dc0865b9ec8f314efe76467e', '2021-07-12', '2021-07-12 09:10:35', 1, NULL, 365, '2022-07-12', NULL, 'New Machine'),
(191, 'urBxD-5brUH-f1pu-kz', 'Saraswati Computer Institute, Mandangad', 'onlinesaraswati@gmail.com', '7083996676', '8995d61b924ca7844a4831d5a779eecb469a1123a5d789305a79be621a2c64b7', '2021-07-12', '2021-07-12 11:44:49', 1, NULL, 335, '2022-06-12', NULL, 'Machine Changed'),
(192, '6qKBb-2dMXk-1ATM-jK', 'dhiraj shirke', 'dhiraj.shirke@gmail.com', '9890477213', 'dd4c78075bbb92efc638ad3ced56f7d834d8ebb9765597df35955c4d94e27e96', '2021-07-12', '2021-07-12 13:25:52', 1, NULL, 300, '2022-05-08', NULL, 'Shree Comp Creations, Kolad'),
(193, 'etxxt-Byn5c-7tYq-9D', 'pragati software', 'pragatisomoftware.solutions@gmail.com', '7030502010', '7352d9b3e86e68f490fac9f9a9445c79e094a16953b761f29d60e87a9f2f462f', '2021-07-20', '2021-07-13 07:35:49', 1, NULL, 15, '2021-08-04', NULL, 'Pragati software solutions,Chakan_Old Customer'),
(194, 'vGrkW-xNQeg-ggUf-BZ', 'MILIND SARJERA OMANE', '47210152@mkcl.org', '9730966966', '946674f876e358a9c5b9319fa2dea77a0d5711457e35b1f478db553d513c0e29', '2021-07-22', '2021-07-13 10:56:16', 1, NULL, 365, '2022-07-22', NULL, 'Harsh Computers, Supa, Baramati'),
(195, 'VBdcW-9Xn7X-RXnT-1V', 'AAMANTRAN', 'satish1467@yahoo.com', '9730039300', '05a0303f4994b221fa1727464839323076b3f3d83cb3ee02c3c54f8e80b27efc', '2021-07-13', '2021-07-13 11:29:42', 0, NULL, 350, '2022-06-28', NULL, 'AAMANTRAN, Pandharpur _ Machine Formated'),
(196, 'wAqaj-pecmX-4Bmx-Y7', 'Shivaji Shinde', NULL, NULL, NULL, NULL, '2021-07-13 11:52:02', 0, NULL, 8, NULL, NULL, 'Shivaji Shinde'),
(197, 'vu3V9-KKw4m-YD5j-bm', 'Piush  Yadav', 'piush.chandra.chandra@gmail.com', '9811915539', '824cf029bfb7e043eac333a06f720c2eebdac4e981f2bb89895fddf339be3060', '2021-07-13', '2021-07-13 14:04:44', 1, NULL, 365, '2022-07-13', NULL, ''),
(198, 'r8QCx-yE9vz-AuFv-58', 'Dharane Biofuel Pvt Ltd', 'tuljspurmbe@gmail.com', '7206908878', 'f9b33cf7533c3418acf12d207224562be4273c62cbe4f48b77246761377a7ca0', '2021-07-16', '2021-07-16 11:17:38', 1, NULL, 365, '2022-07-16', NULL, 'Pruthvicare Producer Company Limited_Ref. Yogesh Shinde, Phaltan'),
(199, '5AdCY-u2MYA-nGhm-Wt', 'SAI ONLINE SERVICES', 'sujatapatil.sai@gmail.com', '7499351002', 'f2093acb43c5c02cfa0d1c3e8ab9913cc1abed8253b47818e948725906a6d719', '2021-07-18', '2021-07-18 05:44:51', 1, NULL, 365, '2022-07-18', NULL, 'Sai Computers, Parvati, Pune'),
(201, 'y2gPm-qrbCu-QNAj-nh', 'Rupesh', 'ruesh1975@gmail.com', '9221544440', 'b7a3f3643028128115609131f25f6cd99b88d109a99b58852ea714bfb282d75a', '2021-07-22', '2021-07-20 03:12:23', 1, NULL, 300, '2022-05-18', NULL, 'Dnyan Vikas Sanstha, Koparkhairane_LL_Webinar Customer'),
(202, 'ajnUZ-HBVGt-7ecd-kT', 'sahyadri accdamy Rajgurunagar', 'manisha.vishwasrao@gmail.com', '9890033248', '56d0efdafa5d3213c0580ab168c8f7e8c6ae0762434551979dcc65f8a557b609', '2021-07-20', '2021-07-20 06:22:51', 1, NULL, 365, '2022-07-20', NULL, 'Sahyadri Academy, Rajgurunagar_old TLC'),
(203, 'h222d-nwjGc-dE7V-ma', 'Tushar', 'rahitechsolutions.bmt@gmail.com', '7709507773', '2b5e383bb70263b9fceb0ed028b6658af05b8edde622463abb1101c827e5555c', '2021-08-04', '2021-07-20 07:26:33', 1, NULL, 90, '2021-11-02', NULL, 'Sahyadri Infotech MIDC BARAMATI_Old Customer'),
(204, '1212a-F6NnF-AuEQ-4e', 'prashant shrikant vanjule', 'prashant.vanjule20@gmail.com', '7798264150', 'baac79042c69202e074edfefef024ecd5860f0ace9f25286bd6fa19e35ff511c', '2021-07-20', '2021-07-20 11:44:20', 0, NULL, 300, '2022-05-16', NULL, 'Incite Computer Phondaghat Kankawali V S_Prashant Vanjule'),
(205, '63Ad3-TyyXW-ezb5-Pj', 'Sushant Dhondu Borse ', 'sushantborse45@gmail.com', '9137358929', '5cc8203a2c2fc25c448c2a46c7a0f97e287a0ff2e189c494ef96f4da8e5dd94e', '2021-07-22', '2021-07-22 12:06:33', 0, NULL, 30, '2021-08-21', NULL, 'Corporator Mumbai'),
(206, 'Mz1pU-Cgdkk-Nyf7-5W', 'sandip ashokrao kokate', 'sandipkokatevani@gmail.com', '9423969193', 'de72aaf69efa7a563894f90d828d6714190bbbe8e7bc640eb97caeda7b8a2f61', '2021-10-15', '2021-07-23 07:06:45', 0, NULL, 330, '2022-09-09', NULL, 'Perfect computer education, Vani'),
(207, 'a9UFt-q4AMK-NDYr-QM', 'GROW CHEM SOLUTIONS', 'growchemsolutions@gmail.com', '9325775327', '3205703d2f004ee4374c05a046b9c3db2af95ef7ac6e7e76634a05766fb8a174', '2021-07-23', '2021-07-23 11:57:48', 1, NULL, 365, '2022-07-23', NULL, 'Nitin Wadkar Sir, Second (New) Licence'),
(208, 'KtYpK-1gpxk-CtW8-tY', 'Gates Computer Academy, Kudal', NULL, NULL, NULL, NULL, '2021-07-24 09:13:19', 1, NULL, 300, NULL, NULL, 'Gates Computer Academy, Kudal_Comp Changed'),
(209, 'b38hU-wnZEz-Bu2g-gX', 'pranav infotech', 'pranavinfotech5@gmail.com', '9423727747', '49ec914c0a5e724cbda448bf67de4b2112fad8cb48fe092713017e1bde0fdec5', '2021-07-24', '2021-07-24 09:15:16', 1, NULL, 300, '2022-05-20', NULL, 'Pranav infotech, Peharkar Sir_Old Customer'),
(210, 'pp76a-2adAt-dQeK-UM', 'Gates Computer Academy', 'gatescompac@gmail.com', '9420207902', 'db9eacc6cd78f80b4c02f3404fca4c57ff7634a9b63be89b94ee29c4823618e1', '2021-07-25', '2021-07-25 06:36:42', 1, NULL, 300, '2022-05-21', NULL, 'Gates Computer Academy, Kudal_Comp Changed'),
(211, 'zanNk-Dpyrt-MVvg-Dg', 'Ramchandra Kadam', 'ramkadam.kadam1@gmail.com', '9823799224', '09cc6821072213dc71624b2f38680a12c133f69b49d42842597b9905539ccef4', '2021-07-28', '2021-07-28 07:36:55', 1, NULL, 330, '2022-06-23', NULL, 'R K Computer, A/P - Malegaon, Tal - Ardhapur, Dist - Nanded_Old Customer'),
(212, 'VWE67-V5eF9-ancE-Rj', 'pranav sonkusare', 'pranavsonkusare5@gmail.com', '8007875261', '1ee9cfd0f50053e162555d8ced72ea0b4ac7b814c2cd84ce1144c110e7b3f35f', '2021-07-28', '2021-07-28 10:25:31', 1, NULL, 365, '2022-07-28', NULL, 'Creation multimedia institute vfx and animation , Kolhapur - Second Licence'),
(213, 'XVdht-6RUpY-GmkA-hB', 'piush', 'piush.chandra.chandra@gmail.com', '9811915539', '72ede3d7b874cf3cd05f5f2f74338d2afec8ae3e1be3833c71ae50e7c984a267', '2021-07-28', '2021-07-28 10:44:28', 0, NULL, 365, '2022-07-28', NULL, 'Piyush, Delhi'),
(214, 'Dhu7b-Bbrjk-1Xbv-rn', 'Ajinkya Computers', '47210069@mkcl.org', '9921713536', 'b911f5f80737df405f2bf1d8cbfb62683c5a515168686c419e06d32fc62e117b', '2021-07-30', '2021-07-30 05:28:11', 0, NULL, 300, '2022-05-26', NULL, 'Ajinkya Classes, Dhankawadi_Comp Changed'),
(215, 'nd6Y4-ZcRRx-3RxE-EW', 'Jagdish A. Mundhe', 'support@bharat-it.org', '7709842553', 'd833a167de7cbc75eb9f33b24630271c4d9b301fea996144da3314693195e50f', '2021-07-30', '2021-07-30 05:30:39', 1, NULL, 330, '2022-06-25', NULL, 'Jagdish A Mundhe__support@bharat-it.org__Machine Changed'),
(216, 'kchmG-7Vtkz-aUHh-Gf', 'Santosh Lalwani', 'santoshlalvani@gmail.com', '9822132100', 'fc95f85f3742e91ec7c9a387c07b43e5758c41807d7913e1d1faba0f94b1eadd', '2021-07-30', '2021-07-30 09:11:09', 0, NULL, 300, '2022-05-26', NULL, 'Santosh Lalwani_2nd Laptop _ Remaining Days'),
(217, 'H517R-XNcbY-KZ2V-FW', 'ITad Infotech', 'tasnim266@gmail.com', '9028966610', 'dfc6179f4712bbaf89adf4576dbbda2c3eddcdf2d85edb42fdca0a75b6163579', '2021-07-31', '2021-07-31 14:55:33', 0, NULL, 220, '2022-03-08', NULL, 'ITAD Infotech, Shreerampur, Ahemadnagar_Webinar__2000 Customer'),
(218, '8zrMY-Z5Wf4-xmX8-1H', 'Sushant Dhondu Borse ', 'sushantborse45@gmail.com', '9137358929', 'c2bfa61bfdb73d41138f0f6ce48d4c1cdfa6dcc189b34728b3f0e8fca8e9afe4', '2021-08-02', '2021-08-01 08:37:03', 1, NULL, 365, '2022-08-02', NULL, 'Sushant Dhondu Borse_Machine Changed'),
(219, 'BfCrU-HVqjq-UkGx-n6', 'KIRAN KRISHNA JADHAV', '78210426@MKCL.ORG', '9022526789', '5f52c375dc8e6c240a4df4918ff68a9f232787b449363ef88131c70041e72928', '2021-08-02', '2021-08-02 10:40:08', 1, NULL, 365, '2022-08-02', NULL, 'Abacus Computers Murbad Road, Shahad_Old Customer'),
(220, '3hJ5W-GfFPP-6HK6-FJ', 'CHETAN ASHOK SAPALI', 'chetan.sapali@gmail.com', '9145823355', '1e90ad76e9f6cb35417b5fe49ab68e16a54b81e08673a6efee097ca799ce29ca', '2021-08-02', '2021-08-02 12:25:06', 1, NULL, 225, '2022-03-15', NULL, 'Chetan Sapali, Akluj, Malshiras, Solapur_Old Customer'),
(221, '4ffmr-pMRw3-EWUk-n9', 'BAPU VIJAY NAWALE', 'sck6777@gmail.com', '9527411701', 'e3335b209aa279978b84f08065cd1b2c0a05601fdf86302d9d9cc94e3ccab553', '2021-08-05', '2021-08-05 14:34:53', 0, NULL, 300, '2022-06-01', NULL, 'SUNRISE COMPUTER KEDGAON'),
(222, 'uCuHp-5m9P5-BN3K-5M', 'Students Forum', 'students.forum2014@gmail.com', '9145442052', 'adb19bd1258242ea4848779db5973af3bfd655220dc38816f5272f4ba379c3df', '2021-08-06', '2021-08-06 10:27:22', 0, NULL, 8, '2021-08-14', NULL, 'Student Forum, Akola_Temporary Licence'),
(223, 'CZZfq-WDPu4-9HGA-Gu', 'Natioanl Computer Wagholi', 'nce734@gmail.com', '9545458080', '099f9e76a0cc7e387a0aaf8becf8c4163c876795ed5d532b17f284ccc32c309f', '2021-08-11', '2021-08-11 09:29:54', 1, NULL, 300, '2022-06-07', NULL, 'National Computer Wagholi_Old Customer'),
(224, 'PjjmB-Y7g6F-pPqm-px', 'Piyoosh', 'piush.chandra.chandra@gmail.com', '9811915539', '9b63159f7617b82665696dac6812a6e1e160e312433494b0f578935362017770', '2021-08-13', '2021-08-13 09:33:41', 1, NULL, 365, '2022-08-13', NULL, ''),
(225, 'wutYU-WuRa3-Fcea-VF', 'Vishal Patil', '11210114@mkcl.org', '9960536300', '3a53888bb36a3102b88a2e1dc6175122acd0898016a57ccc682c6578ba837e02', '2021-08-17', '2021-08-17 06:09:12', 1, NULL, 280, '2022-05-24', NULL, 'Heramb System ,Sawali, Chalisgaon, Jalgaon_AIO Customer'),
(226, 'a99ZN-DjKhb-KRBt-Rk', 'Azpire Business Services', 'kinsys.services@gmail.com', '9112104555', '41e8fdd1b2397e7f224a221a5e7ecf62a1bce8930af6b536d2fa793b343ab664', '2021-08-27', '2021-08-17 10:13:01', 1, NULL, 30, '2021-09-26', NULL, 'Azpire Technologies_Temp Liccence'),
(227, 'yrXrq-ZuNhZ-eG1v-2H', 'Dinesh Kadam', '39210032@mkcl.org', '9422379262', 'e9c46101ba3f95f7b29dc1db09eee015de83b976f4d62ba394d067a7fd379217', '2021-08-21', '2021-08-21 07:40:08', 1, NULL, 300, '2022-06-17', NULL, 'Status Computers, Kankawali, Sindhudurg_Old Customer'),
(228, 'f12kV-YQXrF-T22q-3Y', 'Students Forum', 'students.forum@gmail.com', '9145442052', 'adb19bd1258242ea4848779db5973af3bfd655220dc38816f5272f4ba379c3df', '2021-08-31', '2021-08-31 15:16:18', 1, NULL, 15, '2021-09-15', NULL, 'Student Forum, Akola_Temporary Licence'),
(229, '5fbG6-kt7mg-9KEZ-x6', 'RAVINDRA WAGHMARE', 'ARYAFOUNDATION18@GMAIL.COM', '7219394222', '9a8832d0f23fdfd40b9035fba0e0fdbd604803d612d12bad1f35d878cee97783', '2021-09-01', '2021-09-01 05:17:08', 1, NULL, 305, '2022-07-03', NULL, 'Pragati Classes Chakan'),
(230, 'BcgHM-PxYx6-3BCu-1j', 'Nitin Zagade', 'nitinzagade.edusoft@gmail.com', '7744906699', '4cffa8b94cdb523e76f6e502dd58c79f36eec0c311506765db8cbd11cb5a0d62', '2021-09-05', '2021-09-05 17:18:32', 0, NULL, 365, '2022-09-06', NULL, ''),
(231, 'N2bE3-zbACJ-Uau3-Np', 'Manish Mahajan', 'mccewin@yahoo.in', '9823589524', '626f8082503ddba8570a22e279dfeea65d60dd5b7a5ff8b5209339b3925f21f4', '2021-09-09', '2021-09-09 09:35:45', 0, NULL, 240, '2022-05-07', NULL, 'Active computers, Aurangabad. Remaining Days 240'),
(232, 'tfe8R-VPrwC-R2RG-6V', 'kalpesh v raoot', 'samaywashim@gmail.com', '9657729108', 'fee250500cd42f749db98d689bda6a5d8025949bbb45bb629f5b63ea6cf9c048', '2021-09-13', '2021-09-13 05:37:14', 1, NULL, 270, '2022-06-10', NULL, 'Samay computer and Coaching classes, Washim - HDD Changed');
INSERT INTO `checkUser` (`id`, `token`, `name`, `email`, `mobile`, `hdId`, `activeAt`, `createdAt`, `status`, `product`, `validity`, `activeTill`, `noComputers`, `remark`) VALUES
(233, 'DmyKx-amkKq-4gTJ-tb', 'Sachin Ghadage', '47210069@mkcl.org', '9921713536', 'b8056c157667bba638c547cfdc9bc5410cb3c7a6886e9d5afa683a92bdcdd150', '2021-09-15', '2021-09-15 08:28:22', 1, NULL, 245, '2022-05-18', NULL, 'Ajinkya Classes, Dhankawadi_Comp Formated'),
(234, 'mAyzg-FGzMc-NKmH-ZG', 'National Computer Wagholi', 'nce734@gmail.com', '9545458080', '2a03cc2410457cc02f1723cdf46b24a8a455267ab510587351f60366731b1eed', '2021-10-04', '2021-09-29 08:44:43', 1, NULL, 270, '2022-07-01', NULL, 'National Computer Wagholi_Old Customer'),
(235, 'z2GTb-Q3N9p-Pzyp-jz', 'National Computer Wagholi_Old Customer', NULL, NULL, NULL, NULL, '2021-09-29 09:05:06', 1, NULL, 270, NULL, NULL, 'National Computer Wagholi_Old Customer'),
(236, 'J4n2Q-pkEBY-93h1-gH', '123', NULL, NULL, NULL, NULL, '2021-09-29 09:06:39', 0, NULL, 270, NULL, NULL, 'National Computer Wagholi_Old Customer'),
(237, 'qZ7h7-cMvYA-a2yy-pv', 'SEVA COM', 'chavangorakh322@gmail.com', '9422261655', '54b9d498516d3976e2da805cdc6bd83d2acc7c264f164d81fd151eb92f592e70', '2021-09-30', '2021-09-29 09:24:39', 1, NULL, 300, '2022-07-27', NULL, 'Gorakh Nandurbar_Old Customer'),
(238, '1dX6E-Er28P-CVqq-7a', 'Maruti', 'test@gmail.com', '9594848572', '4cffa8b94cdb523e76f6e502dd58c79f36eec0c311506765db8cbd11cb5a0d62', '2021-09-29', '2021-09-29 18:41:20', 1, NULL, 365, '2022-09-29', NULL, 'Nitin Zagade_Testing_New Code'),
(239, 'qTFuu-czvay-qCpY-VK', 'Nitin Zagade', 'nitinzagade.edusoft@gmail.com', '7744906699', '4cffa8b94cdb523e76f6e502dd58c79f36eec0c311506765db8cbd11cb5a0d62', '2021-09-29', '2021-09-29 19:30:52', 1, NULL, 365, '2022-09-29', NULL, 'Nitin'),
(240, 'd4HY6-zN1QZ-TQmy-hU', 'Manish Mahajan', 'mccewin@yahoo.in', '9823589524', '3ed079cb7d337a750bc972ac93a124608e53b9398f87659d27af8b93d139e6b5', '2021-09-30', '2021-09-30 06:15:24', 1, NULL, 220, '2022-05-08', NULL, 'Manish Mahajan__Active computers, Aurangabad_Remaining Days'),
(241, 'CVUhd-tTyTg-cU6P-9z', 'GAJENDRA M WADNERKAR', 'gajendra.wadnerkar@gmail.com', '9890531736', '7446946d6b9b239a573043106ba9e0edbc3e506cfdc80c52d41e11690deb896f', '2021-10-07', '2021-10-01 04:51:03', 1, NULL, 300, '2022-08-03', NULL, 'Unique infotech computer institute, Chandur__Old Customer'),
(242, 'XZtmT-j7HBf-nupc-1Q', 'sachin sonawane', 'rncalc@gmail.com', '9623853057', '2407b5f465c9edfa096f9b3e794dbdccb755bab744ef4cb2e322e556cb55dc19', '2021-10-06', '2021-10-02 05:08:38', 1, NULL, 270, '2022-07-03', NULL, 'Aryan Computer Institute, Deola_AIO Customer'),
(243, 'bq7wA-Qk85y-rgN9-nT', 'Nitin Testing', 'nitin@yahoo.com', '7744006699', '4cffa8b94cdb523e76f6e502dd58c79f36eec0c311506765db8cbd11cb5a0d62kljklj', '2021-10-06', '2021-10-06 09:57:03', 1, NULL, 3, '2021-10-09', NULL, 'Nitin Testing'),
(244, 'QJEHf-51DQe-WU23-Vk', 'Nitin_Testing', 'nitinzagade@yahoo.com', '7744906699', '4cffa8b94cdb523e76f6e502dd58c79f36eec0c311506765db8cbd11cb5a0d62988', '2021-10-07', '2021-10-07 03:17:56', 1, NULL, 3, '2021-10-10', NULL, 'Nitin_Testing'),
(245, 'dBcZx-JH6CK-CaYX-j3', 'Nitin', 'nitinzagade@yahoo.com', '7744906699', '4cffa8b94cdb523e76f6e502dd58c79f36eec0c311506765db8cbd11cb5a0d62lifeatsgnr', '2021-10-07', '2021-10-07 04:42:25', 1, NULL, 3, '2021-10-10', NULL, 'test'),
(246, 'gX88F-nPxTz-BQeh-ck', 'Frinds Computer, Kendur', 'alc67210110friend@gmail.com', '9766040669', '152e7184f9e5a7884d56a6383b16c1af7f4634493f904105e17a0480e1e3e597', '2021-10-07', '2021-10-07 04:57:16', 1, NULL, 100, '2022-01-15', NULL, 'Friends Computer, Kendur'),
(247, 'XewqP-A8Unr-77Qu-4X', 'students forum', 'students.forum@gmail.com', '9145442052', 'adb19bd1258242ea4848779db5973af3bfd655220dc38816f5272f4ba379c3df', '2021-10-07', '2021-10-07 10:12:52', 1, NULL, 50, '2021-11-26', NULL, 'Akola Institute Temp '),
(248, 'jcEWN-eAdgt-hwB6-bZ', 'SARTHAK ENTERPRISES', 'sarthakentr17@gmail.com', '8149361234', '33422ed337d1965ddb49349f1083ff92c27f6288d3fc0e3d05fb0dba7b8aad05', '2021-10-08', '2021-10-08 06:37:38', 1, NULL, 180, '2022-04-06', NULL, 'Sarthak Enterprises, Ambegaon, Pune_Old Customer_6 Months Extension'),
(249, 'zQNKK-6RbeX-cZbK-Ev', 'sandip kokate', 'sandipkokatevani@gmail.com', '9423969193', '65eb518eeb6f2ae3b83f55bc47183e0f6a0f9ee5d78f7dd317123fe79b028da0', '2021-10-11', '2021-10-11 15:05:34', 0, NULL, 300, '2022-08-07', NULL, 'Perfect computer education, Vani_Old Customer AIO'),
(250, '9PYFB-YX1Qw-j4Tj-G4', 'Noble Computer Education', 'saiteli96@gmail.com', '9404170109', 'ca83b250b55567c1d52832dbee84c87a42b8b7e0fe12be068248b12401753737', '2021-10-19', '2021-10-19 11:37:42', 1, NULL, 50, '2021-12-08', NULL, 'Noble Computer Education, Kudal_Old Customer'),
(251, 'x58jf-7DCbA-pE9f-G9', 'Nitin Nalage', 'dishashirur@gmail.com', '8329780117', '6c9c1b6b4950136bc710c2e7f41b791f046d06ef274bbed5d3ce9214d530959d', '2021-10-21', '2021-10-21 13:03:07', 1, NULL, 300, '2022-08-17', NULL, 'Disha Computers , Shirur_Old Customer'),
(252, 'Uy3de-CwKxA-az9c-Qh', 'Moh Tasnim Iqbal Shaikh', 'tasnim266@gmail.com', '9028966610', '88d67af59a27b8ffce760d1e7f6e499f63ec3622e543cb1a2227957514722b6f', '2021-10-21', '2021-10-21 15:56:34', 1, NULL, 180, '2022-04-19', NULL, 'ITad Infotech Shreerampur_Old Customer'),
(253, 'DWWBJ-QFv4K-P2dw-Pk', 'BAPU NAWALE', 'sck6777@gmail.com', '8275886777', '76ff6701269fb2f972bb6bff9ef81e78397de819df4a65015c4c9067683b95aa', '2021-10-22', '2021-10-22 12:17:34', 1, NULL, 200, '2022-05-10', NULL, 'SUNRISE COMPUTER KEDGAON_Old Customer'),
(254, 'Ekqn2-kxB34-KB3X-xb', 'SAGAR MHETRE', 'sagarmhetre9194@gmail.com', '9881036731', 'eea8039c533d55ead72b4a01df4a57f8d13b3eb633ac4020fbe19ec428fc86d2', '2021-10-25', '2021-10-25 18:11:58', 1, NULL, 365, '2022-10-25', NULL, '2000 Diwali Offer'),
(255, 'pFwbz-YHB75-vYQr-BG', 'Fashion Hub', 'rahul.gholap06@gmail.com', '9730743278', 'c14b5555635be19227b684e7d8040ee534acb45248254a1d72d91b8830d1e91b', '2021-10-26', '2021-10-26 22:10:35', 1, NULL, 365, '2022-10-26', NULL, '2K Offer'),
(256, 'XwT6e-kw3Uj-16xG-wz', 'Tejraj Shirkande', 'Shortfilmwala.tejraj@gmail.com', '8668249449', '6ac912c99b261a0ce9a7083efccc88a13e8bbfc6e813bad3a5ee28513a2da442', '2021-10-26', '2021-10-26 22:21:48', 1, NULL, 365, '2022-10-26', NULL, '2K Offer'),
(257, 'bHj7v-jDueB-dRpM-X3', 'Samarth Computer, Someshwar Nagar, Baramati_Old Customer', NULL, NULL, NULL, NULL, '2021-10-27 08:31:50', 0, NULL, 120, NULL, NULL, 'Samarth Computer, Someshwar Nagar, Baramati_Old Customer'),
(258, 'tUH1n-QC4PG-4DWu-WG', 'aamantran', 'satish1467@yahoo.com', '9730039300', 'ffd9fb86ea5d83e7b7ecd5a9dc9b66e917e353fd1152cf5978ed68024d910890', '2021-10-28', '2021-10-28 15:07:02', 1, NULL, 270, '2022-07-25', NULL, 'AAMANTRAN, PAndharpur, HDD Changed'),
(259, 'eHf3n-auTXa-pgAe-f7', 'Akshay Shikshan Sanstha Sangli', 'rjere652@gmail.com', '9850890962', 'adb425d3edfd0ebd38309fb64d85a68b1f22139c15d6ca8a961ffbf5dad928d7', '2021-10-30', '2021-10-30 11:43:08', 1, NULL, 180, '2022-04-28', NULL, 'Akshay Shikshan Sansthaa_Sangli Old Customer'),
(260, 'kmXWD-mBku2-FPxZ-Jx', 'Akshar world computer center Mangalwedha', 'ravindrakambale2@gmail.com', '9503095875', 'f9ab47f8c203c385b7ab1bcb822ce9bf8ff1b6c3e7da25d1359f5f4d73ee72a8', '2021-11-13', '2021-11-13 11:19:54', 1, NULL, 180, '2022-05-12', NULL, 'Akshar World Computers, Mangalwedha_Remaining Days'),
(261, 'h3KTE-Bgha7-QzbW-kn', 'Rajendra Kalgaonkar', 'rjkalgaonkar@gmail.com', '9823147011', '7c2939a60825161cd757b8e7b4d46c107a5a1c59a5ad97bf705000890f13411b', '2021-11-15', '2021-11-15 11:12:14', 1, NULL, 200, '2022-06-03', NULL, 'Modern Computer Education, Baramati_Old Customer'),
(262, 'Xfurn-XqgXf-rWEy-Kw', 'Kajal Lahane', 'kajal@edutrots.com', '8149315465', 'fcd32bba2f477a6f39d211b7648441b386dbc1dd9a28d86b021d3c80603c3a49', '2021-11-15', '2021-11-15 17:37:44', 1, NULL, 365, '2022-11-15', NULL, 'Edutrots Advisors Pvt. Ltd., Pashan, Pune_Old Customer'),
(263, 'Fz1kG-cB4Ue-DtRz-7q', 'disha computer institute chinchwad', 'dishachinchwad2018@gmail.com', '9372335502', '08727dfe1fa869f27f4dbad8fc8d1c650d3a5e348643fffbc77143378b3173c8', '2021-11-17', '2021-11-17 14:10:34', 1, NULL, 365, '2022-11-17', NULL, 'Disha Computer Institute, Chinchwad'),
(264, 'tuaQG-1XRu7-yQBg-bV', 'Perfect Computers', 'mandardate@yahoo.com', '9823051302', '0e97d45bd4aed4283fe921f883792714bd59b61790bff6f6d2b4344901c34664', '2021-11-26', '2021-11-18 10:52:20', 1, NULL, 200, '2022-06-14', NULL, 'Mandar Date, Perfect Computers, Aurangabad, Remaining Days'),
(265, 'qV53a-AbByJ-nE9A-F4', 'DHANSHREE COMPUTER INSTITUTE', 'dhanshree.com2012@gmail.com', '9673517920', 'c56296412f113a201c3336cc4988635f5d50b316fdb71b9d40a9fc18f16474fd', '2021-11-18', '2021-11-18 14:55:00', 1, NULL, 200, '2022-06-06', NULL, 'Naresh Vasant Kalaskar, Dhanashree Computers, Bela, Umred, Nagpur_Remaining Days'),
(266, 'tGP1X-bnenC-fVPP-6B', 'Nitin K Wadkar', 'growchemsolutions@gmail.com', '9325775327', '61d35f1a688a6bf3fc6e835261dfe5afd390ddc92958f466edbafafef714f36e', '2021-11-19', '2021-11-19 15:37:13', 1, NULL, 207, '2022-06-14', NULL, 'Nitin Wadkar Sir, Insurance, Computer Formatted'),
(267, 'k7a9v-kcrxJ-AX9z-74', 'rohit raskar', 'gavalanagrofarm@gmail.com', '7790090012', '4eb4a445c542077c7df9001e7b4a4f08450d69b79493de5d7fbd4fe5339577b6', '2021-11-23', '2021-11-23 15:37:09', 1, NULL, 30, '2021-12-23', NULL, 'Gavlan Agro Farm, Temporary Given'),
(268, 'kWZxp-QwZP5-vqdt-vV', 'Komal Madam_Office', 'nitinzagade.edusoft@gmail.com', '7744906699', '658c16060915dce20040739737738496527f49f4fac2bc1c3e7ba9be701f9868', '2021-11-25', '2021-11-25 16:17:00', 1, NULL, 365, '2022-11-25', NULL, 'Komal Madam'),
(269, 'DHxtb-P2awK-BMnz-YP', 'balaji computer', '33210122@gmail.com', '8788148762', '5140c8b93d58351eb72952514063c2ed953ef5367e579a99d605a90c1846944e', '2021-11-26', '2021-11-26 11:24:04', 1, NULL, 250, '2022-08-03', NULL, 'Balaji Computers, Kodoli, Old Customer'),
(270, 'GxmBX-eYaed-yxtc-Qj', 'arati kathe', '19210231@mkcl.org', '8356096026', '0e843718f7fe31cee6394758167a09a45f4e436c8fef8cf0647e0c63ca36d73e', '2021-11-29', '2021-11-29 11:07:01', 1, NULL, 200, '2022-06-17', NULL, 'Siddhivinayak Computer, Kamothe_Old Customer'),
(271, '4PKvJ-Az5jb-KuYA-DQ', 'Supriya Madam', 'user3.compnet@gmail.com', '8669504347', '8650543ae3f5e3e6262135768598059a42638060c58141698646af598573ce0c', '2021-11-29', '2021-11-29 11:44:38', 1, NULL, 60, '2022-01-28', NULL, 'Office_PC'),
(272, '8rXZj-K36Aj-Xr7j-6f', 'priya', 'user6.compnet@gmail.com', '8149173923', '680f4f025cbe8f683da677a7589a32036c064d14b8c62dfe17a9df60dbd273e1', '2021-11-29', '2021-11-29 12:54:50', 1, NULL, 60, '2022-01-28', NULL, 'Office_PC01'),
(273, 'jKfeR-YfrP4-vec5-MK', 'User 2', 'user2.compnet@gmail.com', '8149562923', 'd8265e9429ae1a50f63744c81b20b788d32dd12152e7268239eee6b60cde545b', '2021-11-29', '2021-11-29 12:55:42', 1, NULL, 60, '2022-01-28', NULL, 'Office_PC02'),
(274, '8mA4a-vRy5N-yxmv-Th', 'User 1 ', 'user1.compenet@gmail.com', '8149166923', 'c9ee4b51d8e8c62dc5c842721cbf22973ba5df64290ba8774e9f5d2760c56a01', '2021-11-29', '2021-11-29 12:56:08', 1, NULL, 60, '2022-01-28', NULL, 'Office_PC03'),
(275, 'fkTqb-FEaAq-JBXH-vM', 'Aparna Yadav', 'user5.compnet@gmail.com', '8149215523', '0dc0a877beb005909b1cb4b2852a61c07359f2e531e263d36418c8636404e2d8', '2021-11-29', '2021-11-29 12:56:36', 1, NULL, 60, '2022-01-28', NULL, 'Office_PC04'),
(276, 'fgTbP-xkP1J-uNzV-B2', 'Office_PC05', NULL, NULL, NULL, NULL, '2021-11-29 12:57:02', 0, NULL, 60, NULL, NULL, 'Office_PC05'),
(277, 'xRQ2x-Fqe7P-WRZq-1K', 'CYBER TECH COMPUTER TYPING INSTITUTE', 'cybertechpusesavali@gmail.com', '9921487524', 'e50c1fdb4a93c3862a2eb1ba793ad4bd7be6290fadba49a29dbe2b7b01d36121', '2021-11-29', '2021-11-29 15:46:35', 1, NULL, 30, '2021-12-29', NULL, 'CYBER TECH COMPUTER TYPING INSTITUTE_SAW Customer'),
(278, 'Kf4R7-R6mMC-xBZv-ND', 'Tumsar Computer Institute TCI', 'vijaygkewat@gmail.com', '9860222436', 'fc787157c658f4673557a1916f7d7bf69f6098e609914c7f58a7dada66e42990', '2021-11-29', '2021-11-29 16:00:31', 1, NULL, 200, '2022-06-17', NULL, 'Tumsar Computer Institute, Tumsar, Bhandara_Old Customer'),
(279, 'qgdrJ-vPK8c-QNBj-Ax', 'SUBODH SITARAM KHAIRNAR', 'subkhairnar@gmail.com', '9096340080', '7dac59c72a4306e9f5e9d44f0a964f9181e305206a35475d074b41548af1435a', '2021-12-01', '2021-12-01 17:28:08', 1, NULL, 210, '2022-06-29', NULL, 'Subodh Sitaram Khairnar_HDD Changed'),
(280, 'PFEka-TvKkH-Q4uf-6g', 'ABHISHEK ARVIND KATHE', 'katheabhishek103@gmail.com', '8097100369', 'e9dd71afd974b91dee9e2ce2a26b8a1d9a64c3e528469f5a94f186dfe8ac9782', '2021-12-04', '2021-12-04 14:49:09', 1, NULL, 80, '2022-02-22', NULL, 'SIDDHIVINAYAK COMPUTERS, Webinar Customer'),
(281, 'fFwyq-k5G9T-VEMc-8b', 'Komal Swapnil Khopade', 'komalswapnilkhopade2492@gmail.com', '9356853836', 'b79aa9ab6fc07e898c0bce2f7d343aa1ad08d0552b2d482f56a6b98e2110cc27', '2021-12-08', '2021-12-08 11:34:57', 1, NULL, 60, '2022-02-06', NULL, 'Komal Madam Office PC'),
(282, '4Zb9b-wQpMD-wuWF-ub', 'yogesh shinde', 'yogesh.shinde2011@gmail.com', '9370601010', 'cfbc616c79ba8dff6935e200b1c5b52689b293f16a6cb3bde2b171fb8a92b830', '2021-12-15', '2021-12-15 13:51:56', 1, NULL, 164, '2022-05-28', NULL, 'Computer Changed'),
(283, '8r4Yu-r36WD-qHAv-Gk', 'students forum', 'students.forum2014@gmail.com', '9145442052', 'adb19bd1258242ea4848779db5973af3bfd655220dc38816f5272f4ba379c3df', '2021-12-17', '2021-12-17 16:52:33', 1, NULL, 8, '2021-12-25', NULL, 'Student Forum, Akola_Temporary Licence'),
(284, 'te62a-aRQqm-erwQ-5j', 'ANITA SHAHAJI INGALE', 'ingaleanita7899@gmail.com', '9850684546', '7f1e33c78d2c9567111e5ce97dbc626f31e5b13cc87405f91534514838877861', '2021-12-18', '2021-12-18 15:46:02', 1, NULL, 180, '2022-06-16', NULL, 'Old Customer _ Dnyanshilp Computer & Buetyshiyan Academy, Wade Bolhai'),
(285, 'pHxgW-w6xWJ-ZBkA-zw', 'sandip kokate', 'sandipkokatevani@gmail.com', '9423969193', '15fa495c27c669168ba658ed24bb7b8b224b6081e7429aa43542514bc7795235', '2021-12-20', '2021-12-20 10:38:34', 0, NULL, 230, '2022-08-07', NULL, 'Perfect computer education, Vani_Old Customer AIO'),
(286, 'w3rak-qbG2H-8q5a-DB', 'ITP Computer Education', '34210042@mkcl.org', '9822729442', 'a65e6103da6205e0bb6eea82bed612222a021c6d39760fb15ae52563f9d667a9', '2021-12-24', '2021-12-24 14:04:17', 1, NULL, 365, '2022-12-24', NULL, 'All in One Package'),
(287, 'u4bam-MPFAm-kT9j-yV', 'Nilesh Gore', 'shreegajanancomputers@gmail.com', '9763026502', 'f16a0b1f33c9a14c4f3b18774f8fafd7734fdfb1cc4564aa92259c0606001f52', '2021-12-25', '2021-12-25 10:59:30', 1, NULL, 208, '2022-07-21', NULL, 'Shree Gajanan Computers, Dhad Ta. Dist Buldana - 443106_Old Customer'),
(288, 'y9my8-EYZFr-MKV9-da', 'Rainbow Computers', 'rainbowsaswad@gmail.com', '9822391615', '05d54e943bb377f9a469f85240a6b474316cdb9dd77fc12a27534c46f6c63d4a', '2021-12-30', '2021-12-30 13:06:54', 1, NULL, 136, '2022-05-15', NULL, 'Rainbow Computers, Saswad_Old 2000 Customer'),
(289, 'ZT5gu-CJF28-8CkN-Xz', 'ITP COCMPUTER  EDUCATION', '34210099@mkcl.org', '9766332316', '04a2467db6b42a94e8c3528b6ca3599cb5b19eac0666c11f5e419fd73086ffd9', '2021-12-30', '2021-12-30 16:29:13', 1, NULL, 365, '2022-12-30', NULL, 'ITP Computer Education, Behind Bank of Baroda, Balaji Ward, Chandrapur.'),
(290, 'DeFVX-BNCbB-zBkE-xM', 'Ravindra Katkar', 'omcomputer333r@gmail.com', '7620714779', 'a04dfde0cf9c2e0d8445155714715a117f4ac0dad9fc259ca97ecea1c835d194', '2022-01-01', '2022-01-01 18:01:45', 1, NULL, 176, '2022-06-26', NULL, 'Ravindra Katkar, Om Computer , main road Ghotavade - 416230 _ Old Customer'),
(291, 'Gev4W-HbtHN-GzBb-k1', 'Ashok Dhoke', '34210103@mkcl.org', '8007275291', '6c868ad1a196d60f839f3d42f8c5f43c1820857164628b3b8b9b67e86c1ffdcc', '2022-01-06', '2022-01-06 13:59:54', 1, NULL, 365, '2023-01-06', NULL, 'Insight Computer Education, Durgapur _ All In One Package'),
(292, 'dVNxj-WEvyP-ZJCV-CA', 'Disha computer shirur', 'dishashirur@gmail.com', '9326125252', '585a3a171a8946d9f38f66fa33bbbdd9ead3496bdf254cdc64dfd01b55df2e99', '2022-01-10', '2022-01-10 11:50:05', 1, NULL, 15, '2022-01-25', NULL, 'Disha Shirur_Temp_15 Days'),
(293, 'Tx4Kp-QAkun-fAhd-zK', 'balaji computer', '33210122@mkcl.org', '8788148762', '8a03aa0dfc797b95a85d697fb3ffb509e4d65d147596d79eeef1b3c8b78f5dc1', '2022-01-11', '2022-01-11 11:27:38', 1, NULL, 15, '2022-01-26', NULL, 'Balaji Computer, Kodoli_Temp Licence'),
(294, 'JWWWZ-EEPRK-GFCb-HH', 'Kisan Ramchandra Borate', 'krborate67@gmail.com', '9822454095', '5ea56b30c5444c0fd365e7af735f2b3fc632096497415287970b6f3ff2a30673', '2022-01-11', '2022-01-11 12:22:48', 1, NULL, 365, '2023-01-11', NULL, 'Borate Sir, Dhankawadi_Renewal Token'),
(295, 'VRfBF-pUfjQ-PW6A-uq', 'Balaji Computer Kodoli', 'sarikasandip1909@gmail.com', '8788148762', '58bb17e72dd7a421b09272fe5a62738c8d28656ef5cc84d5541d3329559457d2', '2022-01-20', '2022-01-15 14:34:33', 1, NULL, 10, '2022-01-30', NULL, 'Testing'),
(296, '86Dju-CB1Nq-Ym6F-AC', 'Babasaheb Bhaguji Rohokale', 'a17210211@gmail.com', '9922741737', '0f54d2b5a01f48ede7b7e4620d5393a3583b21d1455161da4b7548f9430d1e0a', '2022-01-18', '2022-01-18 12:49:15', 1, NULL, 113, '2022-05-11', NULL, 'Omkar Computers, A/P - Bhalwani, Tal - Parner, Dist - Ahmednagar_New Token - 113 Days  remaining'),
(297, 'pTD4x-82cdz-RQCR-xD', 'sandip kokate', 'sandipkokatevani@gmail.com', '9423969193', 'ffc8df134d84fe58fd2dc9b5085466f45e4b165f701b065e13b068a7d5f5cbb5', '2022-01-24', '2022-01-24 14:28:53', 1, NULL, 195, '2022-08-07', NULL, 'Perfect computer education, Vani_Old Customer AIO'),
(298, 'QqExQ-74U2T-dy77-dZ', 'sachin maruti desai', 'sachin.desai17@gmail.com', '9822664143', '3aec801ef86c889b64d31ec181d741fa48d0779361be538f7229bc8a7640f434', '2022-01-24', '2022-01-24 17:54:34', 1, NULL, 135, '2022-06-08', NULL, 'Sachin Maruti Desai, Shree Swami Samarth Computer_Remaining Days'),
(299, 'Ze79Q-tETVv-FJHd-RZ', 'sanjay sharma', 'sanjay.9454@rediffmail.com', '7276004800', '427eac25808291739a71cfe3aa96f3d524ff0cf0a0be964483f770512803c2d1', '2022-01-25', '2022-01-25 16:53:27', 1, NULL, 122, '2022-05-27', NULL, 'Sanjay Sharma_MS insurance services_Remaining Date'),
(300, 'VkUTg-JyEmz-U5CP-5Y', 'SHRAVANI INFOTECH', '16210225@MKCL.ORG', '9762532999', 'd0f1df6ff936d2305802b3ef05eb8d87ada6dd35a1c579c9c73c44c925a992c0', '2022-01-27', '2022-01-27 10:49:54', 1, NULL, 60, '2022-03-28', NULL, 'SHRAVANI INFOTECH, Aurangabad, Last Free Pack'),
(301, 'fQmYz-4RhFh-WJhA-xw', 'Madhura Mahendra Chavan', 'madhura.roha@gmail.com', '9271186405', 'd77d7b20dacb3d98a9d16d9f704fddc39024abbd16666cde8f2a41813dd3198a', '2022-01-28', '2022-01-28 15:57:56', 1, NULL, 105, '2022-05-13', NULL, 'Madhura Mahendra Chavan, Roha_Old Customer'),
(302, '2hqb7-XUwJP-e2fQ-mw', 'Success Computer Institute', '47210138@gmail.com', '9746252515', '30dd57aa575019d21668fffc306c90a28efdd89aaaf21af939abeed8dcebcc19', '2022-01-31', '2022-01-31 14:44:48', 1, NULL, 30, '2022-03-02', NULL, 'Sagar Gawali, Success Computers, Katraj_Last Month'),
(303, 'NEba8-PygFn-7eKj-K1', 'Omkar Mishra ', 'creationmultimedia3d@gmail.com', '9225807779', 'f96b3611b09c569d9388b37868ffa0ca52cbbc646b27fe8f548d300fdf19d3d4', '2022-02-01', '2022-02-01 10:44:20', 1, NULL, 145, '2022-06-26', NULL, 'Creation Multimedia Animation & Vfx_Computer Change'),
(304, '7TPmR-Nj862-pVMW-Fv', 'snehal shekhar suryavanshi', 'snehal12696@gmail.com', '7350225049', '8650543ae3f5e3e6262135768598059a42638060c58141698646af598573ce0c', '2022-02-01', '2022-02-01 11:34:48', 1, NULL, 30, '2022-03-03', NULL, 'Snehal Madam Office Staff'),
(305, 'r5mya-HeXaW-dgN7-zb', 'Info-Tech Computer Institute, Akola', '12210084@mkcl.org', '9689603015', '5d4f1bd285f8f4f744a928d0a067d4e5a42963658e3bc20dd265dd35fe736d3f', '2022-02-01', '2022-02-01 19:48:30', 1, NULL, 112, '2022-05-24', NULL, 'Info-Tech Computer Institute, Akola_Computer Changed'),
(306, 'M9M9w-TvX5g-HP5W-77', 'Madhura Mahendra Chavan', 'madhura.roha@gmail.com', '9271186405', 'b3864f874cb1296832b41e75bfc941dd0d3fa106f0004847d08cf1d1cac16f0f', '2022-02-15', '2022-02-15 11:39:37', 1, NULL, 87, '2022-05-13', NULL, 'Madhura Mahendra Chavan_HDD Changed'),
(307, 'uvZy7-Z8TBq-DePh-VN', 'Santosh Kokate', 'a29210011@gmail.com', '7722073562', 'a788d1a626d704cf701112b7e67234419544582ebe5f79e79fa65189fb7e1a61', '2022-02-15', '2022-02-15 12:54:26', 1, NULL, 97, '2022-05-23', NULL, 'Santosh Subhash Kokate_PC Changed'),
(308, '4XvQ7-fTDYv-ACyG-Kt', 'snehal shekhar suryawanshi', 'snehalpatil12696@gmail.com', '7350225049', '2e6b845c61820b68f0a0fc21daf856190504f4f3c6c9a4eb22023d0ee352f800', '2022-02-16', '2022-02-16 14:24:45', 1, NULL, 30, '2022-03-18', NULL, 'snehal shekhar suryavanshi'),
(309, 'm6pzk-5ATR7-BuXz-Bw', 'RAM Computer and Mahaonline E Seva Kendra, Kalwan, Renewal', NULL, NULL, NULL, NULL, '2022-02-22 09:47:29', 0, NULL, 365, NULL, NULL, 'RAM Computer and Mahaonline E Seva Kendra, Kalwan, Renewal'),
(310, 'ckKCY-jb5xC-PrZh-Qr', 'manisha sanjay vishwasrao', 'manisha.vishwasrao@gmail.com', '9890033248', '50deca3e67761d8ba50142df623f6f398e48a7388084a9c7eb5cbfa87d3453e8', '2022-02-25', '2022-02-25 11:23:09', 1, NULL, 365, '2023-02-25', NULL, 'Sahyadri Academy Rajgurunagar_Old TLC'),
(311, '2H2yh-HQruY-p4Q2-nQ', 'igm computer education', 'igmjalgaon@gmail.com', '9822464931', '55f167ea665da03efa12f07dd653028c1cee6568aa450eece579ddfb7a0642b9', '2022-02-25', '2022-02-25 15:38:06', 1, NULL, 91, '2022-05-27', NULL, 'IGM Copmputer Education, Jalgaon_Old Customer'),
(312, 'UKzZC-haT3u-GdNj-fb', 'Rajas Computer', 'rajascomputer1@gmail.com', '9850044979', 'c2d1ec244f37857713abf6829d05ac0c4937bb2b5eb6de16d06c263a57c80324', '2022-02-26', '2022-02-26 15:41:02', 1, NULL, 21, '2022-03-19', NULL, 'RAJAS Computer, Umarkhed, Dist - Yavatmal_Old Customer'),
(313, 'NaG4w-a3T84-9xzH-Wd', 'JAY PARAB', 'ayparab27@gmail.com', '9773526949', 'c01050f1c2f1c86cc08e703ff5632c80ef20a5f5a2d4933db9e862952fd5b4a6', '2022-03-04', '2022-02-28 16:44:34', 1, NULL, 116, '2022-06-28', NULL, 'Rainbow Foundation,  Dahisar East_Old Customer'),
(314, 'GnXqg-WgMw3-5MZJ-4v', 'incite computer', 'prashant.vanjule20@gmail.com', '7798264150', 'e31667857a3256dc5daaa4a66b8c2796ed2135c642ed096098ff96ce80c1d5df', '2022-03-01', '2022-03-01 16:34:14', 1, NULL, 76, '2022-05-16', NULL, 'Prashant Shrikant Vanjule_LaptopFormatted'),
(315, 'Pg7em-w5UyN-1Ehr-g6', 'GIT COMPUTERS', 'gitcomputers@yahoo.com', '8805255888', '7e7abdc28e0c7a15987c17d104ef387beb043821e2f1577b91459e3e0c274fc0', '2022-03-03', '2022-03-03 12:34:23', 1, NULL, 65, '2022-05-07', NULL, 'GIT COMPUTERS_Alkesh Gavit_Computer Changed'),
(316, 'NjFgG-gKgnA-TJqD-Fy', 'Jay Parab_Rainbow Foundation, Dahisar East_Old Customer', NULL, NULL, NULL, NULL, '2022-03-04 12:02:04', 0, NULL, 112, NULL, NULL, 'Jay Parab_Rainbow Foundation, Dahisar East_Old Customer'),
(317, 'cCDeT-8Xbdf-Z9C9-pp', 'Balaji Computers, Kodoli, Old Customer', NULL, NULL, NULL, NULL, '2022-03-08 17:04:53', 0, NULL, 22, NULL, NULL, 'Balaji Computers, Kodoli, Old Customer'),
(318, '61Knh-p6fj2-ab1T-72', 'Dinesh Kapoor', 'vdatechnologies@yahoo.co.in', '8806080091', 'db4339cf319c0228661bde865435051b39ac700490fe9b13e6ce431779503a5f', '2022-03-08', '2022-03-08 17:50:38', 1, NULL, 86, '2022-06-02', NULL, 'Dinesh Kapoor_VDA Technologies_Computer Changed'),
(319, 'GTfq9-CaCQY-ckbb-RZ', 'Harsh Computers', '47210152@mkcl.org', '9730966966', 'e27525bf552290d75c0fa4c95711a57ba09ce4c0a6d68c7b00f2f292d8901aa3', '2022-03-12', '2022-03-12 12:59:34', 1, NULL, 132, '2022-07-22', NULL, 'Harsh Computers, Supa, Baramati_Old Customer'),
(320, 'tcXBZ-XUdu2-Z6QC-1T', 'Dinesh Kadam, Status Computers, Kankawali', NULL, NULL, NULL, NULL, '2022-03-12 19:19:05', 0, NULL, 365, NULL, NULL, 'Dinesh Kadam, Status Computers, Kankawali'),
(321, 'JExXC-MU5Ax-YUff-qU', 'Abhilash Rajesh Malviya', 'kalchuribandhan@gmail.com', '7020284050', '79cfb94bb7da0b58d78ffc8d650c090bf924f7591ed2c2a27d22f63c42f6f8e0', '2022-03-14', '2022-03-14 12:38:51', 1, NULL, 365, '2023-03-14', NULL, 'Abhilash Malviya_Being Kalar, Amrawati'),
(322, 'rfmp7-aQd1b-18RN-TK', 'Kavita Raghav', 'sales@spaceedgetechnology.com', '9971538845', '5347884f1cafff9bee0dac877046145d99dcbc5ceb5eb88dacdf0fc48f72943d', '2022-03-16', '2022-03-16 10:53:27', 1, NULL, 365, '2023-03-16', NULL, 'Abhishek, Delhi'),
(323, 'MF71y-c9w77-QJRa-ZB', 'Rudrawar computers', 'rudrawarcomputers@gmail.com', '9423919663', '4cef4b96c0e478d1de87e9a8ac3f885ccb2bc85d188540ab4bfe11aa50d82c48', '2022-03-16', '2022-03-16 10:56:41', 1, NULL, 365, '2023-03-16', NULL, 'Rudrawar Computers, Majalgaon_Old TLC'),
(324, 'beATE-xHpcc-fc9r-B9', 'Santosh lalwani', 'santoshlalvani@gmail.com', '9822132100', '34398afea21afac8cf5eff3d8de90bb70f0a5616028e9485181139fd29c70d5e', '2022-03-16', '2022-03-16 11:02:22', 1, NULL, 52, '2022-05-07', NULL, 'Santosh Lalwani_2nd Laptop _ Remaining Days'),
(325, 'ZZyeH-5zzry-NTBp-j5', 'Yogesh Shinde', 'yogesh.shinde2011@gmail.com', '9370601010', '1343d56c80eb174bdc82cd9f0dde95aa790f8fb20780da3513930169eef3f6fd', '2022-03-16', '2022-03-16 17:15:28', 1, NULL, 99, '2022-06-23', NULL, 'Yogesh Shinde, Raj Computers, Phaltan_Computer Changed'),
(326, 'XkP7f-8xG32-wmhA-tB', 'MAYURI ALPESH BODKE', 'mayuri.gawande@gmail.com', '8446948202', '0c4438dc2899b65961fc897006a622f8a0434b4a0d6b598aae7ad8ac608c56ee', '2022-03-18', '2022-03-18 15:05:27', 1, NULL, 365, '2023-03-18', NULL, 'Alfabet Computer Education, Narayangaon'),
(327, 'QYjre-pQ9dX-bwVm-KB', 'MEGHA', 'megha@spaceedgetechnology.com', '9354607985', 'b956c87794bf8d4771cf6e2b2d3fce84355b3358f7f6e72a330a7ebad84d4d95', '2022-03-24', '2022-03-22 10:45:12', 1, NULL, 365, '2023-03-24', NULL, 'Abhishek Jha, Delhi'),
(328, '2W6RH-9Nrdb-t2aF-58', 'compnet information  technology', 'user4.compnet@gmail.com', '8668343489', '2e6b845c61820b68f0a0fc21daf856190504f4f3c6c9a4eb22023d0ee352f800', '2022-03-23', '2022-03-23 10:24:41', 1, NULL, 365, '2023-03-23', NULL, 'User 4'),
(329, 'MUAJr-2t4n3-Wz7F-qN', 'LIMRA COMPUTERS', 'limracommlk@gmail.com', '9890141713', 'ed90eaca6c3395b37a4f9fc4d2b54d2e0296358955e79a1144fe1827069f5052', '2022-03-24', '2022-03-23 17:44:32', 1, NULL, 365, '2023-03-24', NULL, 'Limra Computers Malkapur Buldhana'),
(330, 'v2qUQ-A6jpT-bBpp-PJ', 'YOGi COMPUTERS', 'YOGICOM.NET@GMAIL.COM', '9421403610', 'eb084b7b02391af3b4d757e2d6524c5fddaf1feac9280e830f2b875ccf4c1660', '2022-03-24', '2022-03-23 20:18:32', 1, NULL, 365, '2023-03-24', NULL, 'Yogi Computers, Jalkot'),
(331, 'zbP6Q-ykRkJ-tFT3-67', 'Arif Shaikh', 'manmadsam123@gmail.com', '9423284624', 'b0cdcfd9cef5e0873f2d4f48b7a766e8dc738798944fc639b6a80d6b086c8d73', '2022-03-24', '2022-03-24 12:03:24', 1, NULL, 8, '2022-04-01', NULL, 'Arif Shaikh Manmad_Temp Activation'),
(332, '6Dazr-NHGwJ-vtcG-j2', 'Abhishek Jha, Delhi', NULL, NULL, NULL, NULL, '2022-03-24 15:28:34', 0, NULL, 365, NULL, NULL, 'Abhishek Jha, Delhi'),
(333, 'WNCh2-5yzCq-C3Ng-3X', 'ds', NULL, NULL, NULL, NULL, '2022-03-26 20:55:59', 0, NULL, 365, NULL, NULL, 'df'),
(334, 'kC4nu-J4F2e-qCq6-vY', 'Manoj Bhaichad Gujar', 'siddhis_siddhis@yahoo.co.in', '9021888901', '87c54b8b3b7102336f754a1f3f4a5e16fca98e9eef15e95f77bd98464e8dd087', '2022-03-28', '2022-03-27 08:21:23', 1, NULL, 365, '2023-03-28', NULL, 'Siddhis Coaching Classes, Bibwewadi_New Licence'),
(335, 'wmk7e-qGCj9-Zyph-Xd', 'pranali', 'user5.compnet@gmail.com', '7219324027', '680f4f025cbe8f683da677a7589a32036c064d14b8c62dfe17a9df60dbd273e1', '2022-03-28', '2022-03-28 15:04:39', 1, NULL, 365, '2023-03-28', NULL, 'User5'),
(336, 'ZcbU5-gQcTw-ZKXV-z9', 'Santosh Rajaram Kolte', '29210073@mkcl.org', '9890414170', 'f11d35db350aa53b253509666a6868631693b6374066e63eb9fd91d998436a11', '2022-03-29', '2022-03-29 11:39:32', 1, NULL, 365, '2023-03-29', NULL, 'Kolte Computers, Ratnagiri'),
(337, 'zZkty-uQV7K-TKMM-c3', 'Sai Ambrosia Computer Education', '24210040@mkcl.org', '8888359566', '4c89426eaa1b31c9044748c498979df23afdd4568ad24bd9d2d62395a70eeda9', '2022-03-30', '2022-03-30 15:43:03', 1, NULL, 58, '2022-05-27', NULL, 'Sai ambrosia computer Education, Hinganghat_Computer Changed'),
(338, 'e3Wuu-XqUbr-Nkwj-d9', 'Ajinkya Classes', '47210069@mkcl.org', '9921713536', 'f70468f7a61b34499e024c12bdb19cb1d47df4d3e89907191e50804cc1eb3aea', '2022-04-01', '2022-04-01 14:05:13', 1, NULL, 47, '2022-05-18', NULL, 'Ajinkya Classes, Dhankawadi_Comp Formated'),
(339, 'xfe8N-6C2bQ-KWVD-FU', 'Ajinkya Classes, Dhankawadi_Comp Formated', NULL, NULL, NULL, NULL, '2022-04-01 14:05:13', 0, NULL, 47, NULL, NULL, 'Ajinkya Classes, Dhankawadi_Comp Formated'),
(340, 'dengZ-wrVGG-qefF-7n', 'ganesh madhukarrao turak', 'ccecomputer2@gmail.com', '9766136182', 'a27f7bab76b0a6c90f70416d97be8a427052baf061fae09b9b345b21a98a5bcf', '2022-04-02', '2022-04-02 14:19:52', 1, NULL, 92, '2022-07-03', NULL, 'CCIT COMPUTER EDUCATION PULGOAN_CompFormat'),
(341, 'T9KC5-gWRpx-8C3T-CT', 'Akshar World', 'ravindrakambale2@gmail.com', '9503095875', '5f36d14a4850675845ec9146cbda8e63470d32bbba6e1cbac5e39d8500bf632a', '2022-04-02', '2022-04-02 14:34:09', 1, NULL, 346, '2023-03-14', NULL, 'Akshar world computer center Mangalwedha_upto 14-03-2023_Computer Format'),
(342, 'VERm2-1ct2Q-Ha29-q4', 'user2', 'user2.compnet@gmail.com', '8149562923', 'd8265e9429ae1a50f63744c81b20b788d32dd12152e7268239eee6b60cde545b', '2022-04-06', '2022-04-06 09:45:03', 1, NULL, 365, '2023-04-06', NULL, 'user1'),
(343, 'pZNH3-Y7Gh8-6rx4-CF', 'user1', 'user1.compnet@gmail.com', '7558610557', 'c9ee4b51d8e8c62dc5c842721cbf22973ba5df64290ba8774e9f5d2760c56a01', '2022-04-06', '2022-04-06 09:45:38', 1, NULL, 365, '2023-04-06', NULL, 'user2'),
(344, 'zhCYg-Dqbrj-kATa-dT', 'Sai Sigma Computers', 'saisigma27210018k@gmail.com', '9960003479', '8fefaba04a9b02465cc087aff2d6286a4b8f36b34ee1db15a5ff8e34e4a57efa', '2022-04-06', '2022-04-06 10:20:53', 1, NULL, 365, '2023-04-06', NULL, 'Sai Sigma Computers, Narayangaon_New Licence'),
(345, 'FZYA6-PKUqn-ftaC-4z', 'SAI COMPUTER ACADEMY BAVDHAN', 'padmavati.tarate@gmai.com', '9822880765', '262732791449c954cc0fbcda6e07ba3f8cbdc65aeb9624391ab135561f42af7b', '2022-04-06', '2022-04-06 14:03:24', 1, NULL, 54, '2022-05-30', NULL, 'SAI COMPUTER ACADEMY BAVDHAN'),
(346, 'UCdPc-RX4hN-4nwH-kg', 'nidhi computer6s', 'nmundada145@gmail.com', '9422645145', '44240f42fe4874158581afa2d70d89715996322b2df86979454f9615ecfcf5cb', '2022-04-07', '2022-04-07 12:53:39', 1, NULL, 365, '2023-04-07', NULL, 'Nilesh Mundada, Nidhi computers, Beed _ TLC'),
(347, 'ywvwP-Khjk4-m7bK-cn', 'SUNANDA R GOLE', 'gtech06knm@gmail.com', '9987303724', '4a671f3cdc9a291f79f066812091e273422abf45c55fdd5ee43050f728e56d7d', '2022-04-07', '2022-04-07 16:49:21', 1, NULL, 365, '2023-04-07', NULL, 'G-Tech computers , Koparkhairane Navi Mumbai'),
(348, 'Zue1F-cYVAy-GRM8-T7', 'SHRAVANI INFOTECH', '16210225@MKCL.ORG', '9762532999', 'd0f1df6ff936d2305802b3ef05eb8d87ada6dd35a1c579c9c73c44c925a992c0', '2022-04-07', '2022-04-07 17:49:20', 1, NULL, 365, '2023-04-07', NULL, 'SHRAVANI INFOTECH, Aurangabad'),
(349, 'Ddj7c-FX1RN-6ReY-uN', 'Suyash Computer', 'suyash.atc@gmail.com', '9763345333', '490cb2193405f445acfd3b9e59b112586847d61bdbd2537388724e0e24fc74bd', '2022-04-08', '2022-04-08 12:58:50', 1, NULL, 365, '2023-04-08', NULL, 'Suyash Computers Institute, Deola_New Licence'),
(350, 'E6waN-nv522-9hEt-Az', 'Archana Tarawate', 'archana.tarawate@gmail.com', '9372335502', 'f74c82cc3bb5b7d8d30732f8f74559146c76189a4f34ecfb8a38ea4c8090077a', '2022-04-08', '2022-04-08 16:06:11', 1, NULL, 223, '2022-11-17', NULL, 'Disha Computer Institute Chinchwad_Computer Formatted'),
(351, 'ugDpz-4FnFC-A1kA-PK', 'Mahesh Agrawal', 'agrawalmahesh2016@gmail.com', '9422156574', '2ee263a69816063e8a5fa6b6bf6575280fe4616e793c2dffed003b4cbf8fbddc', '2022-04-08', '2022-04-08 17:28:21', 1, NULL, 365, '2023-04-08', NULL, 'Career Computer Banosa POST DARYAPUR, TQ. DARYAPUR_New Licence'),
(352, 'agfya-PNQje-DfAN-EP', 'Santosh Damodhar Malawade', 'smalawade55@gmail.com', '9665575150', 'd3f95b9be980c84b170cafcdefbe1632030663c6224871900e5c75a677085872', '2022-04-08', '2022-04-08 18:02:28', 1, NULL, 330, '2023-03-04', NULL, 'Santosh Damodhar Malawade_Sai Computer_04-03-2022');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminUser`
--
ALTER TABLE `adminUser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkUser`
--
ALTER TABLE `checkUser`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminUser`
--
ALTER TABLE `adminUser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `checkUser`
--
ALTER TABLE `checkUser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=353;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
