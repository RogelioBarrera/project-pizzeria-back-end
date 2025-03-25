-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-09-2024 a las 01:55:55
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `commerce`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id_category` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id_category`, `category_name`) VALUES
(1, 'Pizza'),
(2, 'Empanadas'),
(3, 'Bebida'),
(4, 'Promo'),
(5, 'Hamburguesa'),
(6, 'Papas Fritas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id_product` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `price` decimal(7,2) DEFAULT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_category` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id_product`, `product_name`, `price`, `start_date`, `id_category`, `image`) VALUES
(1, 'FUGAZZETA', 12648.00, '2024-08-19 23:36:50', 1, 'img/fugazzeta_cleanup.jpg'),
(2, 'CUATRO QUESOS', 17340.00, '2024-08-19 23:38:05', 1, 'img/pizza-4-quesos.jpg'),
(3, 'DE ALBAHACA', 14280.00, '2024-08-19 23:39:04', 1, 'img/pizza-de-albahaca.jpg'),
(4, 'MUZZARELLA', 11220.00, '2024-08-19 23:39:56', 1, 'img/pizza-muzzarella.jpg'),
(5, 'NAPOLITANA', 12138.00, '2024-08-19 23:40:45', 1, 'img/pizza-napolitana.jpg'),
(6, 'DE RUCULA Y JAMÓN', 16320.00, '2024-08-19 23:41:28', 1, 'img/pizza-rucula-y-jamon-crudo.jpg'),
(7, 'ESPECIAL DE JAMÓN', 15300.00, '2024-08-19 23:42:15', 1, 'img/pizza-especial-de-jamon.jpg'),
(8, 'PROVOLONE', 14280.00, '2024-08-26 22:23:16', 1, 'img/pizza_provolone.jpg'),
(9, 'CALABRESA', 15300.00, '2024-08-26 22:27:09', 1, 'img/pizza-calabresa.jpg'),
(10, 'DE CARNE X6', 8000.00, '2024-08-26 23:15:15', 2, 'img/empanadas-de-carne.jpg'),
(11, 'DE POLLO X6', 8000.00, '2024-08-26 23:19:44', 2, 'img/empanadas-de-pollo.jpg'),
(12, 'COCA COLA', 3200.00, '2024-08-28 21:58:37', 3, 'img/coca-cola.jpg'),
(13, 'CUNNINGTON DE POMELO', 2000.00, '2024-08-28 22:02:17', 3, 'img/cunnington.jpg'),
(14, 'SPRITE', 3000.00, '2024-08-28 22:03:42', 3, 'img/sprite.jpg'),
(15, 'X6 EMPANADAS DE CRANE + PIZZA NAPOLITANA', 19000.00, '2024-08-29 00:07:49', 4, 'img/promo_1.jpg'),
(40, '   DE VERDURA X 6', 7000.00, '2024-09-16 23:59:33', 2, 'img/emp_verdura.jpg'),
(47, ' CONO', 4500.00, '2024-09-24 00:11:00', 6, 'img/download (1).jpeg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_category`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `products_categories` (`id_category`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_categories` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id_category`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
