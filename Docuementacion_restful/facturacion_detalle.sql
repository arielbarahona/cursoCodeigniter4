-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 22-03-2016 a las 16:29:33
-- Versión del servidor: 5.6.20
-- Versión de PHP: 5.5.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tareas_db`
--

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

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `facturacion_detalle`
--
ALTER TABLE `facturacion_detalle`
  ADD PRIMARY KEY (`detalle_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `facturacion_detalle`
--
ALTER TABLE `facturacion_detalle`
  MODIFY `detalle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
