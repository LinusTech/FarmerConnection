-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2020 at 10:09 PM
-- Server version: 5.7.14
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_farmer_connection`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `billing_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `session_id` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` text COLLATE utf8mb4_unicode_ci,
  `parent` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_slug`, `category_description`, `parent`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Billie Torp DDS', 'Dr. Guiseppe Kautzer', 'In deleniti error nam nihil sapiente atque. Eos laudantium animi eveniet praesentium autem. Dolor dolor nihil voluptatem doloribus repudiandae natus sunt voluptates. Illo vel dolor aperiam molestiae.', 0, '2020-01-01 17:01:08', '2020-01-01 17:01:08'),
(2, 'Arvel Lesch', 'Timmothy Reynolds', 'Error nihil repellat voluptas sed. Officia illum harum nobis quia non. Sed iste sint vitae id vel quisquam veritatis.', 1, '2020-01-01 17:01:08', '2020-01-01 17:01:08'),
(3, 'Rubie Williamson', 'Chyna Flatley', 'Culpa quidem quaerat facilis quae. Voluptas est eaque sed. Enim ad dolor perspiciatis. Rerum minus nulla eius et impedit ullam. Neque sint impedit ut necessitatibus qui aliquid veniam iusto.', 0, '2020-01-01 17:01:08', '2020-01-01 17:01:08'),
(4, 'Jaylon Weber', 'Mrs. Jade Hahn III', 'Eum tempora ipsa hic qui aut consequatur repellat dolore. Perferendis aut possimus veniam vel dolor. Et ex est est in quaerat earum ea.', 0, '2020-01-01 17:01:08', '2020-01-01 17:01:08'),
(5, 'Casper Schowalter', 'Katharina Dickens', 'Et sapiente ipsum et praesentium reiciendis laborum. Alias voluptates tenetur autem temporibus eos eligendi. Perspiciatis eius tempora et voluptas quam vitae.', 1, '2020-01-01 17:01:09', '2020-01-01 17:01:09');

-- --------------------------------------------------------

--
-- Table structure for table `category_post`
--

CREATE TABLE `category_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `reciever_id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city`, `state_id`, `created_at`, `updated_at`) VALUES
(1, 'North Kiana', 4, '2020-01-01 17:01:10', '2020-01-01 17:01:10'),
(2, 'Benedictmouth', 3, '2020-01-01 17:01:10', '2020-01-01 17:01:10'),
(3, 'Wintheisermouth', 1, '2020-01-01 17:01:10', '2020-01-01 17:01:10'),
(4, 'East Rylan', 2, '2020-01-01 17:01:10', '2020-01-01 17:01:10'),
(5, 'New Maeveside', 3, '2020-01-01 17:01:11', '2020-01-01 17:01:11');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `message`, `parent`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 2, 'Tempora sunt repellat eaque. Facilis voluptatibus incidunt dicta rerum mollitia unde. Enim accusantium natus fuga natus ratione.', 0, 0, '2020-01-01 17:01:12', '2020-01-01 17:01:12'),
(2, 1, 1, 'Velit accusamus autem est in. Officiis nisi laudantium nulla asperiores et autem. Et necessitatibus sunt eligendi. Cupiditate tempore nesciunt voluptatem ut fugit rem.', 1, 1, '2020-01-01 17:01:12', '2020-01-01 17:01:12'),
(3, 4, 2, 'Cumque adipisci mollitia eum omnis magnam. Excepturi ipsam unde deleniti quod eos. Voluptatum veniam et odio voluptatum quo. Perspiciatis magni id vel.', 0, 0, '2020-01-01 17:01:12', '2020-01-01 17:01:12'),
(4, 3, 2, 'Doloribus et omnis tenetur quas voluptatibus sapiente. Et asperiores sit laboriosam harum nihil a. Voluptas excepturi magni qui vel temporibus dolore.', 1, 1, '2020-01-01 17:01:12', '2020-01-01 17:01:12'),
(5, 2, 3, 'Deleniti perferendis aliquam rerum aut sequi quibusdam ea. Fugiat voluptatem non consectetur molestiae. Laborum nesciunt fugiat illum vitae rerum magnam nulla.', 1, 1, '2020-01-01 17:01:12', '2020-01-01 17:01:12');

-- --------------------------------------------------------

--
-- Table structure for table `consultant_ratings`
--

CREATE TABLE `consultant_ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `consultant_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `rating` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `consultant_ratings`
--

INSERT INTO `consultant_ratings` (`id`, `consultant_id`, `user_id`, `rating`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 1, '2020-01-01 17:01:11', '2020-01-01 17:01:11'),
(2, 1, 4, 6, '2020-01-01 17:01:11', '2020-01-01 17:01:11'),
(3, 5, 1, 6, '2020-01-01 17:01:11', '2020-01-01 17:01:11'),
(4, 3, 1, 4, '2020-01-01 17:01:12', '2020-01-01 17:01:12'),
(5, 1, 2, 8, '2020-01-01 17:01:12', '2020-01-01 17:01:12');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country`, `created_at`, `updated_at`) VALUES
(1, 'Isle of Man', '2020-01-01 17:01:10', '2020-01-01 17:01:10'),
(2, 'Morocco', '2020-01-01 17:01:10', '2020-01-01 17:01:10'),
(3, 'United Arab Emirates', '2020-01-01 17:01:10', '2020-01-01 17:01:10'),
(4, 'British Virgin Islands', '2020-01-01 17:01:10', '2020-01-01 17:01:10'),
(5, 'Niger', '2020-01-01 17:01:10', '2020-01-01 17:01:10');

