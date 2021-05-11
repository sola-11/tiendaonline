-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-05-2021 a las 05:25:50
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
-- Estructura de tabla para la tabla `tblcocina`
--

CREATE TABLE `tblcocina` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Precio` decimal(10,0) NOT NULL,
  `Descripción` text NOT NULL,
  `Imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblcocina`
--

INSERT INTO `tblcocina` (`ID`, `Nombre`, `Precio`, `Descripción`, `Imagen`) VALUES
(1, 'KIT de cucharones', '1000', 'Hechos en EE.UU, material plástico duro, hierro inoxidable.', 'img/49.jpg'),
(2, 'Nevera moderna', '15000', 'Hecho en inglaterra, material de acero inoxisable.', 'img/70.jpg'),
(3, 'Cucharón sacador y colador de acero', '325', 'Hecho en EE.UU, cucharon sacador, para colar los alimentos, sea agua o aceite lo que se cuele, hecho de acero inoxidable.', 'img/51.jpg'),
(4, 'Cucharón S.C plástico', '215', 'Hecho en EE.UU, material plástico duro', 'img/52.jpg'),
(5, 'Kit de cucharones', '250', 'Hecho en R.D, plastico medio.', 'img/53.jpg'),
(6, 'KIT de cucharones para pasteleria', '295', 'Hecho en china, plástico duro y goma resistente', 'img/54.jpg'),
(7, 'Olla eléctrica', '3500', 'Hecho en Italia, acero inoxidable, hierve y calienta automática', 'img/55.jpg'),
(8, 'Sarten ', '1200', 'Hecho en EE.UU, material inoxidable, no pega alimentos y mantiende la temperatura, forma cuadrada', 'img/56.jpg'),
(9, 'Kit de cocina ', '5125', 'Hecho en EE.UU, material resistente, inoxidable y duradero. Tiene: cucharones, ollas, sarten, tabla de material de olla.', 'img/57.jpg'),
(10, 'Sarten y freidora en forma cuadrada, 3 temperaturas', '1000', 'Hecha en EE.UU, no pega alimentos ideal para cocinar carde y demás, acero inoxidable', 'img/71.jpg'),
(11, 'Licuadora', '1500', 'Hecho en Rusia, cuchillas filosas inoxidables, baso alargado, uso automatico', 'img/59.jpg'),
(12, 'Tabla de picar', '500', 'Hecho en EE.UU, 1005 caoba , inmune a la calcoma, madera resistente', 'img/60.jpg'),
(13, 'Cucharones de cocina', '369', 'Kit hecho en china, cucharones especiales y personalizados, material resistente buena goma.', 'img/61.jpg'),
(14, 'Maquina de hacer helado', '2999', 'Hecha en Canada, 4 velocidades', 'img/76.jpg'),
(15, 'Freidora portatil', '5000', 'Hecho en Rusia', 'img/83.jpg'),
(16, 'Estufa negra', '5900', 'Hecho en Europa, 4 urnillas, horno moderno ', 'img/64.jpg'),
(17, 'Estufa doble', '8500', 'Hecho en EE.UU, estufa doble horno, 6 urnillas', 'img/65.jfif'),
(18, 'Estufa electrica', '2500', 'Hecha en EE.UU, cargable, material resistente buena temperatura, 3 urnillas', 'img/66.jpg'),
(19, 'Estufa', '6200', 'Hecho en Italia, 4 urnillas, horno definido con 3 temperaturas', 'img/67.jpeg'),
(20, 'Licuadora', '2550', 'Hecho en Europa, 5 velocidades, cuchillas de hierro inoxidable', 'img/75.jpg'),
(21, 'Estufa portatil de 4 urnas y 2 velocidades', '2600', 'Hecha en EE.UU,4 urnillas, 2 temperaturas. acero inoxidable', 'img/69.jpg'),
(22, 'Sarten  de acero inoxidable', '520', 'Hecho en inglaterra, material de acero inoxisable.', 'img/50.jpg'),
(23, 'KIT de ollas', '2000', 'Hecho en Italia, material inoxidable, no pega alimentos contiene ollas de diferentes tamaños', 'img/58.png'),
(24, 'Estufa portatil, 2 urnas', '2100', 'Hecha en EE.UU, 2 urnillas, 2 temperaturas', 'img/68.jpg'),
(25, 'Microondas moderno', '5600', 'Hecho en Italia, 7 temperaturas', 'img/72.jpeg'),
(26, 'Microondas digital', '3000', 'Hecho en Canada, 9 temperaturas, pantalla táctil de indicación', 'img/73.jpg'),
(27, 'Licuadora', '950', 'Hecho en Rusia, material inoxidable y cuchillas filosas y resistentes', 'img/74.jpg'),
(28, 'KIT en madera\r\n', '900', 'Hecho en R.D, madera resistente, tamaños normales, para todos los usos , soporta calor', 'img/63.jpg'),
(29, 'Licuadora rotable', '1500', 'Hecha en Europa, cuchillas filosas, taba rotable, puede voltear y usar y viceversas como 2 velocidades en un lado y 3 y digitales en el otro', 'img/77.jpg'),
(30, 'Batidora', '2000', 'Hecha en Inglaterra, 5 velocidades', 'img/78.jpg'),
(31, 'Batidora unitaria', '750', 'Hecha en Canada, 3 velocidades', 'img/79.jpg'),
(32, 'Maquina de helado', '2500', 'Hecha en China, requiere hielo y un ambiente muy frio para funcionar bien', 'img/82.jpg'),
(33, 'Maquina de helado', '2800', 'Hecho en R.D, madera resistente, tamaños normales, para todos los usos , soporta calor', 'img/81.jpg'),
(34, 'Freidora sarten', '2500', 'Hecha en China, ideal para carne y demás, uso de parrila', 'img/71.jpg'),
(35, 'Maquina de cocinar', '5900', 'Hecha en Italia, cocina, tuesta, fríe y mantiene 3 temperaturas, 1 media y 2calientes', 'img/84.jpg'),
(36, 'Manga pastelera', '300', 'Hecha en Italia, salidas de figura y tambien hace bolitas', 'img/62.jpg'),
(37, 'Maquina de waffles', '3050', 'Hecha en Rusia, 3 temperaturas', 'img/85.jpg'),
(38, 'Maquina de helado', '1950', 'Hecha en china, requiere hielo y un ambiente frio para hacer los mejores helados', 'img/80.jpg'),
(39, 'Kit ', '2900', 'Hecha en Italia, 2 temperaturas', 'img/87.jpg'),
(40, 'Maquina de pancakes', '2900', 'Hecha en Italia, 2 temperaturas', 'img/86.png'),
(41, 'Zafacon', '653', 'Hecho en Inglaterra, zafacón automático abre con el sensor del tacto humano', 'img/35.jpg'),
(42, 'Freidora', '3500', 'Hecho en Italia, 4 temperaturas', 'img/88.jpg'),
(43, 'Ganchos de cocina', '175', 'Hecho en Rusia, inoxisable', 'img/33.jpg'),
(44, 'Tijeras de cocina', '163', 'Hecho en Colombia', 'img/34.webp');

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
(110, 72, 11, '200.00', 1, 0),
(111, 73, 7, '185.00', 1, 0),
(112, 73, 21, '282.00', 1, 0),
(113, 73, 14, '85.00', 1, 0),
(114, 73, 12, '190.00', 1, 0),
(115, 73, 9, '225.00', 1, 0),
(116, 74, 6, '2500.00', 1, 0),
(117, 74, 7, '185.00', 1, 0),
(118, 74, 5, '250.00', 1, 0),
(121, 75, 7, '4100.00', 1, 0),
(122, 75, 10, '20000.00', 1, 0),
(124, 75, 12, '15900.00', 1, 0),
(125, 76, 7, '4100.00', 1, 0),
(126, 76, 10, '20000.00', 1, 0),
(128, 76, 12, '15900.00', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblhabitaciones`
--

