-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-10-2018 a las 20:05:22
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `codeigniter4_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `courses`
--

CREATE TABLE `courses` (
  `id` int(5) UNSIGNED NOT NULL,
  `price` float NOT NULL,
  `author` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `description` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `courses`
--

INSERT INTO `courses` (`id`, `price`, `author`, `name`, `description`) VALUES
(1, 10, 'Cristhian', 'CodeIgniter4', 'nuevo curso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `version` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `group` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `namespace` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`version`, `name`, `group`, `namespace`, `time`) VALUES
('20181022170447', 'users', 'default', 'App', 1540310155),
('20181023094908', 'posts', 'default', 'App', 1540310155),
('20181023100039', 'courses', 'default', 'App', 1540310155),
('20181023104705', 'create_ci_sessions_table', 'default', 'App', 1540310155);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` int(5) UNSIGNED NOT NULL,
  `user_id` int(5) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `content` text COLLATE utf8_spanish_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `content`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Post 1', 'Nuevo post', '2018-10-25 09:22:15', '2018-10-25 09:22:15', 0),
(2, 5, 'Post 2', 'Nuevo post', '2018-10-25 09:22:38', '2018-10-25 09:22:38', 0),
(3, 5, 'Post 3', 'tercer post', '2018-10-25 09:22:58', '2018-10-25 09:22:58', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(128) COLLATE utf8_spanish_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('10099fc3mqkhrl1oldp2okh19a01bmgc', '::1', 1540482735, '__ci_last_regenerate|i:1540482735;_ci_previous_url|s:26:\"http://localhost:8080/ajax\";id|s:1:\"5\";name|s:9:\"cristhian\";email|s:18:\"cbarahona@mail.com\";picture|s:35:\"1540476935_69485424dfd28559dda6.jpg\";'),
('43jvbntr5ici8pioilckael5phh3cioe', '::1', 1540402699, '__ci_last_regenerate|i:1540402699;id|s:1:\"5\";name|s:9:\"cristhian\";email|s:18:\"cbarahona@mail.com\";picture|N;_ci_previous_url|s:27:\"http://localhost:8080/login\";'),
('4l21ds3fk8cp6nqp6ig0ad2ld69cri0j', '::1', 1540403916, '__ci_last_regenerate|i:1540403916;id|s:1:\"5\";name|s:9:\"cristhian\";email|s:18:\"cbarahona@mail.com\";picture|N;_ci_previous_url|s:31:\"http://localhost:8080/dashboard\";'),
('4s9j0p14429os27pk5ph8nv0f70dfi2p', '::1', 1540412125, '__ci_last_regenerate|i:1540412125;_ci_previous_url|s:27:\"http://localhost:8080/posts\";id|s:1:\"5\";name|s:9:\"cristhian\";email|s:18:\"cbarahona@mail.com\";picture|N;'),
('4tpuufum9qjifmin1s9t124ce77rsjop', '::1', 1540479054, '__ci_last_regenerate|i:1540479054;_ci_previous_url|s:31:\"http://localhost:8080/dashboard\";id|s:1:\"5\";name|s:9:\"cristhian\";email|s:18:\"cbarahona@mail.com\";picture|s:35:\"1540476935_69485424dfd28559dda6.jpg\";'),
('8l39maff549runhhlvthj2ttn5pvjm3b', '::1', 1540487716, '__ci_last_regenerate|i:1540487557;_ci_previous_url|s:27:\"http://localhost:8080/login\";'),
('anrn4eiqbjd1h9ie2d3eiadg8nbv7s4i', '::1', 1540414078, '__ci_last_regenerate|i:1540414078;_ci_previous_url|s:27:\"http://localhost:8080/posts\";id|s:1:\"5\";name|s:9:\"cristhian\";email|s:18:\"cbarahona@mail.com\";picture|N;'),
('b39e5n8rc99lva8agn39fhv971lo2vuc', '::1', 1540476857, '__ci_last_regenerate|i:1540476857;'),
('b597mgbcd94rkdp696d8sc3k05tjsp44', '::1', 1540402345, '__ci_last_regenerate|i:1540402345;id|s:1:\"5\";name|s:9:\"cristhian\";email|s:18:\"cbarahona@mail.com\";picture|N;_ci_previous_url|s:27:\"http://localhost:8080/login\";_ci_old_input|a:2:{s:3:\"get\";a:0:{}s:4:\"post\";a:3:{s:5:\"email\";s:0:\"\";s:8:\"password\";s:0:\"\";s:6:\"submit\";s:13:\"Inicia Sesion\";}}__ci_vars|a:2:{s:13:\"_ci_old_input\";s:3:\"old\";s:21:\"_ci_validation_errors\";s:3:\"old\";}_ci_validation_errors|s:108:\"a:2:{s:5:\"email\";s:35:\"El formato del email no es correcto\";s:8:\"password\";s:24:\"El password es requerido\";}\";'),
('bd8ij6sa3tjjkih5dbhb1hl3huj5rq69', '::1', 1540409524, '__ci_last_regenerate|i:1540409524;message|s:18:\"has cerrado sesion\";__ci_vars|a:1:{s:7:\"message\";s:3:\"old\";}_ci_previous_url|s:27:\"http://localhost:8080/login\";'),
('c0l2nshutiqhpm59reiieu412hc13adr', '::1', 1540487557, '__ci_last_regenerate|i:1540487557;_ci_previous_url|s:27:\"http://localhost:8080/login\";message|s:15:\"Acceso denegado\";__ci_vars|a:1:{s:7:\"message\";s:3:\"old\";}'),
('c12tb9k02do92j63j0b8s6ddbjs1hf15', '::1', 1540409740, '__ci_last_regenerate|i:1540409740;'),
('cm1kr44vq5r91v3m7aq253ev2s3omohp', '::1', 1540478169, '__ci_last_regenerate|i:1540478169;_ci_previous_url|s:31:\"http://localhost:8080/dashboard\";id|s:1:\"5\";name|s:9:\"cristhian\";email|s:18:\"cbarahona@mail.com\";picture|s:35:\"1540476935_69485424dfd28559dda6.jpg\";'),
('cmr8pfflf9k10ne34gg3bggl0qleul2j', '::1', 1540403971, '__ci_last_regenerate|i:1540403971;'),
('d1q6ta282chs932cqbst74gksdubjil1', '::1', 1540413229, '__ci_last_regenerate|i:1540413229;_ci_previous_url|s:27:\"http://localhost:8080/posts\";id|s:1:\"5\";name|s:9:\"cristhian\";email|s:18:\"cbarahona@mail.com\";picture|N;'),
('dd469mnncrtvc9sssm1i29jobavjm3c3', '::1', 1540417325, '__ci_last_regenerate|i:1540417325;'),
('di5fmmij3nmjg7r7k28ots537hkt0lhe', '::1', 1540401487, '__ci_last_regenerate|i:1540401487;id|s:1:\"5\";name|s:9:\"cristhian\";email|s:18:\"cbarahona@mail.com\";picture|N;_ci_previous_url|s:27:\"http://localhost:8080/login\";'),
('du47dckg5o4a232i6c084g89f6u8nvv7', '::1', 1540418706, '__ci_last_regenerate|i:1540418706;_ci_previous_url|s:27:\"http://localhost:8080/posts\";id|s:1:\"5\";name|s:9:\"cristhian\";email|s:18:\"cbarahona@mail.com\";picture|N;'),
('eo0dmv0cmhdf0lhvpvl1pp19ra3au23e', '::1', 1540476818, '__ci_last_regenerate|i:1540476818;'),
('f7h06i4jvoqem886tlkk23165dej4u8o', '::1', 1540403917, '__ci_last_regenerate|i:1540403917;'),
('feeu7u2nn9fuuhhas7n77f2vm8u0qoc0', '::1', 1540476682, '__ci_last_regenerate|i:1540476682;_ci_previous_url|s:29:\"http://localhost:8080/profile\";id|s:1:\"5\";name|s:9:\"cristhian\";email|s:18:\"cbarahona@mail.com\";picture|N;'),
('ft7gqmf5brsoab0quhghi3ia7b1otpls', '::1', 1540417321, '__ci_last_regenerate|i:1540417321;_ci_previous_url|s:27:\"http://localhost:8080/posts\";id|s:1:\"5\";name|s:9:\"cristhian\";email|s:18:\"cbarahona@mail.com\";picture|N;message|s:28:\"Post eliminado correctamente\";__ci_vars|a:1:{s:7:\"message\";s:3:\"old\";}'),
('fuqleib7d963s48cj51uds0398p6qbth', '::1', 1540411451, '__ci_last_regenerate|i:1540411451;_ci_previous_url|s:31:\"http://localhost:8080/dashboard\";id|s:1:\"5\";name|s:9:\"cristhian\";email|s:18:\"cbarahona@mail.com\";picture|N;'),
('gfdd4qbh13s4ba03f8lsamh89dlo9kde', '::1', 1540408488, '__ci_last_regenerate|i:1540408488;'),
('giuagj6lpn2gud4bcjcdc0v1u7tgvfpv', '::1', 1540481577, '__ci_last_regenerate|i:1540481577;_ci_previous_url|s:31:\"http://localhost:8080/relations\";id|s:1:\"5\";name|s:9:\"cristhian\";email|s:18:\"cbarahona@mail.com\";picture|s:35:\"1540476935_69485424dfd28559dda6.jpg\";'),
('i6v0jditipm5mjtj371m8o2ravujv3qg', '::1', 1540486814, '__ci_last_regenerate|i:1540486814;_ci_previous_url|s:26:\"http://localhost:8080/ajax\";id|s:1:\"5\";name|s:9:\"cristhian\";email|s:18:\"cbarahona@mail.com\";picture|s:35:\"1540476935_69485424dfd28559dda6.jpg\";'),
('ikl0d7gedrps7ov3p3esph2allge3uj6', '::1', 1540420566, '__ci_last_regenerate|i:1540420279;_ci_previous_url|s:29:\"http://localhost:8080/profile\";id|s:1:\"5\";name|s:9:\"cristhian\";email|s:18:\"cbarahona@mail.com\";picture|N;'),
('js43l9qsegaf3jcl0l3c1gvij2cnhghu', '::1', 1540486816, '__ci_last_regenerate|i:1540486816;'),
('kk9h69almsm7t6d4eb6quae8rgod75ml', '::1', 1540407982, '__ci_last_regenerate|i:1540407982;'),
('krui0c6rooh7mkjs6jrceetcpe3njoh2', '::1', 1540407964, '__ci_last_regenerate|i:1540407964;message|s:18:\"has cerrado sesion\";__ci_vars|a:1:{s:7:\"message\";s:3:\"old\";}_ci_previous_url|s:27:\"http://localhost:8080/login\";'),
('mnliafp1iofmjhpr36p7b98b70m7ft5l', '::1', 1540476939, '__ci_last_regenerate|i:1540476939;'),
('o3m31cn0beo8upqgolud18v1ptp1rbq6', '::1', 1540403195, '__ci_last_regenerate|i:1540403195;id|s:1:\"5\";name|s:9:\"cristhian\";email|s:18:\"cbarahona@mail.com\";picture|N;_ci_previous_url|s:27:\"http://localhost:8080/login\";'),
('pi5lcu9kegc6n7quu53nep6v6bbv15p6', '::1', 1540420279, '__ci_last_regenerate|i:1540420279;_ci_previous_url|s:29:\"http://localhost:8080/profile\";id|s:1:\"5\";name|s:9:\"cristhian\";email|s:18:\"cbarahona@mail.com\";picture|N;'),
('q9nvmr1u30lvkhl5a5spi3poc7h8k1ta', '::1', 1540409969, '__ci_last_regenerate|i:1540409969;'),
('qn936oqilojta4l2gmel7p2e7149mrj3', '::1', 1540403548, '__ci_last_regenerate|i:1540403548;id|s:1:\"5\";name|s:9:\"cristhian\";email|s:18:\"cbarahona@mail.com\";picture|N;_ci_previous_url|s:27:\"http://localhost:8080/login\";'),
('rgmd4q89vkmrqkaj7b0avvv12r0l37kf', '::1', 1540414648, '__ci_last_regenerate|i:1540414648;_ci_previous_url|s:27:\"http://localhost:8080/posts\";id|s:1:\"5\";name|s:9:\"cristhian\";email|s:18:\"cbarahona@mail.com\";picture|N;message|s:30:\"Post actualizado correctamente\";__ci_vars|a:1:{s:7:\"message\";s:3:\"old\";}'),
('sq39h7lmr3lkpfv0pqg4pmosfn8dodof', '::1', 1540408451, '__ci_last_regenerate|i:1540408451;_ci_previous_url|s:27:\"http://localhost:8080/login\";message|s:15:\"Acceso denegado\";__ci_vars|a:1:{s:7:\"message\";s:3:\"old\";}'),
('vqva5oa4q8csj5o7prtad6poqmge49t4', '::1', 1540477310, '__ci_last_regenerate|i:1540477310;_ci_previous_url|s:31:\"http://localhost:8080/dashboard\";id|s:1:\"5\";name|s:9:\"cristhian\";email|s:18:\"cbarahona@mail.com\";picture|s:35:\"1540476935_69485424dfd28559dda6.jpg\";');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(5) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `picture` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `picture`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'admin@mail.com', '$2y$10$wCPMA/HmyqJfOU1B0pD/xOk6jfVwf0nXQe13kK4NKplFX5XNSoOXK', NULL, NULL, NULL, NULL),
(2, 'admin2', 'admin2@mail.com', '$2y$10$1i1eJ9mAFhwRl/6JCgzu1OHXHKJU64KgI8xoBrvxpJ7x31lL2KPUW', NULL, NULL, NULL, NULL),
(4, 'usuario1', 'usuario1@mail.com', '$2y$10$TqnnNLeCkP.JMejZ2G/JMOwVSaegJv3.7LvJeK9dTik1MmXr/mJn.', NULL, '2018-10-23 12:37:32', '2018-10-23 12:37:32', NULL),
(5, 'cristhian', 'cbarahona@mail.com', '$2y$10$oXwFzir5rHXsA83eBN0a7OsqLPuyYEfqsdqYIsh0Xgf7Y21V1IWn2', '1540476935_69485424dfd28559dda6.jpg', '2018-10-24 10:27:26', '2018-10-25 09:15:35', NULL),
(6, 'cristhian2', 'criasthianbar@hotmail.com', '$2y$10$W9r1maQUQkz3RPgJYrXVs.9kaUlid9iLy9CQxDkwJ7BaIzvfwDOxC', NULL, '2018-10-24 11:41:54', '2018-10-24 11:41:54', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