-- --------------------------------------------------------

--
-- Table structure for table `expertises`
--

CREATE TABLE `expertises` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expertises`
--

INSERT INTO `expertises` (`id`, `level`, `created_at`, `updated_at`) VALUES
(1, 'Eli', '2020-01-01 17:01:08', '2020-01-01 17:01:08'),
(2, 'Margarett', '2020-01-01 17:01:08', '2020-01-01 17:01:08'),
(3, 'Audra', '2020-01-01 17:01:08', '2020-01-01 17:01:08'),
(4, 'Cydney', '2020-01-01 17:01:08', '2020-01-01 17:01:08'),
(5, 'Jalyn', '2020-01-01 17:01:08', '2020-01-01 17:01:08');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `file_name`, `path`, `extension`, `created_at`, `updated_at`) VALUES
(1, 'vel', 'https://lorempixel.com/640/480/?64648', 'ras', '2020-01-01 17:01:09', '2020-01-01 17:01:09'),
(2, 'quasi', 'https://lorempixel.com/640/480/?25823', 'ppm', '2020-01-01 17:01:09', '2020-01-01 17:01:09'),
(3, 'ea', 'https://lorempixel.com/640/480/?73910', 'latex', '2020-01-01 17:01:09', '2020-01-01 17:01:09'),
(4, 'fugiat', 'https://lorempixel.com/640/480/?47681', 'ahead', '2020-01-01 17:01:09', '2020-01-01 17:01:09'),
(5, 'saepe', 'https://lorempixel.com/640/480/?84989', 'webm', '2020-01-01 17:01:10', '2020-01-01 17:01:10');

-- --------------------------------------------------------

--
-- Table structure for table `file_post`
--

CREATE TABLE `file_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `file_product`
--

