/*
SQLyog Ultimate v12.14 (64 bit)
MySQL - 10.1.38-MariaDB : Database - curriculo_paula
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`curriculo_paula` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `curriculo_paula`;

/*Table structure for table `contas` */

DROP TABLE IF EXISTS `contas`;

CREATE TABLE `contas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) NOT NULL,
  `saldo_inicial` decimal(10,2) DEFAULT '0.00',
  `visivel` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `contas` */

/*Table structure for table `cursos` */

DROP TABLE IF EXISTS `cursos`;

CREATE TABLE `cursos` (
  `id_curso` int(11) NOT NULL AUTO_INCREMENT,
  `nome_curso` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `cursos` */

insert  into `cursos`(`id_curso`,`nome_curso`) values (1,'CURSO TÉCNICO DE SISTEMAS'),(2,'GRADUAÇÃO EM SISTEMAS DE INFORMAÇÃO');

/*Table structure for table `dados_pessoais` */

DROP TABLE IF EXISTS `dados_pessoais`;

CREATE TABLE `dados_pessoais` (
  `id_dados` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefone` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_dados`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `dados_pessoais` */

insert  into `dados_pessoais`(`id_dados`,`nome`,`email`,`telefone`) values (1,'Paula Araujo','paula.araujo.dev@gmail.com',2147483647);

/*Table structure for table `experiencia` */

DROP TABLE IF EXISTS `experiencia`;

CREATE TABLE `experiencia` (
  `id_experiencia` int(11) NOT NULL AUTO_INCREMENT,
  `nome_empresa` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_experiencia`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `experiencia` */

insert  into `experiencia`(`id_experiencia`,`nome_empresa`) values (1,'Jovem Aprendiz - COMPESA'),(2,'Voluntariado - CENTRO DE RECONDICIONAMENTO DE COMPUTADORES');

/*Table structure for table `objetivo` */

DROP TABLE IF EXISTS `objetivo`;

CREATE TABLE `objetivo` (
  `id_obj` int(11) NOT NULL AUTO_INCREMENT,
  `desc_obj` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_obj`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `objetivo` */

insert  into `objetivo`(`id_obj`,`desc_obj`) values (1,'Tenho uma vida profissional pautada em grandes desafios. Por este motivo, acredito que esta é a oportunidade ideal para que eu mostre e desenvolva ainda mais minhas habilidades e competências de liderança e trabalho em equipe.');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
