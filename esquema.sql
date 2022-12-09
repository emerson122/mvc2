CREATE DATABASE IF NOT EXISTS usuarios_login;
USE usuarios_login;

CREATE TABLE IF NOT EXISTS usuarios(
    id bigint unsigned not null auto_increment,
    correo varchar(255) not null unique, /*UNIQUE para evitar la duplicidad de usuarios*/
    palabra_secreta varchar(255) not null,
    primary key(id)
);

CREATE TABLE `vehiculos` (
  `id` int(11) NOT NULL,
  `placa` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `marca` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `modelo` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `anio` int(4) NOT NULL,
  `color` varchar(25) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


INSERT INTO `vehiculos` (`id`, `placa`, `marca`, `modelo`, `anio`, `color`) VALUES
(1, 'MVC1234', 'VOLVO', 'G45', 2015, 'NEGRO'),
(2, 'ASS1535', 'VOLVO', 'GFGF5', 2016, 'BLANCO'),
(3, 'ASDAD', 'VOLVO', 'G45', 2017, 'GRIS'),
(4, 'TRD5', 'VOLVO', 'GFGF5', 2018, 'VERDE');

ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `vehiculos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

select * from vehiculos;
select * from usuarios;
