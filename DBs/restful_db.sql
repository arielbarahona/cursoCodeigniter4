-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-10-2018 a las 20:57:18
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
-- Base de datos: `restful_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `status` enum('activo','borrado','','') COLLATE utf8_spanish_ci NOT NULL DEFAULT 'activo',
  `nombre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `activo` int(1) NOT NULL DEFAULT '1',
  `correo` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `zip` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono1` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono2` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pais` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `status`, `nombre`, `activo`, `correo`, `zip`, `telefono1`, `telefono2`, `pais`, `direccion`) VALUES
(1, 'activo', 'XAVIER NIEVES', 1, 'aliquet@semperetlacinia.com', '4732', '(109) 395-4876', '(921) 727-9594', 'Portugal', 'Apdo.:400-5437 Id C.'),
(2, 'activo', 'COLTON HAMMOND', 1, 'mi@cum.org', 'L87 3OA', '(538) 103-4528', '(911) 454-1033', 'Seychelles', 'Apdo.:229-2470 Maecenas Ctra.'),
(3, 'activo', 'LOUIS LINDSEY', 1, 'sed@quisqueornare.co.uk', '59172', '(521) 820-6301', '(254) 532-4270', 'Åland Islands', '3689 Ultricies Carretera'),
(4, 'activo', 'ALAN DELANEY', 1, 'vitae.posuere.at@nullamscelerisque.ca', '4057', '(215) 117-8663', '(912) 193-5150', 'Laos', 'Apartado núm.: 818, 2207 Pellentesque Avda.'),
(5, 'activo', 'JARED STEVENSON', 1, 'vel@vestibulumneque.co.uk', '26804', '(873) 448-4105', '(965) 184-5363', 'Djibouti', '5476 Tincidunt Carretera'),
(6, 'activo', 'ALLEN LYNCH', 1, 'at.augue@etultrices.edu', '36285', '(476) 860-8693', '(776) 941-3109', 'Hungary', 'Apartado núm.: 465, 9272 Mauris Calle'),
(7, 'activo', 'LESTER BARRY', 1, 'sollicitudin.orci.sem@craspellentesquesed.com', '671828', '(282) 444-9251', '(673) 293-0856', 'Armenia', 'Apartado núm.: 686, 6119 Egestas. Avda.'),
(8, 'activo', 'BRANDEN BAIRD', 1, 'et.arcu@torquent.net', '64173', '(666) 169-8237', '(461) 873-8418', 'United States', 'Apdo.:535-1513 Ipsum. Calle'),
(9, 'activo', 'ARMANDO GUY', 1, 'nullam.suscipit.est@ornare.ca', '47019', '(530) 684-2294', '(302) 807-8893', 'Uruguay', '919-3998 Auctor, Avenida'),
(10, 'activo', 'DEMETRIUS BARTLETT', 1, 'suscipit.est@vulputateullamcorpermagna.ca', '45355', '(413) 781-6142', '(396) 416-4097', 'Malta', 'Apdo.:176-200 Curae; Carretera'),
(11, 'activo', 'MARVIN MAXWELL', 1, 'sit.amet.faucibus@nascetur.co.uk', '7227', '(967) 928-0575', '(429) 700-6860', 'San Marino', '224-9315 Ante Calle'),
(12, 'activo', 'HONORATO MCNEIL', 1, 'arcu.iaculis@lacus.net', '15654', '(700) 612-1791', '(445) 753-3196', 'Palau', 'Apdo.:117-8890 Varius Calle'),
(13, 'activo', 'TOBIAS PARRISH', 1, 'enim.diam.vel@liberonecligula.co.uk', '6498', '(548) 605-5424', '(127) 280-3890', 'Congo, the Democratic Republic of the', 'Apartado núm.: 637, 7266 Fermentum Ctra.'),
(14, 'activo', 'COBY CRAIG', 1, 'risus.duis.a@acmi.org', '1595', '(365) 917-1216', '(402) 805-0498', 'Congo (Brazzaville)', 'Apartado núm.: 995, 8906 Interdum. '),
(15, 'activo', 'ROTH BATTLE', 1, 'adipiscing@ultricies.com', '679351', '(726) 184-6451', '(199) 481-9925', 'Yemen', '201-4037 Massa Carretera'),
(16, 'activo', 'THOR SMALL', 1, 'libero.integer.in@gravida.net', '445844', '(313) 439-5245', '(944) 421-4508', 'Azerbaijan', '9465 Nunc C/'),
(17, 'activo', 'JEROME HUGHES', 1, 'pulvinar.arcu@conguein.org', '93335', '(836) 486-5737', '(407) 821-5897', 'Serbia', '4730 Ligula. Ctra.'),
(18, 'activo', 'JESSE KEY', 1, 'euismod.est@sedeu.org', '65559', '(335) 283-7669', '(259) 365-6713', 'Turks and Caicos Islands', 'Apdo.:464-5370 Imperdiet Calle'),
(19, 'activo', 'MOSES GREENE', 1, 'arcu.imperdiet.ullamcorper@loremauctorquis.net', '8738', '(753) 224-9095', '(315) 451-5303', 'Dominican Republic', 'Apartado núm.: 385, 6306 Nisi. '),
(20, 'activo', 'BLAZE MUNOZ', 1, 'eget.ipsum.donec@et.edu', '6384', '(672) 706-5401', '(553) 966-0145', 'Oman', '6136 Scelerisque Avenida'),
(21, 'activo', 'TYLER SHORT', 1, 'egestas@tempus.edu', '01133', '(413) 206-8223', '(791) 709-5841', 'Christmas Island', '9840 Cum Avenida'),
(22, 'activo', 'COLTON STARK', 1, 'purus.sapien@ataugue.co.uk', '96961', '(740) 420-5977', '(672) 191-4684', 'Georgia', '852-5736 Vulputate C.'),
(23, 'activo', 'GRAY PACE', 1, 'euismod.urna@massasuspendisseeleifend.edu', '49720', '(650) 942-7280', '(617) 653-6106', 'South Georgia and The South Sandwich Islands', '511-7564 Eu Av.'),
(24, 'activo', 'HAYES GIBSON', 1, 'velit.egestas.lacinia@tinciduntvehicularisus.ca', '513161', '(233) 594-1199', '(424) 876-2041', 'Aruba', '675-7610 Eu, C/'),
(25, 'activo', 'HUNTER WALTERS', 1, 'amet.consectetuer@indolor.edu', '31169', '(293) 554-0807', '(754) 940-8643', 'Jersey', 'Apartado núm.: 872, 9974 Donec Avda.'),
(26, 'activo', 'BENEDICT SNOW', 1, 'a.felis.ullamcorper@urna.edu', '478850', '(362) 531-0475', '(778) 226-3408', 'Gambia', '649-5399 Donec Avenida'),
(27, 'activo', 'ABRAHAM FLETCHER', 1, 'elit.pellentesque@nec.co.uk', 'UD5Y 1YH', '(919) 939-2854', '(564) 351-8683', 'Åland Islands', 'Apdo.:839-9597 Erat, '),
(28, 'activo', 'CHANNING PARSONS', 1, 'mauris.eu.elit@craspellentesque.net', '91755', '(478) 588-7189', '(379) 417-5743', 'Iran', 'Apartado núm.: 195, 9944 Vitae, '),
(29, 'activo', 'RIGEL LYNCH', 1, 'penatibus@lobortistellusjusto.edu', '66333-683', '(971) 312-3974', '(592) 747-9188', 'Kazakhstan', 'Apdo.:753-5396 Sit Avda.'),
(30, 'activo', 'JIN FOLEY', 1, 'cras@fringillapurus.net', '12833', '(455) 118-6503', '(792) 405-5410', 'Viet Nam', '6307 Id, Carretera'),
(31, 'activo', 'CHASE GARRETT', 1, 'praesent@idblanditat.edu', '218064', '(297) 696-2613', '(622) 234-0700', 'Timor-Leste', '5579 Lobortis, Avda.'),
(32, 'activo', 'DEAN CLAYTON', 1, 'pellentesque.ut@sed.edu', '40426', '(591) 300-8291', '(743) 620-1907', 'Liberia', '4466 Accumsan C.'),
(33, 'activo', 'BURKE BULLOCK', 1, 'blandit@temporbibendumdonec.org', '10797', '(826) 589-7856', '(372) 923-6409', 'Peru', 'Apdo.:241-6103 Enim Carretera'),
(34, 'activo', 'HERMAN FRYE', 1, 'justo.proin@ullamcorpermagna.ca', '33139', '(440) 442-2396', '(297) 606-8040', 'Ghana', 'Apartado núm.: 801, 6290 Scelerisque Carretera'),
(35, 'activo', 'ADDISON BERG', 1, 'egestas.nunc.sed@idante.edu', '9548', '(688) 500-6743', '(410) 516-8590', 'Tajikistan', 'Apartado núm.: 678, 6469 Ridiculus C.'),
(36, 'activo', 'GIL MENDOZA', 1, 'lorem.eget@sedneque.ca', '46150', '(452) 958-9540', '(386) 281-5017', 'New Zealand', 'Apdo.:873-1958 Nec, '),
(37, 'activo', 'SOLOMON DURHAM', 1, 'ultrices.vivamus.rhoncus@facilisisvitae.com', '74834', '(189) 670-3549', '(630) 596-1045', 'Argentina', '3219 Fermentum Calle'),
(38, 'activo', 'ABBOT NOBLE', 1, 'lectus.convallis@sollicitudincommodo.org', '30404', '(199) 518-7591', '(205) 115-4707', 'Uruguay', 'Apartado núm.: 913, 1674 Consectetuer Ctra.'),
(39, 'activo', 'PETER CUNNINGHAM', 1, 'vel.arcu.eu@metusfacilisis.com', '31473', '(409) 715-6903', '(206) 393-1046', 'Latvia', '5687 Luctus Avda.'),
(40, 'activo', 'IGOR LANG', 1, 'dis.parturient@sitametultricies.org', '97-096', '(753) 309-6425', '(635) 794-4466', 'Cocos (Keeling) Islands', '999-5316 Nullam Carretera'),
(41, 'activo', 'TRAVIS BYRD', 1, 'iaculis.quis@nibhvulputatemauris.org', '92-857', '(369) 155-5102', '(903) 375-4230', 'Belarus', '293-8785 Congue, '),
(42, 'activo', 'DANIEL FREDERICK', 1, 'libero.at@ullamcorpermagnased.net', '3852', '(542) 810-1430', '(421) 667-6291', 'Costa Rica', '3522 Eleifend Carretera'),
(43, 'activo', 'BYRON DANIELS', 1, 'ornare.tortor.at@loremipsum.ca', '072364', '(489) 843-7880', '(397) 706-2632', 'Netherlands', 'Apdo.:388-1302 Mauris. C.'),
(44, 'activo', 'MALACHI MCMILLAN', 1, 'tortor.at.risus@sodalesnisimagna.com', '1604', '(366) 392-8063', '(165) 424-7238', 'Burundi', '1249 Metus Carretera'),
(45, 'activo', 'CAMERON SHANNON', 1, 'proin.vel.nisl@necantemaecenas.com', '91735', '(427) 249-3952', '(798) 958-9233', 'Lesotho', '240-3108 Suspendisse C.'),
(46, 'activo', 'JOEL BRADY', 1, 'dolor@vulputate.com', '96677-462', '(567) 498-9402', '(292) 568-8686', 'Antigua and Barbuda', 'Apdo.:297-8864 Phasellus Av.'),
(47, 'activo', 'AKEEM MORRISON', 1, 'mi.tempor.lorem@laciniaat.com', '6551', '(424) 930-6809', '(878) 865-6761', 'Brazil', '4973 Sagittis Av.'),
(48, 'activo', 'BERT CASTANEDA', 1, 'metus.eu.erat@ornarelectus.edu', '57680', '(402) 559-7644', '(319) 292-2700', 'Cayman Islands', 'Apartado núm.: 434, 2301 Praesent Carretera'),
(49, 'activo', 'BURKE CARPENTER', 1, 'cras.vehicula.aliquet@inscelerisque.com', '293110', '(961) 845-0005', '(842) 686-7135', 'Nigeria', 'Apartado núm.: 877, 616 Interdum C/'),
(50, 'activo', 'ABDUL WEBSTER', 1, 'lacus@diamsed.co.uk', '09968', '(992) 357-5193', '(410) 167-3336', 'Panama', '564-8100 Ultrices. C.'),
(51, 'activo', 'IRA HEATH', 1, 'tincidunt.nibh@viverramaecenasiaculis.net', '52373', '(694) 785-2325', '(858) 764-1079', 'Austria', '3393 Ligula Ctra.'),
(52, 'activo', 'FORREST BURTON', 1, 'eget.ipsum@nullafacilisis.net', '88830-266', '(422) 290-3442', '(837) 821-4389', 'Lebanon', 'Apartado núm.: 713, 7409 Libero C/'),
(53, 'activo', 'MARVIN MIRANDA', 1, 'eleifend.nunc.risus@pede.org', '07532', '(153) 310-7570', '(397) 752-0560', 'Israel', 'Apartado núm.: 772, 581 Egestas. Ctra.'),
(54, 'activo', 'OMAR COLLIER', 1, 'ligula.aenean.euismod@sociisnatoquepenatibus.net', 'FQ1 3UN', '(119) 515-4856', '(870) 971-5536', 'Saint Helena, Ascension and Tristan da Cunha', '420-8039 Urna. Ctra.'),
(55, 'activo', 'CASTOR KAUFMAN', 1, 'ipsum.non.arcu@ante.edu', '4804', '(527) 389-2412', '(539) 775-2097', 'Mongolia', '299-1615 Nisi Av.'),
(56, 'activo', 'LEVI HERRERA', 1, 'habitant@vitaeerat.edu', '70004', '(816) 776-1121', '(376) 441-4781', 'Mauritius', '6217 Sed Avda.'),
(57, 'activo', 'BEAU ARNOLD', 1, 'nibh@indolor.co.uk', '47685', '(434) 966-5945', '(584) 699-8641', 'Jordan', 'Apartado núm.: 251, 6134 Duis Calle'),
(58, 'activo', 'MASON UNDERWOOD', 1, 'pede.nec@odioauctor.net', '20233', '(500) 448-1668', '(602) 547-4938', 'Heard Island and Mcdonald Islands', 'Apartado núm.: 953, 5487 Sollicitudin Av.'),
(59, 'activo', 'LESTER MOSLEY', 1, 'molestie.orci@libero.edu', '70001', '(926) 420-1675', '(858) 824-1037', 'Angola', '200-4185 Nec, Avda.'),
(60, 'activo', 'ROGAN TATE', 1, 'aliquet@adipiscingelit.edu', 'J95 0OP', '(317) 466-6380', '(314) 374-8986', 'Czech Republic', '5036 Dolor C/'),
(61, 'activo', 'ELTON HOOVER', 1, 'pede@nec.co.uk', '9389', '(646) 667-8234', '(102) 715-8467', 'Korea, North', 'Apartado núm.: 992, 8771 Aliquam Ctra.'),
(62, 'activo', 'EDAN LAMBERT', 1, 'risus.in.mi@massanon.ca', '1739', '(493) 301-5752', '(764) 364-7589', 'Qatar', '2355 Diam C/'),
(63, 'activo', 'HAMMETT WOLFE', 1, 'donec.at@dolor.co.uk', '7116', '(842) 535-2730', '(839) 931-7541', 'Panama', '2422 Enim. '),
(64, 'activo', 'PRICE BURCH', 1, 'enim.nec.tempus@sociisnatoquepenatibus.org', '2926', '(114) 407-5825', '(572) 670-0846', 'Brazil', 'Apdo.:806-7024 Non, Carretera'),
(65, 'activo', 'ALAN KEMP', 1, 'massa@nequesed.edu', '784260', '(322) 415-0024', '(161) 149-2860', 'Kyrgyzstan', 'Apdo.:825-822 Odio Av.'),
(66, 'activo', 'TAD MCCORMICK', 1, 'et.netus@diampellentesquehabitant.com', '95322', '(573) 602-8831', '(473) 201-1558', 'Saudi Arabia', '8193 Elit Carretera'),
(67, 'activo', 'FERRIS DORSEY', 1, 'orci@aeneanmassainteger.net', '74577', '(143) 293-2234', '(206) 964-3613', 'Luxembourg', 'Apartado núm.: 497, 861 Sed C.'),
(68, 'activo', 'BERT FRANCIS', 1, 'ipsum@vestibulum.org', '0251MN', '(131) 670-5792', '(275) 447-5508', 'Colombia', 'Apartado núm.: 699, 6442 Laoreet, Av.'),
(69, 'activo', 'JELANI ROACH', 1, 'tempus@sednunc.edu', '7365', '(909) 291-6298', '(930) 960-5861', 'Martinique', '7810 Non, Avenida'),
(70, 'activo', 'HERROD ROWE', 1, 'consequat.purus.maecenas@tempusnonlacinia.co.uk', 'N4C 7G6', '(428) 575-8311', '(490) 674-7902', 'Korea, South', 'Apdo.:628-2837 Dictum C/'),
(71, 'activo', 'MARSHALL ALLISON', 1, 'ac.mi@eratvolutpatnulla.net', '35409', '(768) 268-3931', '(605) 700-5387', 'Nigeria', 'Apdo.:787-5199 Habitant Calle'),
(72, 'activo', 'DALE WYNN', 1, 'aliquet.vel.vulputate@feugiattellus.co.uk', '40502-267', '(690) 701-0856', '(185) 694-5305', 'Switzerland', '3080 Vel '),
(73, 'activo', 'ARMANDO MADDEN', 1, 'cursus@consequat.com', '47355-611', '(852) 287-4798', '(612) 218-0868', 'Iceland', 'Apdo.:531-1852 Ligula Carretera'),
(74, 'activo', 'CARTER COLLINS', 1, 'enim@integerin.ca', '363582', '(475) 995-3595', '(754) 194-4197', 'Jordan', 'Apdo.:531-9422 Varius. Carretera'),
(75, 'activo', 'MALACHI BOOKER', 1, 'eget.tincidunt@nasceturridiculusmus.edu', '81635', '(823) 307-1234', '(158) 725-3218', 'Belgium', 'Apdo.:312-123 Risus. Ctra.'),
(76, 'activo', 'DARIUS SIMON', 1, 'in.cursus@odioetiam.net', '42591', '(402) 355-9427', '(589) 889-3840', 'Holy See (Vatican City State)', '9410 Urna C/'),
(77, 'activo', 'ULRIC SUMMERS', 1, 'et.magna.praesent@suspendisse.ca', '71806', '(593) 548-7509', '(837) 281-9055', 'Madagascar', '5661 Parturient Calle'),
(78, 'activo', 'OREN COLE', 1, 'in.faucibus@habitantmorbi.net', 'VX44 4TG', '(871) 638-6598', '(539) 965-4312', 'Azerbaijan', 'Apartado núm.: 641, 9609 Elit Calle'),
(79, 'activo', 'CALLUM LINDSAY', 1, 'consectetuer.mauris.id@maecenasornareegestas.edu', 'R52 9SB', '(380) 672-9811', '(842) 879-5313', 'Botswana', '5017 Vulputate, '),
(80, 'activo', 'CHANEY HOUSE', 1, 'enim@ligula.ca', '57499', '(909) 497-0700', '(499) 400-2768', 'Equatorial Guinea', '8444 Magnis C.'),
(81, 'activo', 'BRENT FINCH', 1, 'libero.lacus@velmaurisinteger.edu', '71883', '(259) 527-1818', '(451) 307-3126', 'Belize', 'Apdo.:108-4396 Pede. '),
(82, 'activo', 'GANNON PETERSEN', 1, 'condimentum.donec.at@imperdiet.org', '40316', '(290) 969-9067', '(401) 844-6659', 'French Southern Territories', '6274 Morbi Ctra.'),
(83, 'activo', 'JERRY DELACRUZ', 1, 'enim.suspendisse@nibhvulputatemauris.edu', '316885', '(563) 968-8928', '(767) 388-7273', 'Denmark', 'Apartado núm.: 998, 5987 Euismod Av.'),
(84, 'activo', 'EATON KIRK', 1, 'cras.eget.nisi@phasellus.co.uk', '8635', '(303) 457-3705', '(670) 341-3155', 'Iraq', 'Apdo.:406-9888 Purus Av.'),
(85, 'activo', 'NEVILLE RICHARDSON', 1, 'metus.facilisis.lorem@dignissimtemporarcu.edu', '4209', '(954) 114-6275', '(390) 933-0933', 'United Arab Emirates', '5996 Sem '),
(86, 'activo', 'NASH CHAN', 1, 'nulla.facilisis.suspendisse@fringillacursuspurus.edu', '96768-388', '(954) 721-4887', '(185) 386-5741', 'Luxembourg', '1845 Sit Carretera'),
(87, 'activo', 'CHANDLER WHITNEY', 1, 'purus@cursuset.net', 'P4E 2SG', '(645) 120-9219', '(119) 382-4009', 'Macao', 'Apdo.:575-1868 Luctus Avenida'),
(88, 'activo', 'LEO BULLOCK', 1, 'nunc@ametante.edu', '46279', '(184) 987-7320', '(210) 279-8086', 'Guam', '512-9933 Egestas C.'),
(89, 'activo', 'DANTE RIVERS', 1, 'a.purus.duis@infelisnulla.net', '69279', '(805) 727-5115', '(904) 970-9575', 'Uzbekistan', '263-310 Duis Avda.'),
(90, 'activo', 'JACK FERRELL', 1, 'sem.ut.dolor@dolor.org', '26-496', '(725) 723-9362', '(144) 747-4999', 'Romania', 'Apartado núm.: 687, 6778 Feugiat Avda.'),
(91, 'activo', 'ABEL MOSLEY', 1, 'egestas.aliquam.nec@fuscefeugiat.ca', '3238', '(457) 614-2258', '(499) 338-3030', 'Papua New Guinea', '7042 Sociis '),
(92, 'activo', 'OTTO WILLIS', 1, 'elementum.at@eros.com', '79209', '(105) 634-2017', '(138) 471-7375', 'Iraq', 'Apartado núm.: 746, 5448 Auctor Carretera'),
(93, 'activo', 'ARMAND MORGAN', 1, 'fusce@molestiesodales.co.uk', '27731', '(831) 521-7337', '(656) 565-5113', 'Jamaica', '2617 Morbi Avenida'),
(94, 'activo', 'OTTO VALDEZ', 1, 'lectus.a@donec.co.uk', '03985', '(200) 586-6818', '(397) 677-0219', 'Japan', 'Apdo.:934-8391 Laoreet, Av.'),
(95, 'activo', 'LOGAN HANSEN', 1, 'gravida.molestie@molestiesed.ca', '8828', '(954) 258-5034', '(518) 998-4801', 'Ecuador', 'Apdo.:239-9472 Hendrerit. C/'),
(96, 'activo', 'HONORATO BAXTER', 1, 'ac.metus.vitae@magnisdis.org', '747321', '(469) 588-7527', '(163) 860-3707', 'Argentina', 'Apartado núm.: 991, 938 Nullam C.'),
(97, 'activo', 'REECE GOODWIN', 1, 'posuere@uteros.ca', '20015', '(864) 637-0161', '(599) 277-1651', 'Suriname', 'Apdo.:756-8631 Integer Av.'),
(98, 'activo', 'STEPHEN POWELL', 1, 'pharetra@enimcommodohendrerit.org', '1039MP', '(824) 887-8847', '(977) 492-9901', 'Svalbard and Jan Mayen Islands', '8069 Consequat, Carretera'),
(99, 'activo', 'NIGEL DYER', 1, 'lorem.auctor@ipsum.ca', '075580', '(752) 154-8284', '(179) 460-5290', 'Samoa', '442-3296 Fusce C.'),
(100, 'activo', 'OMAR BURKS', 1, 'molestie.in.tempus@lacus.net', '11118', '(626) 427-1518', '(777) 289-7478', 'Estonia', '597-5827 Nam Ctra.'),
(101, 'activo', 'PALMER WILLIAM', 1, 'fusce.diam.nunc@eu.org', '5497', '(663) 944-3715', '(618) 746-5093', 'South Sudan', 'Apdo.:755-210 Rhoncus. Carretera'),
(102, 'activo', 'BLAKE RODRIQUEZ', 1, 'pede.sagittis@quisque.edu', '2284', '(644) 123-3705', '(159) 994-7743', 'Bhutan', '857 Interdum. Carretera'),
(103, 'activo', 'COLBY BARRON', 1, 'cubilia.curae.donec@bibendumfermentum.org', '5048', '(137) 229-3403', '(268) 762-1124', 'Cameroon', 'Apartado núm.: 593, 2810 Bibendum. Ctra.'),
(104, 'activo', 'BRIAN SAWYER', 1, 'quis.arcu.vel@adipiscing.com', '72-328', '(101) 375-3340', '(476) 384-5401', 'Wallis and Futuna', '255 Aliquam C/'),
(105, 'activo', 'GUY NIELSEN', 1, 'laoreet.lectus.quis@nibhphasellusnulla.com', '30717', '(690) 865-8481', '(226) 858-5259', 'Seychelles', 'Apartado núm.: 960, 967 Aliquam C.'),
(106, 'activo', 'LOGAN DURAN', 1, 'at@ametconsectetueradipiscing.ca', '6693', '(290) 598-1326', '(602) 428-6365', 'Sri Lanka', 'Apartado núm.: 239, 7856 Sapien. Ctra.'),
(107, 'activo', 'DUSTIN TYLER', 1, 'amet@facilisismagna.co.uk', '127694', '(722) 379-3368', '(562) 174-5469', 'Isle of Man', 'Apartado núm.: 195, 8013 Est, Calle'),
(108, 'activo', 'ROBERT PETERS', 1, 'ornare.egestas@fuscefermentumfermentum.net', '41-797', '(997) 651-2075', '(229) 239-2207', 'Cyprus', 'Apartado núm.: 101, 194 Sed Avda.'),
(109, 'activo', 'FITZGERALD CLEMENTS', 1, 'eu.lacus.quisque@augueporttitor.co.uk', '4414', '(881) 442-7306', '(607) 703-9652', 'Chile', 'Apartado núm.: 985, 1272 Luctus C/'),
(110, 'activo', 'ROGAN GUERRERO', 1, 'lacus@condimentumeget.ca', '5747', '(665) 731-4378', '(208) 496-1508', 'Guinea', 'Apdo.:642-5620 Dictum '),
(111, 'activo', 'BERNARD RIOS', 1, 'urna.et.arcu@venenatisa.com', '3291TZ', '(414) 974-9221', '(135) 421-5323', 'Greece', 'Apartado núm.: 190, 8623 Iaculis Calle'),
(112, 'activo', 'ZEPHANIA FLORES', 1, 'sagittis@venenatisvel.ca', 'R8C 4C4', '(896) 259-9809', '(258) 268-3892', 'South Sudan', 'Apartado núm.: 351, 4597 Consequat C.'),
(113, 'activo', 'FLETCHER PRESTON', 1, 'nec.mauris@dignissimmaecenas.ca', 'H9Z 2R1', '(311) 674-4985', '(721) 416-5128', 'Congo, the Democratic Republic of the', '534-6753 Id, Avenida'),
(114, 'activo', 'SALVADOR HERRERA', 1, 'sociis.natoque.penatibus@eulacus.edu', '25844', '(759) 806-7013', '(210) 702-3839', 'Myanmar', '644-4550 Ac C/'),
(115, 'activo', 'DILLON ANTHONY', 1, 'diam.luctus@sagittisaugueeu.edu', 'Y9A 3A6', '(428) 658-5842', '(846) 434-4230', 'Canada', 'Apartado núm.: 257, 1412 Tempor Avenida'),
(116, 'activo', 'THADDEUS TILLMAN', 1, 'sem.vitae@eget.edu', '38196', '(707) 896-6538', '(714) 616-9392', 'Costa Rica', 'Apdo.:994-250 Urna Av.'),
(117, 'activo', 'CHARLES FLOYD', 1, 'tristique.ac@erosturpisnon.com', '9081', '(898) 709-9859', '(900) 697-1529', 'Venezuela', '6821 Maecenas Avenida'),
(118, 'activo', 'DANIEL BRADLEY', 1, 'scelerisque.scelerisque@sociis.ca', '83980', '(576) 186-3360', '(893) 268-2014', 'Nigeria', '362-9252 Risus. Avda.'),
(119, 'activo', 'COLE PHILLIPS', 1, 'cum.sociis.natoque@atnisicum.org', '28637', '(190) 494-5212', '(513) 950-7790', 'Mongolia', '1845 Et Avenida'),
(120, 'activo', 'STEVEN FOWLER', 1, 'sit@fringillaeuismodenim.com', '67581', '(199) 166-7243', '(857) 214-9823', 'Sweden', '7167 Eu C.'),
(121, 'activo', 'WYATT COLLINS', 1, 'nec@egetodio.co.uk', '61605', '(827) 929-8810', '(872) 219-2983', 'Virgin Islands, British', '993-1943 Eget Avenida'),
(122, 'activo', 'BARCLAY CARDENAS', 1, 'mauris.eu.elit@temporaugue.ca', '1827', '(370) 496-5760', '(469) 398-5570', 'Eritrea', 'Apartado núm.: 697, 1534 Tincidunt, Carretera'),
(123, 'activo', 'NICHOLAS WILKINS', 1, 'et@bibendumullamcorper.com', '88306', '(674) 926-7389', '(443) 549-0269', 'Bangladesh', 'Apdo.:990-8206 Ornare Avenida'),
(124, 'activo', 'TROY LOPEZ', 1, 'scelerisque.neque.nullam@lectusjustoeu.org', '25251', '(657) 513-2881', '(469) 705-2512', 'Comoros', '5063 A Carretera'),
(125, 'activo', 'TUCKER MADDEN', 1, 'est.vitae@erat.edu', '8326', '(899) 100-0334', '(212) 914-2332', 'Cape Verde', '4332 Posuere Carretera'),
(126, 'activo', 'HAYES LESTER', 1, 'scelerisque.sed@sapiencras.org', '13183-446', '(813) 696-8011', '(190) 422-8136', 'Guernsey', '592-8394 Euismod Av.'),
(127, 'activo', 'ARMAND PHELPS', 1, 'aliquam.vulputate@at.co.uk', '32723', '(541) 348-5277', '(720) 946-2298', 'Mauritius', 'Apdo.:989-130 Urna Ctra.'),
(128, 'activo', 'CRUZ WARNER', 1, 'cursus.integer@tortoratrisus.com', '50801', '(774) 903-5056', '(725) 351-8408', 'Western Sahara', '711-3028 Lorem Avda.'),
(129, 'activo', 'BRADY GRAY', 1, 'augue@semperet.co.uk', '6473', '(484) 767-4139', '(648) 615-4478', 'Togo', '668-6338 Turpis Av.'),
(130, 'activo', 'AVRAM HAMMOND', 1, 'vel@odiophasellusat.org', '78-478', '(841) 343-1206', '(632) 119-5269', 'Guadeloupe', '8041 Justo C.'),
(131, 'activo', 'AMERY MERCADO', 1, 'montes.nascetur.ridiculus@massaquisque.net', '49288', '(661) 549-7088', '(969) 754-3244', 'Seychelles', 'Apdo.:392-3978 Donec C.'),
(132, 'activo', 'ROBERT PARSONS', 1, 'odio@fringilladonecfeugiat.org', '23428', '(869) 228-0822', '(602) 592-0281', 'Dominican Republic', '388-7460 Nisi Carretera'),
(133, 'activo', 'RAFAEL WHITAKER', 1, 'fermentum.arcu.vestibulum@integeraliquamadipiscing.edu', '119128', '(324) 271-5584', '(721) 209-3897', 'Marshall Islands', 'Apartado núm.: 291, 3177 Tellus C.'),
(134, 'activo', 'SALVADOR MCCARTY', 1, 'magna.sed.eu@velarcu.co.uk', 'G5 3ZB', '(682) 889-0249', '(557) 454-9532', 'Svalbard and Jan Mayen Islands', 'Apartado núm.: 226, 3938 Consequat C.'),
(135, 'activo', 'COLBY MCFADDEN', 1, 'sit.amet.consectetuer@arcu.co.uk', '4119', '(950) 617-9255', '(783) 341-7261', 'Aruba', 'Apdo.:300-1663 Nec Avenida'),
(136, 'activo', 'IVOR SMITH', 1, 'fusce.diam.nunc@cras.edu', '0665QU', '(483) 376-1478', '(841) 501-4577', 'Eritrea', '123-7532 Fringilla Calle'),
(137, 'activo', 'CEDRIC COTE', 1, 'a.scelerisque.sed@sedegetlacus.edu', '8041WY', '(783) 438-6349', '(879) 792-5774', 'Montenegro', '613-7734 Vestibulum, C/'),
(138, 'activo', 'KEANE SIMMONS', 1, 'fringilla.purus@maurisintegersem.org', '6352', '(720) 677-0448', '(333) 406-8856', 'India', 'Apdo.:578-4576 Ut Avda.'),
(139, 'activo', 'RYAN GLOVER', 1, 'cras.interdum.nunc@elitelit.ca', '72996', '(448) 196-0717', '(463) 287-9103', 'Swaziland', 'Apdo.:284-1944 Vel, Avenida'),
(140, 'activo', 'BRENNAN LANGLEY', 1, 'sit.amet.nulla@elitelit.co.uk', '18023', '(893) 401-6748', '(167) 784-4363', 'Bulgaria', '3072 Nunc. Ctra.'),
(141, 'activo', 'CRAIG SHAFFER', 1, 'tellus@felis.edu', '343002', '(314) 790-3399', '(485) 211-9496', 'Greenland', '2528 Non, Calle'),
(142, 'activo', 'JOSHUA NIXON', 1, 'nisl.sem@feugiatnec.com', '36643', '(607) 879-8420', '(594) 966-3671', 'Mozambique', 'Apartado núm.: 608, 6903 Diam. Ctra.'),
(143, 'activo', 'VALENTINE CONNER', 1, 'tincidunt.nibh.phasellus@fringillaornareplacerat.org', '471595', '(471) 997-2647', '(497) 686-7945', 'Guyana', 'Apartado núm.: 400, 8449 A C.'),
(144, 'activo', 'JERRY VAUGHAN', 1, 'adipiscing.non@eu.net', '10411', '(322) 593-5497', '(374) 539-5320', 'China', 'Apartado núm.: 802, 3216 Turpis Avenida'),
(145, 'activo', 'SEBASTIAN SLATER', 1, 'egestas.aliquam@ataugueid.co.uk', 'X5S 0E7', '(985) 558-8163', '(358) 616-0762', 'Christmas Island', '440-9696 Eleifend, C.'),
(146, 'activo', 'RICHARD BURKE', 1, 'erat@tinciduntduiaugue.org', '67669-269', '(402) 901-8877', '(550) 503-8994', 'Madagascar', 'Apartado núm.: 520, 6958 Tortor. Avenida'),
(147, 'activo', 'SIMON COTTON', 1, 'eget@antemaecenasmi.ca', 'CO8 1UL', '(701) 663-9880', '(664) 331-6665', 'Faroe Islands', '7660 Ut Av.'),
(148, 'activo', 'ROSS MERRITT', 1, 'sed.libero.proin@eleifendcrassed.co.uk', '50193', '(609) 409-3725', '(327) 745-4823', 'Yemen', 'Apartado núm.: 254, 215 Non, C.'),
(149, 'activo', 'URIEL MAY', 1, 'nam@risusodioauctor.net', '875156', '(326) 550-8004', '(685) 925-2689', 'Mexico', 'Apartado núm.: 523, 795 Vitae, Avda.'),
(150, 'activo', 'CAIRO MAYER', 1, 'malesuada.augue@estnunc.com', '258665', '(409) 351-4818', '(285) 331-8198', 'Morocco', 'Apartado núm.: 710, 2657 Eu Avenida'),
(151, 'activo', 'BERK LYNN', 1, 'mi@purus.ca', '34348', '(860) 536-3202', '(443) 324-3911', 'Belarus', 'Apdo.:235-4661 Fusce Avenida'),
(152, 'activo', 'FRANCIS GILES', 1, 'a.magna@gravidanuncsed.com', '3466BW', '(233) 112-7287', '(668) 446-3358', 'Sudan', 'Apdo.:732-4501 Aptent '),
(153, 'activo', 'LYLE ODONNELL', 1, 'nec@commodohendrerit.co.uk', '91805', '(833) 492-6334', '(271) 863-6994', 'Hungary', 'Apartado núm.: 509, 6600 Lorem, C/'),
(154, 'activo', 'JIN SAUNDERS', 1, 'est.nunc.laoreet@aceleifend.co.uk', '02977', '(402) 217-4818', '(711) 317-1819', 'Indonesia', '2274 Lacinia. Carretera'),
(155, 'activo', 'BRENDAN FLORES', 1, 'lacinia.vitae.sodales@uttincidunt.net', '866962', '(586) 520-7975', '(211) 606-7411', 'Uganda', 'Apartado núm.: 624, 3586 Montes, Calle'),
(156, 'activo', 'FERDINAND PETERS', 1, 'ultricies.ligula@dictum.ca', '39739', '(941) 853-0495', '(519) 683-0675', 'Austria', '451-3005 Tristique C/'),
(157, 'activo', 'ARSENIO MCKINNEY', 1, 'justo.proin@utpellentesqueeget.net', 'WQ01 7UO', '(949) 232-1173', '(883) 962-3089', 'Heard Island and Mcdonald Islands', '2372 In Ctra.'),
(158, 'activo', 'VAUGHAN COTE', 1, 'nam@atauctor.edu', '58869', '(819) 601-9230', '(806) 586-6930', 'Luxembourg', '1094 Nisl '),
(159, 'activo', 'COLBY BANKS', 1, 'tellus@tortorintegeraliquam.ca', '36938', '(398) 365-4766', '(590) 835-7921', 'Cambodia', 'Apdo.:730-5281 Dolor Calle'),
(160, 'activo', 'DORIAN PIERCE', 1, 'ut.nec.urna@vestibulumneque.com', 'PU70 0QK', '(732) 206-3646', '(160) 272-4323', 'Nauru', '9944 Massa Avenida'),
(161, 'activo', 'CADE DEAN', 1, 'augue.id@inscelerisquescelerisque.com', '11452', '(662) 665-2976', '(662) 642-8604', 'Suriname', 'Apdo.:415-3495 Cum Avda.'),
(162, 'activo', 'TRAVIS DELACRUZ', 1, 'euismod.urna@suscipitnonummyfusce.com', '61806', '(743) 165-7138', '(192) 431-5322', 'Belize', 'Apartado núm.: 462, 2799 In Ctra.'),
(163, 'activo', 'CLARKE ROSA', 1, 'maecenas.libero.est@aliquamvulputate.ca', '51102', '(317) 593-8506', '(755) 343-0083', 'Puerto Rico', 'Apartado núm.: 626, 4250 Ante '),
(164, 'activo', 'OMAR BUCKNER', 1, 'sapien.gravida.non@dolor.edu', '490261', '(711) 280-9586', '(946) 700-1916', 'Syria', 'Apdo.:374-2668 At, Avda.'),
(165, 'activo', 'QUINLAN BARBER', 1, 'nec.diam.duis@semperpretium.edu', '42205', '(495) 923-8691', '(801) 918-5444', 'Svalbard and Jan Mayen Islands', '211-5453 Duis '),
(166, 'activo', 'NERO MAYS', 1, 'lorem@pedecum.com', 'R5W 9A6', '(583) 336-6690', '(674) 883-6325', 'Luxembourg', 'Apdo.:132-9269 Aliquam Av.'),
(167, 'activo', 'WALKER HARVEY', 1, 'quam.dignissim.pharetra@convallisdolorquisque.ca', '801583', '(578) 987-3940', '(493) 176-2232', 'Uzbekistan', 'Apdo.:802-5829 Blandit. Ctra.'),
(168, 'activo', 'ZANE BEST', 1, 'dictum.phasellus.in@condimentumdonec.org', '37498', '(435) 846-2756', '(701) 307-1958', 'Grenada', 'Apdo.:245-6606 Est '),
(169, 'activo', 'VINCENT ROSARIO', 1, 'sociis.natoque.penatibus@lectusrutrum.edu', '04-344', '(600) 418-7562', '(534) 492-9443', 'Korea, South', 'Apdo.:162-1355 Pellentesque Ctra.'),
(170, 'activo', 'MALACHI HULL', 1, 'orci.lacus@molestietortornibh.net', '78498', '(502) 349-6735', '(552) 309-9611', 'Venezuela', 'Apdo.:550-9402 Sed Avenida'),
(171, 'activo', 'IRA ROY', 1, 'curabitur.egestas@etiamgravida.edu', '19240', '(644) 780-1838', '(780) 295-6557', 'Aruba', 'Apdo.:457-226 Vivamus Calle'),
(172, 'activo', 'DREW CASEY', 1, 'orci.ut@nequesedeget.com', '1332PI', '(802) 434-3313', '(507) 614-8819', 'Slovakia', '4142 Sem Avda.'),
(173, 'activo', 'LESTER HODGE', 1, 'mauris.erat.eget@ac.co.uk', '101512', '(267) 853-1150', '(626) 324-8986', 'Sint Maarten', '412-4494 Mauris Avda.'),
(174, 'activo', 'CIARAN CALDERON', 1, 'nunc.in@porttitor.com', '0705FW', '(454) 927-2580', '(786) 597-5781', 'Afghanistan', '407-9826 Vitae C/'),
(175, 'activo', 'HASHIM BALLARD', 1, 'odio@per.com', '5756', '(478) 877-3897', '(506) 327-4779', 'Afghanistan', 'Apartado núm.: 171, 4980 In Ctra.'),
(176, 'activo', 'ISHMAEL RIVERS', 1, 'nunc@proinvel.net', '30938', '(190) 941-9675', '(305) 626-8120', 'Micronesia', '4035 Sit Av.'),
(177, 'activo', 'DECLAN LYONS', 1, 'ornare.lectus@ullamcorpermagna.com', 'XH9 8KS', '(891) 458-8544', '(822) 239-6354', 'Lesotho', '595-9935 Sit Ctra.'),
(178, 'activo', 'TYRONE NORMAN', 1, 'nisl.arcu.iaculis@risus.org', 'E3C 0Y1', '(959) 863-5958', '(396) 724-3679', 'Malawi', 'Apartado núm.: 965, 8978 Magna, C/'),
(179, 'activo', 'CEDRIC KNAPP', 1, 'cursus.non.egestas@etmagnisdis.ca', '28044', '(517) 242-9631', '(511) 942-9022', 'Afghanistan', 'Apdo.:619-394 Ante. Av.'),
(180, 'activo', 'BYRON RUSSO', 1, 'a@miduisrisus.com', '72171', '(323) 185-9852', '(536) 847-5183', 'Gambia', 'Apdo.:610-3351 Urna Ctra.'),
(181, 'activo', 'REECE BLACKWELL', 1, 'nulla.vulputate.dui@auguescelerisque.org', '658120', '(115) 334-9378', '(288) 393-1889', 'Samoa', 'Apdo.:687-9153 Ligula Calle'),
(182, 'activo', 'CHRISTOPHER HARRELL', 1, 'sed.est@laoreetlectusquis.com', 'KG0 9OO', '(783) 732-2383', '(760) 596-8065', 'Bermuda', 'Apartado núm.: 840, 8010 Erat. '),
(183, 'activo', 'ABBOT BREWER', 1, 'dui.nec.tempus@ac.com', '08-513', '(185) 531-5718', '(601) 523-3532', 'Saint Barthélemy', 'Apartado núm.: 186, 8857 Ipsum Carretera'),
(184, 'activo', 'JASON MCKNIGHT', 1, 'nec@libero.edu', '94562', '(377) 703-0816', '(306) 683-6019', 'Peru', '7718 Odio. Avenida'),
(185, 'activo', 'MARSHALL COLE', 1, 'feugiat.non@lobortisnisinibh.co.uk', '597840', '(537) 635-5914', '(862) 512-7489', 'Belgium', '241-851 Ipsum Avenida'),
(186, 'activo', 'TIMOTHY VELAZQUEZ', 1, 'donec.feugiat@amet.ca', '2601', '(528) 912-5962', '(248) 185-1925', 'Papua New Guinea', '975-999 Feugiat '),
(187, 'activo', 'SEAN MORGAN', 1, 'amet.faucibus.ut@imperdietornarein.ca', '76462', '(996) 354-0114', '(173) 464-1782', 'Nigeria', 'Apartado núm.: 184, 6362 Lacinia Av.'),
(188, 'activo', 'GUY FARLEY', 1, 'dapibus.gravida@odiotristiquepharetra.net', '53043-138', '(204) 807-9971', '(747) 526-1176', 'Pitcairn Islands', 'Apartado núm.: 446, 3399 Donec Carretera'),
(189, 'activo', 'RYDER RODRIQUEZ', 1, 'nulla@interdumenim.edu', '570498', '(811) 202-8063', '(259) 435-1933', 'Grenada', 'Apartado núm.: 614, 9810 Tempor Avenida'),
(190, 'activo', 'VLADIMIR SCHMIDT', 1, 'eu@et.edu', '572223', '(926) 774-9640', '(449) 238-6276', 'Haiti', '459-5347 Lorem '),
(191, 'activo', 'IAN NOBLE', 1, 'odio.vel@donecnibhenim.org', '71836', '(724) 277-2774', '(710) 386-4398', 'Mozambique', '9561 Risus. C/'),
(192, 'activo', 'DAVID NOLAN', 1, 'faucibus.ut@eratvelpede.co.uk', '30702', '(563) 415-6053', '(377) 825-9347', 'Eritrea', 'Apartado núm.: 394, 5727 Ante. Av.'),
(193, 'activo', 'AKEEM RANDALL', 1, 'sagittis.augue.eu@facilisis.net', '30401', '(652) 104-2796', '(745) 751-1530', 'Armenia', '7526 Vestibulum Avda.'),
(194, 'activo', 'GARY ROY', 1, 'mollis@mifringilla.ca', '04367-144', '(628) 579-4340', '(319) 455-6257', 'Ecuador', '2883 Ligula C.'),
(195, 'activo', 'MARSHALL HAYES', 1, 'mus.proin.vel@nequeinornare.net', '12931', '(740) 853-9434', '(953) 711-9781', 'Slovenia', '396-4516 Semper Ctra.'),
(196, 'activo', 'URIAH FRANKS', 1, 'faucibus@in.co.uk', '5978QN', '(428) 388-0467', '(341) 595-9068', 'Dominican Republic', '7042 Nostra, Ctra.'),
(197, 'activo', 'PERRY NGUYEN', 1, 'sapien@velmauris.net', '18-332', '(713) 569-1073', '(352) 589-6793', 'France', '891 Ante. Avda.'),
(198, 'activo', 'EVAN MCCORMICK', 1, 'arcu.iaculis@proinnon.co.uk', '39-241', '(710) 172-0193', '(233) 761-7474', 'Tanzania', '295-3912 Tortor. Avenida'),
(199, 'activo', 'EMERY HOWARD', 1, 'ut.semper.pretium@necurnaet.net', '32-395', '(399) 659-0236', '(539) 605-7885', 'Gabon', '4757 Tempus, Carretera'),
(200, 'activo', 'CLAYTON GRAVES', 1, 'est.ac@liberomauris.org', 'T7J 4W6', '(471) 665-6250', '(463) 536-1780', 'Maldives', 'Apdo.:259-7733 Sed, Avenida'),
(206, 'borrado', 'ARIEL SALGADO', 1, 'cristhian784@hotmail.com', '11101', '33124364', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturacion`
--

