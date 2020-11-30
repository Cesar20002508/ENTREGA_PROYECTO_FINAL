-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-11-2020 a las 23:41:36
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tallergarcia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE `citas` (
  `idcita` int(11) NOT NULL,
  `nombre_cita` varchar(30) NOT NULL,
  `hora_cita` varchar(20) NOT NULL,
  `motivo_cita` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `citas`
--

INSERT INTO `citas` (`idcita`, `nombre_cita`, `hora_cita`, `motivo_cita`) VALUES
(1, 'cesar', '3:06pm', 'humo en el motor'),
(2, 'juan', '10:10 pm', 'preventiva'),
(3, 'carlos', '10:10 pm', 'cambio de muelles'),
(4, 'sebastian', '3:06 pm', 'mantenimiento preventivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotizaciones`
--

CREATE TABLE `cotizaciones` (
  `idcotizacion` int(11) NOT NULL,
  `nombre_cotizacion` varchar(30) NOT NULL,
  `correo_cotizacion` varchar(25) NOT NULL,
  `motivo_cotizacion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cotizaciones`
--

INSERT INTO `cotizaciones` (`idcotizacion`, `nombre_cotizacion`, `correo_cotizacion`, `motivo_cotizacion`) VALUES
(1, 'sebastian', 'sebastian_@hotmail.com', 'mantenimiento general de tractocamion'),
(2, 'manuel', 'manuel_@hotmail.com', 'mantenimiento general de excavadora'),
(3, 'sebastian', 'sebastian_@hotmail.com', 'ventana para baño');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumos`
--

CREATE TABLE `insumos` (
  `id_insumo` int(11) NOT NULL,
  `producto_insumo` varchar(45) NOT NULL,
  `cantidad_insumo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `insumos`
--

INSERT INTO `insumos` (`id_insumo`, `producto_insumo`, `cantidad_insumo`) VALUES
(1, 'lamina 3/16', '3 hojas'),
(3, 'tuercas', '25'),
(4, 'pintura', '4 litros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id_herramienta` int(11) NOT NULL,
  `nombre_herramienta` varchar(45) NOT NULL,
  `cantidad_herramienta` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`id_herramienta`, `nombre_herramienta`, `cantidad_herramienta`) VALUES
(2, 'llaves de 1/4', '2'),
(3, 'desarmadores', '20'),
(4, 'lamparas', '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicioadomicilio`
--

CREATE TABLE `servicioadomicilio` (
  `id_sevicioD` int(11) NOT NULL,
  `nombre_servicioD` varchar(30) NOT NULL,
  `direccion_sevicioD` varchar(45) NOT NULL,
  `servicio_sevicioD` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `servicioadomicilio`
--

INSERT INTO `servicioadomicilio` (`id_sevicioD`, `nombre_servicioD`, `direccion_sevicioD`, `servicio_sevicioD`) VALUES
(1, 'ana', '10 de mayo ', 'cambio de muelles'),
(2, 'maria', '16 de septiembre #512', 'cambio de llantas'),
(3, 'sebastian', 'avenida universidad', 'cambio de muelles');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(1, 'Oswaldo', 'voodoo65666', 'cofg08_@hotmail.com'),
(2, 'Ana', '$2y$10$PxeZ0Ry0kOBpXr1Eez', 'ana_@hotmail.com'),
(3, 'sebastian', '$2y$10$8nifUrc.FNucfIJH8x', 'sebastian_@hotmail.com'),
(4, 'david', '$2y$10$/S1MSUGJfrt0ItaBAS', 'david_@hotmail.com'),
(5, 'tere', '$2y$10$nX33Ea.PJURnkKeA5U', 'tere_123@hotmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`idcita`);

--
-- Indices de la tabla `cotizaciones`
--
ALTER TABLE `cotizaciones`
  ADD PRIMARY KEY (`idcotizacion`);

--
-- Indices de la tabla `insumos`
--
ALTER TABLE `insumos`
  ADD PRIMARY KEY (`id_insumo`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id_herramienta`);

--
-- Indices de la tabla `servicioadomicilio`
--
ALTER TABLE `servicioadomicilio`
  ADD PRIMARY KEY (`id_sevicioD`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `citas`
--
ALTER TABLE `citas`
  MODIFY `idcita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cotizaciones`
--
ALTER TABLE `cotizaciones`
  MODIFY `idcotizacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `insumos`
--
ALTER TABLE `insumos`
  MODIFY `id_insumo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id_herramienta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `servicioadomicilio`
--
ALTER TABLE `servicioadomicilio`
  MODIFY `id_sevicioD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
