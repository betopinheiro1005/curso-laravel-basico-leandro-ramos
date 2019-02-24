-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 24, 2019 at 04:07 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.11

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
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(10) UNSIGNED NOT NULL,
  `bio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `bio`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Quasi soluta id eos numquam odit ut. Repellat ex autem rerum quidem maxime velit.', '2019-02-24 05:02:17', '2019-02-24 05:02:17', 1),
(2, 'Maxime quo aliquid dolores ratione. Perferendis ratione ut deleniti ut repellat voluptas expedita quos.', '2019-02-24 05:02:17', '2019-02-24 05:02:17', 3),
(3, 'Libero nihil nisi cupiditate dolores.', '2019-02-24 05:02:17', '2019-02-24 05:02:17', 4),
(4, 'Nulla iste ipsa exercitationem et ab non.', '2019-02-24 05:02:17', '2019-02-24 05:02:17', 5),
(5, 'Nulla sunt amet velit impedit a.', '2019-02-24 05:02:17', '2019-02-24 05:02:17', 9),
(6, 'Recusandae quia sit laborum consequuntur vel. Illo ut quas cum animi at.', '2019-02-24 05:02:17', '2019-02-24 05:02:17', 2),
(7, 'Reprehenderit est in quisquam autem a molestiae natus.', '2019-02-24 05:02:17', '2019-02-24 05:02:17', 8),
(8, 'Assumenda autem nostrum saepe quia eos. In non quia fuga ab blanditiis qui.', '2019-02-24 05:02:17', '2019-02-24 05:02:17', 7),
(9, 'Reiciendis error eum est quia fuga sed optio.', '2019-02-24 05:02:17', '2019-02-24 05:02:17', 10),
(10, 'Eos qui dolores sed impedit sunt.', '2019-02-24 05:02:17', '2019-02-24 05:02:17', 6);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `author_email`, `content`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 'uhudson@example.org', 'Totam voluptate voluptatem at corporis reiciendis. Omnis quia incidunt sit nostrum alias optio molestiae. Aut voluptas saepe nihil dolore.', 8, '2019-02-24 05:02:18', '2019-02-24 05:02:18'),
(2, 'victoria.mohr@example.org', 'Ducimus rerum explicabo dicta magnam dolorem ratione. Voluptatem est voluptas reiciendis architecto eum. Deserunt aliquam eos id porro in et sit.', 7, '2019-02-24 05:02:18', '2019-02-24 05:02:18'),
(3, 'seth72@example.org', 'Et cumque et adipisci amet laborum et repudiandae. Assumenda laudantium ipsum cupiditate beatae inventore. Quaerat accusamus est odio molestiae eum.', 5, '2019-02-24 05:02:18', '2019-02-24 05:02:18'),
(4, 'ghalvorson@example.net', 'Voluptas ut omnis dolores consequatur asperiores veniam vel. Minus sit eum neque totam. Unde fugit mollitia vitae vel dolorum.', 31, '2019-02-24 05:02:18', '2019-02-24 05:02:18'),
(5, 'dhartmann@example.org', 'Eius mollitia et eos id modi. Ipsam exercitationem quibusdam sunt id. Labore et quia ut numquam nihil occaecati.', 11, '2019-02-24 05:02:18', '2019-02-24 05:02:18'),
(6, 'okey.wyman@example.org', 'Veniam saepe architecto dicta reprehenderit a vero dolorem. In dolor voluptates sint nostrum optio.', 31, '2019-02-24 05:02:18', '2019-02-24 05:02:18'),
(8, 'antoinette.bashirian@example.org', 'Architecto ullam tempora qui quia. Accusamus omnis tenetur dolorem explicabo qui. Quae nemo sequi at iste libero quas.', 26, '2019-02-24 05:02:19', '2019-02-24 05:02:19'),
(9, 'fstracke@example.com', 'Consequuntur maxime asperiores tenetur similique cumque quo. Omnis eligendi non est.', 1, '2019-02-24 05:02:19', '2019-02-24 05:02:19'),
(10, 'kub.sean@example.net', 'Quia molestiae rerum aliquid non. Quo et sapiente magni quo explicabo quas. Voluptates quas dolorem doloribus sint eum dicta sed natus.', 7, '2019-02-24 05:02:19', '2019-02-24 05:02:19'),
(11, 'kayley62@example.com', 'Totam optio sed sit odit id. Consectetur et velit quia labore.', 3, '2019-02-24 05:02:19', '2019-02-24 05:02:19'),
(12, 'block.maxie@example.org', 'Omnis similique voluptatem rerum eligendi impedit dolorem. Beatae maiores delectus repellat facere nobis dolore amet.', 11, '2019-02-24 05:02:19', '2019-02-24 05:02:19'),
(13, 'dach.gwen@example.com', 'Totam ut et quia corrupti est ut delectus. Fugiat architecto qui quisquam odio. Quaerat sapiente exercitationem ut illum aut cumque.', 27, '2019-02-24 05:02:19', '2019-02-24 05:02:19'),
(14, 'jaydon19@example.net', 'Sed et fugiat enim id blanditiis provident atque dignissimos. Vero magnam id autem et odit officia.', 21, '2019-02-24 05:02:19', '2019-02-24 05:02:19'),
(15, 'okey.koepp@example.com', 'Doloremque aut cupiditate quibusdam itaque voluptatem dolore et. Omnis blanditiis nam dignissimos temporibus est beatae quidem pariatur.', 33, '2019-02-24 05:02:19', '2019-02-24 05:02:19'),
(16, 'berge.aubree@example.net', 'Mollitia adipisci minus doloribus molestiae. Quod molestiae dolorem voluptatem.', 35, '2019-02-24 05:02:19', '2019-02-24 05:02:19'),
(17, 'prosacco.lillian@example.com', 'Sit ut exercitationem officia mollitia aperiam id. Animi harum ea molestias eos quia vitae quia harum. Molestiae placeat iusto et nostrum voluptatibus eum.', 20, '2019-02-24 05:02:19', '2019-02-24 05:02:19'),
(18, 'treva.crona@example.com', 'Voluptas reiciendis ea tempore sed quos. Quae molestias vero et. Sapiente aut quas consequatur est omnis.', 28, '2019-02-24 05:02:19', '2019-02-24 05:02:19'),
(19, 'obie.cole@example.com', 'Molestias nam iure ut rem. Esse dolores fugit deleniti aut deleniti vero voluptas. Laudantium repellendus ut reiciendis dicta repellat officia.', 36, '2019-02-24 05:02:19', '2019-02-24 05:02:19'),
(20, 'vemard@example.com', 'Ut eum ipsam ut eius sit possimus. Magnam recusandae et iusto corporis.', 30, '2019-02-24 05:02:19', '2019-02-24 05:02:19'),
(21, 'osenger@example.net', 'Tempore beatae aut voluptas at et officia. Id ut vel harum possimus dolore voluptatem. Eos maxime fugiat corporis et quia.', 9, '2019-02-24 05:02:19', '2019-02-24 05:02:19'),
(22, 'alang@example.com', 'Voluptatem ut ex molestias earum. Non aut suscipit tenetur fuga et necessitatibus perspiciatis qui.', 1, '2019-02-24 05:02:19', '2019-02-24 05:02:19'),
(23, 'bogisich.yasmin@example.org', 'Id excepturi recusandae aut nihil ut. Totam consequatur dolor et consequatur quisquam non.', 21, '2019-02-24 05:02:19', '2019-02-24 05:02:19'),
(24, 'waelchi.andres@example.net', 'Asperiores accusantium vel id nam maiores. Et nemo saepe eum.', 5, '2019-02-24 05:02:19', '2019-02-24 05:02:19'),
(25, 'cdonnelly@example.net', 'Non voluptatem soluta fuga vel ad quos. Rem sit accusantium eos in.', 34, '2019-02-24 05:02:19', '2019-02-24 05:02:19'),
(26, 'braden52@example.net', 'Nesciunt accusantium explicabo aspernatur expedita. Quis enim blanditiis corrupti nulla consequatur quam.', 12, '2019-02-24 05:02:19', '2019-02-24 05:02:19'),
(27, 'tromp.hayley@example.com', 'Voluptas fuga dolor itaque est. Reprehenderit est corrupti autem dicta nulla totam.', 1, '2019-02-24 05:02:19', '2019-02-24 05:02:19'),
(28, 'jstamm@example.org', 'Autem error praesentium eum ab id. Est sint sint soluta iure modi. Ut corrupti inventore voluptas doloremque alias debitis.', 20, '2019-02-24 05:02:19', '2019-02-24 05:02:19'),
(29, 'jpowlowski@example.com', 'Animi omnis blanditiis et iste nam. Aliquid odio non explicabo. Rem est inventore amet aut dicta eos aliquid.', 3, '2019-02-24 05:02:19', '2019-02-24 05:02:19'),
(30, 'stracke.consuelo@example.com', 'Praesentium rem qui in optio esse id. Non omnis quasi quia repellendus aliquam aut dicta.', 21, '2019-02-24 05:02:19', '2019-02-24 05:02:19'),
(31, 'steuber.mariane@example.net', 'Corrupti voluptatibus quod quae voluptatem. Hic consequatur laboriosam vitae eaque. At nostrum ut aut qui id omnis.', 30, '2019-02-24 05:02:19', '2019-02-24 05:02:19'),
(32, 'mzulauf@example.com', 'Totam numquam maiores aut laborum velit. Non atque necessitatibus illo asperiores. Delectus dolores soluta repudiandae nulla id qui.', 6, '2019-02-24 05:02:19', '2019-02-24 05:02:19'),
(33, 'babbott@example.net', 'Modi a nihil est officiis reiciendis voluptatibus. Nobis doloremque ut aut consequatur et ex ducimus. Non autem et et aspernatur dicta natus.', 11, '2019-02-24 05:02:19', '2019-02-24 05:02:19'),
(34, 'clifford.steuber@example.org', 'Dignissimos voluptas et at quaerat porro adipisci. Temporibus quia delectus doloribus rerum perspiciatis. Blanditiis quo autem necessitatibus hic omnis voluptatem facilis.', 5, '2019-02-24 05:02:19', '2019-02-24 05:02:19'),
(35, 'leonard.jaskolski@example.org', 'Et quis doloremque et facere. Accusantium necessitatibus et ut accusantium esse est natus.', 30, '2019-02-24 05:02:19', '2019-02-24 05:02:19'),
(36, 'annie.wuckert@example.net', 'Ipsum necessitatibus eum iure est minima corporis. Libero eius sint et. Illum sequi mollitia voluptas quibusdam consequatur nihil.', 5, '2019-02-24 05:02:19', '2019-02-24 05:02:19'),
(37, 'lilian.oconner@example.net', 'Dolorem voluptas et et voluptas temporibus voluptatibus sed. Minima dicta perferendis ut et. Aut ut sed pariatur voluptates impedit sint.', 32, '2019-02-24 05:02:19', '2019-02-24 05:02:19'),
(38, 'wmoore@example.org', 'Quibusdam doloribus non alias incidunt dolores molestiae. At ducimus maiores et temporibus animi labore. Accusantium rerum fuga a tenetur.', 32, '2019-02-24 05:02:19', '2019-02-24 05:02:19'),
(39, 'clotilde30@example.com', 'Facilis corrupti voluptatem amet fugit libero. Aut explicabo sunt minima est.', 7, '2019-02-24 05:02:20', '2019-02-24 05:02:20'),
(40, 'kaden67@example.net', 'Et dolorem quia voluptatem. Voluptatem iusto fuga facere tenetur. Nesciunt ut iste magni unde dignissimos cumque architecto.', 32, '2019-02-24 05:02:20', '2019-02-24 05:02:20'),
(41, 'gparker@example.com', 'Sunt omnis repellat exercitationem accusantium rerum. Eos accusantium enim quia impedit dignissimos molestiae dignissimos.', 27, '2019-02-24 05:02:20', '2019-02-24 05:02:20'),
(42, 'dietrich.glennie@example.net', 'Dolore distinctio facilis ut debitis pariatur qui sunt culpa. Voluptas et nihil quo est iure nemo. Ex ea corrupti sunt laudantium qui alias aut.', 33, '2019-02-24 05:02:20', '2019-02-24 05:02:20'),
(43, 'pollich.dave@example.com', 'Optio laudantium corrupti eum consequuntur magni harum quae. Ut eius ea magnam earum. Sapiente dolores incidunt aut vel quia laboriosam.', 12, '2019-02-24 05:02:20', '2019-02-24 05:02:20'),
(44, 'dakota72@example.com', 'Dolores excepturi corrupti eius facere recusandae autem. Voluptatem non quia distinctio velit.', 3, '2019-02-24 05:02:20', '2019-02-24 05:02:20'),
(45, 'virgie.walker@example.com', 'Dolore et voluptatem molestiae aspernatur non nam. Numquam maxime natus sapiente delectus. Molestias expedita quidem praesentium reiciendis quia voluptas sit blanditiis.', 3, '2019-02-24 05:02:20', '2019-02-24 05:02:20'),
(46, 'ubaldo.macejkovic@example.com', 'Et error debitis reprehenderit ipsam veniam minus distinctio. Vel impedit veritatis perspiciatis. Sunt et eos a est neque.', 31, '2019-02-24 05:02:20', '2019-02-24 05:02:20'),
(47, 'feeney.dewitt@example.org', 'Itaque excepturi possimus sapiente debitis ipsam consectetur placeat. Sed dolorum distinctio molestias ducimus. Id ut ipsa dicta.', 8, '2019-02-24 05:02:20', '2019-02-24 05:02:20'),
(48, 'hintz.michaela@example.org', 'Molestias rerum totam consequatur et. Ab tempora cupiditate ab perspiciatis sed. Quas repellat occaecati qui eos.', 30, '2019-02-24 05:02:20', '2019-02-24 05:02:20'),
(49, 'towne.ewald@example.net', 'Iure sed harum nihil incidunt ipsam sunt sequi. Quisquam quas est non sit excepturi in ex.', 22, '2019-02-24 05:02:20', '2019-02-24 05:02:20'),
(50, 'romaine87@example.org', 'Rem voluptatum est et ut rerum. Nulla quia dolores accusantium commodi facilis vero sequi. Unde vel suscipit at pariatur ad aut.', 12, '2019-02-24 05:02:20', '2019-02-24 05:02:20'),
(52, 'schmitt.franco@example.net', 'Id natus ut maxime sed. Perferendis iure molestiae qui ipsa. Iusto tempore omnis odio.', 36, '2019-02-24 05:02:20', '2019-02-24 05:02:20'),
(54, 'ccorkery@example.com', 'Neque maiores totam dolorem totam est molestiae et. Quia accusantium consectetur maxime et. Ut quod ratione atque tempora nihil odio ea.', 34, '2019-02-24 05:02:20', '2019-02-24 05:02:20'),
(55, 'willis.rempel@example.net', 'Consequatur quia sed incidunt tempora nihil. Perferendis soluta nostrum vel consequatur quo consequatur. Et soluta cupiditate aperiam blanditiis eos et sunt.', 31, '2019-02-24 05:02:20', '2019-02-24 05:02:20'),
(56, 'myrna30@example.com', 'Quam blanditiis dicta est neque laboriosam voluptatem tenetur earum. Cum aut est autem dolore facilis explicabo similique.', 32, '2019-02-24 05:02:20', '2019-02-24 05:02:20'),
(57, 'dewayne.ohara@example.net', 'Id voluptatem rem possimus molestiae et aut et est. Quis deleniti maiores reiciendis molestiae et. Consequatur laudantium tempora consequatur optio atque quos.', 30, '2019-02-24 05:02:20', '2019-02-24 05:02:20'),
(58, 'albert13@example.net', 'Laboriosam sit ipsum vero et. Consectetur quibusdam repellendus iusto distinctio.', 10, '2019-02-24 05:02:20', '2019-02-24 05:02:20'),
(59, 'qstreich@example.net', 'Odio illo distinctio veniam recusandae vel et. Quae quia modi a ut. Quis aut non velit maiores molestias qui.', 34, '2019-02-24 05:02:20', '2019-02-24 05:02:20'),
(60, 'uleffler@example.org', 'Quae libero dolorem incidunt natus. Deserunt et ipsa porro.', 9, '2019-02-24 05:02:20', '2019-02-24 05:02:20'),
(61, 'carolyne56@example.com', 'Sint sed exercitationem atque quia. Qui doloribus similique et aperiam.', 22, '2019-02-24 05:02:20', '2019-02-24 05:02:20'),
(62, 'vicente60@example.com', 'Labore placeat sint omnis hic quibusdam eligendi consequatur. Sunt dolores id nam harum.', 23, '2019-02-24 05:02:20', '2019-02-24 05:02:20'),
(63, 'miller.marques@example.org', 'Quas et quos est ut exercitationem aspernatur aperiam. Culpa quia qui sed quod. Dicta id ut dolores est corrupti architecto veritatis.', 3, '2019-02-24 05:02:20', '2019-02-24 05:02:20'),
(64, 'runolfsdottir.katelynn@example.com', 'Id sint ipsa et neque labore est omnis nam. Expedita est dolorem reiciendis atque consectetur consequatur. Enim dolore architecto ex necessitatibus et non consequatur.', 4, '2019-02-24 05:02:20', '2019-02-24 05:02:20'),
(65, 'catherine72@example.com', 'Sit odit eaque ut et in sequi quia. Rerum aut rerum impedit iusto facilis. Impedit vel voluptatum et modi.', 21, '2019-02-24 05:02:20', '2019-02-24 05:02:20'),
(66, 'thompson.wilfred@example.net', 'Ipsa corrupti et reiciendis exercitationem aliquam autem. Tempore id aut nobis ipsa tempora doloribus culpa.', 11, '2019-02-24 05:02:20', '2019-02-24 05:02:20'),
(67, 'pstracke@example.net', 'Sunt corporis excepturi sit. Velit hic adipisci omnis est laboriosam. Est suscipit perspiciatis et voluptatem.', 16, '2019-02-24 05:02:20', '2019-02-24 05:02:20');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_02_22_042912_create_posts_table', 1),
(4, '2019_02_22_043021_create_comments_table', 1),
(5, '2019_02_22_044010_create_authors_table', 1),
(6, '2019_02_22_044234_add_author_id_to_posts', 1),
(7, '2019_02_22_211703_add_user_id_remove_name_email_from_authors', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `created_at`, `updated_at`, `author_id`) VALUES
(1, 'Aut velit totam doloribus aperiam tempore.', 'Et qui iusto ut rem repellat. Sed placeat facere rem illo laboriosam et qui vel. Ex adipisci sunt et praesentium velit quas tenetur. Dicta nam modi quidem mollitia.', '2019-02-24 05:02:17', '2019-02-24 05:02:17', 8),
(2, 'Ex doloremque quisquam pariatur explicabo.', 'Est at adipisci molestiae voluptatem non. Impedit fugiat sapiente occaecati quod et voluptatum rem. Recusandae deleniti cumque inventore aut. Ea explicabo sit voluptatibus sunt quas.', '2019-02-24 05:02:17', '2019-02-24 05:02:17', 8),
(3, 'Illum est omnis distinctio molestiae.', 'Aut vero doloremque dolores rerum et necessitatibus dolore. Sit debitis id recusandae nihil. Et eaque accusantium distinctio minus. Architecto voluptas assumenda ut unde ad iure molestiae. Sit autem ullam accusamus sint aspernatur aut nulla perspiciatis. Illum eveniet vel sequi illum provident optio quaerat magnam.', '2019-02-24 05:02:17', '2019-02-24 05:02:17', 6),
(4, 'Ea culpa nemo tenetur autem.', 'Sint neque eius facilis animi eius ea. Quidem sunt aut ipsum est quidem. Ea omnis cupiditate et qui culpa. Est blanditiis id ratione nostrum et. Eaque eveniet vitae explicabo placeat nemo qui itaque. Aperiam quia veritatis est nesciunt placeat reiciendis ipsa.', '2019-02-24 05:02:17', '2019-02-24 05:02:17', 10),
(5, 'Aut sapiente et saepe.', 'Provident ipsam vitae et a. Ut vel sunt sunt totam omnis illum. Asperiores consequatur excepturi neque quos est. Ut ab eum et velit. Dolorum et nam odio repudiandae. Dolores est fugiat ab asperiores.', '2019-02-24 05:02:17', '2019-02-24 05:02:17', 10),
(6, 'Esse delectus ducimus sint facilis ea.', 'Possimus quo adipisci esse rem. Ducimus beatae enim dolores. Assumenda nesciunt voluptatum voluptates hic mollitia. Consequatur earum velit minus doloribus recusandae.', '2019-02-24 05:02:17', '2019-02-24 05:02:17', 2),
(7, 'Sed debitis voluptas harum.', 'Expedita quos eveniet omnis non ratione. Veritatis aut et dolor iste aut. Sit et qui iure est. Eaque ut culpa amet perferendis dolores quidem voluptatem. Aut minus facere ratione iure facilis incidunt totam temporibus. Ut aut earum quibusdam qui voluptas unde.', '2019-02-24 05:02:17', '2019-02-24 05:02:17', 7),
(8, 'Sequi qui est laboriosam.', 'Voluptatem quis autem voluptatem dolor. Dolores aspernatur sunt omnis fugit id. In quibusdam sint illo id similique. Laudantium excepturi aut velit aut id repellat quos. Doloremque aliquam nemo error illum recusandae consequatur a quis.', '2019-02-24 05:02:17', '2019-02-24 05:02:17', 10),
(9, 'Reiciendis qui quo et molestias.', 'Sunt vitae dolores velit distinctio. Cumque consequatur laborum eaque aut blanditiis non. Tenetur amet iste quibusdam consequatur.', '2019-02-24 05:02:17', '2019-02-24 05:02:17', 10),
(10, 'Aliquid deleniti voluptate est nihil voluptates.', 'Eum qui et minima iste deleniti quo voluptas. Id aut ad harum excepturi. Mollitia sunt culpa ipsam rerum cumque quaerat. Ad et natus quam odio.', '2019-02-24 05:02:17', '2019-02-24 05:02:17', 5),
(11, 'Quod cum et.', 'Impedit eum nihil ea optio rerum. Qui voluptate consequatur ea architecto dolores corrupti magni. Expedita rerum ut voluptatem et in non et. Quis consequatur perferendis ipsum possimus vero quis eius et. Asperiores et repellendus perspiciatis omnis quo maiores molestiae.', '2019-02-24 05:02:17', '2019-02-24 05:02:17', 2),
(12, 'Et officia est harum quidem.', 'Ea molestias officia veniam non. Fugit suscipit cupiditate facilis eos eaque ipsa aperiam rerum. Iusto repellat non excepturi hic corrupti aperiam. Adipisci voluptatibus eos minus. Qui doloribus aut impedit ex magni necessitatibus. Velit a hic reiciendis distinctio.', '2019-02-24 05:02:17', '2019-02-24 05:02:17', 7),
(13, 'Quo eveniet consequuntur saepe.', 'Occaecati et deserunt provident laudantium iure ullam accusamus asperiores. Tempora facere totam eaque provident ut ut accusantium. Voluptatem itaque aut quam dignissimos rem.', '2019-02-24 05:02:17', '2019-02-24 05:02:17', 8),
(14, 'Sapiente laudantium voluptatibus eos et.', 'Voluptas non molestiae itaque. Velit adipisci non omnis eius est dicta natus. Temporibus nam rerum ipsam. Amet quisquam beatae id et.', '2019-02-24 05:02:17', '2019-02-24 05:02:17', 4),
(16, 'Nemo blanditiis fuga dolorem.', 'Incidunt eum vero voluptatibus pariatur laborum illo dolor. Molestias ipsa corrupti qui dolores beatae expedita. Eveniet velit nisi qui facere dicta ut velit. Similique sit ut neque odit deleniti eligendi voluptates quae.', '2019-02-24 05:02:18', '2019-02-24 05:02:18', 4),
(18, 'Doloribus omnis expedita ut.ALTERADO', 'Delectus sunt voluptatum asperiores ut expedita pariatur ut enim. Nam error asperiores mollitia tempore qui nobis sed. Laborum odit tenetur quasi optio. Placeat et aut voluptas nesciunt. Sit dolores porro sed velit fugit.', '2019-02-24 05:02:18', '2019-02-24 05:55:03', 3),
(19, 'Modi id ut autem.', 'Facere officia est adipisci non omnis quia laborum. Autem necessitatibus ex eius ea vero iste. Quia voluptates reiciendis qui et repellendus fugiat et porro. Sed velit ducimus sed totam.', '2019-02-24 05:02:18', '2019-02-24 05:02:18', 7),
(20, 'Vel amet sed expedita sit.', 'Rem et molestiae cupiditate et sequi omnis. Fuga consectetur placeat tempora cum. Occaecati eaque rerum magni natus. Sit explicabo consequatur facilis doloremque veritatis consequuntur quos ut.', '2019-02-24 05:02:18', '2019-02-24 05:02:18', 3),
(21, 'Ex consectetur eveniet.', 'Eos laboriosam ut sed cumque quo autem. Voluptatum sequi illum ea accusamus delectus sunt. Sed inventore neque veniam vero. Veniam inventore placeat delectus distinctio ut fuga suscipit.', '2019-02-24 05:02:18', '2019-02-24 05:02:18', 8),
(22, 'Nihil quam sit reiciendis.', 'Aperiam voluptatem eveniet labore fugiat qui animi. Autem amet aspernatur debitis molestiae odio est laudantium quia. Nisi voluptatem eum quisquam. Et blanditiis at ut corrupti ea perspiciatis.', '2019-02-24 05:02:18', '2019-02-24 05:02:18', 10),
(23, 'Expedita possimus quas enim facilis.', 'Quaerat et eum accusantium earum porro autem sit. Rerum nisi soluta natus molestias. Doloremque quis ea et id. Sit aperiam dignissimos ratione enim consectetur voluptatum dolor ut. Dolores voluptas sit ut est sint expedita iste.', '2019-02-24 05:02:18', '2019-02-24 05:02:18', 10),
(24, 'Dignissimos voluptatem harum quia.', 'Doloribus sint perferendis voluptatem. Quaerat dolor alias quaerat minima reiciendis veritatis. Quidem architecto et quas nobis. Reiciendis tempore rerum possimus quam. Ipsum aut voluptatem hic dolorum inventore. Voluptatum dicta ratione perferendis.', '2019-02-24 05:02:18', '2019-02-24 05:02:18', 10),
(25, 'Neque alias est magnam.', 'Nihil modi dignissimos adipisci quasi possimus. Aliquid quisquam corrupti commodi qui eligendi qui labore. Pariatur corporis cumque commodi. Tenetur esse nisi tempora omnis quod magni voluptas mollitia.', '2019-02-24 05:02:18', '2019-02-24 05:02:18', 7),
(26, 'Excepturi quia et blanditiis.', 'Voluptates est dolorem non sunt quia dolorem adipisci a. Possimus eos tempora quidem exercitationem quasi. Velit doloribus qui quidem alias rerum nemo. Et consequatur et animi culpa beatae eveniet exercitationem est. Omnis qui harum voluptatem quo iusto fugiat.', '2019-02-24 05:02:18', '2019-02-24 05:02:18', 9),
(27, 'Impedit quo est voluptatem et.', 'Autem maxime dignissimos iste ut. Sit at laboriosam et modi magni qui vel. Dolores debitis ut enim odio. Et vitae accusamus harum non tempora ut.', '2019-02-24 05:02:18', '2019-02-24 05:02:18', 8),
(28, 'Tempora dolores quis cupiditate.', 'Recusandae qui et autem et. Voluptas voluptas ipsam quo atque ipsam corrupti. Repellat asperiores ad porro est repellendus quam. Hic veritatis et eos ut. Sed inventore ut repudiandae magni.', '2019-02-24 05:02:18', '2019-02-24 05:02:18', 4),
(29, 'Omnis odio ipsum eligendi.', 'Impedit assumenda quas cum. Quibusdam hic repellat sapiente ut tenetur rerum. Hic molestiae quos aut ex consequatur. Voluptatum velit sunt neque est.', '2019-02-24 05:02:18', '2019-02-24 05:02:18', 3),
(30, 'Perspiciatis qui et doloribus error.', 'Aut provident ea nesciunt quod distinctio illum debitis quia. Non possimus ratione at corporis in saepe vel. Qui quaerat libero excepturi soluta asperiores in. Consequuntur rem et dolores accusamus enim adipisci. Quod et modi iusto quo.', '2019-02-24 05:02:18', '2019-02-24 05:02:18', 6),
(31, 'Cumque autem qui.', 'At beatae quia voluptatem sed quia. Ab error tenetur incidunt et et. Dolore voluptates beatae optio et suscipit. Dolor illo consequuntur voluptate. Accusantium quo possimus quos architecto ut adipisci nostrum. Similique sit ipsum omnis voluptas id.', '2019-02-24 05:02:18', '2019-02-24 05:02:18', 1),
(32, 'Blanditiis et non veritatis.', 'Quo odit et reprehenderit occaecati id. Quod ad sit dolorem iure. Fugiat et corrupti aperiam sunt veniam dicta aspernatur vero. Sunt mollitia sunt velit sit necessitatibus iste dicta.', '2019-02-24 05:02:18', '2019-02-24 05:02:18', 1),
(33, 'Animi sequi molestiae eligendi delectus asperiores.', 'Quibusdam tempore exercitationem dolorem inventore excepturi praesentium. Repellendus architecto optio et maiores. Tempore occaecati eligendi molestiae aut dolorem. Dicta quisquam enim consectetur assumenda adipisci necessitatibus. Voluptatem iste voluptatem quia. Assumenda ut dolorum sed laudantium.', '2019-02-24 05:02:18', '2019-02-24 05:02:18', 6),
(34, 'Alias repellat autem voluptas.', 'Sed sit possimus atque magnam. Praesentium sint dolor sed provident consequatur ipsum accusamus delectus. Porro maiores accusantium nesciunt recusandae veritatis quo tempore cupiditate. Quisquam quisquam dolor ut quisquam. Accusamus hic dignissimos repudiandae inventore maiores expedita reprehenderit. Vitae assumenda ut praesentium veritatis.', '2019-02-24 05:02:18', '2019-02-24 05:02:18', 1),
(35, 'Quam voluptas id error rerum.', 'Ut ipsum molestiae fuga consequatur iure animi repudiandae. Vitae molestias accusantium molestiae fuga. Fugiat nesciunt ut sit. Quis velit explicabo accusantium deserunt sit consequuntur et. Atque molestiae quia sint occaecati aspernatur reiciendis aperiam. Magnam aliquam asperiores sint dolorem animi ratione nostrum.', '2019-02-24 05:02:18', '2019-02-24 05:02:18', 7),
(36, 'Eligendi optio veritatis illo voluptatem.', 'Iusto saepe quis eos omnis. Et quas non inventore iure. Et non suscipit voluptatum delectus.', '2019-02-24 05:02:18', '2019-02-24 05:02:18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Charity Gislason PhD', 'jeff.kshlerin@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'IQS8SKZUzv', '2019-02-24 05:02:16', '2019-02-24 05:02:16'),
(2, 'Ms. Lue Stracke I', 'nrussel@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'vGiImHRhOi', '2019-02-24 05:02:16', '2019-02-24 05:02:16'),
(3, 'Miss Berenice Gislason', 'hardy91@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'acR08l0T2G', '2019-02-24 05:02:16', '2019-02-24 05:02:16'),
(4, 'Aryanna Doyle', 'ryley12@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Tz6e3u22y1Ot7u4kSITstKFIZ0UW4oRhj5ByaobPKNunRIkoO3Y3K6rSUZdD', '2019-02-24 05:02:16', '2019-02-24 05:02:16'),
(5, 'Mitchell Stanton', 'ureichel@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '9Q0mmtECSn', '2019-02-24 05:02:16', '2019-02-24 05:02:16'),
(6, 'Reece O\'Connell V', 'cstamm@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Qb160ZXmJQ', '2019-02-24 05:02:16', '2019-02-24 05:02:16'),
(7, 'Miss Marilie Hammes IV', 'upton.hermann@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Cn9WG8Rqey', '2019-02-24 05:02:16', '2019-02-24 05:02:16'),
(8, 'Juliet Quitzon', 'henri73@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'qIJf2YEcuu', '2019-02-24 05:02:16', '2019-02-24 05:02:16'),
(9, 'Isobel Gulgowski', 'lueilwitz.kamryn@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'qER3ugHVPX', '2019-02-24 05:02:16', '2019-02-24 05:02:16'),
(10, 'Mr. Bryon Hahn II', 'iva.towne@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '3bHFAc5D56', '2019-02-24 05:02:17', '2019-02-24 05:02:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `authors_user_id_foreign` (`user_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_author_id_foreign` (`author_id`);

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
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `authors`
--
ALTER TABLE `authors`
  ADD CONSTRAINT `authors_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
