-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jul 09, 2024 at 12:38 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `holiday_calendar`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `holidays`
--

INSERT INTO `holidays` (`id`, `name`, `date`, `type`, `created_at`, `updated_at`) VALUES
(1, 'New Year\'s Day', '2024-01-01', 'Optional holiday', '2024-07-09 03:12:10', '2024-07-09 03:12:10'),
(2, 'Lohri', '2024-01-13', 'National holiday', '2024-07-09 03:12:10', '2024-07-09 03:12:10'),
(3, 'Makar Sankranti', '2024-01-14', 'Hinduism', '2024-07-09 03:12:10', '2024-07-09 03:12:10'),
(4, 'Pongal', '2024-01-15', 'Hinduism', '2024-07-09 03:12:10', '2024-07-09 03:12:10'),
(5, 'Guru Govind Singh Jayanti', '2024-01-17', 'Observance', '2024-07-09 03:12:10', '2024-07-09 03:12:10'),
(6, 'Hazarat Ali\'s Birthday', '2024-01-25', 'Optional holiday', '2024-07-09 03:12:10', '2024-07-09 03:12:10'),
(7, 'Republic Day', '2024-01-26', 'National holiday', '2024-07-09 03:12:10', '2024-07-09 03:12:10'),
(8, 'Lunar New Year', '2024-02-10', 'Observance', '2024-07-09 03:12:10', '2024-07-09 03:12:10'),
(9, 'Vasant Panchami', '2024-02-14', 'Hinduism', '2024-07-09 03:12:10', '2024-07-09 03:12:10'),
(10, 'Valentine\'s Day', '2024-02-14', 'Observance', '2024-07-09 03:12:10', '2024-07-09 03:12:10'),
(11, 'Shivaji Jayanti', '2024-02-19', 'Optional holiday', '2024-07-09 03:12:10', '2024-07-09 03:12:10'),
(12, 'Guru Ravidas Jayanti', '2024-02-24', 'Optional holiday', '2024-07-09 03:12:10', '2024-07-09 03:12:10'),
(13, 'Maharishi Dayanand Saraswati Jayanti', '2024-03-06', 'Optional holiday', '2024-07-09 03:12:11', '2024-07-09 03:12:11'),
(14, 'Maha Shivaratri/Shivaratri', '2024-03-08', 'Hinduism', '2024-07-09 03:12:11', '2024-07-09 03:12:11'),
(15, 'Ramadan Start', '2024-03-12', 'Observance', '2024-07-09 03:12:11', '2024-07-09 03:12:11'),
(16, 'March Equinox', '2024-03-20', 'Season', '2024-07-09 03:16:15', '2024-07-09 03:16:15'),
(17, 'Holika Dahana', '2024-03-24', 'Optional holiday', '2024-07-09 03:16:15', '2024-07-09 03:16:15'),
(18, 'Holi', '2024-03-25', 'National holiday', '2024-07-09 03:16:15', '2024-07-09 03:16:15'),
(19, 'Dolyatra', '2024-03-25', 'National holiday', '2024-07-09 03:16:15', '2024-07-09 03:16:15'),
(20, 'Maundy Thursday', '2024-03-28', 'Observance', '2024-07-09 03:16:15', '2024-07-09 03:16:15'),
(21, 'Good Friday', '2024-03-29', 'National holiday', '2024-07-09 03:16:15', '2024-07-09 03:16:15'),
(22, 'Easter Day', '2024-03-31', 'Optional holiday', '2024-07-09 03:16:15', '2024-07-09 03:16:15'),
(23, 'Jamat Ul-Vida', '2024-04-05', 'Optional holiday', '2024-07-09 03:16:15', '2024-07-09 03:16:15'),
(24, 'Chaitra Sukhladi', '2024-04-09', 'Hinduism', '2024-07-09 03:16:15', '2024-07-09 03:16:15'),
(25, 'Ugadi', '2024-04-09', 'Hinduism', '2024-07-09 03:16:15', '2024-07-09 03:16:15'),
(26, 'Gudi Padwa', '2024-04-09', 'Hinduism', '2024-07-09 03:16:15', '2024-07-09 03:16:15'),
(27, 'Ramzan Id/Eid-ul-Fitar', '2024-04-10', 'Muslim', '2024-07-09 03:16:15', '2024-07-09 03:16:15'),
(28, 'Ramzan Id/Eid-ul-Fitar', '2024-04-11', 'National holiday', '2024-07-09 03:16:15', '2024-07-09 03:16:15'),
(29, 'Vaisakhi', '2024-04-13', 'Optional holiday', '2024-07-09 03:16:15', '2024-07-09 03:16:15'),
(30, 'Mesadi / Vaisakhadi', '2024-04-14', 'Optional holiday', '2024-07-09 03:16:15', '2024-07-09 03:16:15'),
(31, 'Ambedkar Jayanti', '2024-04-14', 'National holiday', '2024-07-09 03:16:15', '2024-07-09 03:16:15'),
(32, 'Rama Navami', '2024-04-17', 'National holiday', '2024-07-09 03:16:16', '2024-07-09 03:16:16'),
(33, 'Mahavir Jayanti', '2024-04-21', 'National holiday', '2024-07-09 03:16:16', '2024-07-09 03:16:16'),
(34, 'First day of Passover', '2024-04-23', 'Observance', '2024-07-09 03:16:16', '2024-07-09 03:16:16'),
(35, 'International Worker\'s Day', '2024-05-01', 'Observance', '2024-07-09 03:16:16', '2024-07-09 03:16:16'),
(36, 'Birthday of Rabindranath', '2024-05-08', 'Optional holiday', '2024-07-09 03:16:16', '2024-07-09 03:16:16'),
(37, 'Mothers\' Day', '2024-05-12', 'Observance', '2024-07-09 03:16:16', '2024-07-09 03:16:16'),
(38, 'Buddha Purnima/Vesak', '2024-05-23', 'National holiday', '2024-07-09 03:16:16', '2024-07-09 03:16:16'),
(39, 'Fathers\' Day', '2024-06-16', 'Observance', '2024-07-09 03:16:16', '2024-07-09 03:16:16'),
(40, 'Bakrid/Eid ul-Adha', '2024-06-17', 'National holiday', '2024-07-09 03:16:16', '2024-07-09 03:16:16'),
(41, 'June Solstice', '2024-06-21', 'Season', '2024-07-09 03:16:16', '2024-07-09 03:16:16'),
(42, 'Rath Yatra', '2024-07-07', 'Hinduism', '2024-07-09 03:16:16', '2024-07-09 03:16:16'),
(43, 'Muharram/Ashura', '2024-07-17', 'National holiday', '2024-07-09 03:16:16', '2024-07-09 03:16:16'),
(44, 'Guru Purnima', '2024-07-21', 'Observance', '2024-07-09 03:16:16', '2024-07-09 03:16:16'),
(45, 'Friendship Day', '2024-08-04', 'Observance', '2024-07-09 03:16:16', '2024-07-09 03:16:16'),
(46, 'Independence Day', '2024-08-15', 'National holiday', '2024-07-09 03:16:16', '2024-07-09 03:16:16'),
(47, 'Parsi New Year', '2024-08-15', 'Optional holiday', '2024-07-09 03:16:16', '2024-07-09 03:16:16'),
(48, 'Raksha Bandhan (Rakhi)', '2024-08-19', 'Hinduism', '2024-07-09 03:16:16', '2024-07-09 03:16:16'),
(49, 'Janmashtami', '2024-08-26', 'National holiday', '2024-07-09 03:16:16', '2024-07-09 03:16:16'),
(50, 'Janmashtami (Smarta)', '2024-08-26', 'Observance', '2024-07-09 03:16:16', '2024-07-09 03:16:16'),
(51, 'Ganesh Chaturthi/Vinayaka Chaturthi', '2024-09-07', 'Hinduism', '2024-07-09 03:16:17', '2024-07-09 03:16:17'),
(52, 'Onam', '2024-09-15', 'Hinduism', '2024-07-09 03:16:17', '2024-07-09 03:16:17'),
(53, 'Milad un-Nabi/Id-e-Milad', '2024-09-16', 'National holiday', '2024-07-09 03:16:17', '2024-07-09 03:16:17'),
(54, 'September Equinox', '2024-09-22', 'Season', '2024-07-09 03:16:17', '2024-07-09 03:16:17'),
(55, 'Mahatma Gandhi Jayanti', '2024-10-02', 'National holiday', '2024-07-09 03:16:17', '2024-07-09 03:16:17'),
(56, 'First Day of Sharad Navratri', '2024-10-03', 'Observance', '2024-07-09 03:16:17', '2024-07-09 03:16:17'),
(57, 'First Day of Durga Puja Festivities', '2024-10-09', 'Observance', '2024-07-09 03:16:17', '2024-07-09 03:16:17'),
(58, 'Maha Saptami', '2024-10-10', 'Optional holiday', '2024-07-09 03:16:17', '2024-07-09 03:16:17'),
(59, 'Maha Navami', '2024-10-11', 'Optional holiday', '2024-07-09 03:16:17', '2024-07-09 03:16:17'),
(60, 'Maha Ashtami', '2024-10-11', 'Optional holiday', '2024-07-09 03:16:17', '2024-07-09 03:16:17'),
(61, 'Dussehra', '2024-10-12', 'National holiday', '2024-07-09 03:16:17', '2024-07-09 03:16:17'),
(62, 'Maharishi Valmiki Jayanti', '2024-10-17', 'Optional holiday', '2024-07-09 03:16:17', '2024-07-09 03:16:17'),
(63, 'Karaka Chaturthi (Karva Chauth)', '2024-10-20', 'Hinduism', '2024-07-09 03:16:17', '2024-07-09 03:16:17'),
(64, 'Halloween', '2024-10-31', 'Observance', '2024-07-09 03:16:17', '2024-07-09 03:16:17'),
(65, 'Naraka Chaturdasi', '2024-10-31', 'Optional holiday', '2024-07-09 03:16:17', '2024-07-09 03:16:17'),
(66, 'Diwali/Deepavali', '2024-10-31', 'National holiday', '2024-07-09 03:16:17', '2024-07-09 03:16:17'),
(67, 'Govardhan Puja', '2024-11-02', 'Optional holiday', '2024-07-09 03:16:17', '2024-07-09 03:16:17'),
(68, 'Bhai Duj', '2024-11-03', 'Hinduism', '2024-07-09 03:16:17', '2024-07-09 03:16:17'),
(69, 'Chhat Puja (Pratihar Sashthi/Surya Sashthi)', '2024-11-07', 'Hinduism', '2024-07-09 03:16:17', '2024-07-09 03:16:17'),
(70, 'Guru Nanak Jayanti', '2024-11-15', 'National holiday', '2024-07-09 03:16:17', '2024-07-09 03:16:17'),
(71, 'Guru Tegh Bahadur\'s Martyrdom Day', '2024-11-24', 'Optional holiday', '2024-07-09 03:16:17', '2024-07-09 03:16:17'),
(72, 'December Solstice', '2024-12-21', 'Season', '2024-07-09 03:16:17', '2024-07-09 03:16:17'),
(73, 'Christmas Eve', '2024-12-24', 'Optional holiday', '2024-07-09 03:16:17', '2024-07-09 03:16:17'),
(74, 'Christmas', '2024-12-25', 'National holiday', '2024-07-09 03:16:17', '2024-07-09 03:16:17'),
(75, 'First Day of Hanukkah', '2024-12-26', 'Observance', '2024-07-09 03:16:18', '2024-07-09 03:16:18'),
(76, 'New Year\'s Eve', '2024-12-31', 'Observance', '2024-07-09 03:16:18', '2024-07-09 03:16:18');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_07_09_071647_create_holidays_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