CREATE TABLE `file_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `headers`
--

CREATE TABLE `headers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chat_id` bigint(20) UNSIGNED NOT NULL,
  `messgae` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_01_01_173455_create_addresses_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_29_170250_create_countries_table', 1),
(6, '2019_12_30_170311_create_states_table', 1),
(7, '2019_12_31_170325_create_cities_table', 1),
(8, '2019_12_31_170535_create_roles_table', 1),
(9, '2019_12_31_224115_create_categories_table', 1),
(10, '2019_12_31_230439_create_tags_table', 1),
(11, '2019_12_31_232017_create_files_table', 1),
(12, '2019_12_31_234730_create_expertises_table', 1),
(13, '2020_01_01_080837_create_profiles_table', 1),
(14, '2020_01_01_081153_create_post_types_table', 1),
(15, '2020_01_01_081638_create_posts_table', 1),
(16, '2020_01_01_112800_create_comments_table', 1),
(17, '2020_01_01_114257_create_products_table', 1),
(18, '2020_01_01_115855_create_order_status_pivot_table', 1),
(19, '2020_01_01_124028_create_carts_table', 1),
(20, '2020_01_01_130842_create_orders_table', 1),
(21, '2020_01_01_133121_create_category_product_pivot_table', 1),
(22, '2020_01_01_133424_create_file_product_pivot_table', 1),
(23, '2020_01_01_134352_create_post_user_pivot_table', 1),
(24, '2020_01_01_141348_create_ratings_table', 1),
(25, '2020_01_01_143717_create_consultant_ratings_table', 1),
(26, '2020_01_01_171413_create_chats_table', 1),
(27, '2020_01_01_193923_create_payments_table', 1),
(28, '2020_01_01_212602_create_headers_table', 1),
(29, '2020_01_01_214510_create_order_items_table', 1),
(30, '2020_01_01_230847_create_category_post_pivot_table', 1),
(31, '2020_01_01_231716_create_post_tag_pivot_table', 1),
(32, '2020_01_01_234200_create_file_post_pivot_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `cart_id` bigint(20) UNSIGNED NOT NULL,
  `order_status_id` bigint(20) UNSIGNED NOT NULL,
  `addresses_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cart_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_type_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `post_type_id`, `title`, `summary`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Recusandae excepturi sed dignissimos ipsam unde sapiente sequi nostrum.', 'Hic assumenda suscipit eius qui. Ut in fugiat consequuntur eveniet doloribus explicabo. Aut modi modi dolore. Magni veniam magni facilis explicabo perspiciatis dolores.', 'Quia veniam et suscipit. Aut ipsa facere optio est et. Et omnis minus occaecati consectetur aliquam aut fugiat. Quaerat saepe animi rerum ipsa ullam.', 1, '2020-01-01 17:01:09', '2020-01-01 17:01:09'),
(2, 5, 4, 'Debitis ad mollitia repudiandae cumque voluptatem totam.', 'Omnis est incidunt in sequi. Molestias reprehenderit alias in natus aut. Suscipit impedit placeat velit. Enim ut quia nemo laborum rerum modi error deserunt.', 'Quibusdam nemo quibusdam voluptate illo at quod. Repudiandae dolor minima enim nostrum omnis voluptate. Minus aut sed voluptatem cum repellat aliquid ea.', 0, '2020-01-01 17:01:09', '2020-01-01 17:01:09'),
(3, 4, 1, 'Blanditiis voluptatem sed nesciunt atque corporis et aut.', 'Delectus fuga tempora eius voluptas aliquid modi. Inventore possimus harum consequuntur veniam placeat laborum dignissimos. Asperiores vitae aut aut est nam distinctio minus natus.', 'Excepturi iusto sequi ipsam quo minus. Non error deleniti et consequuntur sit laborum.', 1, '2020-01-01 17:01:09', '2020-01-01 17:01:09'),
(4, 3, 4, 'Ea harum eius eveniet aspernatur exercitationem distinctio.', 'Sed repudiandae quasi consequatur hic impedit est. Quia vel dolore est architecto molestiae assumenda nihil. Aliquam voluptatum quibusdam nobis explicabo natus voluptates.', 'Maiores ullam quisquam totam error sed. Dolores eos et voluptatum facere et voluptas atque. Consequuntur commodi facere sed dicta. Sed voluptate maiores error reprehenderit.', 0, '2020-01-01 17:01:09', '2020-01-01 17:01:09'),
(5, 3, 3, 'Corporis recusandae ullam magni.', 'Assumenda et dolores exercitationem voluptatem incidunt. Aut nam rem qui quas officiis magnam. Sunt saepe qui impedit distinctio quia error et. Dicta ut hic neque quam unde.', 'Eum quas vitae temporibus odit. Recusandae minima maxime nam et.', 0, '2020-01-01 17:01:09', '2020-01-01 17:01:09');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_types`
--

CREATE TABLE `post_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_types`
--

INSERT INTO `post_types` (`id`, `post_type`, `created_at`, `updated_at`) VALUES
(1, 'Danial Simonis', '2020-01-01 17:01:09', '2020-01-01 17:01:09'),
(2, 'Prof. Shaniya Ziemann III', '2020-01-01 17:01:09', '2020-01-01 17:01:09'),
(3, 'Vicente Volkman DVM', '2020-01-01 17:01:09', '2020-01-01 17:01:09'),
(4, 'Wilford Sawayn', '2020-01-01 17:01:09', '2020-01-01 17:01:09'),
(5, 'Sylvester Feeney', '2020-01-01 17:01:09', '2020-01-01 17:01:09');

-- --------------------------------------------------------

--
-- Table structure for table `post_user`
--

CREATE TABLE `post_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(12,4) NOT NULL,
  `quantity` int(11) NOT NULL,
  `shipping` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `name`, `description`, `price`, `quantity`, `shipping`, `status`, `created_at`, `updated_at`) VALUES