CREATE TABLE `tblhabitaciones` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Precio` decimal(10,2) NOT NULL,
  `Descripción` text NOT NULL,
  `Imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(24, 'Pulseras coleros', '75', 'Hecho en EE.UU, pulseras con perlas que puedes usar como coleros, en colores elegantes, ideal para momentos elegante y divertidos.', 'img/47.jpeg'),
(25, 'Lentes oscuros', '269', 'Hechos en EE.UU', 'img/48.jpg'),
(26, 'Lentes tigre', '296', 'Hecho en Dubai', 'img/30s.jpg'),
(27, 'Mochila de acampar', '700', 'Hecho en R.D', 'img/43.jpg'),
(28, 'Lentes rosa', '256', 'Hecho en inglaterra', 'img/32s.jpg'),
(29, 'Tops angel negro con rosa neon', '520', 'Hecho en Austria', 'img/33s.jfif'),
(30, 'Cámara instantánea', '595', 'Hecho en USA', 'img/39s.png'),
(31, 'Lentes negros', '225', 'Hecho en R.D', 'img/31s.jpeg'),
(32, 'Headphones', '1200', 'Hecho en Italia', 'img/35s.jpg'),
(33, 'Top', '195', 'Hecho en China', 'img/34s.jpg'),
(34, 'Headphones es especial 3 por el precio de 1', '1259', 'Hecho en Australia', 'img/36s.png'),
(35, 'Lampara de galeria', '955', 'Hecho en Rusia', 'img/37.webp'),
(36, 'Reloj estilo antiguo', '988', 'Hecho en USA', 'img/38.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblsala`
--

CREATE TABLE `tblsala` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Precio` decimal(10,0) NOT NULL,
  `Descripción` text NOT NULL,
  `Imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblsala`
--

INSERT INTO `tblsala` (`ID`, `Nombre`, `Precio`, `Descripción`, `Imagen`) VALUES
(1, 'Cojines peludos', '295', 'Hecho en Argentina, 50% poliéster, 50% algodón', 'img/89.jpg'),
(2, 'Cojines P. de corazón', '299', 'Hecho en Australia, 70% poliéster, 30% algodón', 'img/90.jpg'),
(3, 'Mesa, con decoraciones', '1589', 'Hecho en R.D, madera de caoba ', 'img/96.jpg'),
(4, 'Oficina, escritorio silla y decoraciones incluidas', '2956', 'Hecho en Rusia', 'img/98.jpg'),
(5, 'Sofa de tela fina', '12566', 'Hecho en EE.UU', 'img/97.jpg'),
(6, 'Mueble de sala', '12500', 'Hecho en Canada', 'img/94.jpg '),
(7, 'Sofa con cojines de lagodon agregados', '4100', 'Hecho en Rusia', 'img/9s.jpg'),
(8, 'Sofa ', '15900', 'Hecho en R.D (Decoraciones incluidas)', 'img/12s.jpg'),
(9, 'Juego de Sofas', '12950', 'Hecho en USA, sin decoraciones', 'img/1s.jpg'),
(10, 'Juego de comedor', '20000', 'Hecho en Colombia', 'img/2s.jpg'),
(11, 'Juego de comedor\r\n', '16000', 'Hecho en Toronto, incluye decoraciones', 'img/4s.jpeg'),
(12, 'juego de comedor', '15900', 'Hecho en Australia, en caoba', 'img/3s.jpg'),
(13, 'Lampara electrica', '525', 'Hecho en Camcun', 'img/6s.jfif'),
(14, 'Lampara de centro ', '5650', 'hecho en USA', 'img/7s.jpg'),
(15, 'Lampara de centro', '2000', 'Hecho en Inglaterra', 'img/8s.jpg'),
(16, 'Estante plástico', '1200', 'Hecho en USA', 'img/16s.jfif'),
(17, 'Muebles LED', '5900', 'Hecho en Australia', 'img/17s.jpeg'),
(18, 'Muebles con cojines de algodón incluidos', '12500', 'Hecho en Toronto', 'img/15s.jfif'),
(19, 'Muebles LED', '9650', 'Hecho en R.D', 'img/18s.jpg'),
(20, 'juego de Comedor', '20500', 'hecho en Bolivia, incluye decoraciones', 'img/11s.jpg'),
(21, 'Sofa rojo intenso', '17999', 'Hecho en Italia', 'img/93.jpg'),
(22, 'Juego de sofas', '25000', 'Hecho en Canada', 'img/91.jpg'),
(23, 'Juego de mueble y mesita\r\n', '15950', 'hecho en Aruba', 'img/92.jpg'),
(24, 'Juego de oficina con la decoración incluida', '8999', 'Hecho en USA, incluye mesa, silla y decoraciones', 'img/99.jpg'),
(25, 'Despensa y closet ', '3200', 'Hecho en MIAMI', 'img/14s.jpg'),
(26, 'Mimi armario de sala\r\n', '2000', 'Hecho en Colombia', 'img/13s.jpg'),
(27, 'Bancos de cerramita y semento fuerte', '9250', 'Hecho en Aruba', 'img/19s.jpg'),
(28, 'Muebles de plástico con cojinos balncos inluidos', '10000', 'Hecho en Australia', 'img/20s.jpg'),
(29, 'Juego de muebles', '13999', 'Hecho en Colombia', 'img/21s.jpg'),
(30, 'Mueble unitario ', '5999', 'Hecho en R.D', 'img/22s.jpg'),
(31, 'Decoracion en madera', '5789', 'Hecho en Francia, madera caoba resistente ', 'img/40.jpg'),
(32, 'Decoraciónde madera', '2800', 'Hecha en Australia', 'img/36.webp');

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
(72, 'duv3m3q0amc8l846s8i01r5lu3', '', '2021-05-05 23:41:34', 'solannybatista12@gmail.com', '200.00', 'pendiente'),
(73, 'lbknfurdeug94n879ivgt2hgf2', '', '2021-05-07 21:09:21', 'liligarcia12@gmail.com', '967.00', 'pendiente'),
(74, '61jo9k5nocshfeu9fjkdmm86q5', '', '2021-05-10 12:58:40', 'solannybatista12@gmail.com125', '3475.00', 'pendiente'),
(75, '61jo9k5nocshfeu9fjkdmm86q5', '', '2021-05-10 19:21:45', 'Batistasolanny026@gmail', '45999.00', 'pendiente'),
(76, '61jo9k5nocshfeu9fjkdmm86q5', '', '2021-05-10 19:48:53', 'solannybatista12@gmail.com', '45999.00', 'pendiente');

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
-- Indices de la tabla `tblcocina`
--
ALTER TABLE `tblcocina`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tbldetalleventa`
--
ALTER TABLE `tbldetalleventa`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDVENTA` (`IDVENTA`),
  ADD KEY `IDPRODUCTO` (`IDPRODUCTO`);

--
-- Indices de la tabla `tblhabitaciones`
--
ALTER TABLE `tblhabitaciones`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tblproductos`
--
ALTER TABLE `tblproductos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tblsala`
--
ALTER TABLE `tblsala`
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
-- AUTO_INCREMENT de la tabla `tblcocina`
--
ALTER TABLE `tblcocina`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `tbldetalleventa`
--
ALTER TABLE `tbldetalleventa`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT de la tabla `tblhabitaciones`
--
ALTER TABLE `tblhabitaciones`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblproductos`
--
ALTER TABLE `tblproductos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `tblsala`
--
ALTER TABLE `tblsala`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `tblventas`
--
ALTER TABLE `tblventas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

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
