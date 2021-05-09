-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-05-2021 a las 23:04:55
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Estructura de tabla para la tabla `artic`
--

CREATE TABLE `artic` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Precio` decimal(10,0) NOT NULL,
  `Descripción` text CHARACTER SET latin1 NOT NULL,
  `Imagen` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Precio` decimal(10,0) NOT NULL,
  `Descripción` text CHARACTER SET latin1 NOT NULL,
  `Imagen` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`ID`, `Nombre`, `Precio`, `Descripción`, `Imagen`) VALUES
(1, 'Outfit', '3000', 'Hecho en EE.UU', 'img1\\2.jpg'),
(2, 'Outfit casual', '3500', 'Hecho EE.UU', 'img1\\4.jpg'),
(3, 'Outfit casual', '1900', 'Hecho en EE.UU\r\nOutfit casual ,\r\nBlusa rosada,y short negro.', 'img1/3.png\r\n'),
(4, 'Outfit casual', '1900', 'Hecho en EE.UU', 'img1\\5.jpg'),
(5, 'Outfit verano', '3000', 'Hecho en Francia ', 'img1\\6.jpg'),
(6, 'Outfit verano', '350', 'Hecho en Francia ', 'img1\\7.jpg'),
(7, '************************************\r\nOutfit verano', '500', 'Hecho en Francia ', 'img1\\8.jpg'),
(8, 'Outfit verano', '2000', 'Hecho en Francia ', 'img1\\9.jpg'),
(9, 'Outfit primavera', '700', 'Hecho en Polonia\r\nOutfit primavera.\r\nblusa amarilla corta.\r\nshort jean', 'img1\\10.jpg'),
(10, '****************************************************************************************************************************************\r\nOutfit primavera.', '620', 'Hecho en Polonia\r\nOutfit primavera.\r\nblusa amarilla', 'img1\\11.jpg'),
(11, 'Outfit primavera.', '500', 'Hecho en Polonia\r\nOutfit primavera.\r\nblusa roja de puntos', 'img1\\12.png'),
(12, 'Outfit primavera.', '1000', 'Hecho en polonia.\r\nOutfit primavera.\r\nblusa rosa de flores', 'img1\\13.jpg'),
(13, 'Outfit otoño ', '2000', 'hecho en Rusia\r\nOutfit otoño \r\npantalón jean, abrigo verde , botas marrones. ', 'img1\\15.jpg'),
(14, 'Outfit otoño ', '2400', 'Hecho en Rusia\r\nOutfit otoño \r\njersey gris y pantalon jean', 'img1\\14.jpg'),
(15, 'Outfit otoño ', '2500', 'Hecho en polonia\r\nOutfit otoño \r\nJersey marrón y pantalón jean.\r\ngorro blanco con pompones ', 'img1\\16.jpg'),
(16, 'Outfit otoño ', '600', 'hecho en México\r\nOutfit otoño\r\nGabardina blanca de otoño', 'img1\\89.jpg'),
(17, 'Outfit para navidad', '3000', 'Hecho en R.D\r\nOutfit para navidad\r\nJersey gris de santa , con pantalon jean.\r\nAdicional: Gorros y bufandas', 'img1\\23.jpg'),
(18, 'Outfit para navidad', '600', 'Hecho en R.D\r\nOutfit para navidad\r\nChamarras de santa en diferentes colores', 'img1\\21.jpg'),
(19, 'Outfit para navidad', '2900', 'Hecho en EE.UU\r\nOutfit para navidad\r\nPantalon jean largo.\r\nAbrigo extra cubridor verde.\r\nbotas marrones', 'img1\\22.jpg'),
(20, 'Outfit para navidad', '300', 'Hecho en R.D\r\nAbrigos de rayas en diferentes colores.', 'img1\\20.png'),
(21, '*********************************************************************************************************************************************\r\nOutfit deportivo', '2500', 'Hecho en Polonia \r\nOutfit deportivo\r\ntop deportivos con licra gris.\r\nTenis gris 5-9', 'img1\\24.jpg'),
(22, '******************************************************************************************************************\r\n                                                                 \r\n\r\nOutfit deportivo', '2500', 'Hecho en Polonia \r\nOutfit deportivo\r\ntop deportivos con pantalón deportivo gris.\r\nTenis blanco Nike 5-9', 'img1\\25.jpg'),
(23, 'Outfit deportivo', '1500', 'Hecho en Polonia \r\nOutfit deportivo\r\ntop deportivo con short gris.', 'img1\\26.jpg'),
(24, 'Outfit deportivo', '999', 'Hecho en Polonia \r\nOutfit deportivo\r\ntop deportivos con licra negra.', 'img1\\27.jpg'),
(25, 'Vestido gala', '4500', '', 'img1/a4.jpg'),
(26, 'Vestido de gala', '6000', '', 'img1/a3.jpg'),
(27, 'Vestido de gala', '6000', '', 'img1\\a11.jpg'),
(28, 'Vestido de gala', '2500', '', 'img1\\a12.jpg'),
(29, 'Vestido de gala', '4000', 'Vestido de gala', 'img1\\a17.jpg'),
(30, 'Vestido de gala', '5000', 'Vestido de gala', 'img1\\a15.jpg'),
(31, 'Vestido de gala', '7000', 'Vestido de gala', 'img1\\a22.jpg'),
(32, 'Vestido de gala', '5000', 'Vestido de gala', 'img1\\a23.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulosm`
--

CREATE TABLE `articulosm` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Precio` decimal(10,0) NOT NULL,
  `Descripción` text CHARACTER SET latin1 NOT NULL,
  `Imagen` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articulosm`
--

INSERT INTO `articulosm` (`ID`, `Nombre`, `Precio`, `Descripción`, `Imagen`) VALUES
(1, 'Outfit casual ', '3200', 'Hecho en Francia\r\nOutfit casual .\r\nCamisa blanca y pantalón marrón claro corto \r\nZapatos marrones ', 'img1\\29.jpg'),
(2, 'Outfit casual .\r\n', '4200', 'Hecho en Francia\r\nOutfit casual .\r\nCamisa Azul claro de manga largas.\r\nZapatos marrones', 'img1\\28.jpg'),
(3, 'Outfit casual', '4000', 'Hecho en Francia\r\nOutfit casual .\r\nCamisa Azul jean y pantalón kaki .\r\nBotas  marrones', 'img1\\30.jpg'),
(4, 'Outfit casual', '4000', 'Hecho en Francia\r\nOutfit casual .\r\nCamisa Azul pantalón crema.\r\nZapatos blancos', 'img1\\31.jpg'),
(5, 'Outfit de verano', '4000', 'Hecho en los ángeles\r\nOutfit de verano\r\nshort gris y camisa blanca.\r\nZapatos marrones 7-11', 'img1\\32.jpg'),
(6, 'Outfit de verano\r\n', '3300', 'Hecho en los ángeles\r\nOutfit de verano\r\nshort azul y camisa blanca de diseño .', 'img1\\33.jpg'),
(7, 'Outfit de verano\r\n', '3600', 'Hecho en los ángeles\r\nOutfit de verano\r\nshort azul marino y camisa azul playera .', 'img1\\34.jpg'),
(8, 'Outfit de verano\r\n', '4000', 'Hecho en los ángeles\r\nOutfit de verano\r\nshort jean y camisa azul playera con flores...', 'img1\\35.jpg'),
(9, 'Outfit ', '600', 'Hecho en Italia.\r\nOutfit  \r\nAbrigo negro con diseño. ', 'img1\\36.jpg'),
(10, 'Outfit', '700', 'Hecho en Italia\r\nOutfit \r\nAbrigo con temática guardia y camiseta blanca .', 'img1\\37.jpg'),
(11, 'Outfit', '620', 'Hecho en Italia\r\nOutfit \r\nchaqueta roja', 'img1\\38.jpg'),
(12, 'Outfit \r\n', '900', 'Hecho en Italia\r\nOutfit \r\nchaqueta negra y camiseta blanca', 'img1\\39.jpg'),
(13, 'Outfit Deportivo\r\n', '4000', 'Hecho en México.\r\npantalones chandal negro\r\nAbrigo blanco.\r\n   NIKE\r\nTenis blanco 6-11\r\n', 'img1\\40.jpg'),
(14, 'Outfit Deportivo.\r\n-----------------------------------------------------------------------------------------------------------------------------------------------------', '1500', 'Hecho en México.\r\nOutfit Deportivo\r\npantalones chandal gris.\r\nAbrigo blanco.\r\n   Tommy Hilfiger \r\n\r\n', 'img1\\41.jpg'),
(15, 'Outfit Deportivo\r\n', '3600', 'Hecho en México.\r\nOutfit Deportivo\r\npantalones chandal gris.\r\nAbrigo gris.\r\n   NIKE', 'img1\\42.jpg'),
(16, '\r\nOutfit Deportivo\r\n', '2000', 'Hecho en México.\r\nOutfit Deportivo\r\npantalones chándal gris.\r\nAbrigo gris.\r\n   BOSS', 'img1\\43.jpg'),
(17, 'Outfit Deportivo\r\n', '1800', 'Hecho en México.\r\nOutfit Deportivo\r\npantalones chándal gris claro.\r\nAbrigo gris.\r\n   PUMA', 'img1\\44.jpg'),
(18, 'Outfit Deportivo\r\n', '3000', 'Hecho en México.\r\nOutfit Deportivo\r\npantalones chándal gris negro\r\nAbrigo gris y negro.\r\n   JORDAN', 'img1\\45.jpg'),
(19, 'Outfit Deportivo\r\n', '1900', 'Hecho en México.\r\nOutfit Deportivo\r\npantalones chándal negro y rojo\r\nAbrigo negro y rojo.\r\n    FASHION ', 'img1\\46.jpg'),
(20, 'Outfit Deportivo\r\n', '2500', 'Hecho en México.\r\nOutfit Deportivo\r\npantalones chándal negro Con dorado\r\nAbrigo negro con dorado\r\n   .....', 'img1\\47.jpg'),
(21, 'Outfit Deportivo.\r\n............................................................................................................................................................................................................................................', '500', 'Hecho en R.D\r\nOutfit Deportivo\r\nCamiseta gris con diseño.', 'img1\\48.jpg'),
(22, 'Outfit Deportivo\r\n.............................................................................................................................................................................................................................................', '450', 'Hecho en R.D\r\nOutfit Deportivo\r\nCamiseta verde con diseño.', 'img1\\49.jpg'),
(23, 'Outfit Deportivo', '550', 'Hecho en R.D\r\nOutfit Deportivo.\r\npantalón chándal \r\n', 'img1\\50.jpg'),
(24, 'Outfit Deportivo', '800', 'Hecho en R.D\r\nOutfit Deportivo.\r\npantalón chándal .', 'img1\\51.jpg'),
(25, 'Traje de gala', '8000', 'Traje de 3 pieza', 'img1/a9.jpg'),
(26, 'Traje de gala', '8000', '', 'img1/a6.jpg'),
(27, 'Traje de gala', '8700', '', 'img1/a7.jpg'),
(28, 'Traje de gala', '9000', 'Traje de gala', 'img1/a8.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `belleza`
--

CREATE TABLE `belleza` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Precio` decimal(10,0) NOT NULL,
  `Descripción` text CHARACTER SET latin1 NOT NULL,
  `Imagen` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `belleza`
--

INSERT INTO `belleza` (`ID`, `Nombre`, `Precio`, `Descripción`, `Imagen`) VALUES
(1, 'Set de brochas', '500', '', 'img1/a24.jpg'),
(2, 'Set de brochas', '500', 'Set de brochas', 'img1/a26.jpg'),
(3, 'Set de brochas', '400', 'Set de brochas', 'img1/a27.jpg'),
(4, 'Set de brochas', '600', 'Set de brochas', 'img1/a28.jpg'),
(5, 'Set de brochas', '500', 'Set de brochas', 'img1/a28.jpg'),
(6, 'Set de brochas', '300', 'Set de brochas', 'img1/a29.jpg'),
(7, 'Set de brochas', '450', 'Set de brochas', 'img1/a30.jpg'),
(8, 'Set de brochas', '500', 'Set de brochas', 'img1/a52.jpg'),
(9, 'Brochas', '150', 'Brochas', 'img1/a33.jpg'),
(10, 'Brochas', '150', 'Brochas', 'img1/a33.jpg'),
(11, 'Brochas', '200', 'Brochas', 'img1/a34.jpg'),
(12, 'Brochas y esponja', '300', 'Brochas', 'img1/a46.jpg'),
(13, 'Brochas', '500', '', 'img1/a48.jpg'),
(14, 'Brochas', '200', '', 'img1/a49.jpg'),
(15, 'Maquillaje', '500', '', 'img1/a54.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Precio` decimal(10,0) NOT NULL,
  `Descripción` text CHARACTER SET latin1 NOT NULL,
  `Imagen` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ID`, `Nombre`, `Precio`, `Descripción`, `Imagen`) VALUES
(1, 'Corbata', '500', '', 'img1/55.jpg'),
(2, 'Corbatas', '500', '', 'img1\\53.jpg'),
(3, 'Corbatas', '600', '', 'img1\\52.jpg'),
(4, 'Corbatas', '550', '', 'img1\\63.jpg'),
(5, 'Bufandas', '400', '', 'img1/222.jpg'),
(6, 'Bufandas', '300', '', 'img1\\65.jpg'),
(7, 'Bufandas', '250', '', 'img1\\67.jpg'),
(8, 'Bufandas', '300', '', 'img1\\70.jpg'),
(9, 'Gemelos', '1000', '', 'img1\\61.jpg'),
(10, 'Gemelos', '690', '', 'img1\\62.jpg'),
(11, 'Gemelos', '700', '', 'img1\\64.jpg'),
(12, 'Gemelos', '600', '', 'img1\\a25.jpg'),
(13, 'Broches', '8000', '', 'img1\\56.jpg'),
(14, 'Broches', '700', '', 'img1\\57.jpg'),
(15, 'Broches', '800', '', 'img1\\59.jpg'),
(16, 'Broches', '500', '', 'img1\\58.jpg'),
(17, 'Cartera Hombre', '600', '', 'img1\\74.jpg'),
(18, 'Cartera Hombre', '600', '', 'img1\\a40.jpg'),
(19, 'Cartera Hombre', '700', '', 'img1\\72.jpg'),
(20, 'Cartera Hombre', '800', '', 'img1\\a77.jpg'),
(21, 'Monedero ', '450', '', 'img1\\75.jpg'),
(22, 'Monedero', '750', '', 'img1\\76.jpg'),
(23, 'Monedero', '750', '', 'img1\\77.jpg'),
(24, 'Monedero', '500', '', 'img1\\78.jpg'),
(25, 'Carteras Mujer', '700', 'Carteras Mujer', 'img1/83.jpg'),
(26, '', '0', 'Carteras Mujer', 'img1/85.jpg'),
(27, 'Carteras Mujer', '500', '', 'img1/86.jpg'),
(28, 'Carteras Mujer', '530', 'Carteras Mujer', 'img1/a41.jpg'),
(29, 'Bolsos', '1000', 'Bolsos', 'img1/ca2.jpg'),
(30, 'Bolsos', '3000', 'Bolsos', 'img1\\ca.jpg'),
(31, 'Bolsos', '2500', 'Bolsos', 'img1\\ca1.jpg'),
(32, 'Bolsos', '1500', 'Bolsos', 'img1\\111.jpg'),
(33, 'Bolsos', '2000', 'Bolsos', 'img1\\92.jpg'),
(34, 'Bolsos', '3000', '', 'img1\\93.jpg'),
(35, 'Bolsos', '2500', 'Bolsos', 'img1\\94.jpg'),
(36, 'Bolsos', '1200', 'Bolsos', 'img1\\95.jpg'),
(37, 'Mochilas', '500', 'Mochilas', 'img1\\99.jpg'),
(38, 'Mochilas', '600', 'Mochilas', 'img1\\96.jpg'),
(39, 'Mochilas', '0', 'Mochilas', 'img1\\97.jpg'),
(40, 'Mochilas', '600', '', 'img1\\98.jpg'),
(41, 'Lentes de sol', '400', 'Lentes de sol', 'img1\\79.jpg'),
(42, 'Lentes de sol', '500', 'Lentes de sol', 'img1\\81.jpg'),
(43, 'Lentes de sol', '350', 'Lentes de sol', 'img1\\82.jpg'),
(44, 'Lentes de sol', '500', 'Lentes de sol', 'img1\\le.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productosb`
--

CREATE TABLE `productosb` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Precio` decimal(10,0) NOT NULL,
  `Descripción` text CHARACTER SET latin1 NOT NULL,
  `Imagen` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tlbproductos`
--

CREATE TABLE `tlbproductos` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Precio` decimal(10,0) NOT NULL,
  `Descripción` text CHARACTER SET latin1 NOT NULL,
  `Imagen` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artic`
--
ALTER TABLE `artic`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `articulosm`
--
ALTER TABLE `articulosm`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `belleza`
--
ALTER TABLE `belleza`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `productosb`
--
ALTER TABLE `productosb`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tlbproductos`
--
ALTER TABLE `tlbproductos`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artic`
--
ALTER TABLE `artic`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `articulosm`
--
ALTER TABLE `articulosm`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `belleza`
--
ALTER TABLE `belleza`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `productosb`
--
ALTER TABLE `productosb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tlbproductos`
--
ALTER TABLE `tlbproductos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
