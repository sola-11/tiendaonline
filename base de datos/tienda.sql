-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-05-2021 a las 18:58:06
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbldetalleventa`
--

CREATE TABLE `tbldetalleventa` (
  `ID` int(11) NOT NULL,
  `IDVENTA` int(11) NOT NULL,
  `IDPRODUCTO` int(11) NOT NULL,
  `PRECIOUNITARIO` decimal(20,2) NOT NULL,
  `CANTIDAD` int(11) NOT NULL,
  `DESCARGADO` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbldetalleventa`
--

INSERT INTO `tbldetalleventa` (`ID`, `IDVENTA`, `IDPRODUCTO`, `PRECIOUNITARIO`, `CANTIDAD`, `DESCARGADO`) VALUES
(1, 12, 10, '150.00', 1, 0),
(2, 12, 13, '185.00', 1, 0),
(3, 12, 12, '190.00', 1, 0),
(4, 13, 10, '150.00', 1, 0),
(5, 13, 13, '185.00', 1, 0),
(6, 13, 12, '190.00', 1, 0),
(7, 14, 10, '150.00', 1, 0),
(8, 14, 13, '185.00', 1, 0),
(9, 14, 12, '190.00', 1, 0),
(10, 15, 10, '150.00', 1, 0),
(11, 15, 13, '185.00', 1, 0),
(12, 15, 12, '190.00', 1, 0),
(13, 16, 10, '150.00', 1, 0),
(14, 16, 13, '185.00', 1, 0),
(15, 16, 12, '190.00', 1, 0),
(16, 17, 10, '150.00', 1, 0),
(17, 17, 13, '185.00', 1, 0),
(18, 17, 12, '190.00', 1, 0),
(19, 18, 10, '150.00', 1, 0),
(20, 18, 13, '185.00', 1, 0),
(21, 18, 12, '190.00', 1, 0),
(22, 19, 10, '150.00', 1, 0),
(23, 19, 12, '190.00', 1, 0),
(24, 20, 10, '150.00', 1, 0),
(25, 20, 12, '190.00', 1, 0),
(26, 21, 10, '150.00', 1, 0),
(27, 21, 12, '190.00', 1, 0),
(28, 22, 14, '85.00', 1, 0),
(29, 22, 16, '150.00', 1, 0),
(30, 23, 14, '85.00', 1, 0),
(31, 23, 16, '150.00', 1, 0),
(32, 24, 5, '500.00', 1, 0),
(33, 24, 15, '275.00', 1, 0),
(34, 25, 5, '500.00', 1, 0),
(35, 25, 15, '275.00', 1, 0),
(36, 26, 5, '500.00', 1, 0),
(37, 26, 15, '275.00', 1, 0),
(38, 27, 5, '500.00', 1, 0),
(39, 27, 15, '275.00', 1, 0),
(40, 28, 7, '185.00', 1, 0),
(41, 28, 14, '85.00', 1, 0),
(42, 29, 7, '185.00', 1, 0),
(43, 29, 14, '85.00', 1, 0),
(44, 30, 7, '185.00', 1, 0),
(45, 30, 14, '85.00', 1, 0),
(46, 31, 7, '185.00', 1, 0),
(47, 31, 14, '85.00', 1, 0),
(48, 32, 7, '185.00', 1, 0),
(49, 32, 14, '85.00', 1, 0),
(50, 33, 7, '185.00', 1, 0),
(51, 33, 14, '85.00', 1, 0),
(52, 34, 7, '185.00', 1, 0),
(53, 34, 14, '85.00', 1, 0),
(54, 35, 7, '185.00', 1, 0),
(55, 35, 14, '85.00', 1, 0),
(56, 36, 7, '185.00', 1, 0),
(57, 36, 14, '85.00', 1, 0),
(58, 37, 7, '185.00', 1, 0),
(59, 37, 14, '85.00', 1, 0),
(60, 38, 7, '185.00', 1, 0),
(61, 38, 14, '85.00', 1, 0),
(62, 39, 7, '185.00', 1, 0),
(63, 39, 14, '85.00', 1, 0),
(64, 40, 7, '185.00', 1, 0),
(65, 40, 14, '85.00', 1, 0),
(66, 41, 7, '185.00', 1, 0),
(67, 41, 14, '85.00', 1, 0),
(68, 42, 7, '185.00', 1, 0),
(69, 42, 14, '85.00', 1, 0),
(70, 43, 7, '185.00', 1, 0),
(71, 43, 14, '85.00', 1, 0),
(72, 44, 7, '185.00', 1, 0),
(73, 44, 14, '85.00', 1, 0),
(74, 45, 7, '185.00', 1, 0),
(75, 45, 14, '85.00', 1, 0),
(76, 46, 7, '185.00', 1, 0),
(77, 46, 14, '85.00', 1, 0),
(78, 47, 7, '185.00', 1, 0),
(79, 47, 14, '85.00', 1, 0),
(80, 48, 7, '185.00', 1, 0),
(81, 48, 14, '85.00', 1, 0),
(82, 49, 7, '185.00', 1, 0),
(83, 49, 14, '85.00', 1, 0),
(84, 50, 7, '185.00', 1, 0),
(85, 50, 14, '85.00', 1, 0),
(86, 51, 6, '2500.00', 1, 0),
(87, 52, 6, '2500.00', 1, 0),
(88, 53, 6, '2500.00', 1, 0),
(89, 54, 6, '2500.00', 1, 0),
(90, 55, 6, '2500.00', 1, 0),
(91, 56, 7, '185.00', 1, 0),
(92, 56, 8, '350.00', 1, 0),
(93, 56, 11, '200.00', 1, 0),
(94, 56, 6, '2500.00', 1, 0),
(95, 57, 11, '200.00', 1, 0),
(96, 58, 11, '200.00', 1, 0),
(97, 59, 11, '200.00', 1, 0),
(98, 60, 11, '200.00', 1, 0),
(99, 61, 11, '200.00', 1, 0),
(100, 62, 11, '200.00', 1, 0),
(101, 63, 11, '200.00', 1, 0),
(102, 64, 11, '200.00', 1, 0),
(103, 65, 11, '200.00', 1, 0),
(104, 66, 11, '200.00', 1, 0),
(105, 67, 11, '200.00', 1, 0),
(106, 68, 11, '200.00', 1, 0),
(107, 69, 11, '200.00', 1, 0),
(108, 70, 11, '200.00', 1, 0),
(109, 71, 11, '200.00', 1, 0),
(110, 72, 11, '200.00', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblproductos`
--

CREATE TABLE `tblproductos` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Precio` decimal(10,0) NOT NULL,
  `Descripción` text NOT NULL,
  `Imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblproductos`
--

INSERT INTO `tblproductos` (`ID`, `Nombre`, `Precio`, `Descripción`, `Imagen`) VALUES
(5, 'KIT', '500', 'Kit de coleros con pompones, ganchitos, clips de tela con figurita, coleros con ganchitos y coleros con figuritas, ideal para la más pequeñita de la casa. Olvídate de regalos aburridos y dale un KIT divertido.', 'img/14.webp'),
(6, 'Maquina Freidora y tostadora \r\n Turbo Cecofry 4D', '2500', 'Maquina freidora portable con dos freidoras, y una tostadora para que tus días de campo sean mas divertidos y fáciles para cocinar.\r\nHecha en EE.UU, color rojo sangre, marca Turbo Cecofry 4D.', 'img/25.jpg'),
(7, 'Coleros', '185', 'Coleros con figuritas divertidas de fruta, hecho en China, ideal para eventos divertidos, cumpleaños y como pulsera también. ', 'img/10.jpg'),
(8, 'Moco de gorila', '350', 'Podrás realizar los peinados que te puedas imaginar con la fuerza de este Gel de pelo, realizando tus actividades diarias y manteniendo tu estilo, activable con el agua.', 'img/4.jpg'),
(9, 'Cepillo de babyhair', '225', 'Cepillos de control de bordes: el cepillo mantiene los bordes suaves para una apariencia relajada y pulida de control\r\nMarca: CANTU, disponible en diferentes colores, basta de cepillos cualquiera usa este y tus babyhair se verán profesionales', 'img/5.jpg'),
(10, 'Clips de pelo', '150', 'Clips con perlas incrustadas,  perlas cuidadosamente hechas a mano que se pueden pasar. Ideal para cualquier ocasión, para bodas, días cualquiera, pageants, bailes. ', 'img/11.jpg'),
(11, 'Ganchitos para pelo', '200', 'Ganchitos para el pelo, con figuras, ideal para días casuales y festivos, olvídate de clips aburridos y usa estos adorables ganchitos.', 'img/21.jpg'),
(12, 'Brillo Labial', '190', 'Gloss para hidratar tus labios, disfruta de un labial divertido que te hara brilla, precio por unidad.', 'img/23.jpg'),
(13, 'Mini pinzas para pelo', '185', 'Mini pinzas para el pelo de mariposa de colores para mujer y niña, 20 Uds., pasadores de garra de Color mezclado, Clip de mandíbula, bonita horquilla, accesorios para el cabello', 'img/28.jpg'),
(14, 'Coleros', '85', 'Coleros adorables que puedes usar en cualquier ocasión, incluso si quieres usarlo como pulsera.', 'img/9.png'),
(15, 'Cortador ', '275', 'Basta de llorar al cortar cebollas, y tener una lucha para cortar , ideal para cortar cualquier alimento tomates, limones y demás, cuchillas filosas que te permiten cortar, disponible en colores, rojo, azul, negro y blanco', 'img/26.jpg'),
(16, 'Clips de pelo  ', '150', 'Hecho en EE.UU, ideal para días festivos, para todas las edades. Diviértete con todos los colores.', 'img/20.png'),
(17, 'Sujeta pelo', '290', 'Hecho en Europa, 100% plástico afinado, colores elegantes, para situaciones festivas o uso diario.', 'img/12.jpg'),
(18, 'Sintillos de conejo', '195', 'Hecho en EE.UU, sintillos con figuras de orejitas de conejos ideal para días divertidos', 'img/17.jpg'),
(19, 'Ganchos de pelo de tela', '215', 'Llena tu día de colores con estos ganchitos. Hecho en EE.UU, tela de hilo de lana, ideal para días festivos.', 'img/15.jpg'),
(20, 'Coleros plegable', '195', 'Hecho en China, coleros con tela caída, tela fina, ideal para lucir un estilo juvetil, pruebalos.', 'img/18.jpg'),
(21, 'Sintillos de perlas', '282', 'Hecho en Rep. Dom., ideal para ocasiones de fiesta y elegantes, hecho de hierro y tela gruesa, y perlas originales.', 'img/7.webp'),
(22, 'Coleros de colores', '125', 'Hecho en EE.UU, coleros de colores para días festivos, úsalos como desees. ATREVETE...', 'img/8.webp'),
(23, 'Coleros mariposa', '135', 'Hecho en italia, coleros con figuras de mariposa, ideal para ocasiones festivas y puedes usarlo como guantero.', 'img/16.jpg'),
(24, 'Pulseras coleros', '75', 'Hecho en EE.UU, pulseras con perlas que puedes usar como coleros, en colores elegantes, ideal para momentos elegante y divertidos.', 'img/47.jpeg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblventas`
--

CREATE TABLE `tblventas` (
  `ID` int(11) NOT NULL,
  `ClaveTransaccion` varchar(250) NOT NULL,
  `PaypalDatos` text NOT NULL,
  `Fecha` datetime NOT NULL,
  `Correo` varchar(5000) NOT NULL,
  `Total` decimal(60,2) NOT NULL,
  `Status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblventas`
--

INSERT INTO `tblventas` (`ID`, `ClaveTransaccion`, `PaypalDatos`, `Fecha`, `Correo`, `Total`, `Status`) VALUES
(1, '12345678910', '', '2021-04-29 12:12:00', 'batistasolanny026@gmail.com', '700.00', 'pendiente'),
(2, '12345678910', '', '2021-04-29 12:12:00', 'batistasolanny026@gmail.com', '700.00', 'pendiente'),
(3, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-01 06:20:32', 'solannybatista12@gmail.com', '545.00', 'pendiente'),
(4, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-01 06:24:15', 'solange@gmail.com', '3025.00', 'pendiente'),
(5, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-01 06:38:52', 'solange@gmail.com', '3025.00', 'pendiente'),
(6, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-01 06:46:41', 'Batistasolanny026@gmail.com', '3010.00', 'pendiente'),
(7, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-01 06:47:32', 'solannybatista125@gmail.com', '2585.00', 'pendiente'),
(8, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-01 06:48:35', 'solannybatista125@gmail.com', '2585.00', 'pendiente'),
(9, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-01 06:49:03', 'oscarjesus12@gamil.com', '275.00', 'pendiente'),
(10, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-01 06:49:49', 'oscarjesus12@gamil.com', '275.00', 'pendiente'),
(11, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-01 06:50:15', 'oscarjesus12@gamil.com', '275.00', 'pendiente'),
(12, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-01 06:51:41', 'manueldiaz06@gmail.com', '525.00', 'pendiente'),
(13, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-01 06:53:12', 'manueldiaz06@gmail.com', '525.00', 'pendiente'),
(14, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-01 06:59:01', 'manueldiaz06@gmail.com', '525.00', 'pendiente'),
(15, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-01 07:00:30', 'manueldiaz06@gmail.com', '525.00', 'pendiente'),
(16, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-01 07:01:42', 'manueldiaz06@gmail.com', '525.00', 'pendiente'),
(17, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-01 07:02:33', 'manueldiaz06@gmail.com', '525.00', 'pendiente'),
(18, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-01 07:05:09', 'manueldiaz06@gmail.com', '525.00', 'pendiente'),
(19, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-01 07:05:24', 'solannybatista1882@gmail.com', '340.00', 'pendiente'),
(20, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-01 07:11:00', 'solannybatista1882@gmail.com', '340.00', 'pendiente'),
(21, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-01 07:13:50', 'solannybatista1882@gmail.com', '340.00', 'pendiente'),
(22, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-01 07:25:58', 'penasolanny026@gmail', '235.00', 'pendiente'),
(23, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-01 09:38:17', 'penasolanny026@gmail', '235.00', 'pendiente'),
(24, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-01 10:14:00', 'Batistasolanny026@gmail.com', '775.00', 'pendiente'),
(25, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-01 10:16:29', 'Batistasolanny026@gmail.com', '775.00', 'pendiente'),
(26, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-01 10:18:32', 'Batistasolanny026@gmail.com', '775.00', 'pendiente'),
(27, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-01 10:19:36', 'Batistasolanny026@gmail.com', '775.00', 'pendiente'),
(28, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-03 05:01:20', 'solannybatista12@gmail.com', '270.00', 'pendiente'),
(29, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-03 05:02:27', 'solannybatista12@gmail.com', '270.00', 'pendiente'),
(30, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-03 05:03:12', 'solannybatista12@gmail.com', '270.00', 'pendiente'),
(31, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-03 05:03:16', 'solannybatista12@gmail.com', '270.00', 'pendiente'),
(32, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-03 05:03:23', 'solannybatista12@gmail.com', '270.00', 'pendiente'),
(33, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-03 05:03:45', 'solannybatista12@gmail.com', '270.00', 'pendiente'),
(34, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-03 05:06:05', 'solannybatista12@gmail.com', '270.00', 'pendiente'),
(35, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-03 05:17:26', 'solannybatista12@gmail.com125', '270.00', 'pendiente'),
(36, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-03 05:35:33', 'batistasolanny026@gmail.com', '270.00', 'pendiente'),
(37, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-03 05:35:53', 'batistasolanny026@gmail.com', '270.00', 'pendiente'),
(38, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-03 05:36:50', 'batistasolanny026@gmail.com', '270.00', 'pendiente'),
(39, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-03 05:56:34', 'batistasolanny026@gmail.com', '270.00', 'pendiente'),
(40, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-03 06:20:56', 'solannybatista12@gmail.com', '270.00', 'pendiente'),
(41, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-03 06:21:16', 'solannybatista12@gmail.com', '270.00', 'pendiente'),
(42, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-03 06:21:50', 'solannybatista12@gmail.com', '270.00', 'pendiente'),
(43, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-03 06:48:27', 'solannybatista12@gmail.com', '270.00', 'pendiente'),
(44, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-03 06:48:48', 'solannybatista12@gmail.com', '270.00', 'pendiente'),
(45, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-03 06:51:48', 'solannybatista12@gmail.com', '270.00', 'pendiente'),
(46, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-03 07:43:21', 'solannybatista12@gmail.com', '270.00', 'pendiente'),
(47, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-03 08:25:54', 'solannybatista12@gmail.com', '270.00', 'pendiente'),
(48, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-03 08:26:04', 'solannybatista12@gmail.com', '270.00', 'pendiente'),
(49, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-03 08:26:37', 'solannybatista12@gmail.com', '270.00', 'pendiente'),
(50, 'tpi6d37u1mc48ub5oklrhaat46', '', '2021-05-03 08:43:48', 'solannybatista12@gmail.com', '270.00', 'pendiente'),
(51, 'njhuotd1bn89b6fqiehcu8qgf6', '', '2021-05-04 01:25:59', 'solannybatista12@gmail.com', '2500.00', 'pendiente'),
(52, 'njhuotd1bn89b6fqiehcu8qgf6', '', '2021-05-04 01:31:21', 'batistasolanny026@gmail.com', '2500.00', 'pendiente'),
(53, 'njhuotd1bn89b6fqiehcu8qgf6', '', '2021-05-04 02:00:33', 'batistasolanny026@gmail.com', '2500.00', 'pendiente'),
(54, 'njhuotd1bn89b6fqiehcu8qgf6', '', '2021-05-04 08:03:47', 'solannybatista12@gmail.com', '2500.00', 'pendiente'),
(55, 'duv3m3q0amc8l846s8i01r5lu3', '', '2021-05-05 13:58:26', 'batistasolanny026@gmail.com', '2500.00', 'pendiente'),
(56, 'duv3m3q0amc8l846s8i01r5lu3', '', '2021-05-05 17:51:10', 'solannybatista12@gmail.com125', '3235.00', 'pendiente'),
(57, 'duv3m3q0amc8l846s8i01r5lu3', '', '2021-05-05 23:13:50', 'Batistasolanny026@gmail.com', '200.00', 'pendiente'),
(58, 'duv3m3q0amc8l846s8i01r5lu3', '', '2021-05-05 23:15:02', 'Batistasolanny026@gmail.com', '200.00', 'pendiente'),
(59, 'duv3m3q0amc8l846s8i01r5lu3', '', '2021-05-05 23:17:08', 'Batistasolanny026@gmail.com', '200.00', 'pendiente'),
(60, 'duv3m3q0amc8l846s8i01r5lu3', '', '2021-05-05 23:18:09', 'Batistasolanny026@gmail.com', '200.00', 'pendiente'),
(61, 'duv3m3q0amc8l846s8i01r5lu3', '', '2021-05-05 23:18:41', 'Batistasolanny026@gmail.com', '200.00', 'pendiente'),
(62, 'duv3m3q0amc8l846s8i01r5lu3', '', '2021-05-05 23:19:20', 'Batistasolanny026@gmail.com', '200.00', 'pendiente'),
(63, 'duv3m3q0amc8l846s8i01r5lu3', '', '2021-05-05 23:19:48', 'Batistasolanny026@gmail.com', '200.00', 'pendiente'),
(64, 'duv3m3q0amc8l846s8i01r5lu3', '', '2021-05-05 23:20:07', 'Batistasolanny026@gmail.com', '200.00', 'pendiente'),
(65, 'duv3m3q0amc8l846s8i01r5lu3', '', '2021-05-05 23:20:35', 'Batistasolanny026@gmail.com', '200.00', 'pendiente'),
(66, 'duv3m3q0amc8l846s8i01r5lu3', '', '2021-05-05 23:20:56', 'Batistasolanny026@gmail.com', '200.00', 'pendiente'),
(67, 'duv3m3q0amc8l846s8i01r5lu3', '', '2021-05-05 23:38:22', 'solannybatista12@gmail.com', '200.00', 'pendiente'),
(68, 'duv3m3q0amc8l846s8i01r5lu3', '', '2021-05-05 23:38:57', 'solannybatista12@gmail.com', '200.00', 'pendiente'),
(69, 'duv3m3q0amc8l846s8i01r5lu3', '', '2021-05-05 23:39:30', 'solannybatista12@gmail.com', '200.00', 'pendiente'),
(70, 'duv3m3q0amc8l846s8i01r5lu3', '', '2021-05-05 23:39:57', 'solannybatista12@gmail.com', '200.00', 'pendiente'),
(71, 'duv3m3q0amc8l846s8i01r5lu3', '', '2021-05-05 23:41:22', 'solannybatista12@gmail.com', '200.00', 'pendiente'),
(72, 'duv3m3q0amc8l846s8i01r5lu3', '', '2021-05-05 23:41:34', 'solannybatista12@gmail.com', '200.00', 'pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblviaje`
--

CREATE TABLE `tblviaje` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Precio` decimal(10,0) NOT NULL,
  `Descripción` text NOT NULL,
  `Imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblviaje`
--

INSERT INTO `tblviaje` (`ID`, `Nombre`, `Precio`, `Descripción`, `Imagen`) VALUES
(1, 'Casa de acampar', '1595', 'Hecha en europa, color verde, fuerte cableado, acompañada de las barillas y cable spara montarla, con buen espacio y tela 100% poliester.', 'img/27.jpg'),
(2, 'Casa de acampar impermeable, con espacio para tres o más personas y piso de algodón ', '2250', 'Hecha en Inglaterra, tela de redes nylon, tamaño doble, color verde, impermeable.', 'img/41.jpg'),
(3, 'Mochila de acampar', '2000', 'Hecha en Italia, impermeable, 100%poliester, diferentes divisiones bolsillos espaciosos, con algodón en las agarraderas.', 'img/44.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbldetalleventa`
--
ALTER TABLE `tbldetalleventa`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDVENTA` (`IDVENTA`),
  ADD KEY `IDPRODUCTO` (`IDPRODUCTO`);

--
-- Indices de la tabla `tblproductos`
--
ALTER TABLE `tblproductos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tblventas`
--
ALTER TABLE `tblventas`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tblviaje`
--
ALTER TABLE `tblviaje`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbldetalleventa`
--
ALTER TABLE `tbldetalleventa`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT de la tabla `tblproductos`
--
ALTER TABLE `tblproductos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `tblventas`
--
ALTER TABLE `tblventas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `tblviaje`
--
ALTER TABLE `tblviaje`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbldetalleventa`
--
ALTER TABLE `tbldetalleventa`
  ADD CONSTRAINT `tbldetalleventa_ibfk_1` FOREIGN KEY (`IDVENTA`) REFERENCES `tblventas` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbldetalleventa_ibfk_2` FOREIGN KEY (`IDPRODUCTO`) REFERENCES `tblproductos` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
