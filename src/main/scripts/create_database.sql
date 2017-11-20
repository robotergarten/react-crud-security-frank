CREATE DATABASE IF NOT EXISTS `crud` ;
USE `crud`;
CREATE TABLE IF NOT EXISTS `manager` (
  `manager_id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `roles` varchar(200) NOT NULL,
  PRIMARY KEY (`manager_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
-- Dumping data for table concretepage.articles: ~3 rows (approximately)
-- INSERT INTO `manager` (`manager_id`, `name`, `password`, `roles`) VALUES
--  (1, 'carlos2342', 'ceboll2342o', 'ROLE_MANAGER');
-- Dumping structure for table concretepage.users
CREATE TABLE IF NOT EXISTS `employee` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `manager_id` int(5) NOT NULL,
  `version` int(5) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`manager_id`) REFERENCES `manager`(`manager_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
-- Dumping data for table concretepage.articles: ~3 rows (approximately)
-- INSERT INTO `employee` (`id`, `first_name`, `last_name`, `description`) VALUES
--  (1, 'emplo1', 'cognom1', 'descripti 1'),
--  (2, 'emplo2', 'cognom2', 'descripti 1'),
--  (3, 'emplo3', 'cognom3', 'descripti23424 1');, 'descripti23424 1');