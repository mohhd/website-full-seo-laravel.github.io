-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2020 at 01:23 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `nama`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Anggrek', 'anggrek', '2020-06-27 01:41:21', '2020-07-08 04:14:39'),
(2, 'Florikultur', 'florikultur', '2020-06-27 01:41:21', '2020-07-08 04:14:59'),
(3, 'Bunga Kertas', 'bunga-kertas', '2020-06-27 02:12:52', '2020-07-08 04:15:47'),
(4, 'Bunga Pagi', 'bunga-pagi', '2020-06-26 20:02:22', '2020-07-08 04:16:11'),
(5, 'Bunga Hias', 'bunga-hias', '2020-06-26 20:07:17', '2020-07-08 04:16:28');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2020_06_27_011321_create_category_table', 1),
(3, '2020_06_27_041423_create_tags_table', 2),
(4, '2020_06_27_112329_create_posts_table', 3),
(5, '2020_06_27_135254_add_new_slug_posts_table', 4),
(7, '2020_06_27_141230_create_post_tag_table', 5),
(8, '2020_06_28_121543_tambah_softdelete_ke_post', 6),
(9, '2014_10_12_100000_create_password_resets_table', 7),
(10, '2020_06_28_141534_tambah_field_user_post', 7),
(11, '2020_06_29_052942_tambah_level_user', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `gambar` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `users_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `judul`, `category_id`, `content`, `gambar`, `created_at`, `updated_at`, `slug`, `deleted_at`, `users_id`) VALUES
(3, 'Ini Adalah judul', 4, '<p>Ini adalah bunga baru</p>', 'public/uploads/posts/15942071352.jpg', '2020-06-27 07:01:05', '2020-07-08 04:18:56', 'ini-adalah-judul', NULL, 1),
(5, 'Ini Adalah bunga 2', 3, '<p>Go ahead and play a bit more with the sample; try to change your configuration as suggested to customize it. And when you are ready to dive a bit deeper into CKEditor 4, you can try the following:</p>\r\n\r\n<ol>\r\n	<li>Check the&nbsp;<a href=\"https://ckeditor.com/docs/ckeditor4/latest/guide/dev_configuration.html\">Setting Configuration</a>&nbsp;article to see how to adjust the editor to your needs.</li>\r\n	<li>Get familiar with&nbsp;<a href=\"https://ckeditor.com/docs/ckeditor4/latest/guide/dev_acf.html\">Advanced Content Filter</a>. This is a useful tool that adjusts the content inserted into CKEditor 4 to the features that are enabled and filters out disallowed content.</li>\r\n	<li><a href=\"https://ckeditor.com/docs/ckeditor4/latest/features/toolbar.html\">Modify your toolbar</a>&nbsp;to only include the features that you need. You can find the useful visual toolbar configurator directly in your editor sample.</li>\r\n	<li>Learn about CKEditor 4 features in the&nbsp;<a href=\"https://ckeditor.com/docs/ckeditor4/latest/features/index.html\">Features Overview</a>&nbsp;section.</li>\r\n	<li>Visit the&nbsp;<a href=\"https://ckeditor.com/docs/ckeditor4/latest/examples/index.html\">CKEditor 4 Examples</a>&nbsp;to see the&nbsp;<strong>huge collection of working editor samples</strong>&nbsp;showcasing its features, with source code readily available to see and download.</li>\r\n	<li>Browse the&nbsp;<a href=\"https://ckeditor.com/cke4/addons/plugins/all\" target=\"_blank\">Add-ons Repository</a>&nbsp;for some additional plugins or skins.</li>\r\n	<li>Use&nbsp;<a href=\"https://ckeditor.com/cke4/builder\" target=\"_blank\">online builder</a>&nbsp;to create your custom CKEditor 4 build.</li>\r\n	<li>Browse the&nbsp;<a href=\"https://ckeditor.com/docs/ckeditor4/latest/guide/index.html\">Developer&rsquo;s Guide</a>&nbsp;for some further ideas on what to do with CKEditor 4 and join the CKEditor community at&nbsp;<a href=\"http://stackoverflow.com/questions/tagged/ckeditor\" target=\"_blank\">Stack Overflow</a>&nbsp;to discuss all CKEditor things with fellow developers!</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://www.facebook.com\" target=\"_blank\">facebook</a></p>', 'public/uploads/posts/15942071683.jpg', '2020-06-27 07:44:49', '2020-07-08 04:19:28', 'ini-adalah-bunga-2', NULL, 1),
(7, 'ini adalah bunga 3', 2, '<p>qwerty</p>\r\n\r\n<p>qwerty</p>\r\n\r\n<p>qwerty</p>', 'public/uploads/posts/15942072014.jpg', '2020-06-28 07:25:22', '2020-07-08 04:20:01', 'ini-adalah-bunga-3', NULL, 1),
(8, 'Ini Adalah bunga 4', 5, '<p>ini konten&nbsp;</p>', 'public/uploads/posts/15942072366.jpg', '2020-06-28 07:39:18', '2020-07-08 04:20:37', 'ini-adalah-bunga-4', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `posts_tags`
--

CREATE TABLE `posts_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `posts_id` int(11) NOT NULL,
  `tags_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts_tags`
--

INSERT INTO `posts_tags` (`id`, `posts_id`, `tags_id`, `created_at`, `updated_at`) VALUES
(2, 5, 2, NULL, NULL),
(3, 3, 1, NULL, NULL),
(5, 5, 1, NULL, NULL),
(6, 6, 2, NULL, NULL),
(7, 7, 1, NULL, NULL),
(8, 7, 2, NULL, NULL),
(10, 8, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `nama`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Bunga', 'bunga', '2020-06-27 04:20:16', NULL),
(2, 'Berita', 'berita', '2020-06-27 04:20:16', '2020-07-08 04:17:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `level` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `level`) VALUES
(1, 'Mohadi', 'moukun8@gmail.com', NULL, '$2y$10$FJJSt3JzFr9S7iwgLArcuuXi/hFtVqVvYnifEibekpEXMxCaUgYZC', 'fVqIGAB2J7yMcI86nSLDIkpZbHG8OILQbQYW4l3OEbbPROlFNDKeoeCf2Wsq', '2020-06-28 07:00:10', '2020-07-08 03:37:34', 1),
(2, 'ivan', 'ivan@gmail.com', NULL, '$2y$10$SAI1UfF7xqzIGEcUwRUmheX/9tp./dAIkgRJBp7zud7SCxAGqx2GG', NULL, '2020-06-28 07:37:49', '2020-06-28 07:37:49', 0),
(9, 'udin2', 'udin@gmail.com', NULL, '$2y$10$G61zJ/GV0yhuHhNEEO5lwOmbJV.LL/6Wwl9M5dqeXNHDIaIIcre1y', NULL, '2020-06-28 23:26:43', '2020-06-28 23:55:36', 0),
(10, 'Admin', 'admin@gmail.com', NULL, '$2y$10$j9NlItJZVThd7WChe8.20.A9gArwEbPOu0Hzq501KPZnBK7PpgRLS', NULL, '2020-07-08 03:37:12', '2020-07-08 03:37:12', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts_tags`
--
ALTER TABLE `posts_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `posts_tags`
--
ALTER TABLE `posts_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