CREATE TABLE `facturacion` (
  `factura_id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `Nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `total_pagar` double(10,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `facturacion`
--

INSERT INTO `facturacion` (`factura_id`, `cliente_id`, `Nombre`, `total_pagar`) VALUES
(1, 1, 'FERNANDO HERRERA', 350.0000),
(2, 2, 'MELISSA FLORES', 400.0000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturacion_detalle`
--

CREATE TABLE `facturacion_detalle` (
  `detalle_id` int(11) NOT NULL,
  `factura_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `producto` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `precio_unitario` decimal(8,2) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `facturacion_detalle`
--

INSERT INTO `facturacion_detalle` (`detalle_id`, `factura_id`, `producto_id`, `producto`, `precio_unitario`, `cantidad`) VALUES
(1, 1, 2, 'LLANTA R16', '100.00', 2),
(2, 1, 2, 'RIN FIREDOG R16', '75.00', 2),
(3, 2, 3, 'LIQUIDO HIDRAULICO', '20.00', 5),
(4, 2, 4, 'LIQUIDO DE FRENOS', '50.00', 2),
(5, 2, 5, 'LLANTA R16 - REPUESTO', '100.00', 1),
(6, 2, 7, 'LLANTA R16 - DUNLOP', '100.00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private_key` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `keys`
--

INSERT INTO `keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(1, 1, '123456', 1, 0, 0, NULL, 123123);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `logs`
--

INSERT INTO `logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(1, 'clientes/cliente/206', 'get', 'a:13:{i:0;N;s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:3:\"zip\";s:5:\"11101\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"9401dc2a-a36d-837b-5b48-2c5d14f22963\";s:6:\"correo\";s:24:\"cristhian784@hotmail.com\";s:6:\"nombre\";s:18:\"Cristhian Barahona\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:14:\"es-ES,es;q=0.9\";i:1;N;}', '', '::1', 1539983693, 0.0201201, '1', 404),
(2, 'clientes/cliente/110', 'get', 'a:13:{i:0;N;s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:3:\"zip\";s:5:\"11101\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"6ff2fb23-55fe-383f-2b2b-ca333571b643\";s:6:\"correo\";s:24:\"cristhian784@hotmail.com\";s:6:\"nombre\";s:18:\"Cristhian Barahona\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:14:\"es-ES,es;q=0.9\";i:1;N;}', '', '::1', 1539983768, 0.023875, '1', 200),
(3, 'clientes/cliente/110', 'get', 'a:13:{i:0;N;s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:10:\"User-Agent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:3:\"zip\";s:5:\"11101\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"a1b81d66-a911-9132-e70b-e772bf9a45db\";s:6:\"correo\";s:24:\"cristhian784@hotmail.com\";s:6:\"nombre\";s:18:\"Cristhian Barahona\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:14:\"es-ES,es;q=0.9\";i:1;N;}', '', '::1', 1539984419, 0.017148, '0', 403),
(4, 'clientes/cliente/110', 'get', 'a:10:{i:0;N;s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:10:\"User-Agent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"c377535e-ef54-d42d-5115-f8e184dc5761\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:14:\"es-ES,es;q=0.9\";i:1;N;}', '', '::1', 1539984564, 0.0464661, '0', 403),
(5, 'clientes/cliente/110', 'get', 'a:10:{i:0;N;s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:10:\"User-Agent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"d927c8ed-7d41-8482-26dc-ba0c95c639ad\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:14:\"es-ES,es;q=0.9\";i:1;N;}', '', '::1', 1539984849, 0.0181608, '0', 403),
(6, 'clientes/cliente/1', 'get', 'a:10:{i:0;N;s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:10:\"User-Agent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"5b2fdc92-97f0-1228-00a9-e95b561a1703\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:14:\"es-ES,es;q=0.9\";i:1;N;}', '', '::1', 1539984912, 0.019649, '0', 403),
(7, 'clientes/cliente/1', 'get', 'a:10:{i:0;N;s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:10:\"User-Agent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"94c69884-3323-ab8e-fc49-8021f2633ea9\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:14:\"es-ES,es;q=0.9\";i:1;N;}', '', '::1', 1539985061, 0.020411, '0', 403),
(8, 'clientes/cliente/1', 'get', 'a:10:{i:0;N;s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:10:\"User-Agent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"e3f3d5ac-fb63-0879-e710-8ad806c7b7be\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:14:\"es-ES,es;q=0.9\";i:1;N;}', '', '::1', 1539985061, 0.0160911, '0', 403),
(9, 'clientes/cliente/1', 'get', 'a:10:{i:0;N;s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:10:\"User-Agent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"87cf1c0e-e755-0025-68d0-5545804ac44b\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:14:\"es-ES,es;q=0.9\";i:1;N;}', '', '::1', 1539985061, 0.014842, '0', 403),
(10, 'clientes/cliente/1', 'get', 'a:10:{i:0;N;s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:10:\"User-Agent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"22b9d3ec-b6a3-b309-8f9a-c59b48ff3ec5\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:14:\"es-ES,es;q=0.9\";i:1;N;}', '', '::1', 1539985062, 0.0289731, '0', 403),
(11, 'clientes/cliente/1', 'get', 'a:10:{i:0;N;s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:10:\"User-Agent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:13:\"Postman-Token\";s:36:\"b896f4ad-5c2f-e8d1-fadb-8dbb5c5c0298\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:14:\"es-ES,es;q=0.9\";i:1;N;}', '', '::1', 1539985062, 0.0160091, '0', 403),
(12, 'clientes/cliente/1', 'get', 'a:11:{i:0;N;s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:10:\"User-Agent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:9:\"X-API-KEY\";s:6:\"123456\";s:13:\"Postman-Token\";s:36:\"bd39edfe-52e8-f046-c760-492c236dfce3\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:14:\"es-ES,es;q=0.9\";i:1;N;}', '123456', '::1', 1539985071, 0.0396049, '1', 200),
(13, 'clientes/cliente/1', 'get', 'a:11:{i:0;N;s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:10:\"User-Agent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:9:\"X-API-KEY\";s:7:\"1234567\";s:13:\"Postman-Token\";s:36:\"d14f8f4a-4f65-790c-440e-ae27775d72eb\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:14:\"es-ES,es;q=0.9\";i:1;N;}', '', '::1', 1539985094, 0.021126, '0', 403),
(14, 'clientes/cliente/1', 'get', 'a:11:{i:0;N;s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:10:\"User-Agent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:9:\"X-API-KEY\";s:7:\"1234567\";s:13:\"Postman-Token\";s:36:\"6d4e7f6d-166f-b188-369b-7255c4231e44\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:14:\"es-ES,es;q=0.9\";i:1;N;}', '', '::1', 1539985135, 0.0184689, '0', 403),
(15, 'clientes/cliente/1', 'get', 'a:11:{i:0;N;s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:10:\"User-Agent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:9:\"X-API-KEY\";s:7:\"1234567\";s:13:\"Postman-Token\";s:36:\"6e4b6554-c3b5-6c53-22fb-539247b537e1\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:14:\"es-ES,es;q=0.9\";i:1;N;}', '', '::1', 1539985135, 0.0219259, '0', 403),
(16, 'clientes/cliente/1', 'get', 'a:11:{i:0;N;s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:10:\"User-Agent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:9:\"X-API-KEY\";s:7:\"1234567\";s:13:\"Postman-Token\";s:36:\"62b980fa-a5a9-2517-086f-4b556d019145\";s:6:\"Accept\";s:3:\"*/*\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:14:\"es-ES,es;q=0.9\";i:1;N;}', '', '::1', 1539985135, 0.0255702, '0', 403);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `facturacion`
--
ALTER TABLE `facturacion`
  ADD PRIMARY KEY (`factura_id`);

--
-- Indices de la tabla `facturacion_detalle`
--
ALTER TABLE `facturacion_detalle`
  ADD PRIMARY KEY (`detalle_id`);

--
-- Indices de la tabla `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT de la tabla `facturacion`
--
ALTER TABLE `facturacion`
  MODIFY `factura_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `facturacion_detalle`
--
ALTER TABLE `facturacion_detalle`
  MODIFY `detalle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
