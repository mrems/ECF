

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE DATABASE IF NOT EXISTS `super_antique` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `super_antique`;


CREATE TABLE `carte` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `price` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `carte` (`id`, `category`, `title`, `description`, `price`) VALUES
(1, 'entrée', 'Jambon Bodega de la Rioja', '16 mois d′affinage', '19€'),
(2, 'entrée', 'Burrata', 'Coulis de piquillos rôtis au pimenton, tapenade de tomate, crumble écume de pain brulé', '22€'),
(3, 'entrée', 'Cogollos César', 'Volaille moelleuse, œufs de caille, parmesan, sauce onctueuse', '15€'),
(4, 'entrée', 'Caviar d′Aquitaine', '10g, crème acidulée', '36€'),
(5, 'plat', 'Salade thaï', 'Gambas en panko, cacahuètes et condiment kimchi', '22€'),
(6, 'plat', 'Cocotte', 'Fregola safranée, comme une paëlla, filet de rouget, coquillages et chorizo', '28€'),
(7, 'plat', 'Saint-Pierre', 'Rôti sur peau, asperges, noisettes concassées, beurre blanc citronné à l′avruga', '31€'),
(8, 'plat', 'Bar', 'Grillé au Mibrasa, riz frit à l′indonésienne, sauce à l′ail noir', '27€'),
(9, 'plat', 'Volaille', 'Suprême rôti, déclinaison de pommes de terre, jus aux épices cajun', '28€'),
(10, 'plat', 'Noix d′entrecôte d′Argentine', 'Cuit à la braise, finger de pommes de terre à la provençale', '38€'),
(11, 'plat', 'Agneau', 'Filet d′agneau persillé, fricassé de petits pois, magret fumé, oignons grelots, jus moutardé', '37€'),
(12, 'dessert', 'Chocolat', 'Chocolat Inaya, croustillant cacahuète, caramel vanille, crème glacée, sauce cacao fleur de sel', '12€'),
(13, 'dessert', 'Vacherin', 'Sorbet pomme, feuilles de meringue et son crémeux végétal', '12€'),
(14, 'dessert', 'Fraise', 'Parfumé au poivre de timut, lait d′amande, huile de roquette et sorbet fraise', '12€'),
(15, 'menu', 'Formule Duo', 'Entrée + Plat ou Plat + dessert', '35€'),
(16, 'menu', 'Formule Trio', 'Entrée + Plat + dessert', '40€');



CREATE TABLE `horaires` (
  `id` int(11) NOT NULL,
  `midi` varchar(15) NOT NULL,
  `soir` varchar(15) NOT NULL,
  `jour` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `horaires` (`id`, `midi`, `soir`, `jour`) VALUES
(1, '12:00 - 15:00', '19:00 - 22:00', 'Lundi'),
(2, '12:00 - 15:00', '19:00 - 22:00', 'Mardi'),
(3, 'Fermé', '', 'Mercredi'),
(4, '12:00 - 15:00', '19:00 - 22:00', 'Jeudi'),
(5, '12:00 - 15:00', '19:00 - 23:00', 'Vendredi'),
(6, '19:00 - 23:00', '', 'Samedi'),
(7, '12:00 - 15:00', '', 'Dimanche');



CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `name` varchar(250) NOT NULL,
  `alt` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `photos` (`id`, `image`, `name`, `alt`) VALUES
(1, 'agneau.jpg', 'croquettes de mouton sauce au poivre', 'agneau'),
(2, 'boeuf.jpg', 'filet mignon sauce au vin', 'boeuf'),
(3, 'crabe.jpg', 'émincé de crabe sauce barbecue', 'crabe'),
(4, 'mesclun.jpg', 'salade aux aromates du jardin', 'mesclun'),
(5, 'palourdes.jpg', 'salade de palourdes et carottes', 'palourdes'),
(6, 'pasta.jpg', 'pates aux fruits de mer', 'pasta'),
(7, 'poisson.jpg', 'beignets de poisson et de choux', 'poisson'),
(10, 'sole.jpg', 'marmite aux huit trésors', 'sole');



CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `usertype` varchar(50) DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `users` (`id`, `name`, `email`, `password`, `usertype`) VALUES
(1, 'polo', 'polo@polo.com', '1234', 'user'),
(2, 'admin', 'admin@admin.com', '1234', 'admin');


ALTER TABLE `carte`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `horaires`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `carte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

ALTER TABLE `horaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

COMMIT;

