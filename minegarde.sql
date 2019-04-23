-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-04-2019 a las 03:18:09
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `minegarde`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `elemento`
--

CREATE TABLE `elemento` (
  `idEle` int(11) NOT NULL,
  `nomEle` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `elemento`
--

INSERT INTO `elemento` (`idEle`, `nomEle`) VALUES
(1, 'fuego'),
(2, 'agua'),
(3, 'hielo'),
(4, 'trueno'),
(5, 'dragon'),
(6, 'basico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitat`
--

CREATE TABLE `habitat` (
  `idHab` int(11) NOT NULL,
  `nomHab` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `climaHab` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descHab` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mision`
--

CREATE TABLE `mision` (
  `idMis` int(11) NOT NULL,
  `nomMis` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `habMis` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `monMis` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `desMis` text COLLATE utf8_unicode_ci NOT NULL,
  `recMis` int(255) NOT NULL,
  `desLrgMis` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mision`
--

INSERT INTO `mision` (`idMis`, `nomMis`, `habMis`, `monMis`, `desMis`, `recMis`, `desLrgMis`) VALUES
(1, 'El Rey de los Cielos', 'Isla Desierta', 'Rathalos', 'Caza un Rathalos', 10000, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monstruo`
--

CREATE TABLE `monstruo` (
  `idMon` int(11) NOT NULL,
  `nomMon` varchar(40) COLLATE utf8_spanish2_ci NOT NULL,
  `eleMon` int(11) DEFAULT NULL,
  `desMon` text COLLATE utf8_spanish2_ci,
  `imgMon` varchar(500) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `monstruo`
--

INSERT INTO `monstruo` (`idMon`, `nomMon`, `eleMon`, `desMon`, `imgMon`) VALUES
(1, 'Rathalos', 1, 'La contraparte masculina de la familia de los Rath, archiconocido como el Rey de los Cielos. Posee unas garras venenosas que usa desde el aire para desgarrar a su presa tras atacar con sus potentes bolas de fuego.', 'imagenes/rathalosimg.png'),
(2, 'Lagiacrus', 4, 'Leviathan que emplea sus conchas eléctricas para acabar con sus adversarios.', ''),
(3, 'Nargacuga', 6, 'Un félido extremadamente flexible capaz de emplear su cola como arma, bien sea para barrer elsuelo, golpear verticalmente con la fuerza adquirida de un salto mortal, o disparar espinas capaces de desgarrar armaduras.', ''),
(4, 'Zamtrios', 3, 'Un anfibio capaz de atravesar banquisas gracias a una prolongación de su cráneo, atacando por sorpresa a los monstruos que habitan tanto sobre como bajo ellas. Puede solidificar el agua adherida a sus extremidades para protegerlas, así como de inflarse como un pez globo para intimidar o aplastar a sus adversarios', ''),
(5, 'Gore Magala', 5, 'Dragón sin ojos capaz de analizar su ambiente gracias a unas esporas que extiende desde sus alas.', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `elemento`
--
ALTER TABLE `elemento`
  ADD PRIMARY KEY (`idEle`);

--
-- Indices de la tabla `mision`
--
ALTER TABLE `mision`
  ADD PRIMARY KEY (`idMis`);

--
-- Indices de la tabla `monstruo`
--
ALTER TABLE `monstruo`
  ADD PRIMARY KEY (`idMon`),
  ADD KEY `eleMon` (`eleMon`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `monstruo`
--
ALTER TABLE `monstruo`
  ADD CONSTRAINT `monstruo_ibfk_1` FOREIGN KEY (`eleMon`) REFERENCES `elemento` (`idEle`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
