-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 22-02-2024 a las 01:01:40
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tiendavirtual`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `id` int NOT NULL,
  `cli_id` int NOT NULL,
  `cantidad` int NOT NULL,
  `prod_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE `ciudades` (
  `ciudad_id` int NOT NULL,
  `ciudad_nombre` varchar(50) DEFAULT NULL,
  `depart_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `cli_id` int NOT NULL,
  `cli_tipo_documento` varchar(2) DEFAULT NULL,
  `cli_nro_documento` varchar(12) DEFAULT NULL,
  `cli_nombre` varchar(50) DEFAULT NULL,
  `cli_apellido` varchar(50) DEFAULT NULL,
  `cli_telefono` varchar(10) DEFAULT NULL,
  `cli_correo` varchar(60) DEFAULT NULL,
  `usuario` varchar(50) NOT NULL,
  `contraseña` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`cli_id`, `cli_tipo_documento`, `cli_nro_documento`, `cli_nombre`, `cli_apellido`, `cli_telefono`, `cli_correo`, `usuario`, `contraseña`) VALUES
(6, 'CC', '1200939', 'Carlos daniel', 'Alvarez Causil', '3117633268', 'carlosdanielalvarezcausil@gmail.com', 'alvarez', '2005');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `depart_id` int NOT NULL,
  `depart_nombre` varchar(50) DEFAULT NULL,
  `departamentoscol` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `id` int NOT NULL,
  `total_precio` int NOT NULL,
  `cantidad` int NOT NULL,
  `vent_id` int NOT NULL,
  `depart_id` int NOT NULL,
  `cli_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int NOT NULL,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `thumbnail` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `title`, `price`, `thumbnail`) VALUES