(1, 5, 'Trey', 'Laboriosam doloremque labore asperiores aut debitis sit. Aut doloremque rerum repudiandae quaerat laudantium. Cumque et officiis deserunt omnis ut.', '3408.0000', 74, 1, 0, '2020-01-01 17:01:11', '2020-01-01 17:01:11'),
(2, 3, 'Reymundo', 'Nobis tempore illum fugit ipsum omnis. Officiis dolorem eaque quisquam rerum. Occaecati voluptas labore commodi error.', '4403.0000', 60, 1, 1, '2020-01-01 17:01:11', '2020-01-01 17:01:11'),
(3, 3, 'Alexandrine', 'Omnis accusantium non facere delectus eum commodi dolores. Laborum laboriosam omnis aliquam tenetur itaque non. Explicabo illum dignissimos nisi illo molestiae accusamus aliquid.', '3434.0000', 9, 1, 0, '2020-01-01 17:01:11', '2020-01-01 17:01:11'),
(4, 1, 'Jalyn', 'Explicabo rerum qui quaerat ducimus ea dolorem est. Facere exercitationem modi nulla iusto. Reprehenderit provident ut dolore sapiente ea aut.', '1578.0000', 3, 0, 0, '2020-01-01 17:01:11', '2020-01-01 17:01:11'),
(5, 5, 'Meggie', 'Culpa saepe quasi ut minima tenetur illo. In neque consectetur in eum aut. Officia quam aut voluptas recusandae officiis rem. Tempore est ut non soluta voluptate sint.', '4161.0000', 71, 1, 1, '2020-01-01 17:01:11', '2020-01-01 17:01:11');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `expertise_id` bigint(20) UNSIGNED NOT NULL,
  `mobile_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `role_id`, `city_id`, `expertise_id`, `mobile_number`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 2, 2, '2502978113266627', 'https://lorempixel.com/640/480/?81252', 0, '2020-01-01 17:01:11', '2020-01-01 17:01:11'),
(2, 1, 3, 4, 1, '6011629326434040', 'https://lorempixel.com/640/480/?86403', 1, '2020-01-01 17:01:11', '2020-01-01 17:01:11'),
(3, 1, 4, 1, 4, '5192361483692862', 'https://lorempixel.com/640/480/?65521', 1, '2020-01-01 17:01:11', '2020-01-01 17:01:11'),
(4, 2, 5, 2, 4, '4916062112634907', 'https://lorempixel.com/640/480/?41260', 0, '2020-01-01 17:01:11', '2020-01-01 17:01:11'),
(5, 4, 3, 3, 2, '4024007125814', 'https://lorempixel.com/640/480/?28539', 1, '2020-01-01 17:01:11', '2020-01-01 17:01:11');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `rating` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `product_id`, `user_id`, `rating`, `created_at`, `updated_at`) VALUES
(1, 2, 5, 7, '2020-01-01 17:01:11', '2020-01-01 17:01:11'),
(2, 2, 4, 6, '2020-01-01 17:01:11', '2020-01-01 17:01:11'),
(3, 5, 3, 10, '2020-01-01 17:01:11', '2020-01-01 17:01:11'),
(4, 5, 5, 2, '2020-01-01 17:01:11', '2020-01-01 17:01:11'),
(5, 4, 5, 9, '2020-01-01 17:01:11', '2020-01-01 17:01:11');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `roles` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `roles`, `display_name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'sed', 'Inventore dignissimos nam qui pariatur consequatur voluptas praesentium.', 'Tempore et accusantium voluptas fugit necessitatibus hic.', 0, '2020-01-01 17:01:10', '2020-01-01 17:01:10'),
(2, 'consectetur', 'Libero eum ullam minima suscipit.', 'Voluptatem in consectetur eligendi dolores ex et.', 1, '2020-01-01 17:01:10', '2020-01-01 17:01:10'),
(3, 'ipsam', 'Quae sequi repudiandae et possimus est dicta voluptatem.', 'Labore occaecati pariatur nihil.', 1, '2020-01-01 17:01:10', '2020-01-01 17:01:10'),
(4, 'blanditiis', 'Sint deserunt suscipit ipsum eos inventore totam.', 'Tempore voluptates omnis sed non est dolores nesciunt.', 1, '2020-01-01 17:01:10', '2020-01-01 17:01:10'),
(5, 'vero', 'Voluptatem ipsum in occaecati eaque dignissimos molestiae.', 'Voluptatem consequatur velit omnis debitis ab.', 1, '2020-01-01 17:01:10', '2020-01-01 17:01:10');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `state`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 'Mississippi', 4, '2020-01-01 17:01:10', '2020-01-01 17:01:10'),
(2, 'Virginia', 5, '2020-01-01 17:01:10', '2020-01-01 17:01:10'),
(3, 'Florida', 5, '2020-01-01 17:01:10', '2020-01-01 17:01:10'),
(4, 'Arizona', 2, '2020-01-01 17:01:10', '2020-01-01 17:01:10'),
(5, 'Idaho', 2, '2020-01-01 17:01:10', '2020-01-01 17:01:10');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag_name`, `tag_slug`, `tag_description`, `created_at`, `updated_at`) VALUES
(1, 'Ulises Pollich', 'Lou Mills', 'Ut quasi quos rerum iure quis. Architecto qui aut distinctio aut magni soluta. Sint modi voluptas ipsa nesciunt aut ut voluptate occaecati. Repellat qui qui a quos cumque.', '2020-01-01 17:01:09', '2020-01-01 17:01:09'),
(2, 'Reyes Morar', 'Mr. Ezequiel Haley PhD', 'Repellendus impedit magni qui et qui provident. Maxime et aut debitis dolorum accusantium cum error. Et maxime et voluptas. Nam velit repellat qui dolor eos nihil similique.', '2020-01-01 17:01:09', '2020-01-01 17:01:09'),
(3, 'Bertha Eichmann', 'Christine Fahey', 'Aliquid quis non perspiciatis et officia dolorem. Quod excepturi omnis et illum.', '2020-01-01 17:01:09', '2020-01-01 17:01:09'),
(4, 'Mrs. Dorris Jakubowski V', 'Violet Mueller', 'Similique sequi nisi recusandae voluptas. Architecto sunt sit placeat rerum molestiae. Corrupti eaque nihil voluptates sed. Corrupti eveniet facilis omnis vitae earum.', '2020-01-01 17:01:09', '2020-01-01 17:01:09'),
(5, 'George O\'Hara', 'Miss Bella Bruen', 'Et perspiciatis ut rerum. Autem aut corrupti et in explicabo quia ut. Voluptatem dolorum eos ipsum assumenda. Voluptatem adipisci perferendis nulla quos voluptatum corporis necessitatibus.', '2020-01-01 17:01:09', '2020-01-01 17:01:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Clay Koch Sr.', 'qhauck@example.com', '2020-01-01 17:01:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'msCFlQIApY', '2020-01-01 17:01:08', '2020-01-01 17:01:08'),
(2, 'Prof. Bradley Schimmel DDS', 'spouros@example.com', '2020-01-01 17:01:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yb9UQWRosc', '2020-01-01 17:01:08', '2020-01-01 17:01:08'),
(3, 'Prof. Wayne Wilderman', 'sporer.susana@example.com', '2020-01-01 17:01:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uq95uKg8C1', '2020-01-01 17:01:08', '2020-01-01 17:01:08'),
(4, 'Lura Hills', 'clare.legros@example.net', '2020-01-01 17:01:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jVqzPqb2Oe', '2020-01-01 17:01:08', '2020-01-01 17:01:08'),
(5, 'Theo Torp', 'dcummerata@example.net', '2020-01-01 17:01:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'A1xIQqFNOl', '2020-01-01 17:01:08', '2020-01-01 17:01:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_post_category_id_foreign` (`category_id`),
  ADD KEY `category_post_post_id_foreign` (`post_id`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_product_category_id_foreign` (`category_id`),
  ADD KEY `category_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chats_sender_id_foreign` (`sender_id`),
  ADD KEY `chats_reciever_id_foreign` (`reciever_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_state_id_foreign` (`state_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `consultant_ratings`
--
ALTER TABLE `consultant_ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `consultant_ratings_consultant_id_foreign` (`consultant_id`),
  ADD KEY `consultant_ratings_user_id_foreign` (`user_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expertises`
--
ALTER TABLE `expertises`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file_post`
--
ALTER TABLE `file_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `file_post_file_id_foreign` (`file_id`),
  ADD KEY `file_post_post_id_foreign` (`post_id`);

--
-- Indexes for table `file_product`
--
ALTER TABLE `file_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `file_product_file_id_foreign` (`file_id`),
  ADD KEY `file_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `headers`
--
ALTER TABLE `headers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `headers_chat_id_foreign` (`chat_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_cart_id_foreign` (`cart_id`),
  ADD KEY `orders_addresses_id_foreign` (`addresses_id`),
  ADD KEY `orders_order_status_id_foreign` (`order_status_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_cart_id_foreign` (`cart_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_post_type_id_foreign` (`post_type_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_post_id_foreign` (`post_id`),
  ADD KEY `post_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `post_types`
--
ALTER TABLE `post_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_user`
--
ALTER TABLE `post_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_user_post_id_foreign` (`post_id`),
  ADD KEY `post_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_foreign` (`user_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_role_id_foreign` (`role_id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`),
  ADD KEY `profiles_city_id_foreign` (`city_id`),
  ADD KEY `profiles_expertise_id_foreign` (`expertise_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_product_id_foreign` (`product_id`),
  ADD KEY `ratings_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `states_country_id_foreign` (`country_id`);

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
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `category_post`
--
ALTER TABLE `category_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `consultant_ratings`
--
ALTER TABLE `consultant_ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `expertises`
--
ALTER TABLE `expertises`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `file_post`
--
ALTER TABLE `file_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `file_product`
--
ALTER TABLE `file_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `headers`
--
ALTER TABLE `headers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `post_types`
--
ALTER TABLE `post_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `post_user`
--
ALTER TABLE `post_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `category_post`
--
ALTER TABLE `category_post`
  ADD CONSTRAINT `category_post_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `category_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chats`
--
ALTER TABLE `chats`
  ADD CONSTRAINT `chats_reciever_id_foreign` FOREIGN KEY (`reciever_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chats_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `consultant_ratings`
--
ALTER TABLE `consultant_ratings`
  ADD CONSTRAINT `consultant_ratings_consultant_id_foreign` FOREIGN KEY (`consultant_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `consultant_ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `file_post`
--
ALTER TABLE `file_post`
  ADD CONSTRAINT `file_post_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `file_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `file_product`
--
ALTER TABLE `file_product`
  ADD CONSTRAINT `file_product_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `file_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `headers`
--
ALTER TABLE `headers`
  ADD CONSTRAINT `headers_chat_id_foreign` FOREIGN KEY (`chat_id`) REFERENCES `chats` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_addresses_id_foreign` FOREIGN KEY (`addresses_id`) REFERENCES `addresses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_order_status_id_foreign` FOREIGN KEY (`order_status_id`) REFERENCES `order_status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_post_type_id_foreign` FOREIGN KEY (`post_type_id`) REFERENCES `post_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_user`
--
ALTER TABLE `post_user`
  ADD CONSTRAINT `post_user_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `profiles_expertise_id_foreign` FOREIGN KEY (`expertise_id`) REFERENCES `expertises` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `profiles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `states`
--
ALTER TABLE `states`
  ADD CONSTRAINT `states_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
