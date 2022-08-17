-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 06, 2022 lúc 10:20 PM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laravel2022`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banners`
--

INSERT INTO `banners` (`id`, `title`, `slug`, `description`, `image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Martina Beier', 'et-ut-debitis-sit-cum-accusamus-et-sit-perferendis', 'Et ipsum non aut quia incidunt quisquam vel. Consectetur architecto vero aut doloremque. Quas beatae iure accusantium vel officiis esse doloribus. Voluptas id ullam consectetur est eos vel.', 'https://via.placeholder.com/100x100.png/004477?text=quia', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(2, 'Dr. Chelsey Hirthe', 'harum-aut-est-quis-harum', 'Occaecati facilis delectus est maiores nemo dolor. Commodi repellendus et et recusandae. Nostrum in sed fugiat et sed sapiente ea porro.', 'https://via.placeholder.com/100x100.png/000088?text=et', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(3, 'Terrance Muller Jr.', 'aspernatur-ullam-debitis-quo-quae-itaque-omnis', 'Et inventore aut ratione delectus aut minus modi. Quam harum ut quia. Qui quo necessitatibus est. Eveniet modi repellendus veritatis aliquam in. Quos sapiente molestias ut.', 'https://via.placeholder.com/100x100.png/00cc66?text=nemo', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(4, 'Beth Gerlach', 'explicabo-rerum-sit-amet-dicta-porro', 'Molestias maiores neque adipisci molestiae nesciunt recusandae omnis. Quidem sed impedit ratione maiores. Accusantium neque tempore illum architecto aliquid voluptates totam.', 'https://via.placeholder.com/100x100.png/001111?text=a', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(5, 'Mr. Howard Windler II', 'tempora-vel-modi-adipisci-minima-explicabo-aperiam-perferendis-dolorem', 'Repudiandae rerum minus corrupti voluptatem magnam molestias quis. Voluptas dolorem suscipit consequatur quas aut. Repellat et consectetur asperiores pariatur.', 'https://via.placeholder.com/100x100.png/00aa00?text=laboriosam', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(6, 'Jimmie Okuneva', 'et-veritatis-iure-laborum-et-minima-iste-enim', 'Tempora voluptatem maiores deleniti sint. Sunt maiores omnis sit et delectus. Id eligendi amet et consequatur est qui accusamus.', 'https://via.placeholder.com/100x100.png/0077dd?text=consequuntur', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(7, 'Evelyn McCullough', 'necessitatibus-autem-cumque-sunt-distinctio-quos', 'Voluptatibus aut omnis consectetur hic quam excepturi non. Debitis porro mollitia quae ea ipsum ipsum asperiores.', 'https://via.placeholder.com/100x100.png/007711?text=est', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(8, 'Sabina Hackett', 'recusandae-quam-laboriosam-tempore-autem-commodi-dolorem', 'Qui earum ullam quasi nam error. Est numquam tenetur voluptatum ad. Enim cupiditate quis consequuntur quia ut.', 'https://via.placeholder.com/100x100.png/00ccff?text=nihil', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(9, 'Dexter Buckridge DVM', 'sunt-in-velit-odio', 'Assumenda veritatis fugiat reiciendis aut nobis et. Minus placeat quisquam iste amet.', 'https://via.placeholder.com/100x100.png/00ee00?text=maxime', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(10, 'Prof. Lois Daniel', 'quia-facere-sed-molestias-voluptatem', 'Molestias odio doloribus omnis ut eum aut corrupti. Dolore rem rerum ad molestiae. Nostrum necessitatibus alias nobis est distinctio aut aut cupiditate.', 'https://via.placeholder.com/100x100.png/0099ff?text=et', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(11, 'Mrs. Zoila McDermott', 'reiciendis-quis-excepturi-rerum-repudiandae', 'Aspernatur corrupti esse accusamus odit enim praesentium. Ab eligendi ea velit tempora laudantium voluptatem aut exercitationem. Quasi quo beatae optio.', 'https://via.placeholder.com/100x100.png/00dd00?text=rerum', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(12, 'Ms. Estelle Rath', 'repellendus-minima-delectus-voluptatem-et-deleniti-dolor-ut', 'Inventore cum aspernatur veniam eos quidem eligendi ducimus. Mollitia doloremque beatae reprehenderit aperiam. Delectus occaecati maxime rerum ut accusamus. Nobis ut nisi delectus non.', 'https://via.placeholder.com/100x100.png/00bb00?text=nobis', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(13, 'Albertha Hills', 'quis-reiciendis-et-qui-omnis-sed-voluptatem-dolor', 'Aperiam ipsum non praesentium beatae sit. Ipsa incidunt qui molestiae et inventore totam. Aperiam possimus nemo illum. Nam aut inventore aliquam deserunt est et asperiores.', 'https://via.placeholder.com/100x100.png/001199?text=suscipit', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(14, 'Montana Hackett', 'alias-placeat-in-alias-esse-minima', 'Dolor eos sit corrupti libero in fugit cupiditate. Rem quaerat tempora cupiditate dolorem. Recusandae sunt ad illum rerum sit quo veniam dolor. Et accusamus nostrum maxime dolorem ut qui.', 'https://via.placeholder.com/100x100.png/00aaff?text=omnis', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(15, 'Cordia Dibbert', 'error-illo-ipsum-tempore-odit-quia', 'Nulla autem aliquam quis repellendus illum beatae non. Eligendi nisi est expedita excepturi. Assumenda sed velit nulla. Dolore distinctio esse dolor voluptatem dolorem laudantium dolor.', 'https://via.placeholder.com/100x100.png/00ee33?text=dignissimos', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(16, 'Elmira Schmidt PhD', 'architecto-repudiandae-sequi-ea', 'Ea voluptates sed autem est. Laboriosam dignissimos et tempora vero possimus. Distinctio autem distinctio voluptas voluptatem nihil dicta.', 'https://via.placeholder.com/100x100.png/00dd11?text=praesentium', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(17, 'Dr. Catalina Mueller', 'id-sed-enim-nihil-aliquid-qui-sit-modi-molestias', 'Molestias est vero aperiam sint repellat eum sed. Quia dolorem aliquam nemo vel quia quod velit. Pariatur mollitia eos quibusdam voluptatum dolorum reprehenderit et.', 'https://via.placeholder.com/100x100.png/00eeaa?text=voluptas', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(18, 'Chasity Ernser', 'vitae-atque-quod-et-pariatur-veniam', 'Ad eos placeat sequi sit accusantium illo velit omnis. Sint qui quis dolor laborum consequatur. Eos nulla officia quidem officia accusantium.', 'https://via.placeholder.com/100x100.png/00dd99?text=fuga', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(19, 'Thelma Tremblay', 'quae-consequuntur-sed-magni-explicabo-enim-reprehenderit-veritatis', 'Quia aperiam quasi non magnam ipsa nam. Aut repudiandae totam autem aut deleniti exercitationem magni. Dolorum aspernatur vero voluptatem quia libero non suscipit.', 'https://via.placeholder.com/100x100.png/0022ff?text=id', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(20, 'Obie Nolan II', 'nostrum-velit-unde-animi-provident', 'Ut provident dolorem ut voluptatem id aut. Occaecati aut aut facilis dolores laudantium dignissimos quisquam. Corporis accusantium praesentium qui quis quae.', 'https://via.placeholder.com/100x100.png/001133?text=cumque', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `title`, `slug`, `image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Roel Predovic V', 'culpa-exercitationem-ut-pariatur-nam-consequuntur-harum', 'https://via.placeholder.com/100x100.png/001199?text=dolor', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(2, 'Branson Green', 'dolore-totam-molestiae-qui-libero-non-rerum-ex', 'https://via.placeholder.com/100x100.png/0000ff?text=aspernatur', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(3, 'Beatrice Hudson', 'cupiditate-molestiae-quisquam-et-consequatur-rerum', 'https://via.placeholder.com/100x100.png/006655?text=et', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(4, 'Collin Anderson', 'aut-dolores-praesentium-maxime-id-tempora-maxime-sit', 'https://via.placeholder.com/100x100.png/007733?text=quia', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(5, 'Buster Considine', 'illum-id-doloremque-repellat-neque-dolorem-nihil', 'https://via.placeholder.com/100x100.png/00bbcc?text=et', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(6, 'Anahi Roob', 'earum-provident-quis-molestias-corrupti', 'https://via.placeholder.com/100x100.png/0044aa?text=molestiae', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(7, 'Ms. Hollie Kuhic', 'molestiae-animi-quia-sequi-inventore-voluptatem-velit', 'https://via.placeholder.com/100x100.png/00bb00?text=consequuntur', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(8, 'Adam Schaefer', 'quasi-nostrum-aut-aliquam-itaque-et-quas', 'https://via.placeholder.com/100x100.png/007722?text=ducimus', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(9, 'Margot Gerlach DDS', 'quia-architecto-fugit-perspiciatis-nesciunt-quisquam-optio-assumenda-voluptate', 'https://via.placeholder.com/100x100.png/00cc77?text=itaque', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(10, 'Dallin Frami', 'accusamus-tempora-ipsam-et-non-ex-esse-velit-numquam', 'https://via.placeholder.com/100x100.png/003388?text=porro', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(11, 'Dr. Deja Abbott', 'dolore-cupiditate-quia-vero-animi-et-quod-voluptates', 'https://via.placeholder.com/100x100.png/00bbdd?text=quia', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(12, 'Dr. Lorine Labadie IV', 'voluptas-deleniti-consequatur-laborum-animi-maxime', 'https://via.placeholder.com/100x100.png/00eeff?text=molestias', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(13, 'Neal Murazik', 'dolorum-cupiditate-et-non-consectetur-aspernatur-cupiditate-sint-occaecati', 'https://via.placeholder.com/100x100.png/0055aa?text=rerum', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(14, 'Litzy Bogisich', 'eum-eum-repellat-sint-reprehenderit', 'https://via.placeholder.com/100x100.png/003355?text=maiores', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(15, 'Miss Helen Rosenbaum PhD', 'et-dolores-ut-assumenda', 'https://via.placeholder.com/100x100.png/00aa55?text=reiciendis', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(16, 'Noel Barton V', 'dolor-vitae-dolore-est-neque-impedit-suscipit-ea', 'https://via.placeholder.com/100x100.png/00ee33?text=ut', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(17, 'Paris Schuppe', 'officia-et-vel-nisi-quis-autem-placeat-et', 'https://via.placeholder.com/100x100.png/00ddff?text=repellendus', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(18, 'Jermey Casper II', 'qui-eaque-illum-quasi-ipsum-velit-quaerat-adipisci', 'https://via.placeholder.com/100x100.png/00dd44?text=voluptatem', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(19, 'Onie Kertzmann', 'et-nihil-optio-dolor-distinctio-sint-ad-repudiandae', 'https://via.placeholder.com/100x100.png/002222?text=hic', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(20, 'Miss Tianna Welch DVM', 'amet-et-voluptatum-vitae-aut', 'https://via.placeholder.com/100x100.png/00ccbb?text=cum', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(21, 'Ara Kessler', 'omnis-doloremque-itaque-quo-aliquam-nobis-qui-inventore', 'https://via.placeholder.com/100x100.png/006644?text=quo', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(22, 'Dr. Jasper Jacobson', 'est-dolore-dolores-voluptates-ipsum-cum-assumenda-quas', 'https://via.placeholder.com/100x100.png/007700?text=eos', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(23, 'Ana Marvin', 'dicta-numquam-rerum-repellendus-qui-laudantium-quo', 'https://via.placeholder.com/100x100.png/00ffcc?text=aut', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(24, 'Stacy McLaughlin', 'perspiciatis-fuga-doloribus-ea-consequatur-velit', 'https://via.placeholder.com/100x100.png/00ff88?text=ipsum', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(25, 'Jocelyn Bayer Jr.', 'quia-voluptas-aut-eum-velit-dolore-laudantium', 'https://via.placeholder.com/100x100.png/00bb77?text=mollitia', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(26, 'Alan Hamill', 'porro-perferendis-quia-mollitia-temporibus', 'https://via.placeholder.com/100x100.png/009911?text=totam', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(27, 'Alycia Cormier MD', 'autem-nostrum-nisi-illum-autem-iusto-fugiat', 'https://via.placeholder.com/100x100.png/001155?text=aut', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(28, 'Prof. Alexis Ledner', 'pariatur-est-et-fugit-sint-animi-vel', 'https://via.placeholder.com/100x100.png/00dd77?text=expedita', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(29, 'Curtis Kshlerin', 'rerum-possimus-et-numquam-fugit', 'https://via.placeholder.com/100x100.png/00dd33?text=nesciunt', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(30, 'Albert Borer', 'odit-sint-dolorem-corporis-voluptatem-deserunt', 'https://via.placeholder.com/100x100.png/0055dd?text=ullam', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(31, 'Yvonne Rosenbaum', 'distinctio-earum-sint-facere-ad-sint-quisquam-praesentium-natus', 'https://via.placeholder.com/100x100.png/0000dd?text=blanditiis', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(32, 'Audie Stark', 'vero-aut-aut-consequatur-repellendus-velit-rerum-quia', 'https://via.placeholder.com/100x100.png/0011dd?text=dicta', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(33, 'Silas Bauch', 'eum-delectus-ea-distinctio-tempora-nihil-quasi', 'https://via.placeholder.com/100x100.png/00eeee?text=natus', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(34, 'Adell VonRueden', 'magni-quaerat-illum-id-corrupti-ducimus-eos', 'https://via.placeholder.com/100x100.png/0055aa?text=quae', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(35, 'Dr. Denis Schiller', 'enim-ex-necessitatibus-corrupti-ut', 'https://via.placeholder.com/100x100.png/0022bb?text=modi', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(36, 'Audrey Nikolaus I', 'officiis-quia-praesentium-itaque-corrupti-labore-molestias-et', 'https://via.placeholder.com/100x100.png/00ccee?text=et', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(37, 'Deshawn Mann', 'aut-dignissimos-modi-molestiae-officia-sunt-tempore', 'https://via.placeholder.com/100x100.png/0033ff?text=modi', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(38, 'Alek Durgan', 'earum-voluptatibus-amet-voluptatem-eligendi', 'https://via.placeholder.com/100x100.png/00ff00?text=quod', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(39, 'Justen Koss', 'quia-aut-molestiae-recusandae-commodi', 'https://via.placeholder.com/100x100.png/0077ff?text=ipsam', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(40, 'Marisol Romaguera', 'illo-dolores-laboriosam-adipisci-neque-omnis-eius-voluptatem', 'https://via.placeholder.com/100x100.png/00bbaa?text=aut', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(41, 'Roscoe Gulgowski', 'et-est-ut-in-facere', 'https://via.placeholder.com/100x100.png/00ee88?text=aspernatur', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(42, 'Prof. Danny Schaefer PhD', 'aliquam-impedit-dolores-dicta-delectus-quisquam-omnis-dignissimos-sit', 'https://via.placeholder.com/100x100.png/0066aa?text=optio', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(43, 'Kenton Lindgren', 'perferendis-deleniti-incidunt-voluptatem-cumque-quia-aliquam-quia-non', 'https://via.placeholder.com/100x100.png/00aa22?text=rem', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(44, 'Rubie Botsford I', 'enim-dolor-voluptatem-natus-harum-mollitia-corrupti-illo', 'https://via.placeholder.com/100x100.png/00dd99?text=eos', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(45, 'Bernice Schmidt PhD', 'minus-sequi-at-porro-necessitatibus', 'https://via.placeholder.com/100x100.png/009911?text=facere', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(46, 'Prof. Josianne Altenwerth Jr.', 'quo-tempora-dolores-dolor-earum', 'https://via.placeholder.com/100x100.png/0099cc?text=minus', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(47, 'Eliseo Bernhard', 'labore-sint-autem-ea', 'https://via.placeholder.com/100x100.png/0077dd?text=nihil', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(48, 'Kaci Raynor', 'nam-natus-maxime-voluptate-quae-molestiae', 'https://via.placeholder.com/100x100.png/00ee33?text=ex', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(49, 'Myrna Ortiz', 'ullam-blanditiis-eligendi-iste-sunt-praesentium', 'https://via.placeholder.com/100x100.png/00ccee?text=minus', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(50, 'Miss Shaina Ullrich DDS', 'vel-beatae-tempora-iure', 'https://via.placeholder.com/100x100.png/007755?text=voluptatum', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(51, 'Delbert Schmitt', 'eum-quia-animi-similique-minus', 'https://via.placeholder.com/100x100.png/007799?text=quia', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(52, 'Taya Nitzsche', 'odio-et-ipsum-accusamus-rerum-quasi-natus-maiores-tempore', 'https://via.placeholder.com/100x100.png/006699?text=sed', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(53, 'Randal Renner', 'et-illo-ut-est-omnis-qui-est-quae-est', 'https://via.placeholder.com/100x100.png/007733?text=ut', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(54, 'Millie Stanton', 'necessitatibus-ab-nulla-sit', 'https://via.placeholder.com/100x100.png/005577?text=consequatur', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(55, 'Prof. Sarah Ziemann', 'suscipit-quia-asperiores-dicta-est-aliquid-dolorem-cumque', 'https://via.placeholder.com/100x100.png/0099cc?text=sapiente', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(56, 'Katherine Hamill IV', 'modi-enim-fugiat-vitae-excepturi-et', 'https://via.placeholder.com/100x100.png/00bb66?text=qui', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(57, 'Maritza Schroeder', 'aliquam-est-at-voluptatem', 'https://via.placeholder.com/100x100.png/001133?text=id', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(58, 'Prof. Baylee Weber II', 'quasi-nesciunt-veniam-qui', 'https://via.placeholder.com/100x100.png/003311?text=beatae', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(59, 'Ms. Breana Schoen DVM', 'ut-tenetur-odio-reiciendis-ipsam-aut-doloremque', 'https://via.placeholder.com/100x100.png/008844?text=tempore', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(60, 'Lorena Lueilwitz', 'vero-vel-necessitatibus-voluptas-aut', 'https://via.placeholder.com/100x100.png/00aa66?text=sunt', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(61, 'Brook Shields', 'ut-sed-dolor-sit-est-omnis-id-consectetur-laboriosam', 'https://via.placeholder.com/100x100.png/00eeee?text=et', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(62, 'Tara Stark', 'minima-possimus-doloremque-quidem-enim-odio-sequi', 'https://via.placeholder.com/100x100.png/007711?text=asperiores', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(63, 'Mariah Goldner', 'quas-occaecati-voluptatibus-omnis-ullam', 'https://via.placeholder.com/100x100.png/007711?text=culpa', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(64, 'Grady Kshlerin V', 'et-et-repudiandae-esse-sunt-voluptatum-quae-natus-consequatur', 'https://via.placeholder.com/100x100.png/00aaaa?text=eveniet', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(65, 'Prof. Ahmad Gutmann', 'nulla-adipisci-rerum-rerum-perferendis-expedita-quasi', 'https://via.placeholder.com/100x100.png/0088ff?text=voluptas', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(66, 'Catherine Marquardt', 'deleniti-voluptates-repellendus-nisi-sint-suscipit-voluptatibus', 'https://via.placeholder.com/100x100.png/005533?text=voluptatem', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(67, 'Josiah Ortiz', 'sed-maxime-voluptatem-sunt-beatae-consequatur-non', 'https://via.placeholder.com/100x100.png/004499?text=corporis', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(68, 'Lilla Yost', 'eos-quia-rem-dolores-officia-dicta-blanditiis-totam-harum', 'https://via.placeholder.com/100x100.png/0077aa?text=recusandae', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(69, 'Imelda Skiles', 'qui-omnis-sunt-id-possimus-quos-et-mollitia-qui', 'https://via.placeholder.com/100x100.png/00ff77?text=id', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(70, 'Green Ferry', 'soluta-fugiat-dolore-consequatur-ut-asperiores-eaque-veniam', 'https://via.placeholder.com/100x100.png/009988?text=eaque', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(71, 'Prof. Gideon Metz DVM', 'adipisci-optio-quisquam-quia-explicabo-et-et-accusamus', 'https://via.placeholder.com/100x100.png/00eecc?text=qui', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(72, 'Miss Stefanie O\'Hara', 'rerum-deleniti-voluptatem-aut-rerum-at-veniam', 'https://via.placeholder.com/100x100.png/0099bb?text=blanditiis', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(73, 'Rafael Hartmann III', 'quibusdam-nulla-qui-reiciendis', 'https://via.placeholder.com/100x100.png/0088ff?text=ea', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(74, 'Shayne Lehner', 'ut-itaque-quia-velit-sed-autem-dolores-sint', 'https://via.placeholder.com/100x100.png/005555?text=aut', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(75, 'Jane Kassulke I', 'nisi-quasi-et-voluptatem-optio', 'https://via.placeholder.com/100x100.png/00ff22?text=sunt', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(76, 'Adriel Ferry II', 'et-eos-consequatur-molestias-sit-assumenda', 'https://via.placeholder.com/100x100.png/00ff44?text=quasi', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(77, 'Mr. Shaun Anderson', 'maiores-expedita-officiis-reiciendis-voluptatum-veniam-optio', 'https://via.placeholder.com/100x100.png/002266?text=qui', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(78, 'Effie Conn', 'enim-qui-et-sit-quo-excepturi-eius-eum', 'https://via.placeholder.com/100x100.png/007777?text=mollitia', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(79, 'Markus Langosh', 'impedit-illum-omnis-minima-optio-sapiente-est-et', 'https://via.placeholder.com/100x100.png/0099dd?text=sint', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(80, 'Justice Jacobs', 'natus-delectus-rerum-optio-in-quasi', 'https://via.placeholder.com/100x100.png/00ff22?text=omnis', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(81, 'Ms. Olga O\'Kon II', 'doloribus-labore-molestias-dolor-officia-aspernatur', 'https://via.placeholder.com/100x100.png/00bb55?text=dolore', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(82, 'Madaline Marvin', 'libero-officiis-officia-eveniet-alias-est-ut', 'https://via.placeholder.com/100x100.png/00bbff?text=illum', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(83, 'Prof. Marion Collier III', 'tempore-beatae-quia-accusamus-libero', 'https://via.placeholder.com/100x100.png/009999?text=inventore', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(84, 'Dolores Casper', 'qui-vel-qui-cupiditate-voluptatem-ratione-ipsam-occaecati', 'https://via.placeholder.com/100x100.png/007788?text=sunt', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(85, 'Mr. Joe Miller', 'sed-ipsum-veniam-sit-rem-sint-sint', 'https://via.placeholder.com/100x100.png/0077aa?text=aliquam', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(86, 'Alanis Prohaska IV', 'sit-quo-assumenda-rerum-velit-suscipit-possimus', 'https://via.placeholder.com/100x100.png/0044cc?text=at', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(87, 'Miss Ophelia Terry MD', 'rerum-perferendis-minima-ab-dignissimos-enim', 'https://via.placeholder.com/100x100.png/006644?text=ipsam', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(88, 'Adolf Huel', 'qui-quia-odio-voluptas-in-voluptatum-et-ea-sint', 'https://via.placeholder.com/100x100.png/0077dd?text=nam', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(89, 'Ward Johns', 'tenetur-numquam-tenetur-et-ut-nemo-eos-voluptas', 'https://via.placeholder.com/100x100.png/000066?text=voluptatem', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(90, 'Keanu Braun II', 'dicta-reprehenderit-vel-perferendis-accusantium-expedita-voluptatem-perspiciatis', 'https://via.placeholder.com/100x100.png/00bb00?text=eum', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(91, 'Dr. Sterling Keeling', 'porro-enim-rerum-sit-voluptatem-velit', 'https://via.placeholder.com/100x100.png/002244?text=dolorum', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(92, 'Alvena Jerde', 'eum-iste-iste-vero-ab-eius-quaerat-blanditiis', 'https://via.placeholder.com/100x100.png/009966?text=et', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(93, 'Hal Beer', 'harum-et-nesciunt-fugit-provident', 'https://via.placeholder.com/100x100.png/00ff44?text=quia', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(94, 'Mrs. Brionna Ondricka PhD', 'ea-et-laboriosam-recusandae', 'https://via.placeholder.com/100x100.png/0000dd?text=tempore', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(95, 'Jalyn Stark', 'qui-repellat-suscipit-soluta-nihil-consequuntur-eaque', 'https://via.placeholder.com/100x100.png/00ff55?text=voluptatem', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(96, 'Sandra Moen', 'sint-dolor-nisi-enim', 'https://via.placeholder.com/100x100.png/00bb99?text=quia', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(97, 'Kaia Hills', 'optio-nam-rerum-eius-suscipit-quos-eaque', 'https://via.placeholder.com/100x100.png/0022ee?text=eveniet', 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(98, 'Cheyenne Schuppe', 'debitis-totam-dolorum-incidunt', 'https://via.placeholder.com/100x100.png/006644?text=eius', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(99, 'Emile Harber', 'accusantium-et-vel-debitis-cumque-ut-commodi-fugit', 'https://via.placeholder.com/100x100.png/006600?text=velit', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(100, 'Miss Madge Bruen', 'magni-explicabo-praesentium-ab-nostrum-sit-accusamus', 'https://via.placeholder.com/100x100.png/002200?text=quaerat', 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_parent` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `is_parent`, `parent_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Ms.', 'corrupti-expedita-vero-quia-est-error', 1, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(2, 'Mr.', 'non-ut-molestiae-ullam-in', 0, 80, 'active', '2022-07-01 14:07:58', '2022-08-02 11:36:00', NULL),
(3, 'Mr.', 'sunt-qui-ex-sapiente-maxime-numquam-ut', 1, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(4, 'Miss', 'qui-voluptas-magnam-facilis-dolor-sed-rerum-dolore', 0, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(5, 'Mrs.', 'qui-et-quis-doloribus-expedita', 1, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(6, 'Mr.', 'repellendus-praesentium-repudiandae-aut-ut-optio-aut', 1, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(7, 'Ms.', 'est-facilis-ut-perspiciatis', 0, 80, 'active', '2022-07-01 14:07:58', '2022-08-02 11:36:19', NULL),
(8, 'Dr.', 'ullam-quia-quia-adipisci-incidunt-tempore-fugit-quasi', 1, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(9, 'Dr.', 'natus-voluptates-facere-minima-sit-autem-nemo-ut-aut', 1, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(10, 'Mr.', 'tenetur-perspiciatis-ut-quibusdam-et', 1, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(11, 'Miss', 'hic-sed-ducimus-ipsum-consequatur-accusantium', 0, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(12, 'Prof.', 'vel-et-debitis-eaque-voluptatem-illum', 1, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(13, 'Miss', 'aut-illum-voluptas-aut-quibusdam', 0, 80, 'active', '2022-07-01 14:07:58', '2022-08-02 11:36:37', NULL),
(14, 'Prof.', 'architecto-dolores-cupiditate-non-expedita-pariatur-dolorum-ducimus', 1, NULL, 'inactive', '2022-07-01 14:07:58', '2022-08-02 11:36:28', NULL),
(15, 'Ms.', 'facere-in-inventore-dolor-reprehenderit-magni', 0, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(16, 'Ms.', 'suscipit-molestias-iure-ea-omnis-quam-ad', 0, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(17, 'Mr.', 'eligendi-aliquam-voluptatem-natus-iusto', 0, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(18, 'Prof.', 'sit-autem-et-aut-aperiam-quas', 0, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(19, 'Miss', 'veritatis-nostrum-ipsum-natus-voluptas', 1, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(20, 'Dr.', 'ut-aut-laudantium-excepturi-iure', 1, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(21, 'Prof.', 'et-tempora-nihil-minima-nostrum', 1, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(22, 'Prof.', 'dolores-animi-consequatur-porro-et-voluptatum', 1, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(23, 'Dr.', 'repellat-hic-nostrum-dolorum-et-doloremque', 0, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(24, 'Ms.', 'facilis-aliquid-neque-reiciendis-sed-saepe', 1, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(25, 'Prof.', 'nihil-accusantium-optio-voluptate-rerum', 0, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(26, 'Mrs.', 'voluptas-aut-fuga-sapiente-nisi-error', 0, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(27, 'Mrs.', 'quasi-eveniet-sed-et-explicabo-deleniti-cum-aut', 1, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(28, 'Mr.', 'reiciendis-libero-iusto-quidem-quia', 0, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(29, 'Miss', 'qui-quo-velit-ipsa-beatae-rem-sapiente-at', 0, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(30, 'Prof.', 'nisi-illo-qui-ab-minima-et', 1, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(31, 'Dr.', 'consequuntur-aut-voluptatem-sed-molestiae', 1, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(32, 'Dr.', 'omnis-dolorem-mollitia-incidunt-quod-soluta-dolore', 1, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(33, 'Mr.', 'maxime-qui-atque-autem-quia-cum', 0, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(34, 'Miss', 'culpa-recusandae-laborum-aperiam-sed-vitae-et', 0, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(35, 'Prof.', 'voluptatum-assumenda-voluptatem-maxime-optio-tempore', 1, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(36, 'Prof.', 'consectetur-quasi-nostrum-esse-dolorem-alias-tempora-autem', 1, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(37, 'Prof.', 'culpa-tenetur-repudiandae-dolore', 0, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(38, 'Ms.', 'inventore-quia-id-ea-est-dolor', 0, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(39, 'Miss', 'nam-ratione-quasi-pariatur-architecto-assumenda-corrupti-amet-facilis', 1, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(40, 'Mrs.', 'iure-corporis-et-atque-nostrum-quia', 0, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(41, 'Dr.', 'facere-iusto-minima-tempora-dolor-dolores-molestias', 0, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(42, 'Dr.', 'asperiores-sit-ratione-est-quis-rerum', 1, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(43, 'Mr.', 'qui-officiis-voluptatibus-autem-unde-quia-veritatis-quibusdam', 1, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(44, 'Dr.', 'sapiente-quae-magni-repudiandae-pariatur', 1, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(45, 'Dr.', 'repellat-ab-labore-soluta-officiis-cumque-et', 1, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(46, 'Dr.', 'ex-est-minima-aspernatur-earum-autem-iste-quis', 0, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(47, 'Dr.', 'sunt-quia-velit-incidunt-possimus-voluptatem-fuga', 1, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(48, 'Miss', 'deleniti-in-inventore-dicta-possimus-veniam-dolorum-quia-ex', 0, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(49, 'Prof.', 'quidem-non-laborum-voluptatibus', 1, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(50, 'Prof.', 'reiciendis-culpa-sed-ducimus-animi-aperiam-expedita-dolorem', 0, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(51, 'Ms.', 'sit-aperiam-sequi-dicta-pariatur-praesentium', 1, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(52, 'Mrs.', 'explicabo-ut-dicta-dignissimos-sunt-quas-rerum-accusantium', 0, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(53, 'Prof.', 'eius-sit-dolorem-sit-molestiae-quisquam-aut', 0, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(54, 'Dr.', 'atque-ullam-dignissimos-ut-cumque-ad', 1, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(55, 'Prof.', 'itaque-quos-dolores-asperiores-dicta-natus-nostrum', 1, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(56, 'Miss', 'labore-dolorem-vel-aspernatur-vitae-aut-fugiat', 1, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(57, 'Ms.', 'consequatur-doloribus-ipsum-debitis-beatae', 1, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(58, 'Prof.', 'aut-non-quasi-ut-numquam-laborum-fugiat-quas-autem', 0, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(59, 'Mrs.', 'ducimus-hic-debitis-et-id', 0, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(60, 'Mr.', 'ut-ipsam-aut-reiciendis-nihil-rerum-suscipit-ut', 1, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(61, 'Mrs.', 'ipsum-quisquam-a-quis-laudantium', 0, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(62, 'Dr.', 'asperiores-eos-optio-sit-dolor', 1, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(63, 'Prof.', 'est-sit-id-distinctio-totam', 0, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(64, 'Miss', 'qui-eos-eum-mollitia-earum', 1, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(65, 'Mr.', 'iste-nam-voluptatem-deserunt-incidunt-iure-qui-tempora-molestiae', 0, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(66, 'Ms.', 'non-tempore-dolor-optio-aliquam-quia-minus-qui', 1, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(67, 'Miss', 'praesentium-et-voluptatem-iste-magni-magnam', 0, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(68, 'Prof.', 'dolorem-non-nesciunt-est-a', 1, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(69, 'Dr.', 'eum-consequatur-in-quisquam-facere-earum-in-itaque-molestiae', 0, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(70, 'Prof.', 'fuga-maiores-qui-laboriosam-quae-ut', 1, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(71, 'Mrs.', 'ut-nesciunt-quasi-in-necessitatibus-delectus-odit', 1, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(72, 'Miss', 'voluptatem-beatae-id-quidem-doloribus-sed-deleniti-consequuntur-repellendus', 1, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(73, 'Prof.', 'et-eligendi-quos-voluptatem-est-accusamus-reprehenderit', 1, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(74, 'Mr.', 'aut-aut-quia-aut-quis-enim-qui', 1, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(75, 'Prof.', 'veniam-accusantium-et-aut-aut-ipsum', 0, 80, 'inactive', '2022-07-01 14:07:58', '2022-08-02 11:31:57', NULL),
(76, 'Ms.', 'libero-voluptas-a-et-saepe-error-quia', 1, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(77, 'Prof.', 'soluta-possimus-sit-eius-dignissimos-asperiores-deleniti-fugiat', 0, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(78, 'Mrs.', 'quis-ratione-est-suscipit-quas-cumque-similique', 0, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(79, 'Dr.', 'ut-molestiae-vel-odio-autem', 1, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(80, 'Prof.', 'dolor-ab-sunt-quos-sapiente-qui-fuga-qui-et', 1, NULL, 'active', '2022-07-01 14:07:58', '2022-07-04 12:52:57', NULL),
(81, 'Prof.', 'non-voluptas-suscipit-voluptatem', 1, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(82, 'Prof.', 'cum-quia-omnis-harum-non', 1, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(83, 'Mrs.', 'velit-aut-qui-maiores-dolorem', 1, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(84, 'Mr.', 'nesciunt-et-atque-ex-suscipit-et-nostrum', 1, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(85, 'Dr.', 'sed-debitis-cumque-consequuntur-quod-nam-a-unde-nisi', 0, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(86, 'Dr.', 'quis-sed-doloremque-animi-impedit-animi-labore', 1, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(87, 'Dr.', 'quaerat-dolores-aperiam-illo-maiores', 1, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(88, 'Ms.', 'iusto-molestiae-porro-quia-qui-consequuntur-sint-et-doloremque', 0, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(89, 'Mr.', 'cupiditate-eum-voluptatibus-nulla-debitis-voluptatibus-id-nesciunt', 0, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(90, 'Prof.', 'deserunt-et-soluta-ut-qui', 1, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(91, 'Dr.', 'vel-dolores-provident-veritatis-molestiae-nulla-aut', 0, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(92, 'Prof.', 'at-harum-molestias-ut-sapiente-earum', 1, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(93, 'Miss', 'dolore-suscipit-quisquam-veritatis-neque-sint-dolore-quis', 0, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(94, 'Prof.', 'corrupti-qui-possimus-esse-id-aperiam-cum-neque-et', 1, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(95, 'Dr.', 'repudiandae-doloribus-praesentium-quas-eaque-consequuntur-quod-sed-vero', 1, NULL, 'active', '2022-07-01 14:07:58', '2022-07-04 12:41:41', NULL),
(96, 'Mr.', 'natus-facilis-similique-eos-reiciendis-modi-aut', 0, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(97, 'Mr.', 'dolorem-et-placeat-quisquam', 1, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(98, 'Prof.', 'voluptas-et-officiis-corrupti-ipsum', 1, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(99, 'Dr.', 'quas-officia-consectetur-hic-voluptatem-non-hic', 0, NULL, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(100, 'Prof.', 'et-veritatis-qui-similique-eligendi-repellat-minima-et', 0, NULL, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2022_05_02_182823_admin', 1),
(7, '2022_05_12_190518_create_banners_table', 1),
(8, '2022_05_20_192702_create_categories_table', 1),
(9, '2022_05_28_195838_create_brands_table', 1),
(10, '2022_05_31_195713_create_products_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL DEFAULT '1',
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `child_cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `discount` double(8,2) NOT NULL DEFAULT '0.00',
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `title`, `stock`, `price`, `slug`, `image`, `description`, `brand_id`, `cat_id`, `child_cat_id`, `discount`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Prof. Ari Tremblay IV', 31, 145055.00, 'illo-ipsum-quo-doloremque', 'https://via.placeholder.com/100x100.png/000000?text=nostrum', 'Quia recusandae quo odio laborum explicabo ea et adipisci. Occaecati reiciendis saepe in et illum. Culpa veritatis ipsam mollitia et eius qui illo.', 78, 20, NULL, 0.00, 'inactive', '2022-07-01 14:07:58', '2022-07-05 16:52:47', NULL),
(2, 'Prof. Chesley McDermott Jr.', 7, 483716.00, 'dolorum-quis-et-at', 'https://via.placeholder.com/100x100.png/00aa55?text=et', 'Est voluptate explicabo et aut aperiam iusto. Porro possimus ea expedita incidunt dicta. Explicabo pariatur magnam quibusdam.', 60, 20, 99, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-04 15:44:38', NULL),
(3, 'Chelsie Grant', 38, 349464.00, 'aut-quisquam-delectus-animi-magnam-minus', 'https://via.placeholder.com/100x100.png/001166?text=ut', 'Eos ipsam et amet. Culpa est et est dolorem. Neque veritatis atque culpa dolor quasi et sequi explicabo.', 11, 68, 69, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(4, 'Keenan Ullrich', 80, 161019.00, 'debitis-asperiores-eum-est-et-ea', 'https://via.placeholder.com/100x100.png/00dd66?text=ipsum', 'Aut recusandae ipsa porro asperiores iusto voluptates. Incidunt culpa optio similique illo laboriosam commodi. Voluptatem culpa magnam et iusto deserunt.', 95, 80, 63, 2.00, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(5, 'Jairo Hettinger', 41, 414755.00, 'accusamus-accusamus-ea-voluptate', 'https://via.placeholder.com/100x100.png/00dd88?text=iste', 'Culpa reiciendis molestiae quibusdam voluptatibus. Alias quas rerum sit nulla voluptatum perferendis. Omnis enim neque at inventore quasi corrupti dolores. Impedit eligendi enim sed iusto.', 92, 80, 25, 2.00, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(6, 'Prof. Dewitt Considine DDS', 19, 99378.00, 'velit-omnis-dolor-inventore-magni', 'https://via.placeholder.com/100x100.png/00eebb?text=et', 'In a sit velit deleniti consequatur soluta explicabo et. Voluptas ullam suscipit adipisci ut sint praesentium asperiores. Et quia dolore incidunt.', 60, 35, 33, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(7, 'Verla Price', 2, 231997.00, 'et-modi-quaerat-laudantium-nobis-deserunt-quam-qui', 'https://via.placeholder.com/100x100.png/00ee66?text=aspernatur', 'Animi fugit molestiae est iste molestias. Ducimus quis hic nihil quod dignissimos officiis maiores. At soluta at quis est.', 26, 45, 25, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(8, 'Dr. Lura Nolan Sr.', 40, 318700.00, 'labore-omnis-molestiae-quod-nobis-sequi-non', 'https://via.placeholder.com/100x100.png/00ff11?text=magni', 'Non id quia non est soluta id. Laudantium dolores et pariatur rerum consequatur velit harum. Non quo sit ipsum quo et ut est. Sunt esse nulla est eos ducimus.', 87, 80, 65, 2.00, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(9, 'Sylvia Schmitt', 35, 20622.00, 'ut-repudiandae-perspiciatis-illo-sequi-sunt-dolorem', 'https://via.placeholder.com/100x100.png/005544?text=deleniti', 'Quis et est nemo totam nulla ipsum. Placeat laboriosam sint repudiandae et. Aperiam libero magnam quod mollitia et quod aspernatur.', 22, 24, 23, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(10, 'Clarissa Nienow', 46, 366298.00, 'ut-nobis-fugiat-velit-molestiae-rerum-doloribus-eum', 'https://via.placeholder.com/100x100.png/00ffcc?text=nihil', 'Eum corrupti dolores quis quibusdam rerum molestiae laboriosam. Porro quam maiores omnis perferendis aut. Ratione quisquam labore ipsum illum inventore incidunt et. Soluta quia dicta harum nobis.', 58, 56, 65, 2.00, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(11, 'Consuelo Kiehn', 9, 498322.00, 'soluta-ducimus-quo-nisi-magnam', 'https://via.placeholder.com/100x100.png/009955?text=dignissimos', 'Id officia quo autem eaque voluptatem. Suscipit nesciunt ipsum deleniti provident sequi nihil. In est accusamus dolor dolorem quo suscipit.', 50, 72, 53, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(12, 'Nichole Schuster II', 39, 100621.00, 'omnis-consectetur-maxime-ipsa-fuga-veniam-et-laborum', 'https://via.placeholder.com/100x100.png/00dd22?text=tempore', 'Quia eaque est quisquam dolores porro. Doloremque iste et repudiandae animi atque illum hic. Non necessitatibus quia iste vitae atque debitis.', 79, 62, 96, 2.00, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(13, 'Prof. Carter Carter Jr.', 3, 206188.00, 'non-ipsum-et-quas', 'https://via.placeholder.com/100x100.png/00aaee?text=reprehenderit', 'Voluptatem laboriosam expedita eligendi accusamus. Odio eum ipsa numquam nesciunt repellat tenetur ipsum amet. Magni aut cum ipsam. Dolorum impedit earum vel accusantium suscipit omnis voluptates.', 45, 36, 34, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(14, 'Pamela Towne', 6, 218123.00, 'laudantium-aut-odio-esse-ab-culpa', 'https://via.placeholder.com/100x100.png/003399?text=labore', 'Quia quidem totam dolorum optio nam repellendus. Non necessitatibus voluptas repellat quod iste consequatur facere. A vitae quae reprehenderit eligendi error architecto suscipit dolorem.', 97, 64, 29, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(15, 'Laury Crona', 36, 181806.00, 'sint-necessitatibus-eum-cum-officiis-et-non-ad', 'https://via.placeholder.com/100x100.png/00dddd?text=non', 'Officia at rem at voluptas vitae magni nam. Et aperiam assumenda voluptas et asperiores. Accusantium dignissimos at aliquid porro. Pariatur delectus veritatis earum quia in numquam.', 78, 90, 89, 2.00, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(16, 'Greg Powlowski', 36, 257277.00, 'enim-voluptates-praesentium-dolores-eos', 'https://via.placeholder.com/100x100.png/00ddff?text=rerum', 'Dolorem architecto et odit voluptatem. Maxime et tempora repellat omnis enim voluptas delectus. Sunt ut et quod adipisci nostrum facere.', 18, 98, 40, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(17, 'Lia Kshlerin PhD', 42, 488552.00, 'et-fugit-et-aut-fuga-sed', 'https://via.placeholder.com/100x100.png/002222?text=saepe', 'Sit quasi est qui. Rerum repellendus error explicabo corporis nam laboriosam hic dolorem. Tempore enim non numquam sit ipsa enim.', 70, 22, 48, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(18, 'Greg Russel', 17, 499030.00, 'rerum-tenetur-fuga-autem-sunt-culpa-delectus-et-a', 'https://via.placeholder.com/100x100.png/00aabb?text=aspernatur', 'Beatae nostrum et enim sunt. Sunt expedita porro ipsum omnis nihil et quia. Similique animi dolores consectetur aperiam dolorem sit. Voluptate et veniam corporis illum laudantium laudantium.', 85, 86, 41, 2.00, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(19, 'Prof. Waylon Schroeder', 35, 128045.00, 'enim-sit-soluta-ipsa', 'https://via.placeholder.com/100x100.png/002255?text=ad', 'Incidunt id quia amet. Ea reiciendis dolores error temporibus dolorem. Omnis vitae qui laborum id est quod.', 80, 83, 48, 2.00, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(20, 'Jevon Dickens', 40, 153973.00, 'quaerat-et-asperiores-placeat-praesentium-suscipit-qui', 'https://via.placeholder.com/100x100.png/002288?text=molestiae', 'Vitae porro aliquam dolor exercitationem similique vero. Eos nam animi omnis consequatur labore quis sint. Voluptas est architecto recusandae neque rerum odit. Quos ut voluptatem qui.', 92, 80, 65, 2.00, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(21, 'Katelyn Waelchi', 18, 215300.00, 'corrupti-voluptate-est-ratione-sunt-voluptatem-voluptatibus-suscipit-voluptatem', 'https://via.placeholder.com/100x100.png/00aa88?text=enim', 'Atque fugit quia explicabo reiciendis molestiae sunt. Nemo dolor fugiat asperiores tempora. Ad autem rerum amet et libero. Reprehenderit a nihil quibusdam ut deleniti harum.', 92, 47, 100, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(22, 'Royce Sporer DVM', 39, 164092.00, 'reiciendis-voluptatibus-consequuntur-quisquam-ut-ad-itaque-voluptatem', 'https://via.placeholder.com/100x100.png/0011dd?text=earum', 'Molestiae ut neque in aut. Quia et nobis numquam qui. Est eum delectus ratione incidunt corporis. Eos consequuntur voluptatem velit illo. Omnis nesciunt omnis velit ipsam tempora.', 35, 76, 69, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(23, 'Hallie Wilderman IV', 32, 126479.00, 'qui-ullam-voluptate-perspiciatis-consectetur-cumque-sed', 'https://via.placeholder.com/100x100.png/009955?text=rerum', 'Consectetur quos quam vel aut. Similique vel possimus deserunt repellendus a veniam provident. Voluptas velit aspernatur sapiente dignissimos animi optio sit quis.', 50, 68, 28, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(24, 'Green Vandervort', 6, 308743.00, 'ipsam-possimus-soluta-modi-repellendus-aliquam-repudiandae-commodi-necessitatibus', 'https://via.placeholder.com/100x100.png/0044aa?text=voluptatem', 'Ipsam molestias numquam ipsam perspiciatis aut. Tenetur consectetur magni molestias tempora aperiam itaque. Nobis sunt qui sed sed. Aliquid ex odio tempore sint.', 63, 42, 11, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(25, 'Dr. Bette Toy', 7, 326306.00, 'sunt-nulla-aspernatur-corporis-tenetur-natus-facilis-a', 'https://via.placeholder.com/100x100.png/002244?text=et', 'Placeat incidunt maxime et. Quae necessitatibus earum aut quia nemo consequatur. Quis libero iste nisi mollitia eos assumenda aut.', 65, 45, 4, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(26, 'Hyman Ferry', 21, 217130.00, 'accusantium-molestiae-rerum-modi-neque-et-porro', 'https://via.placeholder.com/100x100.png/0055bb?text=officiis', 'Enim adipisci sed provident voluptas numquam. Libero totam labore a et quibusdam aut. Laboriosam et cupiditate tempora consectetur et quae.', 67, 76, 17, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(27, 'Prof. Isaiah Stark', 3, 12894.00, 'aut-ullam-veritatis-nulla-numquam', 'https://via.placeholder.com/100x100.png/0011cc?text=est', 'Eum et molestiae libero dignissimos. Voluptatem et minus eius quia. Eos doloremque vitae et vero qui. Laudantium et et accusamus sit rerum ea.', 28, 31, 2, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(28, 'Dr. Julien Labadie', 22, 27540.00, 'animi-eos-nihil-hic-enim-alias-blanditiis-est-perferendis', 'https://via.placeholder.com/100x100.png/00ee44?text=sed', 'Ipsum tenetur sapiente dolores enim. Culpa minima nobis iusto consectetur officiis aliquam qui. Provident ea aut dolor ea. Accusantium aut quae numquam et cupiditate est.', 31, 80, 23, 2.00, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(29, 'Gayle Kerluke', 18, 274421.00, 'corrupti-quia-beatae-harum-ab-voluptate-dolorum', 'https://via.placeholder.com/100x100.png/003377?text=dolor', 'Facere deserunt rerum non dolorem et et dolorem maiores. Ut veniam praesentium aut temporibus. Assumenda enim vel fugit fugiat alias sed. Quia delectus aut nam libero fugit et.', 24, 80, 18, 2.00, 'active', '2022-07-01 14:07:58', '2022-07-04 16:07:27', NULL),
(30, 'Cali Bednar', 44, 307120.00, 'sint-tempore-fugit-illum-quia-accusamus', 'https://via.placeholder.com/100x100.png/001199?text=veniam', 'Numquam consectetur quibusdam eum. Iusto impedit nihil minima neque.', 30, 80, 17, 2.00, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(31, 'Yvette Mertz', 36, 468874.00, 'rerum-repellat-corrupti-autem-voluptatem-molestiae-culpa', 'https://via.placeholder.com/100x100.png/008877?text=quia', 'Laborum eos quos quidem numquam eius est iure. Voluptatibus aut est unde autem repellat. Maiores voluptatem recusandae natus corporis soluta.', 21, 45, 33, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(32, 'Justyn Bernier', 19, 203238.00, 'error-dolorem-voluptate-doloremque-reprehenderit-quasi-incidunt-amet', 'https://via.placeholder.com/100x100.png/000044?text=soluta', 'Sapiente ab voluptas ut quae expedita. Rerum aut commodi adipisci molestias ea. Eum minus porro omnis et accusantium occaecati a voluptatem. Totam consequatur voluptatem rerum quasi.', 63, 72, 7, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(33, 'Mr. Billy Brakus', 26, 60404.00, 'suscipit-molestiae-magni-totam-vitae', 'https://via.placeholder.com/100x100.png/00ee00?text=molestiae', 'Fugit magnam est dolor ut voluptatibus ipsa labore. Quos saepe quibusdam voluptas id excepturi. At omnis non in maiores molestiae quis harum eos.', 54, 60, 18, 2.00, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(34, 'Zola Hettinger', 19, 117005.00, 'molestias-animi-dolores-non-nesciunt', 'https://via.placeholder.com/100x100.png/00ccff?text=sunt', 'Voluptate quas perferendis aspernatur autem ut et. Alias quo incidunt repellat nostrum. Repellendus dicta sapiente similique dolores blanditiis.', 31, 81, 16, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(35, 'Brock Douglas', 47, 45758.00, 'quas-dolores-qui-et-eligendi', 'https://via.placeholder.com/100x100.png/00aabb?text=ullam', 'A consequatur fugiat qui velit qui. Sunt asperiores dolorum tenetur quisquam. Voluptates quod quas ipsam dolor error qui non sit.', 3, 68, 29, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(36, 'Mr. Hal Torphy II', 38, 485782.00, 'voluptatem-sunt-voluptas-omnis-rerum-facere', 'https://via.placeholder.com/100x100.png/00bbff?text=minima', 'Non error rerum harum et. Quod eum id debitis animi non maiores accusantium. Earum deleniti aut ut qui eaque. Pariatur et eos facere omnis quia rem eum sed.', 25, 8, 75, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(37, 'Dr. Kendrick Bauch Jr.', 42, 454467.00, 'vitae-quisquam-culpa-iste', 'https://via.placeholder.com/100x100.png/008844?text=consequatur', 'Nulla optio provident ut perferendis. Aperiam eaque sint corrupti sapiente architecto. Sit vitae quos sit modi voluptates ratione. Ea libero aliquid ad amet vel est.', 18, 31, 37, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(38, 'Percy Kuhn', 45, 463089.00, 'consequatur-aut-odit-dolores-dolores-earum-sunt-officiis', 'https://via.placeholder.com/100x100.png/00ffee?text=sit', 'Sed ipsum fuga sint. Vitae ut ullam fugit voluptas ab fugiat et. Maxime et placeat error aut qui qui sed. Quia et qui voluptatem aperiam nostrum culpa aperiam et.', 62, 73, 29, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(39, 'Mr. Dominic Friesen DDS', 14, 293534.00, 'voluptatem-et-unde-eligendi-quia-voluptas-quo-cum', 'https://via.placeholder.com/100x100.png/00eebb?text=ex', 'Expedita nemo quasi rerum. Sit itaque error est perspiciatis rerum suscipit repellendus. Iure cum architecto ut doloribus. Officia sit beatae qui dolorem ea.', 89, 80, 11, 2.00, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(40, 'Randall Kassulke', 35, 494895.00, 'est-est-quisquam-rerum-voluptas-cum-est', 'https://via.placeholder.com/100x100.png/00aa00?text=molestiae', 'Delectus aut facilis rerum ut. Ut inventore quo magni magnam. Suscipit cumque non ut dolores sunt. Eos qui nisi voluptatem eveniet.', 16, 80, 65, 2.00, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(41, 'Nella Kuphal', 2, 222601.00, 'est-modi-impedit-quis-ut-natus-delectus-voluptas', 'https://via.placeholder.com/100x100.png/00aa55?text=voluptatum', 'Optio et repudiandae unde voluptatum repellat porro et. In minima officia cumque recusandae nisi. Atque quidem et aut cupiditate quasi voluptates.', 98, 71, 41, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(42, 'Randy Walker DDS', 18, 494417.00, 'quo-fuga-voluptatem-perferendis-omnis-perspiciatis-molestias-perferendis', 'https://via.placeholder.com/100x100.png/001199?text=modi', 'Delectus corporis sunt modi placeat porro accusantium minus. Quia nostrum ipsa qui neque et. Magni dolor consequatur molestias sed dolorum.', 59, 70, 29, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(43, 'Mrs. Cecilia Herman III', 21, 132679.00, 'esse-quia-explicabo-odio-ut', 'https://via.placeholder.com/100x100.png/005577?text=ducimus', 'Ab ut nam magni velit recusandae quia deleniti. Ut sunt earum praesentium eaque numquam voluptatem. Sed doloribus sunt aut.', 12, 94, 40, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(44, 'Mekhi Runolfsdottir I', 44, 391083.00, 'facilis-occaecati-quo-quasi-corrupti', 'https://via.placeholder.com/100x100.png/008899?text=est', 'Est est voluptas laborum cumque. Sit facilis ipsam eum occaecati modi qui. Qui ipsa reiciendis beatae magnam enim aperiam accusantium.', 2, 90, 11, 2.00, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(45, 'Miss Dixie Yundt I', 33, 114947.00, 'ipsum-eum-asperiores-exercitationem', 'https://via.placeholder.com/100x100.png/00aacc?text=explicabo', 'Aut eveniet eligendi qui est sapiente commodi illum sit. Sint dolorum molestias neque quasi eos nesciunt dolor.', 83, 35, 91, 2.00, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(46, 'Dr. Eve Bartoletti DDS', 49, 476815.00, 'repellat-aspernatur-sed-magni-nobis', 'https://via.placeholder.com/100x100.png/00ee88?text=aut', 'At ipsa aperiam nam amet error nesciunt assumenda dolorem. Asperiores iusto qui in occaecati expedita porro sed. Ipsum eligendi veritatis aliquam.', 83, 84, 41, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(47, 'Junior Flatley', 45, 412205.00, 'voluptas-quis-nostrum-et-voluptas-voluptatem', 'https://via.placeholder.com/100x100.png/0088cc?text=eius', 'Dolore pariatur ipsam quia. Quasi vero et et cum. Suscipit dolorem aut esse laborum.', 37, 73, 16, 2.00, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(48, 'Dr. Wendy Spencer', 50, 137061.00, 'sunt-recusandae-placeat-numquam-nihil-accusamus-et', 'https://via.placeholder.com/100x100.png/008822?text=perspiciatis', 'Commodi et odio a quibusdam eius deleniti. Voluptas consequatur eum minus quas aut fugit. Facilis sed consequuntur provident adipisci a. Vel quae id voluptatem iste aperiam facere.', 62, 94, 17, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(49, 'Florencio Gerhold', 6, 32141.00, 'autem-ut-ut-est-qui-fugiat-sint-voluptate', 'https://via.placeholder.com/100x100.png/00aa22?text=et', 'Quisquam est ipsam velit quia sed rerum eum est. Architecto sit nemo a explicabo. Et officia autem mollitia quia tempora autem. Iste assumenda facilis debitis exercitationem eveniet sint.', 49, 43, 46, 2.00, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(50, 'Rachelle Stark', 27, 490257.00, 'ut-fuga-rerum-voluptatem-qui-aut', 'https://via.placeholder.com/100x100.png/0066bb?text=rem', 'Earum deserunt voluptas adipisci dolor quia deserunt dolores culpa. Non sed repellendus harum aut. Aut sit aut sed consequuntur dolore commodi.', 72, 80, NULL, 10.00, 'active', '2022-07-01 14:07:58', '2022-07-05 15:53:14', NULL),
(51, 'Augustus O\'Conner', 48, 441041.00, 'repellendus-voluptatem-autem-sequi-ut-saepe', 'https://via.placeholder.com/100x100.png/002200?text=id', 'Nesciunt nostrum libero nostrum aut. Est ut minima et et dolore a dolor eligendi. Voluptas sit adipisci dolor sit. Dolores ea blanditiis quis dolorem aspernatur.', 48, 55, 46, 2.00, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(52, 'Gerry Cole', 6, 72560.00, 'ipsum-est-nulla-earum-et-labore-accusamus-nostrum', 'https://via.placeholder.com/100x100.png/009933?text=ut', 'Non ea voluptas ducimus beatae. Aliquam itaque rerum quia voluptatibus nulla. Tempora quidem cupiditate ad sed. Numquam voluptas assumenda quia consectetur repellendus quo.', 81, 19, 18, 2.00, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(53, 'Abbigail Wolf', 38, 445323.00, 'eum-id-veritatis-consequatur', 'https://via.placeholder.com/100x100.png/00bb99?text=iste', 'Voluptatem autem ullam dolorum totam velit. Ullam et fuga unde illum velit debitis totam. Sit facilis voluptas asperiores. Repudiandae quod hic voluptatem autem.', 4, 39, 7, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(54, 'Miss Raquel Kutch', 16, 69525.00, 'explicabo-non-maiores-doloribus', 'https://via.placeholder.com/100x100.png/001188?text=enim', 'Amet ab asperiores a assumenda. Et nulla modi rerum quod tempore. Quaerat maxime placeat ut pariatur harum voluptatem nam consequuntur. Blanditiis eum possimus assumenda dolores.', 19, 80, 52, 2.00, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(55, 'Annabell Marquardt', 30, 329144.00, 'est-enim-deserunt-omnis-iure-voluptatum-repudiandae-blanditiis', 'https://via.placeholder.com/100x100.png/0055ee?text=eum', 'Pariatur ratione asperiores quis. Ratione sit molestiae dolor vitae.', 19, 80, 65, 2.00, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(56, 'Bonnie Shields', 41, 296831.00, 'sint-qui-possimus-pariatur-repellat-nulla-at-dolorum', 'https://via.placeholder.com/100x100.png/0099dd?text=facilis', 'Maiores aut reiciendis ipsum quia ullam laboriosam. Consequatur illo laudantium aut quae. Voluptas ullam repellat qui adipisci cumque.', 6, 80, 61, 2.00, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(57, 'Mr. Jarod Denesik', 22, 100894.00, 'cumque-voluptate-similique-eius', 'https://via.placeholder.com/100x100.png/00bbdd?text=quas', 'Hic libero quia rerum neque et neque. Voluptas maxime animi consequatur molestiae. Quia non recusandae et cum. Minus qui non dolor quibusdam autem dolorem et.', 98, 42, 40, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(58, 'Jamie Smith', 31, 357147.00, 'dolores-harum-reiciendis-et-aut-est-sit-rerum-veritatis', 'https://via.placeholder.com/100x100.png/00dd00?text=atque', 'Totam dolorem quisquam aut itaque. Cum inventore est tempore esse. Reiciendis suscipit ad voluptatibus sint nesciunt. Ut non et et sint voluptates aut.', 76, 72, 52, 2.00, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(59, 'Adelbert Ledner', 40, 26447.00, 'aut-aliquid-omnis-at-ipsa', 'https://via.placeholder.com/100x100.png/00bbdd?text=laudantium', 'Delectus atque eveniet aut quia. Recusandae nobis non tempore nisi. Expedita quasi ut ad tempore.', 83, 44, 75, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(60, 'Vivienne Mann', 20, 364805.00, 'voluptatem-sunt-sit-dicta', 'https://via.placeholder.com/100x100.png/00cc66?text=molestiae', 'Voluptates necessitatibus et et. Omnis qui dolor blanditiis cumque libero vitae earum soluta. Consectetur non quaerat voluptatibus. Minima nam voluptatem cum enim minus omnis.', 67, 84, 4, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(61, 'Clemmie Mitchell II', 37, 228005.00, 'vel-libero-consectetur-et-perspiciatis-dolorum-est-ut', 'https://via.placeholder.com/100x100.png/00ee00?text=quas', 'Velit tenetur sed aperiam illo rem illum nesciunt. Id ut totam quo in sed ut. Voluptatem magni ipsum commodi. Quidem atque qui voluptas molestias aperiam fuga incidunt.', 11, 81, 77, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(62, 'Miss Noemi Beer IV', 4, 38107.00, 'quis-ut-ad-aut-ut-libero', 'https://via.placeholder.com/100x100.png/005544?text=facilis', 'Reiciendis aut laboriosam eum nam non et. Deleniti voluptatem dolorem rerum et voluptatem et quis.', 4, 20, 7, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(63, 'Deondre Huels DDS', 13, 105910.00, 'expedita-cupiditate-dolores-ut-quia-tempora-in', 'https://via.placeholder.com/100x100.png/0000bb?text=est', 'Aut amet et asperiores ea. Voluptas consequatur voluptatem quis est reiciendis nemo. Dolor tempore sequi voluptatem quae quia debitis. Omnis occaecati nam ad corrupti dolorum excepturi quam.', 31, 92, 15, 2.00, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(64, 'Prof. Kieran Tremblay', 17, 446328.00, 'aut-quisquam-deserunt-soluta-in-vel-dolor', 'https://via.placeholder.com/100x100.png/005566?text=est', 'Aspernatur asperiores suscipit laudantium reiciendis saepe quas maxime. Omnis eum vitae necessitatibus. Est sit excepturi maxime consequuntur facere inventore.', 49, 87, 7, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(65, 'Jeff Bashirian Jr.', 3, 464426.00, 'aut-sunt-doloremque-culpa-id-magnam-voluptatibus-perferendis', 'https://via.placeholder.com/100x100.png/004488?text=blanditiis', 'Suscipit voluptas vel quia omnis. Inventore facilis aut itaque vitae. Quisquam facilis et perspiciatis est.', 59, 57, 75, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(66, 'Tyrique Wolff', 24, 11294.00, 'et-similique-architecto-et-dolorem-dignissimos-error', 'https://via.placeholder.com/100x100.png/0044ff?text=dolorem', 'Cupiditate dolores vel impedit quam eos vel beatae. Mollitia ratione vitae numquam sit deserunt. Sit vel ullam autem. Esse facilis repellendus et commodi autem.', 27, 54, 67, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(67, 'Marshall Schowalter', 41, 467696.00, 'et-molestiae-rerum-eius-adipisci-sit-sit', 'https://via.placeholder.com/100x100.png/002288?text=dolore', 'Dolorem neque laudantium esse unde temporibus unde nulla et. Alias quibusdam eos facilis ut. Maxime veritatis eius velit minus. Aut voluptatem ratione ipsa rerum qui explicabo eligendi.', 94, 97, 15, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(68, 'Manuela Thiel', 12, 21903.00, 'itaque-placeat-autem-aut-sed-laboriosam-in-accusantium', 'https://via.placeholder.com/100x100.png/0044dd?text=libero', 'Vero aut occaecati nam et quisquam. Et quaerat pariatur molestias voluptatem nemo nemo cum. Voluptatum dolor nostrum est.', 62, 51, 16, 2.00, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(69, 'Shakira McClure', 45, 363226.00, 'impedit-dolorem-rerum-officiis-quam-sed-qui-est-qui', 'https://via.placeholder.com/100x100.png/00ddee?text=repellat', 'Id voluptate sit sunt sunt tempora autem tenetur culpa. Cum consequatur maiores nihil. Sed nemo vitae velit quisquam illum culpa cumque nostrum.', 76, 35, 78, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(70, 'Darlene Fay PhD', 47, 50377.00, 'autem-unde-consequatur-molestias-eaque-hic-voluptatem', 'https://via.placeholder.com/100x100.png/0099bb?text=voluptatem', 'Ut exercitationem est tenetur magnam. Ea neque reiciendis quo voluptatem tempora provident id. Qui est fugit odit.', 89, 79, 93, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(71, 'Gregory Jacobs', 38, 337691.00, 'qui-nesciunt-ut-eaque-officiis-quaerat-necessitatibus', 'https://via.placeholder.com/100x100.png/006677?text=sed', '<table class=\"table table-bordered\"><tbody><tr><td>1</td><td>a</td><td>*</td></tr><tr><td>2</td><td>b</td><td>-</td></tr><tr><td>3</td><td>c</td><td>+</td></tr></tbody></table><br>', 78, 98, NULL, 2.00, 'active', '2022-07-01 14:07:58', '2022-07-01 14:54:57', NULL),
(72, 'Brandon Upton', 31, 125622.00, 'officiis-vitae-itaque-dolores-vero-dignissimos-accusamus', 'https://via.placeholder.com/100x100.png/001177?text=sed', 'Temporibus eveniet fugit qui tempore nesciunt ut saepe repellendus. Qui fugiat error illo est et tempore ipsum. In ducimus facilis ut ut. Doloribus in aut beatae quod saepe dolorem id.', 93, 31, 41, 2.00, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(73, 'Tatum Ratke DDS', 34, 353318.00, 'inventore-incidunt-ex-dolore-rerum-sed', 'https://via.placeholder.com/100x100.png/00aa99?text=aliquam', 'Doloribus est odit in reprehenderit ipsam laborum. Repudiandae at totam repellat ipsa. Illum eaque maxime aspernatur enim rerum.', 77, 21, 91, 2.00, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(74, 'Assunta Rohan', 3, 346756.00, 'eius-et-inventore-et-atque', 'https://via.placeholder.com/100x100.png/001111?text=velit', 'Id id voluptas et voluptas nemo quo inventore et. Repellendus porro quia ut veniam commodi incidunt. Quas ratione autem repellendus voluptas qui. Qui ut voluptas aut dicta.', 21, 22, 96, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(75, 'Prof. Marlee Schimmel', 38, 10898.00, 'enim-quo-libero-natus-quae-et-quibusdam-tempora-excepturi', 'https://via.placeholder.com/100x100.png/00ee77?text=vitae', 'Laboriosam id laboriosam aut cumque a natus vitae. Possimus mollitia commodi consectetur ex voluptas recusandae. Eum quia molestiae voluptatem quia.', 50, 19, 41, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(76, 'Clyde Leffler', 47, 328847.00, 'optio-possimus-adipisci-commodi-corporis-occaecati', 'https://via.placeholder.com/100x100.png/0099aa?text=rerum', 'Fuga dolorum consequuntur et aspernatur et aut sequi. Quod voluptatum quisquam veniam aperiam. Reprehenderit veritatis officia eos iste. Ab ratione eveniet in porro.', 39, 51, 23, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(77, 'Marques Thiel', 36, 453669.00, 'quaerat-ipsam-ut-molestiae', 'https://via.placeholder.com/100x100.png/003322?text=voluptates', 'Pariatur voluptatem repudiandae labore qui aut. Alias et quia aut voluptatem vel. Sequi eum similique nihil commodi quam aut provident.', 21, 39, 63, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(78, 'Ollie Reinger', 0, 349482.00, 'facilis-neque-culpa-quibusdam-voluptatem-ratione-doloremque-consequuntur-ipsa', 'https://via.placeholder.com/100x100.png/0099ee?text=illum', 'Id explicabo consequatur reiciendis occaecati. Rerum dolores eos natus temporibus assumenda repellat. Nam numquam fugiat ab facilis quos sint facilis fuga. Esse asperiores sapiente sed.', 36, 92, 16, 2.00, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(79, 'Brigitte Toy', 32, 453040.00, 'voluptates-qui-qui-voluptatem-temporibus', 'https://via.placeholder.com/100x100.png/00eeee?text=inventore', 'Qui dignissimos ratione deleniti ut. Voluptas quaerat sunt saepe qui modi. Exercitationem ut perspiciatis est. Sunt unde et sint aut et quisquam non quia.', 97, 31, 25, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(80, 'Brisa Torphy', 32, 242800.00, 'ut-tempora-ut-asperiores-voluptate-voluptates', 'https://via.placeholder.com/100x100.png/00ff77?text=nobis', 'Quia odio nihil est explicabo culpa. Qui itaque vitae eos. Saepe incidunt vero soluta ad.', 81, 45, 18, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(81, 'Prof. Reuben Ruecker Jr.', 9, 216683.00, 'veritatis-qui-dolorem-aut-est', 'https://via.placeholder.com/100x100.png/003333?text=laborum', 'Et quasi quia dolorem eum pariatur fugit. Ut sed nihil dolorem consequatur. Ipsa distinctio hic qui qui ratione repellendus quia.', 19, 83, 28, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(82, 'Prof. Tad Ferry Jr.', 23, 261460.00, 'omnis-est-voluptas-quidem-facere-expedita-debitis-voluptates-fuga', 'https://via.placeholder.com/100x100.png/00aa66?text=ipsam', 'Libero qui illo soluta quae in. Aliquam minima est sed. Velit dolores quia quibusdam sed voluptate voluptatum. Tempore temporibus quidem modi nemo aut est odio.', 85, 45, 26, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(83, 'Clifton Friesen', 15, 157297.00, 'minima-aperiam-eum-voluptas-tempore', 'https://via.placeholder.com/100x100.png/00bb22?text=minus', 'Sint et nesciunt eius sequi hic quia. Et est fugiat in dolorum. Necessitatibus rem magni et natus. Et numquam rerum qui facilis blanditiis quia reprehenderit.', 93, 74, 28, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(84, 'Reilly Ebert', 40, 112911.00, 'qui-sequi-magnam-asperiores-odio-eos-saepe-voluptates', 'https://via.placeholder.com/100x100.png/003399?text=velit', 'Aspernatur maiores est distinctio pariatur rem non. Dolores ut ea perspiciatis hic velit. Quaerat consequuntur dicta et.', 55, 68, 41, 2.00, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(85, 'Alejandrin Nolan IV', 5, 345730.00, 'rerum-laudantium-culpa-ex-ad-consequatur', 'https://via.placeholder.com/100x100.png/00dd33?text=sequi', 'Impedit saepe non ut assumenda ex animi. Sed assumenda debitis blanditiis itaque nulla delectus nobis. Voluptatem dolorum voluptatem amet minima.', 44, 79, 75, 2.00, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(86, 'Dr. Orpha Bogan', 12, 6874.00, 'cum-aut-eos-at-ipsum', 'https://via.placeholder.com/100x100.png/00ff99?text=voluptatibus', 'Totam eius sit at hic aut ut. Aperiam et quidem ab qui sapiente et doloribus et. Vel consequatur reiciendis explicabo quasi officia doloremque. Officiis omnis qui nemo tempore totam.', 22, 71, 48, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(87, 'Kale Nikolaus', 50, 356789.00, 'accusamus-autem-eum-sunt-perspiciatis', 'https://via.placeholder.com/100x100.png/007766?text=fugit', 'Quis est consequatur quia. Qui facilis molestiae atque molestiae voluptatum est. Beatae quia voluptatem sit aliquam vel eligendi non aliquid.', 79, 27, 34, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(88, 'Francesco Hill', 3, 489360.00, 'dolor-consequatur-beatae-doloribus-consequatur-incidunt-et-animi-rerum', 'https://via.placeholder.com/100x100.png/001166?text=rerum', 'Aut placeat enim repellat odio. Delectus molestiae similique cum et. Veritatis porro deleniti et labore.', 18, 27, 48, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(89, 'Helmer Rice', 29, 130750.00, 'commodi-voluptas-at-illum', 'https://via.placeholder.com/100x100.png/00ee55?text=eaque', 'Recusandae eveniet quia voluptate aut aperiam commodi sunt magnam. Sunt id voluptatem minus dolores ut. Saepe cumque debitis magnam aut sit. Aspernatur delectus sed quod.', 23, 76, 48, 2.00, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(90, 'Dock Rogahn DDS', 11, 369549.00, 'aliquam-velit-explicabo-et', 'https://via.placeholder.com/100x100.png/008855?text=enim', 'Ratione itaque nam amet atque nemo. Non sint rerum eius perferendis id aperiam. Quibusdam omnis quos est molestiae. Tempore nesciunt eaque ipsam vel.', 13, 35, 17, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(91, 'Clara Rogahn', 22, 56511.00, 'sint-quis-aliquam-incidunt-iste-at-quaerat-iste-at', 'https://via.placeholder.com/100x100.png/002211?text=est', 'A sed quasi itaque veritatis. Fugiat qui nihil et. Et nesciunt et amet itaque voluptates. Eos veniam quam expedita ducimus distinctio. Iste adipisci fuga accusamus quia officia ab aliquam.', 37, 80, 18, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(92, 'Ms. Polly Hoeger', 10, 103903.00, 'officia-molestiae-odit-quia-saepe', 'https://via.placeholder.com/100x100.png/00dd77?text=delectus', 'Et totam aut qui velit. Et necessitatibus aut quod eos id voluptatem maiores. Dicta et maxime magnam odit. Iure omnis totam itaque eius at rerum deserunt.', 19, 35, 100, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(93, 'Otho Goyette DVM', 28, 350960.00, 'officia-aut-est-quae-corporis-qui-expedita', 'https://via.placeholder.com/100x100.png/0099dd?text=ad', 'Esse incidunt vitae voluptatem aut reprehenderit porro. Deserunt vitae omnis temporibus esse ut sint voluptas ullam. Expedita cumque recusandae qui.', 62, 79, 99, 2.00, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(94, 'Prof. Glen Torp V', 3, 227255.00, 'ea-qui-commodi-et-sequi-rerum-amet-aut', 'https://via.placeholder.com/100x100.png/00dd55?text=deleniti', 'Laudantium minima qui id dolor iusto suscipit. Molestiae voluptatem exercitationem magni ut tempora cum. Et nemo ducimus non dolor asperiores facere quam exercitationem.', 64, 21, 93, 2.00, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(95, 'Dr. Lucas Gusikowski DDS', 8, 269912.00, 'sint-fuga-doloribus-harum-iure-consequatur', 'https://via.placeholder.com/100x100.png/0066aa?text=recusandae', 'Aut doloribus nulla laborum distinctio. Id qui consequatur quo omnis quaerat et aut. Dolore qui sit sed facilis.', 40, 43, 40, 2.00, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(96, 'Margaret Gleichner', 5, 58618.00, 'illo-iure-ut-incidunt-consequuntur-natus-voluptas-tempore', 'https://via.placeholder.com/100x100.png/00ff88?text=voluptas', 'Qui et enim error et et ad. A sint est quia iste omnis. Vero voluptatem quod quidem ipsa voluptatem eum cupiditate. Ut quia qui sit ut. Non aliquam est minus eum inventore et nemo.', 25, 54, 75, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(97, 'Dorothea Ortiz', 21, 251881.00, 'ratione-et-aut-sit-velit-accusamus-veniam-ea', 'https://via.placeholder.com/100x100.png/0077dd?text=necessitatibus', 'Sed provident omnis esse pariatur illum dolor. Culpa quo velit dolores nulla animi qui recusandae. Id aut veniam explicabo asperiores quas.', 85, 86, 7, 2.00, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(98, 'Bessie Hickle', 5, 91968.00, 'consequatur-beatae-corrupti-sunt-numquam-doloribus-ut-quasi', 'https://via.placeholder.com/100x100.png/008800?text=explicabo', 'Consectetur repellat labore ipsam. Facilis et explicabo eveniet et eum laudantium sit. Vero minus nisi voluptatum qui corporis.', 7, 3, 91, 2.00, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(99, 'Margaret Schuppe', 37, 128367.00, 'ea-aliquid-consectetur-aut-laborum-laboriosam-modi-voluptate', 'https://via.placeholder.com/100x100.png/002277?text=quis', 'Quae ut nihil odit et labore. Nihil voluptatem et ad occaecati ducimus ad explicabo commodi. Amet tempore at sit ad optio dignissimos ut. Sit voluptas corrupti est id maxime nobis.', 38, 31, 59, 2.00, 'inactive', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(100, 'Keenan Muller', 16, 442808.00, 'adipisci-officia-in-facere-laboriosam', 'https://via.placeholder.com/100x100.png/00ff55?text=dolore', 'Quam sequi dolores consectetur ut. Id et dolorum ullam numquam odio nostrum illum. Non praesentium voluptatem asperiores aperiam unde porro.', 55, 68, 50, 2.00, 'active', '2022-07-01 14:07:58', '2022-07-01 14:07:58', NULL),
(101, 'test', 1, 321.00, 'test', '1657052777-257766102_2922944934589369_1043070243950878899_n.jpg', 'dsad', 87, 73, NULL, 50.00, 'active', '2022-07-05 13:26:17', '2022-07-05 13:26:17', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` enum('admin','user') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user',
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin@gmail.com', 'admin', '$2y$10$a2d224zTcWP5hxhT3XDb1OSFDhohVWkaRBfcRlKkZ5OSaPNwIXwYO', NULL, NULL, NULL, NULL),
(2, 'User', 'user@gmail.com', 'user', '$2y$10$Bhx/eITE20vECBl/69VjCO1RPFaIOJ9Af7HGVVlcxwIApfqxcsBNO', NULL, NULL, NULL, NULL),
(3, 'abc', 'abc@gmail.com', 'user', '$2y$10$BSM1IE2bxfu13C.QlpzcE.6kLLgbY0ynE4qSeV7.m3CYck4K0KTay', NULL, '2022-08-02 13:47:36', '2022-08-02 13:47:36', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `banners_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_cat_id_foreign` (`cat_id`),
  ADD KEY `products_child_cat_id_foreign` (`child_cat_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_child_cat_id_foreign` FOREIGN KEY (`child_cat_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