(1937, 'Balón Voleibol Molten V58r Hule Natural', 249.00, 'http://http2.mlstatic.com/D_773231-MLU72660358726_112023-I.jpg'),
(1938, 'Mangas Protección Para Profesional Voleibol Mujer Brazo 2x ', 188.30, 'http://http2.mlstatic.com/D_688897-MLM73314714479_122023-I.jpg'),
(1939, 'Balón Voleibol Molten V5m4500 Pu Laminado Tricolor N.5', 896.76, 'http://http2.mlstatic.com/D_950092-MLU72699957559_112023-I.jpg'),
(1940, 'Rodilleras Deportivas Para Vóleibol, Baloncesto O Baile', 89.55, 'http://http2.mlstatic.com/D_805946-MLM74028826809_012024-I.jpg'),
(1941, '5 Playeras Deportivas Cuello Redondo Dry Fit Gym Hombre', 489.30, 'http://http2.mlstatic.com/D_627637-MLM74630357775_022024-I.jpg'),
(1942, 'Balón Voleibol Disney Minnie Mouse #5 Color Morado', 111.30, 'http://http2.mlstatic.com/D_915572-MLU73212178489_122023-I.jpg'),
(1943, 'Balón Voleibol Molten V5m5000 Flistatec Piel Sintética No. 5', 1499.00, 'http://http2.mlstatic.com/D_928198-MLU72665926129_112023-I.jpg'),
(1944, 'Mangas Deportivas Para Voleibol Mujer Brazos Con  Almohad', 161.20, 'http://http2.mlstatic.com/D_774660-MLM72209132407_102023-I.jpg'),
(1945, 'Balón De Voleibol Molten V5m 4500   Nº 5  Color Blanco/verde/rojo  Para Indoor', 699.00, 'http://http2.mlstatic.com/D_961352-MLU73128208886_122023-I.jpg'),
(1946, '1 Par Rodilleras Deportivas Para Vóleibol Baloncesto O Baile', 99.00, 'http://http2.mlstatic.com/D_968550-MLM72118620343_102023-I.jpg'),
(1947, 'Balón Voleibol V300w Mikasa Profesional Size 5, Alta Calidad', 683.05, 'http://http2.mlstatic.com/D_863832-MLU69493367110_052023-I.jpg'),
(1948, 'Balón #5 Voleibol V5m2200 Aprendizaje Escolar Pu Extra Soft Color Verde/blanco/rojo', 696.57, 'http://http2.mlstatic.com/D_877653-MLU71242377800_082023-I.jpg'),
(1949, 'Máquina De Boxeo Karate Musical Marciales Montadas Pared B Color Negro', 1326.00, 'http://http2.mlstatic.com/D_686243-MLU69763093126_062023-I.jpg'),
(1950, 'Balon Voleibol Mikasa V200w Microfibra', 719.00, 'http://http2.mlstatic.com/D_780291-MLU74538074235_022024-I.jpg'),
(1951, '1 Par De Mangas De Voleibol, Mangas De Compresión De Voleibo', 225.00, 'http://http2.mlstatic.com/D_735048-MLM69649310199_052023-I.jpg'),
(1952, 'Balón Voleibol Molten Ms500 O Bv1500  Playero Color Multicolor', 522.00, 'http://http2.mlstatic.com/D_704296-MLU73983284146_012024-I.jpg'),
(1953, '1 Par Rodilleras Deportivas Para Vóleibol Baloncesto O Baile', 105.28, 'http://http2.mlstatic.com/D_764980-MLM70718396920_072023-I.jpg'),
(1954, 'Par Rodillera Asics Gel Conform 2.0 Voleyboll Talla S-m', 699.00, 'http://http2.mlstatic.com/D_894364-MLU73333603020_122023-I.jpg'),
(1955, 'Rodillera De Voleibol Mikasa Unitalla Sr Negra (832sr) Color Negro', 764.15, 'http://http2.mlstatic.com/D_705015-MLU74332047910_022024-I.jpg'),
(1956, 'Mangas Protección Para Profesional Voleibol Mujer Brazo 2x', 174.04, 'http://http2.mlstatic.com/D_616546-MLM53276502367_012023-I.jpg'),
(1957, 'Rodilleras Para Deportes, Básquetbol Y Vóleibol, 1 Par', 109.44, 'http://http2.mlstatic.com/D_716277-CBT53294691556_012023-I.jpg'),
(1958, 'Balon Voleibol Volleyball Molten V58r Hule Amarillo #5', 265.00, 'http://http2.mlstatic.com/D_812604-MLU72479521986_102023-I.jpg'),
(1959, 'Playera Deportiva De Color Para Sublimar Para Niños', 105.00, 'http://http2.mlstatic.com/D_775476-MLM52240773160_112022-I.jpg'),
(1960, 'Balon De Voleibol Avp Movement Pastel Wilson', 500.00, 'http://http2.mlstatic.com/D_848192-MLU74498449329_022024-I.jpg'),
(1961, '  Voleibol Mangas De Antebrazo Pasando Golpeando Con Almohad', 225.00, 'http://http2.mlstatic.com/D_618842-MLM70501038135_072023-I.jpg'),
(1962, '1 Par Rodilleras Deportivas Para Vóleibol Baloncesto O Baile', 92.00, 'http://http2.mlstatic.com/D_663440-MLM70030990767_062023-I.jpg'),
(1963, 'Balón De Volleyball No. 5 Voit Pink Vs100 Color Rosa', 426.31, 'http://http2.mlstatic.com/D_916675-MLU73425704993_122023-I.jpg'),
(1964, 'Juego De Voleibol Franklin Sports Incluye Accesorios', 1270.00, 'http://http2.mlstatic.com/D_811817-MLU70740517363_072023-I.jpg'),
(1965, 'Balón Gaser Vóleibol Point No.5 Azul', 185.00, 'http://http2.mlstatic.com/D_962954-MLU69516448365_052023-I.jpg'),
(1966, 'Playera Deportiva De Color Para Sublimar Dama', 110.00, 'http://http2.mlstatic.com/D_884687-MLM52287162671_112022-I.jpg'),
(1967, 'Manga Con Protección Uv P/ciclismo, Pesca, Golf O Voleibol', 131.75, 'http://http2.mlstatic.com/D_738380-MLM71035819942_082023-I.jpg'),
(1968, 'Balón Vóleibol Soft Touch Premium No.5 Gaser Color Amarillo', 565.00, 'http://http2.mlstatic.com/D_788757-MLU73580513320_122023-I.jpg'),
(1969, ' Par Rodillera Para Voleibol Estandar Negras Wilson ', 500.00, 'http://http2.mlstatic.com/D_721773-MLM46927287798_072021-I.jpg'),
(1970, 'Voit Balón De Voleibol Voit Wind Surf S100 ', 334.62, 'http://http2.mlstatic.com/D_909931-MLM71680689725_092023-I.jpg'),
(1971, '9 Bandas Para El Cabello Diademas Deportiva Antisudor Jogger', 143.04, 'http://http2.mlstatic.com/D_817959-MLM68982798144_042023-I.jpg'),
(1972, 'Mangas Protección Para Profesional Voleibol Mujer Brazo 2x ', 217.62, 'http://http2.mlstatic.com/D_666087-MLM72589709903_102023-I.jpg'),
(1973, 'Balón Voleibol Molten V58r Hule Natural', 274.48, 'http://http2.mlstatic.com/D_969104-MLM51755511160_092022-I.jpg'),
(1974, 'Red Voleibol Y Balon + Red Balonera Y Valvula De Regalo', 379.00, 'http://http2.mlstatic.com/D_989919-MLM50422702874_062022-I.jpg'),
(1975, 'Red Para Voleibol Mikasa Vbn-2 Profesional C/cable De Acero', 1499.00, 'http://http2.mlstatic.com/D_971339-MLU72564531072_112023-I.jpg'),
(1976, 'Playera Deportiva De Color Para Sublimar Caballero', 110.00, 'http://http2.mlstatic.com/D_897290-MLM52240762241_112022-I.jpg'),
(1977, 'Mangas 5 Pares Con Protección Uv 80 Ciclismo Golf  Voleibol', 279.00, 'http://http2.mlstatic.com/D_634914-MLM54169850779_032023-I.jpg'),
(1978, 'Red Voleibol Blanca Sencilla', 159.00, 'http://http2.mlstatic.com/D_727491-MLM31223466539_062019-I.jpg'),
(1979, ' Rodilleras Uso Rudo Para Voleibol,basquetbol Y Mas Par', 181.78, 'http://http2.mlstatic.com/D_691891-MLM49031590982_022022-I.jpg'),
(1980, 'Balón Vóleibol Max Pro 5000 No.5 Gaser Color Blanco/rojo/verde', 238.00, 'http://http2.mlstatic.com/D_995421-MLU74553520539_022024-I.jpg'),
(1981, 'Red Voleibol Embreada Reforzada 4 Lados, Para Voley ', 364.00, 'http://http2.mlstatic.com/D_621677-MLM45731640670_042021-I.jpg'),
(1982, 'Mangas Protección Para Profesional Voleibol Mujer Brazo 2x ', 181.78, 'http://http2.mlstatic.com/D_603956-MLM71912514566_092023-I.jpg'),
(1983, 'Balón Vóleibol Point No.5 Gaser ', 185.00, 'http://http2.mlstatic.com/D_870230-MLM51244607284_082022-I.jpg'),
(1984, 'Balon Mikasa V330w # 5 Sku: 17342 Color Amarillo/azul', 690.00, 'http://http2.mlstatic.com/D_685597-MLU73212741361_122023-I.jpg'),
(1985, '1 Par Rodilleras Deportivas Para Vóleibol Baloncesto O Baile', 95.36, 'http://http2.mlstatic.com/D_704297-MLM73516909575_122023-I.jpg'),
(1986, 'Balón Gaser  Vóleibol Point No.5 ', 185.00, 'http://http2.mlstatic.com/D_760350-MLM51244728210_082022-I.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int NOT NULL,
  `fecha` date NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `prod_id` int NOT NULL,
  `cli_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `carrito_cli_id_fk` (`cli_id`),
  ADD KEY `carrito_prod_id_fk` (`prod_id`);

--
-- Indices de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD PRIMARY KEY (`ciudad_id`),
  ADD KEY `depart_id_idx` (`depart_id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cli_id`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`depart_id`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detalle_venta_vent_id_fk` (`vent_id`),
  ADD KEY `detalle_venta_depart_id_fk` (`depart_id`),
  ADD KEY `detalle_venta_cli_id_fk` (`cli_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carrito_prod_id_fk` (`prod_id`),
  ADD KEY `carrito_cli_id_fk` (`cli_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `cli_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1987;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD CONSTRAINT `depart_id` FOREIGN KEY (`depart_id`) REFERENCES `departamentos` (`depart_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
