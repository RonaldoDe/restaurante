-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-11-2018 a las 01:45:13
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_restaurante`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bebida`
--

CREATE TABLE `bebida` (
  `id_bebida` int(11) NOT NULL,
  `id_tipo_bebida` int(11) NOT NULL,
  `nombre` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `id_cargo` int(11) NOT NULL,
  `nombre` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `sueldo` int(11) NOT NULL,
  `descripcion` varchar(502) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cocinero_plato`
--

CREATE TABLE `cocinero_plato` (
  `id` int(11) NOT NULL,
  `id_cocinero` int(11) NOT NULL,
  `id_plato` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallespedidos_bebidas`
--

CREATE TABLE `detallespedidos_bebidas` (
  `id` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `id_bebida` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `observaciones` varchar(502) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallespedidos_platos`
--

CREATE TABLE `detallespedidos_platos` (
  `id_` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `id_plato` int(11) NOT NULL,
  `observaciones` varchar(502) COLLATE utf8_unicode_ci NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_oferta_p`
--

CREATE TABLE `detalle_oferta_p` (
  `id_detalle_oferta` int(11) NOT NULL,
  `id_oferta_p` int(11) NOT NULL,
  `id_,mesa` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `valor_total` int(11) NOT NULL,
  `fecha_venta` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `id_factura` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `igv_venta` float NOT NULL,
  `fecha` datetime NOT NULL,
  `valor_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesas`
--

CREATE TABLE `mesas` (
  `id` int(11) NOT NULL,
  `num_mesa` int(11) NOT NULL,
  `tipo_mesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('1d931392a9a0823bdf50e603482a6748ee691d379ee5494a12a78e215d39f4741a46bd20c6759e08', 5, 1, NULL, '[\"*\"]', 0, '2018-11-06 04:29:47', '2018-11-06 04:29:47', '2019-11-05 23:29:47'),
('d3b68f20bd3e4dee924778407c2f08c82fb70973241474251d81a4cb57079b737ffd80998a13ad8d', 5, 1, NULL, '[\"*\"]', 0, '2018-11-06 04:30:03', '2018-11-06 04:30:03', '2019-11-05 23:30:03'),
('dd7662f34f0ff7df59717711ffd03c86e6560a9b952103a74631fde04f591ee9b4ba8290be5b7c36', 4, 1, NULL, '[\"*\"]', 0, '2018-11-06 04:21:19', '2018-11-06 04:21:19', '2019-11-05 23:21:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Password Grant Client', '9DiaiqLEKzMWWgj0aQIeFk6gfLvQUqWzl6wdlxNV', 'http://localhost', 0, 1, 0, '2018-11-06 02:17:32', '2018-11-06 02:17:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('1e3f97377d23182310b59f8739e00285c266513ab538df48ae7c8004a1e9de3e3e61d4a6e832b9f0', 'd3b68f20bd3e4dee924778407c2f08c82fb70973241474251d81a4cb57079b737ffd80998a13ad8d', 0, '2019-11-05 23:30:03'),
('b6fbe4b261375c3429f46b5f6049b4eef99323989e77941a77731bcad5b11b5a707e6423eef1bff8', 'dd7662f34f0ff7df59717711ffd03c86e6560a9b952103a74631fde04f591ee9b4ba8290be5b7c36', 0, '2019-11-05 23:21:19'),
('f2ac8804607574fa64068bd3c0358afde4455e47185fcfe648f84db10628118d6812a5325ffe5ff2', '1d931392a9a0823bdf50e603482a6748ee691d379ee5494a12a78e215d39f4741a46bd20c6759e08', 0, '2019-11-05 23:29:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oferta_dia`
--

CREATE TABLE `oferta_dia` (
  `id_promociones` int(11) NOT NULL,
  `id_producto_p` int(11) NOT NULL,
  `descuento` int(11) NOT NULL,
  `imagen` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_promo` date NOT NULL,
  `fin_fecha_promo` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id_pedido` int(11) NOT NULL,
  `nombre_cliente` int(11) NOT NULL,
  `id_trabajador` int(11) NOT NULL,
  `id_mesa` int(11) NOT NULL,
  `fecha_pedido` date NOT NULL,
  `hora_pedido` time NOT NULL,
  `estado` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `id_permiso` int(11) NOT NULL,
  `ruta` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(300) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos_roles`
--

CREATE TABLE `permisos_roles` (
  `id_permisos_cargo` int(11) NOT NULL,
  `id_cargo` int(11) NOT NULL,
  `id_permiso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `platos`
--

CREATE TABLE `platos` (
  `id_plato` int(11) NOT NULL,
  `id_tipo_plato` int(11) NOT NULL,
  `nombre` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `precio` int(11) NOT NULL,
  `descripcion` varchar(502) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_bebidas`
--

CREATE TABLE `tipo_bebidas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(502) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_platos`
--

CREATE TABLE `tipo_platos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(502) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajadores`
--

CREATE TABLE `trabajadores` (
  `id_trabajador` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `apellido_paterno` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `apellido_materno` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cedula` int(11) NOT NULL,
  `sexo` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `correo` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `trabajadores`
--

INSERT INTO `trabajadores` (`id_trabajador`, `nombre`, `apellido_paterno`, `apellido_materno`, `cedula`, `sexo`, `correo`, `telefono`, `created_at`, `updated_at`) VALUES
(1, 'Ronaldo', 'camacho', 'meza', 1007730321, 'masculino', 'ronaldo@mail.com', '3045907407', '2018-11-06 00:27:16', '2018-11-06 00:27:16'),
(2, 'Ronaldo', 'camacho', 'meza', 100730321, 'masculino', 'ronald@mail.com', '3045907407', '2018-11-06 00:29:48', '2018-11-06 00:29:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--

CREATE TABLE `turno` (
  `id_turno` int(11) NOT NULL,
  `hora_inicio` date NOT NULL,
  `hora_fin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'test', 'rona@mail.com', NULL, '$2y$10$O4aaaDyDuAdn/bAHSZmGK.1KvWyoc2ePgTh1Qrr8vYVMTvnuBn7cq', NULL, '2018-11-06 04:29:47', '2018-11-06 04:29:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_cargo`
--

CREATE TABLE `user_cargo` (
  `id_user_cargo` int(11) NOT NULL,
  `id_trabajador` int(11) NOT NULL,
  `id_cargo` int(11) NOT NULL,
  `observaciones` varchar(300) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_turnos`
--

CREATE TABLE `user_turnos` (
  `id_user_turnos` int(11) NOT NULL,
  `id_trabajado` int(11) NOT NULL,
  `id_turno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bebida`
--
ALTER TABLE `bebida`
  ADD PRIMARY KEY (`id_bebida`),
  ADD KEY `id_tipo_bebida` (`id_tipo_bebida`);

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`id_cargo`);

--
-- Indices de la tabla `cocinero_plato`
--
ALTER TABLE `cocinero_plato`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cocinero` (`id_cocinero`),
  ADD KEY `id_plato` (`id_plato`);

--
-- Indices de la tabla `detallespedidos_bebidas`
--
ALTER TABLE `detallespedidos_bebidas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_bebida` (`id_bebida`),
  ADD KEY `id_pedido` (`id_pedido`);

--
-- Indices de la tabla `detallespedidos_platos`
--
ALTER TABLE `detallespedidos_platos`
  ADD PRIMARY KEY (`id_`),
  ADD KEY `id_pedido` (`id_pedido`),
  ADD KEY `id_plato` (`id_plato`);

--
-- Indices de la tabla `detalle_oferta_p`
--
ALTER TABLE `detalle_oferta_p`
  ADD PRIMARY KEY (`id_detalle_oferta`),
  ADD KEY `id_oferta_p` (`id_oferta_p`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id_factura`),
  ADD UNIQUE KEY `codigo` (`codigo`),
  ADD KEY `id_pedido` (`id_pedido`);

--
-- Indices de la tabla `mesas`
--
ALTER TABLE `mesas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `num_mesa` (`num_mesa`),
  ADD KEY `tipo_mesa` (`tipo_mesa`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indices de la tabla `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indices de la tabla `oferta_dia`
--
ALTER TABLE `oferta_dia`
  ADD PRIMARY KEY (`id_promociones`),
  ADD KEY `id_producto_p` (`id_producto_p`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id_pedido`),
  ADD KEY `id_trabajador` (`id_trabajador`),
  ADD KEY `id_mesa` (`id_mesa`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`id_permiso`);

--
-- Indices de la tabla `permisos_roles`
--
ALTER TABLE `permisos_roles`
  ADD PRIMARY KEY (`id_permisos_cargo`),
  ADD KEY `id_cargo` (`id_cargo`),
  ADD KEY `id_permiso` (`id_permiso`);

--
-- Indices de la tabla `platos`
--
ALTER TABLE `platos`
  ADD PRIMARY KEY (`id_plato`),
  ADD KEY `id_tipo_plato` (`id_tipo_plato`);

--
-- Indices de la tabla `tipo_bebidas`
--
ALTER TABLE `tipo_bebidas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_platos`
--
ALTER TABLE `tipo_platos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `trabajadores`
--
ALTER TABLE `trabajadores`
  ADD PRIMARY KEY (`id_trabajador`),
  ADD UNIQUE KEY `cedula` (`cedula`);

--
-- Indices de la tabla `turno`
--
ALTER TABLE `turno`
  ADD PRIMARY KEY (`id_turno`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `user_cargo`
--
ALTER TABLE `user_cargo`
  ADD PRIMARY KEY (`id_user_cargo`),
  ADD KEY `id_trabajador` (`id_trabajador`),
  ADD KEY `id_cargo` (`id_cargo`);

--
-- Indices de la tabla `user_turnos`
--
ALTER TABLE `user_turnos`
  ADD PRIMARY KEY (`id_user_turnos`),
  ADD KEY `id_trabajado` (`id_trabajado`),
  ADD KEY `id_turno` (`id_turno`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `id_cargo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cocinero_plato`
--
ALTER TABLE `cocinero_plato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `detallespedidos_bebidas`
--
ALTER TABLE `detallespedidos_bebidas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `detallespedidos_platos`
--
ALTER TABLE `detallespedidos_platos`
  MODIFY `id_` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `detalle_oferta_p`
--
ALTER TABLE `detalle_oferta_p`
  MODIFY `id_detalle_oferta` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `id_factura` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `mesas`
--
ALTER TABLE `mesas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `oferta_dia`
--
ALTER TABLE `oferta_dia`
  MODIFY `id_promociones` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `id_permiso` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `permisos_roles`
--
ALTER TABLE `permisos_roles`
  MODIFY `id_permisos_cargo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `platos`
--
ALTER TABLE `platos`
  MODIFY `id_plato` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipo_bebidas`
--
ALTER TABLE `tipo_bebidas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipo_platos`
--
ALTER TABLE `tipo_platos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `trabajadores`
--
ALTER TABLE `trabajadores`
  MODIFY `id_trabajador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `turno`
--
ALTER TABLE `turno`
  MODIFY `id_turno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `user_cargo`
--
ALTER TABLE `user_cargo`
  MODIFY `id_user_cargo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `user_turnos`
--
ALTER TABLE `user_turnos`
  MODIFY `id_user_turnos` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `bebida`
--
ALTER TABLE `bebida`
  ADD CONSTRAINT `bebida_ibfk_1` FOREIGN KEY (`id_tipo_bebida`) REFERENCES `tipo_bebidas` (`id`),
  ADD CONSTRAINT `bebida_ibfk_2` FOREIGN KEY (`id_tipo_bebida`) REFERENCES `tipo_bebidas` (`id`);

--
-- Filtros para la tabla `cocinero_plato`
--
ALTER TABLE `cocinero_plato`
  ADD CONSTRAINT `cocinero_plato_ibfk_1` FOREIGN KEY (`id_cocinero`) REFERENCES `trabajadores` (`id_trabajador`),
  ADD CONSTRAINT `cocinero_plato_ibfk_2` FOREIGN KEY (`id_plato`) REFERENCES `platos` (`id_plato`);

--
-- Filtros para la tabla `detallespedidos_bebidas`
--
ALTER TABLE `detallespedidos_bebidas`
  ADD CONSTRAINT `Detallespedidos_bebidas_ibfk_1` FOREIGN KEY (`id_bebida`) REFERENCES `bebida` (`id_bebida`),
  ADD CONSTRAINT `Detallespedidos_bebidas_ibfk_2` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id_pedido`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detallespedidos_platos`
--
ALTER TABLE `detallespedidos_platos`
  ADD CONSTRAINT `Detallespedidos_platos_ibfk_1` FOREIGN KEY (`id_plato`) REFERENCES `platos` (`id_plato`),
  ADD CONSTRAINT `Detallespedidos_platos_ibfk_2` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id_pedido`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id_pedido`);

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`id_trabajador`) REFERENCES `trabajadores` (`id_trabajador`),
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`id_mesa`) REFERENCES `mesas` (`id`);

--
-- Filtros para la tabla `permisos_roles`
--
ALTER TABLE `permisos_roles`
  ADD CONSTRAINT `permisos_roles_ibfk_1` FOREIGN KEY (`id_cargo`) REFERENCES `cargo` (`id_cargo`),
  ADD CONSTRAINT `permisos_roles_ibfk_2` FOREIGN KEY (`id_permiso`) REFERENCES `permisos` (`id_permiso`);

--
-- Filtros para la tabla `platos`
--
ALTER TABLE `platos`
  ADD CONSTRAINT `platos_ibfk_1` FOREIGN KEY (`id_tipo_plato`) REFERENCES `tipo_platos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `platos_ibfk_2` FOREIGN KEY (`id_tipo_plato`) REFERENCES `tipo_platos` (`id`);

--
-- Filtros para la tabla `user_cargo`
--
ALTER TABLE `user_cargo`
  ADD CONSTRAINT `user_cargo_ibfk_1` FOREIGN KEY (`id_trabajador`) REFERENCES `trabajadores` (`id_trabajador`),
  ADD CONSTRAINT `user_cargo_ibfk_2` FOREIGN KEY (`id_cargo`) REFERENCES `cargo` (`id_cargo`);

--
-- Filtros para la tabla `user_turnos`
--
ALTER TABLE `user_turnos`
  ADD CONSTRAINT `user_turnos_ibfk_1` FOREIGN KEY (`id_trabajado`) REFERENCES `trabajadores` (`id_trabajador`),
  ADD CONSTRAINT `user_turnos_ibfk_2` FOREIGN KEY (`id_turno`) REFERENCES `turno` (`id_turno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
