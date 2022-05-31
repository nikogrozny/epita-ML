/*

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : missi_2.4

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 20/04/2018 23:42:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for actor
-- ----------------------------
DROP TABLE IF EXISTS `actor`;
CREATE TABLE `actor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `date_start_accuracy` varchar(10) DEFAULT NULL,
  `date_end_accuracy` varchar(10) DEFAULT NULL,
  `note` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `actor_id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=431 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of actor
-- ----------------------------
BEGIN;
INSERT INTO `actor` VALUES (1, 'Aaron', NULL, NULL, NULL, NULL, 'Dans la mission de 817-818, il est désigné comme \"nuntius\".');
INSERT INTO `actor` VALUES (2, 'Louis le Pieux', '0778-01-01', '0840-06-20', 'circa', 'exactement', NULL);
INSERT INTO `actor` VALUES (3, 'Charlemagne', '0742-04-02', '0814-01-28', 'circa', 'exactement', NULL);
INSERT INTO `actor` VALUES (4, 'Pépin II de Herstal', '0645-01-01', '0714-12-16', 'circa', 'exactement', NULL);
INSERT INTO `actor` VALUES (5, 'Charles Martel', '0686-01-01', '0741-10-22', 'circa', 'exactement', NULL);
INSERT INTO `actor` VALUES (6, 'Pépin III le Bref', '0714-01-01', '0768-09-24', 'circa', 'exactement', NULL);
INSERT INTO `actor` VALUES (7, 'Charles II le Chauve', '0823-06-13', '0877-10-06', 'exactement', 'exactement', NULL);
INSERT INTO `actor` VALUES (8, 'Lothaire I', '0795-01-01', '0855-09-29', 'circa', 'exactement', NULL);
INSERT INTO `actor` VALUES (9, 'Louis II, \"le Jeune\", d\'Italie', '0825-11-01', '0875-08-12', 'exactement', 'exactement', NULL);
INSERT INTO `actor` VALUES (10, 'Charles III le Gros', '0839-01-01', '0888-01-12', 'circa', 'circa', NULL);
INSERT INTO `actor` VALUES (11, 'Louis II de Germanie', '0806-01-01', '0876-05-28', 'circa', 'exactement', NULL);
INSERT INTO `actor` VALUES (12, 'Pépin I d\'Aquitaine', '0797-01-01', '0838-12-13', 'circa', 'exactement', NULL);
INSERT INTO `actor` VALUES (13, 'Lothaire II de Lotharingie', '0835-01-01', '0869-01-01', 'circa', 'circa', NULL);
INSERT INTO `actor` VALUES (14, 'Adalfrid', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `actor` VALUES (15, 'Abbo', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `actor` VALUES (16, 'Isembard (II)', NULL, NULL, NULL, NULL, 'lat: Isembardus, Isimhardus');
INSERT INTO `actor` VALUES (17, 'Theutbald', NULL, NULL, NULL, NULL, 'lat: Teutboldus');
INSERT INTO `actor` VALUES (18, 'Jonas (II)', NULL, NULL, NULL, NULL, 'lat: Jonas');
INSERT INTO `actor` VALUES (19, 'Daddo', NULL, NULL, NULL, NULL, 'lat: Daddo');
INSERT INTO `actor` VALUES (20, 'Acbertus', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `actor` VALUES (21, 'Godebertus', NULL, NULL, NULL, NULL, 'lat: Godebertus');
INSERT INTO `actor` VALUES (22, 'Adalbert (I)', NULL, NULL, NULL, NULL, 'latin: Adalbertus');
INSERT INTO `actor` VALUES (23, 'Gualtarius', NULL, NULL, NULL, NULL, 'lat: Gualtarius');
INSERT INTO `actor` VALUES (24, 'Fulco (I)', NULL, NULL, NULL, NULL, 'lat: Fulco');
INSERT INTO `actor` VALUES (25, 'Gibuinus', NULL, NULL, NULL, NULL, 'lat: Gibuinus');
INSERT INTO `actor` VALUES (26, 'Adalbert (II)', NULL, '0841-05-13', NULL, 'exactement', 'lat: Adalbertus');
INSERT INTO `actor` VALUES (27, 'Hetti', NULL, '0847-01-01', NULL, 'circa', 'lat: Hetti, Etti\rfr: Hetton');
INSERT INTO `actor` VALUES (28, 'Adalbert (III)', '0820-01-01', '0886-01-01', 'circa', 'circa', 'Lat: Adalbertus, Adelvertus\r= Adalbert Ier de Toscane');
INSERT INTO `actor` VALUES (29, 'Wido (III)', '0800-01-01', '0860-01-01', 'circa', 'circa', '= Guy Ier de Spolète\rlat: Wito, Quido');
INSERT INTO `actor` VALUES (30, 'Johannes (III)', NULL, NULL, NULL, NULL, 'lat: Iohannes');
INSERT INTO `actor` VALUES (31, 'Gausbert', NULL, NULL, NULL, NULL, 'lat: Gausbertus');
INSERT INTO `actor` VALUES (32, 'Bernard (I)', NULL, NULL, NULL, NULL, 'lat: Bernardus, Pernhardus');
INSERT INTO `actor` VALUES (33, 'Oschisus', NULL, NULL, NULL, NULL, 'lat: Oschisus, Hoschisus');
INSERT INTO `actor` VALUES (34, 'Plato', NULL, NULL, NULL, NULL, 'lat: Plato');
INSERT INTO `actor` VALUES (35, 'Andreas (III)', NULL, NULL, NULL, NULL, 'lat: Andreas');
INSERT INTO `actor` VALUES (36, 'Hildebrand (III)', NULL, NULL, NULL, NULL, 'lat: Hildeprandus, Ildebrandus');
INSERT INTO `actor` VALUES (37, 'Ubald', NULL, NULL, NULL, NULL, 'lat: Ubaldus');
INSERT INTO `actor` VALUES (38, 'Adalbert (IV)', NULL, NULL, NULL, NULL, 'lat: Adelbertus');
INSERT INTO `actor` VALUES (39, 'Johannes (VII)', NULL, NULL, NULL, NULL, 'lat: Iohannes');
INSERT INTO `actor` VALUES (40, 'Alberich (II)', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `actor` VALUES (41, 'Adalbert (V)', NULL, NULL, NULL, NULL, 'lat: Adilbertus');
INSERT INTO `actor` VALUES (42, 'Adalgar (I)', NULL, NULL, NULL, NULL, 'lat: Adalgarius');
INSERT INTO `actor` VALUES (43, 'Berengar (II)', NULL, NULL, NULL, NULL, 'lat: Berengarius');
INSERT INTO `actor` VALUES (44, 'Engiscalchus', NULL, NULL, NULL, NULL, 'lat: Engilscalchus');
INSERT INTO `actor` VALUES (45, 'Fulco (IV)', NULL, NULL, NULL, NULL, 'lat: Fulco, Folcoinus');
INSERT INTO `actor` VALUES (46, 'Adalhard (III)', NULL, NULL, NULL, NULL, 'lat: Adalardus');
INSERT INTO `actor` VALUES (47, 'Rudolf', NULL, NULL, NULL, NULL, 'lat: Rudolfus, Hruodulphus, Rodulfus, Ruodulfus');
INSERT INTO `actor` VALUES (48, 'Richuin', NULL, NULL, NULL, NULL, 'lat: Richuinus, Ricuinus');
INSERT INTO `actor` VALUES (49, 'Adalgar (II)', NULL, '0893-01-01', NULL, 'circa', 'lat: Adalgarius');
INSERT INTO `actor` VALUES (50, 'Adalgis (I)', NULL, NULL, NULL, NULL, 'lat: Adalgisus');
INSERT INTO `actor` VALUES (51, 'Gailo', NULL, NULL, NULL, NULL, 'lat: Gailo, Geilo');
INSERT INTO `actor` VALUES (52, 'Worad', NULL, NULL, NULL, NULL, 'lat: Woradus');
INSERT INTO `actor` VALUES (53, 'Adalgis (II)', NULL, '0861-01-01', NULL, 'après', 'lat: Adalgisus, Adelgis, Adelgisus, Adalghisus, Adelghisus\r= Adalgis de Spolète');
INSERT INTO `actor` VALUES (54, 'Witgerius', NULL, NULL, NULL, NULL, 'lat: Vuitgerius, Vuiitgarius, Vitgarius, Guitgarius');
INSERT INTO `actor` VALUES (55, 'Eberhard (II)', NULL, NULL, NULL, NULL, 'lat: Eberhardus');
INSERT INTO `actor` VALUES (56, 'Wido (IV)', NULL, NULL, NULL, NULL, 'lat: Wito');
INSERT INTO `actor` VALUES (57, 'Liutfrid (II)', NULL, NULL, NULL, NULL, 'lat: Liutfridus');
INSERT INTO `actor` VALUES (58, 'Notingus', NULL, NULL, NULL, NULL, 'lat: Notingus');
INSERT INTO `actor` VALUES (59, 'Adalhard (I)', NULL, '0826-01-02', NULL, 'circa', 'lat: Adalardus, Hadalhardus, Adalhardus, Adalhard');
INSERT INTO `actor` VALUES (60, 'Adalhard (II)', NULL, '0824-01-01', NULL, 'circa', 'lat: Adalardus, Adalhardus, Adelard, Adhelardus');
INSERT INTO `actor` VALUES (61, 'Adalhard (IV)', '0830-01-01', '0890-01-01', 'circa', 'après', 'lat: Adelardus\r= Adalhard de Paris');
INSERT INTO `actor` VALUES (62, 'Adalhelm', NULL, NULL, NULL, NULL, 'lat: Adalhelmus');
INSERT INTO `actor` VALUES (63, 'Adaloch', NULL, '0823-01-01', NULL, 'avant', 'lat: Adallohus, Adallahus');
INSERT INTO `actor` VALUES (64, 'Adalroch', NULL, NULL, NULL, NULL, 'lat: Adalroch, Adalrochus, Adelrochus');
INSERT INTO `actor` VALUES (65, 'Adalung', NULL, '0838-01-01', NULL, 'circa', 'lat: Adalungus, Adalongus, Adalunc, Adelungus');
INSERT INTO `actor` VALUES (66, 'Adalwin', NULL, NULL, NULL, NULL, 'lat: Adaluuinus');
INSERT INTO `actor` VALUES (67, 'Addo', NULL, NULL, NULL, NULL, 'lat: Addo, Ato, Atto');
INSERT INTO `actor` VALUES (68, 'Adegarius', NULL, NULL, NULL, NULL, 'lat: Adegarius\r* = pas missi');
INSERT INTO `actor` VALUES (69, 'Adelhard', NULL, NULL, NULL, NULL, 'lat: Adelardus, Adellar');
INSERT INTO `actor` VALUES (70, 'Adrebald', NULL, '0840-01-01', NULL, 'circa', 'lat: Adrebaldus');
INSERT INTO `actor` VALUES (71, 'Aehardus', NULL, NULL, NULL, NULL, 'lat: Aehardus');
INSERT INTO `actor` VALUES (72, 'Aghan', NULL, NULL, NULL, NULL, 'lat: Aghanus');
INSERT INTO `actor` VALUES (73, 'Agiprand', NULL, NULL, NULL, NULL, 'lat: Agiprandus, Aliprandus');
INSERT INTO `actor` VALUES (74, 'Agius', NULL, NULL, NULL, NULL, 'lat: Agius, Aius, Aigus, Avinus');
INSERT INTO `actor` VALUES (75, 'Agnar', NULL, NULL, NULL, NULL, 'lat: Agnarius');
INSERT INTO `actor` VALUES (76, 'Aio', NULL, NULL, NULL, NULL, 'lat: Aio, Haio');
INSERT INTO `actor` VALUES (77, 'Aistulfus', NULL, NULL, NULL, NULL, 'lat: Aistulfus, Astulfus');
INSERT INTO `actor` VALUES (78, 'Aito', NULL, NULL, NULL, NULL, 'lat: Aito');
INSERT INTO `actor` VALUES (79, 'Alberich (I)', NULL, NULL, NULL, NULL, 'lat: Albericus');
INSERT INTO `actor` VALUES (80, 'Alboinus', NULL, NULL, NULL, NULL, 'lat: Alboinus');
INSERT INTO `actor` VALUES (81, 'Albuin', NULL, NULL, NULL, NULL, 'lat: Albuinus');
INSERT INTO `actor` VALUES (82, 'Albwin', NULL, NULL, NULL, NULL, 'lat: Albuuin');
INSERT INTO `actor` VALUES (83, 'Aldebald', NULL, NULL, NULL, NULL, 'lat: Aldebaldus, Adelbaldus');
INSERT INTO `actor` VALUES (84, 'Aldrich', NULL, NULL, NULL, NULL, 'lat: Aldricus');
INSERT INTO `actor` VALUES (85, 'Aledramnus', NULL, NULL, NULL, NULL, 'lat: Aledram, Aledramnus, Adadramnus, Aledrannus, Aledrans');
INSERT INTO `actor` VALUES (86, 'Altmarus', NULL, NULL, NULL, NULL, 'lat: Altmarus');
INSERT INTO `actor` VALUES (87, 'Amalar', NULL, NULL, NULL, NULL, 'lat: Amalarius, Amalharius');
INSERT INTO `actor` VALUES (88, 'Andreas (I)', NULL, NULL, NULL, NULL, 'lat: Andreas');
INSERT INTO `actor` VALUES (89, 'Andreas (II)', NULL, NULL, NULL, NULL, 'lat: Andreas');
INSERT INTO `actor` VALUES (90, 'Angilbert (I)', NULL, NULL, NULL, NULL, 'lat: Angilbertus, Agibertus, Anghelbertus');
INSERT INTO `actor` VALUES (91, 'Angilbert (II)', NULL, NULL, NULL, NULL, 'lat: Angelberus, Engelbertus');
INSERT INTO `actor` VALUES (92, 'Ansbert', NULL, NULL, NULL, NULL, 'lat: Ansbertus');
INSERT INTO `actor` VALUES (93, 'Ansegis', NULL, NULL, NULL, NULL, 'lat: Ansegisus, Ansegysus, Ansgisus');
INSERT INTO `actor` VALUES (94, 'Anselmus', NULL, NULL, NULL, NULL, 'lat: Anselmus');
INSERT INTO `actor` VALUES (95, 'Anspert', NULL, NULL, NULL, NULL, 'lat: Anspertus');
INSERT INTO `actor` VALUES (96, 'Arduin', NULL, NULL, NULL, NULL, 'lat: Arduinus, Hardoinus, Harduinus');
INSERT INTO `actor` VALUES (97, 'Arimodus', NULL, NULL, NULL, NULL, 'lat: Arimodus');
INSERT INTO `actor` VALUES (98, 'Arn', NULL, NULL, NULL, NULL, 'lat: Arno, Arn');
INSERT INTO `actor` VALUES (99, 'Arthemius', NULL, NULL, NULL, NULL, 'lat: Arthemius');
INSERT INTO `actor` VALUES (100, 'Ascaricus', NULL, NULL, NULL, NULL, 'lat: Ascharius');
INSERT INTO `actor` VALUES (101, 'Asoarius', NULL, NULL, NULL, NULL, 'lat: Asoarius, Asuarius, Asuerus');
INSERT INTO `actor` VALUES (102, 'Ato', NULL, NULL, NULL, NULL, 'lat: Ato');
INSERT INTO `actor` VALUES (103, 'Atto', NULL, NULL, NULL, NULL, 'lat: Atto');
INSERT INTO `actor` VALUES (104, 'Audacurus', NULL, NULL, NULL, NULL, 'lat: Audacurus');
INSERT INTO `actor` VALUES (105, 'Audulf', NULL, NULL, NULL, NULL, 'lat: Audulfus, Otolf, Otulfus');
INSERT INTO `actor` VALUES (106, 'Autchar', NULL, NULL, NULL, NULL, 'lat: Autcharius');
INSERT INTO `actor` VALUES (107, 'Baduard', NULL, NULL, NULL, NULL, 'lat: Baderadus, Baduradus');
INSERT INTO `actor` VALUES (108, 'Benedikt', NULL, NULL, NULL, NULL, 'lat: Benedictus');
INSERT INTO `actor` VALUES (109, 'Berengar (I)', NULL, NULL, NULL, NULL, 'lat: Berengarius');
INSERT INTO `actor` VALUES (110, 'Bernard (II)', NULL, NULL, NULL, NULL, 'lat: Bernardus');
INSERT INTO `actor` VALUES (111, 'Bernard (III)', NULL, NULL, NULL, NULL, 'lat: Bernardus');
INSERT INTO `actor` VALUES (112, 'Bernarius', NULL, NULL, NULL, NULL, 'lat: Bernarius, Bernharius, Bernardus');
INSERT INTO `actor` VALUES (113, 'Bernold', NULL, NULL, NULL, NULL, 'lat: Bernoldus');
INSERT INTO `actor` VALUES (114, 'Bertramnus', NULL, NULL, NULL, NULL, 'lat: Bertramnus, Bertrannus');
INSERT INTO `actor` VALUES (115, 'Betto', NULL, NULL, NULL, NULL, 'lat: Betto');
INSERT INTO `actor` VALUES (116, 'Bonifacius', NULL, NULL, NULL, NULL, 'lat: Bonifacius, Bonefacius');
INSERT INTO `actor` VALUES (117, 'Boso (I)', NULL, NULL, NULL, NULL, 'lat: Boso');
INSERT INTO `actor` VALUES (118, 'Boso (II)', NULL, NULL, NULL, NULL, 'lat: Boso');
INSERT INTO `actor` VALUES (119, 'Boso (III)', NULL, NULL, NULL, NULL, 'lat: Boso');
INSERT INTO `actor` VALUES (120, 'Boso (IV)', NULL, NULL, NULL, NULL, 'lat: Boso');
INSERT INTO `actor` VALUES (121, 'Burchard (I)', NULL, NULL, NULL, NULL, 'lat: Burchardus, Burghardus');
INSERT INTO `actor` VALUES (122, 'Burchard (II)', NULL, NULL, NULL, NULL, 'lat: Burchardus');
INSERT INTO `actor` VALUES (123, 'Burchard (III)', NULL, NULL, NULL, NULL, 'lat: Burcardus');
INSERT INTO `actor` VALUES (124, 'Cadolaus', NULL, NULL, NULL, NULL, 'lat: Cadolao');
INSERT INTO `actor` VALUES (125, 'Chadolus', NULL, NULL, NULL, NULL, 'lat: Chadolus');
INSERT INTO `actor` VALUES (126, 'Chlodio', NULL, NULL, NULL, NULL, 'lat: Chlodio');
INSERT INTO `actor` VALUES (127, 'Christian (I)', NULL, NULL, NULL, NULL, 'lat: Christianus');
INSERT INTO `actor` VALUES (128, 'Christian (II)', NULL, NULL, NULL, NULL, 'lat: Christianus');
INSERT INTO `actor` VALUES (129, 'Chrodegang', NULL, NULL, NULL, NULL, 'lat: Rodigangus');
INSERT INTO `actor` VALUES (130, 'Cotefretus', NULL, NULL, NULL, NULL, 'lat: Cotefretus');
INSERT INTO `actor` VALUES (131, 'Cozriih', NULL, NULL, NULL, NULL, 'lat: Cozriih');
INSERT INTO `actor` VALUES (132, 'Craman/Graman', NULL, NULL, NULL, NULL, 'lat: Craman');
INSERT INTO `actor` VALUES (133, 'Cunipert', NULL, NULL, NULL, NULL, 'lat: Cunipertus');
INSERT INTO `actor` VALUES (134, 'Deotker', NULL, NULL, NULL, NULL, 'lat: Deotkerus, Theotgerus');
INSERT INTO `actor` VALUES (135, 'Dido', NULL, NULL, NULL, NULL, 'lat: Dido');
INSERT INTO `actor` VALUES (136, 'Dodo', NULL, NULL, NULL, NULL, 'lat: Dido, Dodo');
INSERT INTO `actor` VALUES (137, 'Donatus', NULL, NULL, NULL, NULL, 'lat: Donatus');
INSERT INTO `actor` VALUES (138, 'Droctegang', NULL, NULL, NULL, NULL, 'lat: Droctegangus, Druhtgangus');
INSERT INTO `actor` VALUES (139, 'Ebbo', NULL, NULL, NULL, NULL, 'lat: Ebbo, Ebo');
INSERT INTO `actor` VALUES (140, 'Eberhard (I)', NULL, NULL, NULL, NULL, 'lat: Eborhardus, Eburhardus, Evrehardus');
INSERT INTO `actor` VALUES (141, 'Eberhard (III)', NULL, NULL, NULL, NULL, 'lat: Evrardus');
INSERT INTO `actor` VALUES (142, 'Eburis', NULL, NULL, NULL, NULL, 'lat: Eburis, Eburisus');
INSERT INTO `actor` VALUES (143, 'Ecchardus', NULL, NULL, NULL, NULL, 'lat: Acardus, Aechardus, Eccardus, Ecchardus, Echardus');
INSERT INTO `actor` VALUES (144, 'Echerigus', NULL, NULL, NULL, NULL, 'lat: Eccherigus');
INSERT INTO `actor` VALUES (145, 'Egelricus', NULL, NULL, NULL, NULL, 'lat: Egelricus');
INSERT INTO `actor` VALUES (146, 'Einhard', NULL, NULL, NULL, NULL, 'lat: Einhardus');
INSERT INTO `actor` VALUES (147, 'Engilscalcus', NULL, NULL, NULL, NULL, 'lat: Engilscalcus');
INSERT INTO `actor` VALUES (148, 'Ercangarius', NULL, NULL, NULL, NULL, 'lat: Ercangarius');
INSERT INTO `actor` VALUES (149, 'Erchangarius', NULL, NULL, NULL, NULL, 'lat: Erchangarius, Erkingarius');
INSERT INTO `actor` VALUES (150, 'Erembertus', NULL, NULL, NULL, NULL, 'lat: Erembertus');
INSERT INTO `actor` VALUES (151, 'Erflaicus', NULL, NULL, NULL, NULL, 'lat: Erflaicus');
INSERT INTO `actor` VALUES (152, 'Eriulfus', NULL, NULL, NULL, NULL, 'lat: Eriulfus');
INSERT INTO `actor` VALUES (153, 'Erlegaldus', NULL, NULL, NULL, NULL, 'lat: Erlegaldus');
INSERT INTO `actor` VALUES (154, 'Erlwin', NULL, NULL, NULL, NULL, 'lat: Herlewin');
INSERT INTO `actor` VALUES (155, 'Ermenfredus', NULL, NULL, NULL, NULL, 'lat: Ermenfredus');
INSERT INTO `actor` VALUES (156, 'Ermenfrid (I)', NULL, NULL, NULL, NULL, 'lat: Ermenfridus');
INSERT INTO `actor` VALUES (157, 'Ermenfrid (II)', NULL, NULL, NULL, NULL, 'lat: Ermenfridus');
INSERT INTO `actor` VALUES (158, 'Ermenold', NULL, NULL, NULL, NULL, 'lat: Ermenoldus');
INSERT INTO `actor` VALUES (159, 'Eugerius', NULL, NULL, NULL, NULL, 'lat: Eugerius');
INSERT INTO `actor` VALUES (160, 'Evrard', NULL, NULL, NULL, NULL, 'lat: Evrardus');
INSERT INTO `actor` VALUES (161, 'Fardulf', NULL, NULL, NULL, NULL, 'lat: Fardulfus');
INSERT INTO `actor` VALUES (162, 'Flotharius', NULL, NULL, NULL, NULL, 'lat: Flotharius');
INSERT INTO `actor` VALUES (163, 'Folcrad (I)', NULL, NULL, NULL, NULL, 'lat: Folcradus');
INSERT INTO `actor` VALUES (164, 'Folcrad (II)', NULL, NULL, NULL, NULL, 'lat: Folcradus, Fulcradus');
INSERT INTO `actor` VALUES (165, 'Folhroh', NULL, NULL, NULL, NULL, 'lat: Folhroh, Folchroh');
INSERT INTO `actor` VALUES (166, 'Formoldus', NULL, NULL, NULL, NULL, 'lat: Formoldus');
INSERT INTO `actor` VALUES (167, 'Freculf', NULL, NULL, NULL, NULL, 'lat: Freculfus\r*=n\'est pas missi');
INSERT INTO `actor` VALUES (168, 'Fredericus', NULL, NULL, NULL, NULL, 'lat: Fredericus');
INSERT INTO `actor` VALUES (169, 'Freholf', NULL, NULL, NULL, NULL, 'lat: Frehholf');
INSERT INTO `actor` VALUES (170, 'Friunto', NULL, NULL, NULL, NULL, 'lat: Friunto');
INSERT INTO `actor` VALUES (171, 'Frothar', NULL, NULL, NULL, NULL, 'lat: Frotharius, Frotarius, Flotarius');
INSERT INTO `actor` VALUES (172, 'Fulco (II)', NULL, NULL, NULL, NULL, 'lat: Fulco, Fulcho');
INSERT INTO `actor` VALUES (173, 'Fulco (III)', NULL, NULL, NULL, NULL, 'lat: Fulco');
INSERT INTO `actor` VALUES (174, 'Fulco (V)', NULL, NULL, NULL, NULL, 'lat: Fulco, Folco');
INSERT INTO `actor` VALUES (175, 'Fulco (VI)', NULL, NULL, NULL, NULL, 'lat: Fulco');
INSERT INTO `actor` VALUES (176, 'Fulcoald', NULL, NULL, NULL, NULL, 'lat: Fulcoaldus, Fulgualdus');
INSERT INTO `actor` VALUES (177, 'Fulcricus', NULL, NULL, NULL, NULL, 'lat: Fulcricus');
INSERT INTO `actor` VALUES (178, 'Fulrad (I)', NULL, NULL, NULL, NULL, 'lat: Folradus');
INSERT INTO `actor` VALUES (179, 'Fulrad (II)', NULL, NULL, NULL, NULL, 'lat: ?');
INSERT INTO `actor` VALUES (180, 'Gaidualdus', NULL, NULL, NULL, NULL, 'lat: Gaidualdus');
INSERT INTO `actor` VALUES (181, 'Garamann', NULL, NULL, NULL, NULL, 'lat: Garamannus, Grahamannus');
INSERT INTO `actor` VALUES (182, 'Garibald', NULL, NULL, NULL, NULL, 'lat: Garibaldus');
INSERT INTO `actor` VALUES (183, 'Garich', NULL, NULL, NULL, NULL, 'lat: Garih');
INSERT INTO `actor` VALUES (184, 'Gauselmus', NULL, NULL, NULL, NULL, 'lat: Gauscelinus, Gauselinus, Gauselmus, Gautselinus, Gautselmus, Gauzselmus, Gotcelmus)');
INSERT INTO `actor` VALUES (185, 'Gautselmus', NULL, NULL, NULL, NULL, 'lat: Gautselmus');
INSERT INTO `actor` VALUES (186, 'Gauzlin', NULL, NULL, NULL, NULL, 'lat: Gauzlenus, Goslinus');
INSERT INTO `actor` VALUES (187, 'Geilo', NULL, NULL, NULL, NULL, 'lat: Geilo');
INSERT INTO `actor` VALUES (188, 'Georg', NULL, NULL, NULL, NULL, 'lat: Georgius');
INSERT INTO `actor` VALUES (189, 'Gerard (I)', NULL, NULL, NULL, NULL, 'lat: Gerardus');
INSERT INTO `actor` VALUES (190, 'Gerard (II)', NULL, NULL, NULL, NULL, 'lat: Gerardus');
INSERT INTO `actor` VALUES (191, 'Gerbertus', NULL, NULL, NULL, NULL, 'lat: Gerbertus');
INSERT INTO `actor` VALUES (192, 'Gerhardus', NULL, NULL, NULL, NULL, 'lat: Gerhardus');
INSERT INTO `actor` VALUES (193, 'Germanus', NULL, NULL, NULL, NULL, 'lat: Germanus');
INSERT INTO `actor` VALUES (194, 'Germar', NULL, NULL, NULL, NULL, 'lat: Germar, Germarius');
INSERT INTO `actor` VALUES (195, 'Gerold (I)', NULL, NULL, NULL, NULL, 'lat: Geroldus, Keroldus, Kerolt');
INSERT INTO `actor` VALUES (196, 'Gerold (II)', NULL, NULL, NULL, NULL, 'lat: Geroldus, Geroltus, Keroltus');
INSERT INTO `actor` VALUES (197, 'Gerold (III)', NULL, NULL, NULL, NULL, 'lat: Geroldus');
INSERT INTO `actor` VALUES (198, 'Gerricus', NULL, NULL, NULL, NULL, 'lat: Gerricus');
INSERT INTO `actor` VALUES (199, 'Gisleramnus', NULL, NULL, NULL, NULL, 'lat: Gisleramnus');
INSERT INTO `actor` VALUES (200, 'Goddramnus', NULL, NULL, NULL, NULL, 'lat: Goddramnus');
INSERT INTO `actor` VALUES (201, 'Gotafrid', NULL, NULL, NULL, NULL, 'lat: Godefridus\r*=pas missi');
INSERT INTO `actor` VALUES (202, 'Gotselm', NULL, NULL, NULL, NULL, 'lat: Gotselmus');
INSERT INTO `actor` VALUES (203, 'Gottschalk', NULL, NULL, NULL, NULL, 'lat: Gotesscalc');
INSERT INTO `actor` VALUES (204, 'Gozbert', NULL, NULL, NULL, NULL, 'lat: Gozbertus, Gozpertus, Kozpertus');
INSERT INTO `actor` VALUES (205, 'Gozso', NULL, NULL, NULL, NULL, 'lat: Gozso');
INSERT INTO `actor` VALUES (206, 'Grauso', NULL, NULL, NULL, NULL, 'lat: Grauso');
INSERT INTO `actor` VALUES (207, 'Grimald', NULL, NULL, NULL, NULL, 'lat: Crimaldus');
INSERT INTO `actor` VALUES (208, 'Guichingus', NULL, NULL, NULL, NULL, 'lat: Guichingus, Uuichingus');
INSERT INTO `actor` VALUES (209, 'Gundericus', NULL, NULL, NULL, NULL, 'lat: Gundericus');
INSERT INTO `actor` VALUES (210, 'Gundwin', NULL, NULL, NULL, NULL, 'lat: Gunduinus');
INSERT INTO `actor` VALUES (211, 'Gunfrid', NULL, NULL, NULL, NULL, 'lat: Gunfridus');
INSERT INTO `actor` VALUES (212, 'Guntram', NULL, NULL, NULL, NULL, 'lat: Guntramnus');
INSERT INTO `actor` VALUES (213, 'Gunzo', NULL, NULL, NULL, NULL, 'lat: Gunzo');
INSERT INTO `actor` VALUES (214, 'Had / Hatto?', NULL, NULL, NULL, NULL, 'lat: Had');
INSERT INTO `actor` VALUES (215, 'Hadabrannus', NULL, NULL, NULL, NULL, 'lat: Hadabrannus');
INSERT INTO `actor` VALUES (216, 'Hadebold', NULL, NULL, NULL, NULL, 'lat: Hadeboldus');
INSERT INTO `actor` VALUES (217, 'Hagan', NULL, NULL, NULL, NULL, 'lat: Haguno, Haganus');
INSERT INTO `actor` VALUES (218, 'Hairard', NULL, NULL, NULL, NULL, 'lat: Hairardus, Eirardus, Erardus');
INSERT INTO `actor` VALUES (219, 'Haito', NULL, NULL, NULL, NULL, 'lat: Haito, Hatto, Heito, Haido, Hetdo, Hetto, Hitto');
INSERT INTO `actor` VALUES (220, 'Harduin', NULL, NULL, NULL, NULL, 'lat: Harduinus, Hardoinus');
INSERT INTO `actor` VALUES (221, 'Haroinus', NULL, NULL, NULL, NULL, 'lat: Haroinus, Haruinus, Ardionus, Aroin, Aroinus');
INSERT INTO `actor` VALUES (222, 'Hartmann', NULL, NULL, NULL, NULL, 'lat: Ardemannus, Artmannus, Hartmannus');
INSERT INTO `actor` VALUES (223, 'Hatto', NULL, NULL, NULL, NULL, 'lat: Hatto');
INSERT INTO `actor` VALUES (224, 'Haymo', NULL, NULL, NULL, NULL, 'lat: Haymo');
INSERT INTO `actor` VALUES (225, 'Heiminus', NULL, NULL, NULL, NULL, 'lat: Aimoinius, Erminius, Haiminus, Heiminus');
INSERT INTO `actor` VALUES (226, 'Heinard', NULL, NULL, NULL, NULL, 'lat: Heinardus, Heinhardus');
INSERT INTO `actor` VALUES (227, 'Heistulf', NULL, NULL, NULL, NULL, 'lat: Heistulfus');
INSERT INTO `actor` VALUES (228, 'Helisachar', NULL, NULL, NULL, NULL, 'lat: Helisachar');
INSERT INTO `actor` VALUES (229, 'Helmgaud', NULL, NULL, NULL, NULL, 'lat: Hlemgaudus, Helmengaldus');
INSERT INTO `actor` VALUES (230, 'Henricus', NULL, NULL, NULL, NULL, 'lat: Henricus');
INSERT INTO `actor` VALUES (231, 'Heribald', NULL, NULL, NULL, NULL, 'lat: Heribaldus');
INSERT INTO `actor` VALUES (232, 'Heribrand', NULL, NULL, NULL, NULL, 'lat: Heribrandus, Eriprandus');
INSERT INTO `actor` VALUES (233, 'Herloin (II)', NULL, NULL, NULL, NULL, 'lat: Herloinus');
INSERT INTO `actor` VALUES (234, 'Hermingaud', NULL, NULL, NULL, NULL, 'lat: Hermingaudus');
INSERT INTO `actor` VALUES (235, 'Hieronymus', NULL, NULL, NULL, NULL, 'lat: Hieronimus');
INSERT INTO `actor` VALUES (236, 'Hildebald', NULL, NULL, NULL, NULL, 'lat: Hildeboldus');
INSERT INTO `actor` VALUES (237, 'Hildebaldus', NULL, NULL, NULL, NULL, 'lat: Hildebaldus');
INSERT INTO `actor` VALUES (238, 'Hildebold', NULL, NULL, NULL, NULL, 'lat: Hildeboldus, Hildibaldus, Hiltiboldus');
INSERT INTO `actor` VALUES (239, 'Hildebrand (I)', NULL, NULL, NULL, NULL, 'lat: Hildebrandus');
INSERT INTO `actor` VALUES (240, 'Hildebrand (II)', NULL, NULL, NULL, NULL, 'lat: Hildebrandus, Hildebrannus');
INSERT INTO `actor` VALUES (241, 'Hildegar', NULL, NULL, NULL, NULL, 'lat: Hildegarius');
INSERT INTO `actor` VALUES (242, 'Hilpidius', NULL, NULL, NULL, NULL, 'lat: Hilpidius');
INSERT INTO `actor` VALUES (243, 'Hilteratus', NULL, NULL, NULL, NULL, 'lat: Hilteratus');
INSERT INTO `actor` VALUES (244, 'Himemno', NULL, NULL, NULL, NULL, 'lat: Himemno');
INSERT INTO `actor` VALUES (245, 'Hinkmar (I)', NULL, NULL, NULL, NULL, 'lat: Hincmarus');
INSERT INTO `actor` VALUES (246, 'Hinkmar (II)', NULL, NULL, NULL, NULL, 'lat: Hincmarus, Incmarus');
INSERT INTO `actor` VALUES (247, 'Hiselmundus', NULL, NULL, NULL, NULL, 'lat: Hiselmundus');
INSERT INTO `actor` VALUES (248, 'Hiterius', NULL, NULL, NULL, NULL, 'lat: Hiterius');
INSERT INTO `actor` VALUES (249, 'Hredi', NULL, NULL, NULL, NULL, 'lat: Hredi');
INSERT INTO `actor` VALUES (250, 'Hrocculf', NULL, NULL, NULL, NULL, 'lat: Hrocculfus, Hroccolfus, Hruoculfus');
INSERT INTO `actor` VALUES (251, 'Hruotfrid', NULL, NULL, NULL, NULL, 'lat: Hruotfridus');
INSERT INTO `actor` VALUES (252, 'Huasmuot, Huasamot', NULL, NULL, NULL, NULL, 'lat: Huasmuot');
INSERT INTO `actor` VALUES (253, 'Hucbald', NULL, NULL, NULL, NULL, 'lat: Hucbaldus, Hugbaldus');
INSERT INTO `actor` VALUES (254, 'Hugo (I)', NULL, NULL, NULL, NULL, 'lat: Hugo');
INSERT INTO `actor` VALUES (255, 'Hugo (II)', NULL, NULL, NULL, NULL, 'lat: Hugo');
INSERT INTO `actor` VALUES (256, 'Hunfrid (I)', NULL, NULL, NULL, NULL, 'lat: Hunfridus, Unfredus');
INSERT INTO `actor` VALUES (257, 'Hunfrid (II)', NULL, NULL, NULL, NULL, 'lat: Hunfridus, Unfridus');
INSERT INTO `actor` VALUES (258, 'Immo (I)', NULL, NULL, NULL, NULL, 'lat: Immo');
INSERT INTO `actor` VALUES (259, 'Immo (II)', NULL, NULL, NULL, NULL, 'lat: Immo, Emmo, Exemeno');
INSERT INTO `actor` VALUES (260, 'Ingilwin', NULL, NULL, NULL, NULL, 'lat Ingilwinus, Ingeluinus');
INSERT INTO `actor` VALUES (261, 'Ingobert', NULL, NULL, NULL, NULL, 'lat: Ingobertus');
INSERT INTO `actor` VALUES (262, 'Iotselmus', NULL, NULL, NULL, NULL, 'lat: Iotselmus');
INSERT INTO `actor` VALUES (263, 'Iring', NULL, NULL, NULL, NULL, 'lat: Iring');
INSERT INTO `actor` VALUES (264, 'Irminfrid', NULL, NULL, NULL, NULL, 'lat: Ermenfridus, Hirminfridus, Yrminfridus');
INSERT INTO `actor` VALUES (265, 'Irmino', NULL, NULL, NULL, NULL, 'lat: Irmino');
INSERT INTO `actor` VALUES (266, 'Isaak', NULL, NULL, NULL, NULL, 'lat: Isaac');
INSERT INTO `actor` VALUES (267, 'Isembard (I)', NULL, NULL, NULL, NULL, 'lat: Hisembard, Isanbardo, Isanhardus, Ysanbardo');
INSERT INTO `actor` VALUES (268, 'Itherius', NULL, NULL, NULL, NULL, 'lat: Ittherius');
INSERT INTO `actor` VALUES (269, 'Izzo', NULL, NULL, NULL, NULL, 'lat: Izzo');
INSERT INTO `actor` VALUES (270, 'Jeremias', NULL, NULL, NULL, NULL, 'lat: Hieremias');
INSERT INTO `actor` VALUES (271, 'Jesse', NULL, NULL, NULL, NULL, 'lat: Iesse');
INSERT INTO `actor` VALUES (272, 'Johannes (I)', NULL, NULL, NULL, NULL, 'lat: Iohannes');
INSERT INTO `actor` VALUES (273, 'Johannes (II)', NULL, NULL, NULL, NULL, 'lat: Iohannes');
INSERT INTO `actor` VALUES (274, 'Johannes (IV)', NULL, NULL, NULL, NULL, 'lat: Iohannes');
INSERT INTO `actor` VALUES (275, 'Johannes (V)', NULL, NULL, NULL, NULL, 'lat: Iohannes');
INSERT INTO `actor` VALUES (276, 'Johannes (VI)', NULL, NULL, NULL, NULL, 'lat: Ioannes');
INSERT INTO `actor` VALUES (277, 'Jonas (I)', NULL, NULL, NULL, NULL, 'lat: Ionas');
INSERT INTO `actor` VALUES (278, 'Joseph (I)', NULL, NULL, NULL, NULL, 'lat: Joseph');
INSERT INTO `actor` VALUES (279, 'Joseph (II)', NULL, NULL, NULL, NULL, 'lat: Joseph, Josippus');
INSERT INTO `actor` VALUES (280, 'Kisalhard', NULL, NULL, NULL, NULL, 'lat: Kaisalhardus, Kisalhart, Kislehardus, Kyslehartus, Kysalhardus, Kysalhart');
INSERT INTO `actor` VALUES (281, 'Kobbo', NULL, NULL, NULL, NULL, 'lat: Cobbo');
INSERT INTO `actor` VALUES (282, 'Laidrad', NULL, NULL, NULL, NULL, 'lat: Laidradus, Leidradus, Leideradus, Leydrath');
INSERT INTO `actor` VALUES (283, 'Lambert', NULL, NULL, NULL, NULL, 'lat: Lantbertus');
INSERT INTO `actor` VALUES (284, 'Landbert', NULL, NULL, NULL, NULL, 'lat: Landbertus');
INSERT INTO `actor` VALUES (285, 'Landebert', NULL, NULL, NULL, NULL, 'lat: Landebertus');
INSERT INTO `actor` VALUES (286, 'Landramnus', NULL, NULL, NULL, NULL, 'lat: Landramnus');
INSERT INTO `actor` VALUES (287, 'Landrich', NULL, NULL, NULL, NULL, 'lat: Landricus');
INSERT INTO `actor` VALUES (288, 'Lantuin', NULL, NULL, NULL, NULL, 'lat: Lantvinus');
INSERT INTO `actor` VALUES (289, 'Leo', NULL, NULL, NULL, NULL, 'lat: Leo');
INSERT INTO `actor` VALUES (290, 'Leodoinus', NULL, NULL, NULL, NULL, 'lat: Leodoinus');
INSERT INTO `actor` VALUES (291, 'Leutarius', NULL, NULL, NULL, NULL, 'lat: Leutarius');
INSERT INTO `actor` VALUES (292, 'Leutherius', NULL, NULL, NULL, NULL, 'lat: Leutherius');
INSERT INTO `actor` VALUES (293, 'Liudericus (I)', NULL, NULL, NULL, NULL, 'lat: Liudericus, Leudericus');
INSERT INTO `actor` VALUES (294, 'Liudericus (II)', NULL, NULL, NULL, NULL, 'lat: Liudericus');
INSERT INTO `actor` VALUES (295, 'Liudo', NULL, NULL, NULL, NULL, 'lat: Liudo, Leudo, Liduo');
INSERT INTO `actor` VALUES (296, 'Liutfrid (I)', NULL, NULL, NULL, NULL, 'lat: Liutfridus');
INSERT INTO `actor` VALUES (297, 'Liutharius', NULL, NULL, NULL, NULL, 'lat: Liutharius');
INSERT INTO `actor` VALUES (298, 'Ludwig', NULL, NULL, NULL, NULL, 'lat: Hludowicus, Ludovicus');
INSERT INTO `actor` VALUES (299, 'Lupus', NULL, NULL, NULL, NULL, 'lat: Lupus');
INSERT INTO `actor` VALUES (300, 'Macedo', NULL, NULL, NULL, NULL, 'lat: Macedo');
INSERT INTO `actor` VALUES (301, 'Madalgaud (I)', NULL, NULL, NULL, NULL, 'lat: Madalgaudus');
INSERT INTO `actor` VALUES (302, 'Madalgaud (II)', NULL, NULL, NULL, NULL, 'lat: Madalgaudus');
INSERT INTO `actor` VALUES (303, 'Madelgaudus', NULL, NULL, NULL, NULL, 'lat: Madelgaudus');
INSERT INTO `actor` VALUES (304, 'Magenardus', NULL, NULL, NULL, NULL, 'lat: Maginhartus, Magnardus, Magenardus');
INSERT INTO `actor` VALUES (305, 'Maginarius', NULL, NULL, NULL, NULL, 'lat: Maginarius');
INSERT INTO `actor` VALUES (306, 'Magnus', NULL, NULL, NULL, NULL, 'lat: Magnus');
INSERT INTO `actor` VALUES (307, 'Mancio', NULL, NULL, NULL, NULL, 'lat: Mancio');
INSERT INTO `actor` VALUES (308, 'Matfried', NULL, NULL, NULL, NULL, 'lat: Matfridus');
INSERT INTO `actor` VALUES (309, 'Maurinus', NULL, NULL, NULL, NULL, 'lat: Maurinus');
INSERT INTO `actor` VALUES (310, 'Meginfrid', NULL, NULL, NULL, NULL, 'lat: Meginfridus, Meginfrid');
INSERT INTO `actor` VALUES (311, 'Milo', NULL, NULL, NULL, NULL, 'lat: Milo');
INSERT INTO `actor` VALUES (312, 'Modoin', NULL, NULL, NULL, NULL, 'lat: Motuinus');
INSERT INTO `actor` VALUES (313, 'Monogold', NULL, NULL, NULL, NULL, 'lat: Monogoldus, Monoaldus');
INSERT INTO `actor` VALUES (314, 'Nanthar', NULL, NULL, NULL, NULL, 'lat: Nantharius');
INSERT INTO `actor` VALUES (315, 'Nibridius', NULL, NULL, NULL, NULL, 'lat: Nibridius, Nifridius, Nifridus, Nimfridus');
INSERT INTO `actor` VALUES (316, 'Nidhart', NULL, NULL, NULL, NULL, 'lat: Nidhart');
INSERT INTO `actor` VALUES (317, 'Nivelungus', NULL, NULL, NULL, NULL, 'lat: Nivelongus, Nivelungus');
INSERT INTO `actor` VALUES (318, 'Nominoe', NULL, NULL, NULL, NULL, 'lat: Nominoe');
INSERT INTO `actor` VALUES (319, 'Nortpert', NULL, NULL, NULL, NULL, 'lat: Nordpertus, Nortpertus, Northpertus');
INSERT INTO `actor` VALUES (320, 'Notho', NULL, NULL, NULL, NULL, 'lat: Notho');
INSERT INTO `actor` VALUES (321, 'Odalricus (II)', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `actor` VALUES (322, 'Odalricus (III)', NULL, NULL, NULL, NULL, 'lat: Oadalrih, Odalrich, Odalricus, Odolricus, Vodalrih');
INSERT INTO `actor` VALUES (323, 'Odalricus', NULL, NULL, NULL, NULL, 'lat: Odalrihcus');
INSERT INTO `actor` VALUES (324, 'Odo (I)', NULL, NULL, NULL, NULL, 'lat: Odo');
INSERT INTO `actor` VALUES (325, 'Odo (II)', NULL, NULL, NULL, NULL, 'lat: Odo');
INSERT INTO `actor` VALUES (326, 'Orendil', NULL, NULL, NULL, NULL, 'lat: Orendil');
INSERT INTO `actor` VALUES (327, 'Osbertus', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `actor` VALUES (328, 'Ostoricus', NULL, NULL, NULL, NULL, 'lat: Ostoricus');
INSERT INTO `actor` VALUES (329, 'Otgar', NULL, NULL, NULL, NULL, 'lat: Otogarius, Otgerus, Autcarius, Autcharius, Autgarius, Autecarius, Otkerus, Othgarius');
INSERT INTO `actor` VALUES (330, 'Pardulus', NULL, NULL, NULL, NULL, 'lat: Pardulus');
INSERT INTO `actor` VALUES (331, 'Paulinus', NULL, NULL, NULL, NULL, 'lat: Paulinus');
INSERT INTO `actor` VALUES (332, 'Petrus (I)', NULL, NULL, NULL, NULL, 'lat: Petrus');
INSERT INTO `actor` VALUES (333, 'Petrus (II)', NULL, NULL, NULL, NULL, 'lat: Petrus');
INSERT INTO `actor` VALUES (334, 'Petrus (III)', NULL, NULL, NULL, NULL, 'lat: Petrus');
INSERT INTO `actor` VALUES (335, 'Petrus (IV)', NULL, NULL, NULL, NULL, 'lat: Petrus');
INSERT INTO `actor` VALUES (336, 'Petrus (V)', NULL, NULL, NULL, NULL, 'lat: Petrus');
INSERT INTO `actor` VALUES (337, 'Petrus (VI)', NULL, NULL, NULL, NULL, 'lat: Petrus');
INSERT INTO `actor` VALUES (338, 'Poppo', NULL, NULL, NULL, NULL, 'lat: Poppo\r*=pas missi');
INSERT INTO `actor` VALUES (339, 'Possessor', NULL, NULL, NULL, NULL, 'lat: Possessor');
INSERT INTO `actor` VALUES (340, 'Prando', NULL, NULL, NULL, NULL, 'lat: Prando');
INSERT INTO `actor` VALUES (341, 'Prudentius', NULL, NULL, NULL, NULL, 'lat: Prudentius');
INSERT INTO `actor` VALUES (342, 'Rabigaud', NULL, NULL, NULL, NULL, 'lat: Rabigaudus');
INSERT INTO `actor` VALUES (343, 'Rado (I)', NULL, NULL, NULL, NULL, 'lat: Rado');
INSERT INTO `actor` VALUES (344, 'Rado (II)', NULL, NULL, NULL, NULL, 'lat: Rado');
INSERT INTO `actor` VALUES (345, 'Ragambald', NULL, NULL, NULL, NULL, 'lat: Ragambaldus');
INSERT INTO `actor` VALUES (346, 'Rantgarius', NULL, NULL, NULL, NULL, 'lat: Ragnarius, Rangarius, Rantgarius');
INSERT INTO `actor` VALUES (347, 'Ratold', NULL, NULL, NULL, NULL, 'lat: Ratoldus, Rataldus, Ratholdus, Rotaldus');
INSERT INTO `actor` VALUES (348, 'Recho', NULL, NULL, NULL, NULL, 'lat: Recho (copy?)');
INSERT INTO `actor` VALUES (349, 'Remigius', NULL, NULL, NULL, NULL, 'lat: Remigius, Remedius');
INSERT INTO `actor` VALUES (350, 'Resmo', NULL, NULL, NULL, NULL, 'lat: Resmo, Risinus / Resnus)');
INSERT INTO `actor` VALUES (351, 'Richard (I)', NULL, NULL, NULL, NULL, 'lat: Richardus');
INSERT INTO `actor` VALUES (352, 'Richard (II)', NULL, NULL, NULL, NULL, 'lat: Richardus');
INSERT INTO `actor` VALUES (353, 'Richard (III)', NULL, NULL, NULL, NULL, 'lat: Ricardus');
INSERT INTO `actor` VALUES (354, 'Richoin', NULL, NULL, NULL, NULL, 'lat: Richoin, Ricoin');
INSERT INTO `actor` VALUES (355, 'Richolf', NULL, NULL, NULL, NULL, 'lat: Richolf');
INSERT INTO `actor` VALUES (356, 'Richulf', NULL, NULL, NULL, NULL, 'lat: Richolfus, Richulfus, Rihholfus');
INSERT INTO `actor` VALUES (357, 'Rimigarius, Rimigoz', NULL, NULL, NULL, NULL, 'lat: Rimigarius');
INSERT INTO `actor` VALUES (358, 'Rimmo', NULL, NULL, NULL, NULL, 'lat: Rimmo');
INSERT INTO `actor` VALUES (359, 'Robert', NULL, NULL, NULL, NULL, 'lat: Robertus, Rotbertus');
INSERT INTO `actor` VALUES (360, 'Rodbert', NULL, NULL, NULL, NULL, 'lat: Rodbertus');
INSERT INTO `actor` VALUES (361, 'Rodingus', NULL, NULL, NULL, NULL, 'lat: Rodingus, Hrodingus, Radingus');
INSERT INTO `actor` VALUES (362, 'Rodselmus', NULL, NULL, NULL, NULL, 'lat: Rodselmus');
INSERT INTO `actor` VALUES (363, 'Rorich', NULL, NULL, NULL, NULL, 'lat: Rorih');
INSERT INTO `actor` VALUES (364, 'Rotfrid', NULL, NULL, NULL, NULL, 'lat: Hruotfridus, Rotfridus');
INSERT INTO `actor` VALUES (365, 'Rotgar', NULL, NULL, NULL, NULL, 'lat: Hrotgarius, Rotgerius, Rottecarius');
INSERT INTO `actor` VALUES (366, 'Rothadus', NULL, NULL, NULL, NULL, 'lat: Hruothadus');
INSERT INTO `actor` VALUES (367, 'Rothard', NULL, NULL, NULL, NULL, 'lat: Chrodardus, Crothardus, Roadhartus, Rotardus');
INSERT INTO `actor` VALUES (368, 'Rotharius', NULL, NULL, NULL, NULL, 'lat: Rotharius\r*=pas missi');
INSERT INTO `actor` VALUES (369, 'Ruadhoh', NULL, NULL, NULL, NULL, 'lat: Hruothofus, Ruadhous');
INSERT INTO `actor` VALUES (370, 'Ruotbert (I)', NULL, NULL, NULL, NULL, 'lat: Ruadbertus, Ruodbertus');
INSERT INTO `actor` VALUES (371, 'Ruotbert (II)', NULL, NULL, NULL, NULL, 'lat: Ruodbertus');
INSERT INTO `actor` VALUES (372, 'Ruthard', NULL, NULL, NULL, NULL, 'lat: Ruthardus');
INSERT INTO `actor` VALUES (373, 'Salomo', NULL, NULL, NULL, NULL, 'lat: Salomo');
INSERT INTO `actor` VALUES (374, 'Samson', NULL, NULL, NULL, NULL, 'lat: Samson, Sanson');
INSERT INTO `actor` VALUES (375, 'Sicardus', NULL, NULL, NULL, NULL, 'lat: Sicardus');
INSERT INTO `actor` VALUES (376, 'Sigibertus', NULL, NULL, NULL, NULL, 'lat: Sigibertus');
INSERT INTO `actor` VALUES (377, 'Sindolt', NULL, NULL, NULL, NULL, 'lat: Sindoltus');
INSERT INTO `actor` VALUES (378, 'Sintpert (I)', NULL, NULL, NULL, NULL, 'lat: Sintbertus');
INSERT INTO `actor` VALUES (379, 'Sintpert (II)', NULL, NULL, NULL, NULL, 'lat: Sintbertus, Simpertus\r* = pas missi');
INSERT INTO `actor` VALUES (380, 'Stephan', NULL, NULL, NULL, NULL, 'lat: Stefanus, Stephanus');
INSERT INTO `actor` VALUES (381, 'Sturmi', NULL, NULL, NULL, NULL, 'lat: Sturmi, Sturmio');
INSERT INTO `actor` VALUES (382, 'Tankrad', NULL, NULL, NULL, NULL, 'lat: Tancradus\r* = pas missi');
INSERT INTO `actor` VALUES (383, 'Teodoldus', NULL, NULL, NULL, NULL, 'lat: Teodoldus');
INSERT INTO `actor` VALUES (384, 'Teutardus', NULL, NULL, NULL, NULL, 'lat: Teutardus');
INSERT INTO `actor` VALUES (385, 'Teutarius', NULL, NULL, NULL, NULL, 'lat: Teutharius');
INSERT INTO `actor` VALUES (386, 'Teutmundus', NULL, NULL, NULL, NULL, 'lat: Teutmundus');
INSERT INTO `actor` VALUES (387, 'Theodacrus', NULL, NULL, NULL, NULL, 'lat: Theodacrus');
INSERT INTO `actor` VALUES (388, 'Theodericus (I)', NULL, NULL, NULL, NULL, 'lat: Theodericus');
INSERT INTO `actor` VALUES (389, 'Theodericus (II)', NULL, NULL, NULL, NULL, 'lat: Teodericus, Teotricus, Teudericus, Theodericus, Theodoricus');
INSERT INTO `actor` VALUES (390, 'Theodoricus', NULL, NULL, NULL, NULL, 'lat: Teodoricus, Theodoricus');
INSERT INTO `actor` VALUES (391, 'Theodulf', NULL, NULL, NULL, NULL, 'lat: Theodulfus, Teodulfus, Theoduphus, Teodulphus, Theotolfus, Teotolphus, Theudulfus, Teudulfus, Teudulfis, Dietolfus');
INSERT INTO `actor` VALUES (392, 'Theotbert', NULL, NULL, NULL, NULL, 'lat: Teotbertus');
INSERT INTO `actor` VALUES (393, 'Timo', NULL, NULL, NULL, NULL, 'lat: Timo');
INSERT INTO `actor` VALUES (394, 'Unroch', NULL, NULL, NULL, NULL, 'lat: Unrocus');
INSERT INTO `actor` VALUES (395, 'Urolf', NULL, NULL, NULL, NULL, 'lat: Uurolf');
INSERT INTO `actor` VALUES (396, 'Ursinianus', NULL, NULL, NULL, NULL, 'lat: Ursinianus');
INSERT INTO `actor` VALUES (397, 'Viernarius', NULL, NULL, NULL, NULL, 'lat: Viernarius, Vernarius');
INSERT INTO `actor` VALUES (398, 'Wala', NULL, NULL, NULL, NULL, 'lat: Walah, Walh\r* = pas missi');
INSERT INTO `actor` VALUES (399, 'Waldricus', NULL, NULL, NULL, NULL, 'lat: Waldricus');
INSERT INTO `actor` VALUES (400, 'Waltcaud', NULL, NULL, NULL, NULL, 'lat: Waltcaudus');
INSERT INTO `actor` VALUES (401, 'Walter', NULL, NULL, NULL, NULL, 'lat: Walterius');
INSERT INTO `actor` VALUES (402, 'Waninchno', NULL, NULL, NULL, NULL, 'lat: Uuaninchno');
INSERT INTO `actor` VALUES (403, 'Warnar', NULL, NULL, NULL, NULL, 'lat: Warnarius');
INSERT INTO `actor` VALUES (404, 'Warneharius', NULL, NULL, NULL, NULL, 'lat: Warneharius, Warnarius');
INSERT INTO `actor` VALUES (405, 'Wenilo', NULL, NULL, NULL, NULL, 'lat: Wenilo, Wanilo, Guenilo');
INSERT INTO `actor` VALUES (406, 'Werner (I)', NULL, NULL, NULL, NULL, 'lat: Werrnherus');
INSERT INTO `actor` VALUES (407, 'Werner (II)', NULL, NULL, NULL, NULL, 'lat: Warnarius, Vuerinharius');
INSERT INTO `actor` VALUES (408, 'Wibert', NULL, NULL, NULL, NULL, 'lat: Vuibertus');
INSERT INTO `actor` VALUES (409, 'Wicbert', NULL, NULL, NULL, NULL, 'lat: Wicbertus');
INSERT INTO `actor` VALUES (410, 'Widbod', NULL, NULL, NULL, NULL, 'lat: Vuidbodus');
INSERT INTO `actor` VALUES (411, 'Widmarus', NULL, NULL, NULL, NULL, 'lat: Widmarus');
INSERT INTO `actor` VALUES (412, 'Wido (I)', NULL, NULL, NULL, NULL, 'lat: Wido');
INSERT INTO `actor` VALUES (413, 'Wido (II)', NULL, NULL, NULL, NULL, 'lat: Wido, Vodo');
INSERT INTO `actor` VALUES (414, 'Wigbald', NULL, NULL, NULL, NULL, 'lat: Uuicbaldus');
INSERT INTO `actor` VALUES (415, 'Wigbod', NULL, NULL, NULL, NULL, 'lat: Uuigbodus');
INSERT INTO `actor` VALUES (416, 'Willheilm', NULL, NULL, NULL, NULL, 'lat: Willihelmus\r* = pas missi');
INSERT INTO `actor` VALUES (417, 'Willibert', NULL, NULL, NULL, NULL, 'lat: Willibertus');
INSERT INTO `actor` VALUES (418, 'Walpert', NULL, NULL, NULL, NULL, 'lat: Vualpertus, Walbertus, Walpertus');
INSERT INTO `actor` VALUES (419, 'Winigis (I)', NULL, NULL, NULL, NULL, 'lat: Guinichis, Wineghisus, Winigisus');
INSERT INTO `actor` VALUES (420, 'Winigis (II)', NULL, NULL, NULL, NULL, 'Vuinigisus');
INSERT INTO `actor` VALUES (421, 'Wirundus', NULL, NULL, NULL, NULL, 'lat: Wirundus');
INSERT INTO `actor` VALUES (422, 'Witcharius', NULL, NULL, NULL, NULL, 'lat: Wiccharius, Witcharius');
INSERT INTO `actor` VALUES (423, 'Withar', NULL, NULL, NULL, NULL, 'lat: Witharius');
INSERT INTO `actor` VALUES (424, 'Wolfolt', NULL, NULL, NULL, NULL, 'lat: Uuolfolt, Uuoluoltus, Uuolfoltus');
INSERT INTO `actor` VALUES (425, 'Wolmod', NULL, NULL, NULL, NULL, 'lat: Vuolmodus');
INSERT INTO `actor` VALUES (426, 'Wulfar', NULL, NULL, NULL, NULL, 'lat: Vulfarius,Vulpharius, Wolfarius, Wolfharius');
INSERT INTO `actor` VALUES (427, 'Wulfard', NULL, NULL, NULL, NULL, 'lat: Gulfardus, Vulfardus');
INSERT INTO `actor` VALUES (428, 'Wulfericus', NULL, NULL, NULL, NULL, 'lat: Vulfericus');
INSERT INTO `actor` VALUES (429, 'Louis II le Bègue', '0846-11-01', '0879-04-11', 'exactement', 'exactement', NULL);
INSERT INTO `actor` VALUES (430, 'Charles III le Simple', '0879-09-17', '0929-10-07', 'exactement', 'exactement', NULL);
COMMIT;

-- ----------------------------
-- Table structure for actor_has_family
-- ----------------------------
DROP TABLE IF EXISTS `actor_has_family`;
CREATE TABLE `actor_has_family` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actor` int(11) NOT NULL,
  `family` int(11) NOT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `date_start_accuracy` varchar(10) DEFAULT NULL,
  `date_end_accuracy` varchar(10) DEFAULT NULL,
  `note` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_actor_has_family_family1_idx` (`family`),
  KEY `fk_actor_has_family_actor_idx` (`actor`),
  CONSTRAINT `fk_actor_has_family_actor` FOREIGN KEY (`actor`) REFERENCES `actor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_actor_has_family_family1` FOREIGN KEY (`family`) REFERENCES `family` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of actor_has_family
-- ----------------------------
BEGIN;
INSERT INTO `actor_has_family` VALUES (1, 2, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `actor_has_family` VALUES (2, 3, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `actor_has_family` VALUES (3, 4, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `actor_has_family` VALUES (4, 5, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `actor_has_family` VALUES (5, 6, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `actor_has_family` VALUES (6, 7, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `actor_has_family` VALUES (7, 8, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `actor_has_family` VALUES (8, 9, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `actor_has_family` VALUES (9, 10, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `actor_has_family` VALUES (10, 11, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `actor_has_family` VALUES (11, 12, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `actor_has_family` VALUES (12, 13, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `actor_has_family` VALUES (13, 29, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `actor_has_family` VALUES (14, 28, 3, NULL, NULL, NULL, NULL, 'Adalbert Ier contracte deux union la première avec une certaine Anonsuara d\'origine inconnue, la seconde avec Rothilde fille de Guy Ier de Spolète.');
INSERT INTO `actor_has_family` VALUES (15, 42, 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `actor_has_family` VALUES (16, 53, 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `actor_has_family` VALUES (17, 46, 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `actor_has_family` VALUES (18, 64, 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `actor_has_family` VALUES (19, 430, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `actor_has_family` VALUES (20, 429, 1, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for actor_has_family_has_reference
-- ----------------------------
DROP TABLE IF EXISTS `actor_has_family_has_reference`;
CREATE TABLE `actor_has_family_has_reference` (
  `actor_has_family` int(11) NOT NULL,
  `reference` int(11) NOT NULL,
  `reference_page` varchar(45) DEFAULT NULL,
  KEY `fk_actor_has_family_has_reference_reference1_idx` (`reference`),
  KEY `fk_actor_family_has_reference_actor_has_family1_idx` (`actor_has_family`),
  CONSTRAINT `fk_actor_family_has_reference_actor_has_family1` FOREIGN KEY (`actor_has_family`) REFERENCES `actor_has_family` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_actor_has_family_has_reference_reference1` FOREIGN KEY (`reference`) REFERENCES `reference` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of actor_has_family_has_reference
-- ----------------------------
BEGIN;
INSERT INTO `actor_has_family_has_reference` VALUES (14, 5, NULL);
COMMIT;

-- ----------------------------
-- Table structure for actor_has_kinship
-- ----------------------------
DROP TABLE IF EXISTS `actor_has_kinship`;
CREATE TABLE `actor_has_kinship` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actor` int(11) NOT NULL,
  `relative_actor` int(11) NOT NULL,
  `kinship` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_actor_has_actor_actor2_idx` (`relative_actor`),
  KEY `fk_actor_has_actor_actor1_idx` (`actor`),
  KEY `fk_actor_actor_kinship_kinship1_idx` (`kinship`),
  CONSTRAINT `fk_actor_actor_kinship_kinship1` FOREIGN KEY (`kinship`) REFERENCES `kinship` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_actor_has_actor_actor1` FOREIGN KEY (`actor`) REFERENCES `actor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_actor_has_actor_actor2` FOREIGN KEY (`relative_actor`) REFERENCES `actor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of actor_has_kinship
-- ----------------------------
BEGIN;
INSERT INTO `actor_has_kinship` VALUES (1, 3, 2, 8);
INSERT INTO `actor_has_kinship` VALUES (2, 5, 4, 2);
INSERT INTO `actor_has_kinship` VALUES (3, 6, 5, 2);
INSERT INTO `actor_has_kinship` VALUES (4, 6, 3, 8);
INSERT INTO `actor_has_kinship` VALUES (5, 7, 3, 3);
INSERT INTO `actor_has_kinship` VALUES (6, 7, 2, 2);
INSERT INTO `actor_has_kinship` VALUES (7, 8, 2, 2);
INSERT INTO `actor_has_kinship` VALUES (8, 9, 8, 2);
INSERT INTO `actor_has_kinship` VALUES (9, 10, 2, 3);
INSERT INTO `actor_has_kinship` VALUES (10, 10, 11, 2);
INSERT INTO `actor_has_kinship` VALUES (11, 11, 3, 3);
INSERT INTO `actor_has_kinship` VALUES (12, 11, 2, 2);
INSERT INTO `actor_has_kinship` VALUES (13, 12, 2, 2);
INSERT INTO `actor_has_kinship` VALUES (14, 13, 8, 2);
INSERT INTO `actor_has_kinship` VALUES (15, 28, 29, 9);
INSERT INTO `actor_has_kinship` VALUES (16, 59, 5, 3);
INSERT INTO `actor_has_kinship` VALUES (17, 429, 7, 2);
INSERT INTO `actor_has_kinship` VALUES (18, 429, 61, 9);
INSERT INTO `actor_has_kinship` VALUES (19, 430, 429, 2);
INSERT INTO `actor_has_kinship` VALUES (20, 430, 61, 3);
COMMIT;

-- ----------------------------
-- Table structure for actor_has_kinship_has_reference
-- ----------------------------
DROP TABLE IF EXISTS `actor_has_kinship_has_reference`;
CREATE TABLE `actor_has_kinship_has_reference` (
  `actor_has_kinship` int(11) NOT NULL,
  `reference` int(11) NOT NULL,
  `reference_page` varchar(45) DEFAULT NULL,
  KEY `fk_actor_actor_kinship_has_reference_reference1_idx` (`reference`),
  KEY `fk_actor_kinship_has_reference_actor_has_kinship1_idx` (`actor_has_kinship`),
  CONSTRAINT `fk_actor_actor_kinship_has_reference_reference1` FOREIGN KEY (`reference`) REFERENCES `reference` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_actor_kinship_has_reference_actor_has_kinship1` FOREIGN KEY (`actor_has_kinship`) REFERENCES `actor_has_kinship` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for actor_has_reference
-- ----------------------------
DROP TABLE IF EXISTS `actor_has_reference`;
CREATE TABLE `actor_has_reference` (
  `actor` int(11) NOT NULL,
  `reference` int(11) NOT NULL,
  `reference_page` varchar(45) DEFAULT NULL,
  KEY `fk_actor_has_reference_reference1_idx` (`reference`),
  KEY `fk_actor_has_reference_actor1_idx` (`actor`),
  CONSTRAINT `fk_actor_has_reference_actor1` FOREIGN KEY (`actor`) REFERENCES `actor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_actor_has_reference_reference1` FOREIGN KEY (`reference`) REFERENCES `reference` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of actor_has_reference
-- ----------------------------
BEGIN;
INSERT INTO `actor_has_reference` VALUES (1, 1, '253-254');
INSERT INTO `actor_has_reference` VALUES (1, 1, '253-254');
INSERT INTO `actor_has_reference` VALUES (1, 1, '253-254');
INSERT INTO `actor_has_reference` VALUES (1, 1, '253-254');
INSERT INTO `actor_has_reference` VALUES (1, 1, '253-254');
INSERT INTO `actor_has_reference` VALUES (1, 1, '253-254');
INSERT INTO `actor_has_reference` VALUES (1, 3, '67');
INSERT INTO `actor_has_reference` VALUES (15, 1, '254');
INSERT INTO `actor_has_reference` VALUES (20, 1, '254-255');
INSERT INTO `actor_has_reference` VALUES (21, 1, '255, 430');
INSERT INTO `actor_has_reference` VALUES (19, 1, '254, 365');
INSERT INTO `actor_has_reference` VALUES (18, 1, '254, 510-511');
INSERT INTO `actor_has_reference` VALUES (17, 1, '254, 622-623');
INSERT INTO `actor_has_reference` VALUES (16, 1, '254, 494-495');
INSERT INTO `actor_has_reference` VALUES (22, 1, '256-258');
INSERT INTO `actor_has_reference` VALUES (23, 1, '256, 434-435');
INSERT INTO `actor_has_reference` VALUES (24, 1, '256, 401');
INSERT INTO `actor_has_reference` VALUES (25, 1, '256, 429');
INSERT INTO `actor_has_reference` VALUES (26, 1, '258-260');
INSERT INTO `actor_has_reference` VALUES (27, 1, '258, 456-458');
INSERT INTO `actor_has_reference` VALUES (28, 1, '260-263');
INSERT INTO `actor_has_reference` VALUES (29, 1, '260, 640-641');
INSERT INTO `actor_has_reference` VALUES (30, 1, '260, 504');
INSERT INTO `actor_has_reference` VALUES (31, 1, '260, 414');
INSERT INTO `actor_has_reference` VALUES (32, 1, '261, 342-344');
INSERT INTO `actor_has_reference` VALUES (33, 1, '261, 560-561');
INSERT INTO `actor_has_reference` VALUES (34, 1, '261, 570-571');
INSERT INTO `actor_has_reference` VALUES (35, 1, '261, 313');
INSERT INTO `actor_has_reference` VALUES (36, 1, '261, 463-464');
INSERT INTO `actor_has_reference` VALUES (37, 1, '261, 624');
INSERT INTO `actor_has_reference` VALUES (28, 5, NULL);
INSERT INTO `actor_has_reference` VALUES (38, 1, '263');
INSERT INTO `actor_has_reference` VALUES (39, 1, '263, 507-508');
INSERT INTO `actor_has_reference` VALUES (40, 1, '263, 299-301');
INSERT INTO `actor_has_reference` VALUES (41, 1, '264');
INSERT INTO `actor_has_reference` VALUES (14, 1, '253, 264-265');
INSERT INTO `actor_has_reference` VALUES (14, 1, '253, 264-265');
INSERT INTO `actor_has_reference` VALUES (42, 1, '265-266');
INSERT INTO `actor_has_reference` VALUES (43, 1, '265, 341-342');
INSERT INTO `actor_has_reference` VALUES (44, 1, '265, 380');
INSERT INTO `actor_has_reference` VALUES (45, 1, '265, 403-404');
INSERT INTO `actor_has_reference` VALUES (46, 1, '265, 280-281');
INSERT INTO `actor_has_reference` VALUES (47, 1, '265, 596-597');
INSERT INTO `actor_has_reference` VALUES (48, 1, '265, 586-587');
INSERT INTO `actor_has_reference` VALUES (49, 1, '266-269');
INSERT INTO `actor_has_reference` VALUES (50, 1, '269-270');
INSERT INTO `actor_has_reference` VALUES (51, 1, '269, 411');
INSERT INTO `actor_has_reference` VALUES (52, 1, '269, 652');
INSERT INTO `actor_has_reference` VALUES (53, 1, '270-273');
INSERT INTO `actor_has_reference` VALUES (54, 1, '271, 648-649');
INSERT INTO `actor_has_reference` VALUES (55, 1, '271, 374-375');
INSERT INTO `actor_has_reference` VALUES (56, 1, '271, 641');
INSERT INTO `actor_has_reference` VALUES (57, 1, '271, 529-530');
INSERT INTO `actor_has_reference` VALUES (58, 1, '272, 553-554');
INSERT INTO `actor_has_reference` VALUES (59, 1, '273-277');
INSERT INTO `actor_has_reference` VALUES (60, 1, '277-280');
INSERT INTO `actor_has_reference` VALUES (61, 1, '281-282');
INSERT INTO `actor_has_reference` VALUES (62, 1, '282-283');
INSERT INTO `actor_has_reference` VALUES (63, 1, '282-283');
INSERT INTO `actor_has_reference` VALUES (64, 1, '283-284');
INSERT INTO `actor_has_reference` VALUES (65, 1, '284-285');
INSERT INTO `actor_has_reference` VALUES (66, 1, '285-286');
INSERT INTO `actor_has_reference` VALUES (67, 1, '286-287');
INSERT INTO `actor_has_reference` VALUES (68, 1, '287-288');
INSERT INTO `actor_has_reference` VALUES (69, 1, '288-290');
INSERT INTO `actor_has_reference` VALUES (70, 1, '290');
INSERT INTO `actor_has_reference` VALUES (71, 1, '291');
INSERT INTO `actor_has_reference` VALUES (72, 1, '291');
INSERT INTO `actor_has_reference` VALUES (73, 1, '291-293');
INSERT INTO `actor_has_reference` VALUES (74, 1, '293-294');
INSERT INTO `actor_has_reference` VALUES (75, 1, '294-295');
INSERT INTO `actor_has_reference` VALUES (76, 1, '295-296');
INSERT INTO `actor_has_reference` VALUES (77, 1, '296-297');
INSERT INTO `actor_has_reference` VALUES (78, 1, '297-298');
INSERT INTO `actor_has_reference` VALUES (79, 1, '298-299');
INSERT INTO `actor_has_reference` VALUES (80, 1, '301');
INSERT INTO `actor_has_reference` VALUES (81, 1, '301-302');
INSERT INTO `actor_has_reference` VALUES (82, 1, '302-303');
INSERT INTO `actor_has_reference` VALUES (83, 1, '303-304');
INSERT INTO `actor_has_reference` VALUES (84, 1, '304-305');
INSERT INTO `actor_has_reference` VALUES (85, 1, '305-306');
INSERT INTO `actor_has_reference` VALUES (86, 1, '306-307');
INSERT INTO `actor_has_reference` VALUES (87, 1, '307-312');
INSERT INTO `actor_has_reference` VALUES (88, 1, '312');
INSERT INTO `actor_has_reference` VALUES (89, 1, '313');
INSERT INTO `actor_has_reference` VALUES (90, 1, '313-317');
INSERT INTO `actor_has_reference` VALUES (91, 1, '317-319');
INSERT INTO `actor_has_reference` VALUES (92, 1, '319');
INSERT INTO `actor_has_reference` VALUES (93, 1, '319-322');
INSERT INTO `actor_has_reference` VALUES (94, 1, '322-323');
INSERT INTO `actor_has_reference` VALUES (95, 1, '323-324');
INSERT INTO `actor_has_reference` VALUES (96, 1, '324-325');
INSERT INTO `actor_has_reference` VALUES (97, 1, '325');
INSERT INTO `actor_has_reference` VALUES (98, 1, '325-330');
INSERT INTO `actor_has_reference` VALUES (99, 1, '330');
INSERT INTO `actor_has_reference` VALUES (100, 1, '331');
INSERT INTO `actor_has_reference` VALUES (101, 1, '331-333');
INSERT INTO `actor_has_reference` VALUES (102, 1, '333');
INSERT INTO `actor_has_reference` VALUES (103, 1, '334');
INSERT INTO `actor_has_reference` VALUES (104, 1, '334-335');
INSERT INTO `actor_has_reference` VALUES (105, 1, '335');
INSERT INTO `actor_has_reference` VALUES (106, 1, '336-338');
INSERT INTO `actor_has_reference` VALUES (107, 1, '338-339');
INSERT INTO `actor_has_reference` VALUES (108, 1, '339-341');
INSERT INTO `actor_has_reference` VALUES (109, 1, '341');
INSERT INTO `actor_has_reference` VALUES (110, 1, '344-345');
INSERT INTO `actor_has_reference` VALUES (111, 1, '345-347');
INSERT INTO `actor_has_reference` VALUES (112, 1, '347-348');
INSERT INTO `actor_has_reference` VALUES (113, 1, '348-349');
INSERT INTO `actor_has_reference` VALUES (114, 1, '349-350');
INSERT INTO `actor_has_reference` VALUES (115, 1, '350');
INSERT INTO `actor_has_reference` VALUES (116, 1, '350-351');
INSERT INTO `actor_has_reference` VALUES (117, 1, '351-352');
INSERT INTO `actor_has_reference` VALUES (118, 1, '352-353');
INSERT INTO `actor_has_reference` VALUES (119, 1, '353');
INSERT INTO `actor_has_reference` VALUES (120, 1, '353-356');
INSERT INTO `actor_has_reference` VALUES (121, 1, '356-358');
INSERT INTO `actor_has_reference` VALUES (122, 1, '358-359');
INSERT INTO `actor_has_reference` VALUES (123, 1, '359');
INSERT INTO `actor_has_reference` VALUES (124, 1, '359-360');
INSERT INTO `actor_has_reference` VALUES (125, 1, '360');
INSERT INTO `actor_has_reference` VALUES (126, 1, '360-361');
INSERT INTO `actor_has_reference` VALUES (127, 1, '361-362');
INSERT INTO `actor_has_reference` VALUES (128, 1, '362');
INSERT INTO `actor_has_reference` VALUES (129, 1, '362-363');
INSERT INTO `actor_has_reference` VALUES (130, 1, '363');
INSERT INTO `actor_has_reference` VALUES (131, 1, '363');
INSERT INTO `actor_has_reference` VALUES (132, 1, '363-364');
INSERT INTO `actor_has_reference` VALUES (133, 1, '364-365');
INSERT INTO `actor_has_reference` VALUES (134, 1, '365-366');
INSERT INTO `actor_has_reference` VALUES (135, 1, '366-367');
INSERT INTO `actor_has_reference` VALUES (136, 1, '367-368');
INSERT INTO `actor_has_reference` VALUES (137, 1, '368-371');
INSERT INTO `actor_has_reference` VALUES (138, 1, '371');
INSERT INTO `actor_has_reference` VALUES (139, 1, '371-372');
INSERT INTO `actor_has_reference` VALUES (140, 1, '373-374');
INSERT INTO `actor_has_reference` VALUES (141, 1, '375-376');
INSERT INTO `actor_has_reference` VALUES (142, 1, '376');
INSERT INTO `actor_has_reference` VALUES (143, 1, '376-378');
INSERT INTO `actor_has_reference` VALUES (144, 1, '378');
INSERT INTO `actor_has_reference` VALUES (145, 1, '378-379');
INSERT INTO `actor_has_reference` VALUES (146, 1, '379');
INSERT INTO `actor_has_reference` VALUES (147, 1, '380');
INSERT INTO `actor_has_reference` VALUES (148, 1, '381');
INSERT INTO `actor_has_reference` VALUES (149, 1, '381-382');
INSERT INTO `actor_has_reference` VALUES (150, 1, '382');
INSERT INTO `actor_has_reference` VALUES (151, 1, '383');
INSERT INTO `actor_has_reference` VALUES (152, 1, '383');
INSERT INTO `actor_has_reference` VALUES (153, 1, '384');
INSERT INTO `actor_has_reference` VALUES (154, 1, '384');
INSERT INTO `actor_has_reference` VALUES (155, 1, '385-386');
INSERT INTO `actor_has_reference` VALUES (156, 1, '386');
INSERT INTO `actor_has_reference` VALUES (157, 1, '387');
INSERT INTO `actor_has_reference` VALUES (158, 1, '387');
INSERT INTO `actor_has_reference` VALUES (159, 1, '387-388');
INSERT INTO `actor_has_reference` VALUES (160, 1, '388-390');
INSERT INTO `actor_has_reference` VALUES (161, 1, '390-392');
INSERT INTO `actor_has_reference` VALUES (162, 1, '392-393');
INSERT INTO `actor_has_reference` VALUES (163, 1, '393');
INSERT INTO `actor_has_reference` VALUES (164, 1, '393-394');
INSERT INTO `actor_has_reference` VALUES (165, 1, '394');
INSERT INTO `actor_has_reference` VALUES (166, 1, '394-395');
INSERT INTO `actor_has_reference` VALUES (167, 1, '395-397');
INSERT INTO `actor_has_reference` VALUES (168, 1, '397-398');
INSERT INTO `actor_has_reference` VALUES (169, 1, '398');
INSERT INTO `actor_has_reference` VALUES (170, 1, '398-399');
INSERT INTO `actor_has_reference` VALUES (171, 1, '399-400');
INSERT INTO `actor_has_reference` VALUES (172, 1, '401-402');
INSERT INTO `actor_has_reference` VALUES (173, 1, '402-403');
INSERT INTO `actor_has_reference` VALUES (174, 1, '404-405');
INSERT INTO `actor_has_reference` VALUES (175, 1, '405');
INSERT INTO `actor_has_reference` VALUES (176, 1, '405-406');
INSERT INTO `actor_has_reference` VALUES (177, 1, '406');
INSERT INTO `actor_has_reference` VALUES (178, 1, '406-409');
INSERT INTO `actor_has_reference` VALUES (179, 1, '409-410');
INSERT INTO `actor_has_reference` VALUES (180, 1, '410-411');
INSERT INTO `actor_has_reference` VALUES (181, 1, '411-412');
INSERT INTO `actor_has_reference` VALUES (182, 1, '412-413');
INSERT INTO `actor_has_reference` VALUES (183, 1, '413-414');
INSERT INTO `actor_has_reference` VALUES (184, 1, '414-416');
INSERT INTO `actor_has_reference` VALUES (185, 1, '416');
INSERT INTO `actor_has_reference` VALUES (186, 1, '416-418');
INSERT INTO `actor_has_reference` VALUES (187, 1, '418');
INSERT INTO `actor_has_reference` VALUES (188, 1, '419-420');
INSERT INTO `actor_has_reference` VALUES (189, 1, '420-421');
INSERT INTO `actor_has_reference` VALUES (190, 1, '421-423');
INSERT INTO `actor_has_reference` VALUES (191, 1, '423');
INSERT INTO `actor_has_reference` VALUES (192, 1, '423-424');
INSERT INTO `actor_has_reference` VALUES (193, 1, '424');
INSERT INTO `actor_has_reference` VALUES (194, 1, '424-425');
INSERT INTO `actor_has_reference` VALUES (195, 1, '425-426');
INSERT INTO `actor_has_reference` VALUES (196, 1, '426-427');
INSERT INTO `actor_has_reference` VALUES (197, 1, '428');
INSERT INTO `actor_has_reference` VALUES (198, 1, '428-429');
INSERT INTO `actor_has_reference` VALUES (199, 1, '429');
INSERT INTO `actor_has_reference` VALUES (200, 1, '429-430');
INSERT INTO `actor_has_reference` VALUES (201, 1, '430-431');
INSERT INTO `actor_has_reference` VALUES (202, 1, '431');
INSERT INTO `actor_has_reference` VALUES (203, 1, '431-432');
INSERT INTO `actor_has_reference` VALUES (204, 1, '432-433');
INSERT INTO `actor_has_reference` VALUES (205, 1, '433');
INSERT INTO `actor_has_reference` VALUES (206, 1, '433-434');
INSERT INTO `actor_has_reference` VALUES (207, 1, '434');
INSERT INTO `actor_has_reference` VALUES (208, 1, '435');
INSERT INTO `actor_has_reference` VALUES (209, 1, '435-436');
INSERT INTO `actor_has_reference` VALUES (210, 1, '436');
INSERT INTO `actor_has_reference` VALUES (211, 1, '436-437');
INSERT INTO `actor_has_reference` VALUES (212, 1, '437');
INSERT INTO `actor_has_reference` VALUES (213, 1, '438');
INSERT INTO `actor_has_reference` VALUES (214, 1, '438');
INSERT INTO `actor_has_reference` VALUES (215, 1, '438-439');
INSERT INTO `actor_has_reference` VALUES (216, 1, '439');
INSERT INTO `actor_has_reference` VALUES (217, 1, '439-440');
INSERT INTO `actor_has_reference` VALUES (218, 1, '440');
INSERT INTO `actor_has_reference` VALUES (219, 1, '440-441');
INSERT INTO `actor_has_reference` VALUES (220, 1, '441-442');
INSERT INTO `actor_has_reference` VALUES (221, 1, '442-444');
INSERT INTO `actor_has_reference` VALUES (222, 1, '444-445');
INSERT INTO `actor_has_reference` VALUES (223, 1, '445-446');
INSERT INTO `actor_has_reference` VALUES (224, 1, '446-447');
INSERT INTO `actor_has_reference` VALUES (225, 1, '447-448');
INSERT INTO `actor_has_reference` VALUES (226, 1, '448-449');
INSERT INTO `actor_has_reference` VALUES (227, 1, '449');
INSERT INTO `actor_has_reference` VALUES (228, 1, '449-450');
INSERT INTO `actor_has_reference` VALUES (229, 1, '450-452');
INSERT INTO `actor_has_reference` VALUES (230, 1, '452');
INSERT INTO `actor_has_reference` VALUES (231, 1, '452-454');
INSERT INTO `actor_has_reference` VALUES (232, 1, '454-455');
INSERT INTO `actor_has_reference` VALUES (233, 1, '455');
INSERT INTO `actor_has_reference` VALUES (234, 1, '455-456');
INSERT INTO `actor_has_reference` VALUES (235, 1, '458');
INSERT INTO `actor_has_reference` VALUES (236, 1, '458-460');
INSERT INTO `actor_has_reference` VALUES (237, 1, '460-461');
INSERT INTO `actor_has_reference` VALUES (238, 1, '461-462');
INSERT INTO `actor_has_reference` VALUES (239, 1, '462-463');
INSERT INTO `actor_has_reference` VALUES (240, 1, '463');
INSERT INTO `actor_has_reference` VALUES (241, 1, '464-465');
INSERT INTO `actor_has_reference` VALUES (242, 1, '465-466');
INSERT INTO `actor_has_reference` VALUES (243, 1, '466');
INSERT INTO `actor_has_reference` VALUES (244, 1, '466-467');
INSERT INTO `actor_has_reference` VALUES (245, 1, '467-472');
INSERT INTO `actor_has_reference` VALUES (246, 1, '472-473');
INSERT INTO `actor_has_reference` VALUES (247, 1, '473-474');
INSERT INTO `actor_has_reference` VALUES (248, 1, '474');
INSERT INTO `actor_has_reference` VALUES (249, 1, '474-475');
INSERT INTO `actor_has_reference` VALUES (250, 1, '475-476');
INSERT INTO `actor_has_reference` VALUES (251, 1, '476-477');
INSERT INTO `actor_has_reference` VALUES (252, 1, '477');
INSERT INTO `actor_has_reference` VALUES (253, 1, '477-478');
INSERT INTO `actor_has_reference` VALUES (254, 1, '478-480');
INSERT INTO `actor_has_reference` VALUES (255, 1, '480-482');
INSERT INTO `actor_has_reference` VALUES (256, 1, '482-483');
INSERT INTO `actor_has_reference` VALUES (257, 1, '483-484');
INSERT INTO `actor_has_reference` VALUES (258, 1, '484-485');
INSERT INTO `actor_has_reference` VALUES (259, 1, '485-486');
INSERT INTO `actor_has_reference` VALUES (260, 1, '486');
INSERT INTO `actor_has_reference` VALUES (261, 1, '486-487');
INSERT INTO `actor_has_reference` VALUES (262, 1, '487-488');
INSERT INTO `actor_has_reference` VALUES (263, 1, '488-489');
INSERT INTO `actor_has_reference` VALUES (264, 1, '489-490');
INSERT INTO `actor_has_reference` VALUES (265, 1, '490');
INSERT INTO `actor_has_reference` VALUES (266, 1, '490-492');
INSERT INTO `actor_has_reference` VALUES (267, 1, '492-494');
INSERT INTO `actor_has_reference` VALUES (268, 1, '495-497');
INSERT INTO `actor_has_reference` VALUES (269, 1, '497-498');
INSERT INTO `actor_has_reference` VALUES (270, 1, '498');
INSERT INTO `actor_has_reference` VALUES (271, 1, '498-500');
INSERT INTO `actor_has_reference` VALUES (272, 1, '500-5003');
INSERT INTO `actor_has_reference` VALUES (273, 1, '503-504');
INSERT INTO `actor_has_reference` VALUES (274, 1, '504-505');
INSERT INTO `actor_has_reference` VALUES (275, 1, '505-507');
INSERT INTO `actor_has_reference` VALUES (276, 1, '507');
INSERT INTO `actor_has_reference` VALUES (277, 1, '508-510');
INSERT INTO `actor_has_reference` VALUES (278, 1, '511');
INSERT INTO `actor_has_reference` VALUES (279, 1, '511-514');
INSERT INTO `actor_has_reference` VALUES (280, 1, '514-515');
INSERT INTO `actor_has_reference` VALUES (281, 1, '515-516');
INSERT INTO `actor_has_reference` VALUES (282, 1, '516-519');
INSERT INTO `actor_has_reference` VALUES (283, 1, '519');
INSERT INTO `actor_has_reference` VALUES (284, 1, '519-520');
INSERT INTO `actor_has_reference` VALUES (285, 1, '520');
INSERT INTO `actor_has_reference` VALUES (286, 1, '520-521');
INSERT INTO `actor_has_reference` VALUES (287, 1, '521');
INSERT INTO `actor_has_reference` VALUES (288, 1, '521-522');
INSERT INTO `actor_has_reference` VALUES (289, 1, '522-525');
INSERT INTO `actor_has_reference` VALUES (290, 1, '525');
INSERT INTO `actor_has_reference` VALUES (291, 1, '525-526');
INSERT INTO `actor_has_reference` VALUES (292, 1, '526');
INSERT INTO `actor_has_reference` VALUES (293, 1, '526-527');
INSERT INTO `actor_has_reference` VALUES (294, 1, '527');
INSERT INTO `actor_has_reference` VALUES (295, 1, '528');
INSERT INTO `actor_has_reference` VALUES (296, 1, '528-529');
INSERT INTO `actor_has_reference` VALUES (297, 1, '530-531');
INSERT INTO `actor_has_reference` VALUES (298, 1, '531-532');
INSERT INTO `actor_has_reference` VALUES (299, 1, '532-533');
INSERT INTO `actor_has_reference` VALUES (300, 1, '533-534');
INSERT INTO `actor_has_reference` VALUES (301, 1, '534');
INSERT INTO `actor_has_reference` VALUES (302, 1, '535');
INSERT INTO `actor_has_reference` VALUES (303, 1, '535-536');
INSERT INTO `actor_has_reference` VALUES (304, 1, '536');
INSERT INTO `actor_has_reference` VALUES (305, 1, '538536-');
INSERT INTO `actor_has_reference` VALUES (306, 1, '538-539');
INSERT INTO `actor_has_reference` VALUES (307, 1, '539-541');
INSERT INTO `actor_has_reference` VALUES (308, 1, '541-542');
INSERT INTO `actor_has_reference` VALUES (309, 1, '542-543');
INSERT INTO `actor_has_reference` VALUES (310, 1, '543-544');
INSERT INTO `actor_has_reference` VALUES (311, 1, '544');
INSERT INTO `actor_has_reference` VALUES (312, 1, '545');
INSERT INTO `actor_has_reference` VALUES (313, 1, '545-546');
INSERT INTO `actor_has_reference` VALUES (314, 1, '546');
INSERT INTO `actor_has_reference` VALUES (315, 1, '546-549');
INSERT INTO `actor_has_reference` VALUES (316, 1, '549');
INSERT INTO `actor_has_reference` VALUES (317, 1, '550');
INSERT INTO `actor_has_reference` VALUES (318, 1, '550-551');
INSERT INTO `actor_has_reference` VALUES (319, 1, '551-552');
INSERT INTO `actor_has_reference` VALUES (320, 1, '552-553');
INSERT INTO `actor_has_reference` VALUES (321, 1, '554-555');
INSERT INTO `actor_has_reference` VALUES (322, 1, '555');
INSERT INTO `actor_has_reference` VALUES (323, 1, '555-556');
INSERT INTO `actor_has_reference` VALUES (324, 1, '556-557');
INSERT INTO `actor_has_reference` VALUES (325, 1, '557-559');
INSERT INTO `actor_has_reference` VALUES (326, 1, '559');
INSERT INTO `actor_has_reference` VALUES (327, 1, '559-560');
INSERT INTO `actor_has_reference` VALUES (328, 1, '561-563');
INSERT INTO `actor_has_reference` VALUES (329, 1, '563');
INSERT INTO `actor_has_reference` VALUES (330, 1, '563-564');
INSERT INTO `actor_has_reference` VALUES (331, 1, '564-566');
INSERT INTO `actor_has_reference` VALUES (332, 1, '566-567');
INSERT INTO `actor_has_reference` VALUES (333, 1, '567');
INSERT INTO `actor_has_reference` VALUES (334, 1, '567-568');
INSERT INTO `actor_has_reference` VALUES (335, 1, '568-569');
INSERT INTO `actor_has_reference` VALUES (336, 1, '569-570');
INSERT INTO `actor_has_reference` VALUES (337, 1, '570');
INSERT INTO `actor_has_reference` VALUES (338, 1, '571-572');
INSERT INTO `actor_has_reference` VALUES (339, 1, '572-573');
INSERT INTO `actor_has_reference` VALUES (340, 1, '573-574');
INSERT INTO `actor_has_reference` VALUES (341, 1, '574-575');
INSERT INTO `actor_has_reference` VALUES (342, 1, '575');
INSERT INTO `actor_has_reference` VALUES (343, 1, '575-576');
INSERT INTO `actor_has_reference` VALUES (344, 1, '576-577');
INSERT INTO `actor_has_reference` VALUES (345, 1, '577');
INSERT INTO `actor_has_reference` VALUES (346, 1, '577-578');
INSERT INTO `actor_has_reference` VALUES (347, 1, '578-580');
INSERT INTO `actor_has_reference` VALUES (348, 1, '580-581');
INSERT INTO `actor_has_reference` VALUES (349, 1, '581-582');
INSERT INTO `actor_has_reference` VALUES (350, 1, '582-583');
INSERT INTO `actor_has_reference` VALUES (351, 1, '583-584');
INSERT INTO `actor_has_reference` VALUES (352, 1, '584-585');
INSERT INTO `actor_has_reference` VALUES (353, 1, '585');
INSERT INTO `actor_has_reference` VALUES (354, 1, '585');
INSERT INTO `actor_has_reference` VALUES (355, 1, '586');
INSERT INTO `actor_has_reference` VALUES (356, 1, '587-588');
INSERT INTO `actor_has_reference` VALUES (357, 1, '588-589');
INSERT INTO `actor_has_reference` VALUES (358, 1, '589');
INSERT INTO `actor_has_reference` VALUES (359, 1, '589-591');
INSERT INTO `actor_has_reference` VALUES (360, 1, '591');
INSERT INTO `actor_has_reference` VALUES (361, 1, '591-592');
INSERT INTO `actor_has_reference` VALUES (362, 1, '592');
INSERT INTO `actor_has_reference` VALUES (363, 1, '592-593');
INSERT INTO `actor_has_reference` VALUES (364, 1, '593');
INSERT INTO `actor_has_reference` VALUES (365, 1, '593-594');
INSERT INTO `actor_has_reference` VALUES (366, 1, '594');
INSERT INTO `actor_has_reference` VALUES (367, 1, '594-595');
INSERT INTO `actor_has_reference` VALUES (368, 1, '595-596');
INSERT INTO `actor_has_reference` VALUES (369, 1, '596');
INSERT INTO `actor_has_reference` VALUES (370, 1, '597-598');
INSERT INTO `actor_has_reference` VALUES (371, 1, '598');
INSERT INTO `actor_has_reference` VALUES (372, 1, '598');
INSERT INTO `actor_has_reference` VALUES (373, 1, '599');
INSERT INTO `actor_has_reference` VALUES (374, 1, '599-600');
INSERT INTO `actor_has_reference` VALUES (375, 1, '600-601');
INSERT INTO `actor_has_reference` VALUES (376, 1, '601-602');
INSERT INTO `actor_has_reference` VALUES (377, 1, '602-603');
INSERT INTO `actor_has_reference` VALUES (378, 1, '603');
INSERT INTO `actor_has_reference` VALUES (379, 1, '603-604');
INSERT INTO `actor_has_reference` VALUES (380, 1, '604-606');
INSERT INTO `actor_has_reference` VALUES (381, 1, '606-607');
INSERT INTO `actor_has_reference` VALUES (382, 1, '608-609');
INSERT INTO `actor_has_reference` VALUES (383, 1, '609-610');
INSERT INTO `actor_has_reference` VALUES (384, 1, '610');
INSERT INTO `actor_has_reference` VALUES (385, 1, '610-611');
INSERT INTO `actor_has_reference` VALUES (386, 1, '611');
INSERT INTO `actor_has_reference` VALUES (387, 1, '611-612');
INSERT INTO `actor_has_reference` VALUES (388, 1, '612');
INSERT INTO `actor_has_reference` VALUES (389, 1, '612-614');
INSERT INTO `actor_has_reference` VALUES (390, 1, '614-615');
INSERT INTO `actor_has_reference` VALUES (391, 1, '615-621');
INSERT INTO `actor_has_reference` VALUES (392, 1, '621-622');
INSERT INTO `actor_has_reference` VALUES (393, 1, '623');
INSERT INTO `actor_has_reference` VALUES (394, 1, '624-625');
INSERT INTO `actor_has_reference` VALUES (395, 1, '625');
INSERT INTO `actor_has_reference` VALUES (396, 1, '625-626');
INSERT INTO `actor_has_reference` VALUES (397, 1, '626-628');
INSERT INTO `actor_has_reference` VALUES (398, 1, '628-630');
INSERT INTO `actor_has_reference` VALUES (399, 1, '630');
INSERT INTO `actor_has_reference` VALUES (400, 1, '630-631');
INSERT INTO `actor_has_reference` VALUES (401, 1, '631');
INSERT INTO `actor_has_reference` VALUES (402, 1, '631');
INSERT INTO `actor_has_reference` VALUES (403, 1, '631-632');
INSERT INTO `actor_has_reference` VALUES (404, 1, '632-633');
INSERT INTO `actor_has_reference` VALUES (405, 1, '633-634');
INSERT INTO `actor_has_reference` VALUES (406, 1, '634-635');
INSERT INTO `actor_has_reference` VALUES (407, 1, '635-636');
INSERT INTO `actor_has_reference` VALUES (408, 1, '636');
INSERT INTO `actor_has_reference` VALUES (409, 1, '636-637');
INSERT INTO `actor_has_reference` VALUES (410, 1, '637-638');
INSERT INTO `actor_has_reference` VALUES (411, 1, '638');
INSERT INTO `actor_has_reference` VALUES (412, 1, '638');
INSERT INTO `actor_has_reference` VALUES (413, 1, '639-640');
INSERT INTO `actor_has_reference` VALUES (414, 1, '641-642');
INSERT INTO `actor_has_reference` VALUES (415, 1, '642');
INSERT INTO `actor_has_reference` VALUES (416, 1, '642-643');
INSERT INTO `actor_has_reference` VALUES (417, 1, '643-644');
INSERT INTO `actor_has_reference` VALUES (418, 1, '644-645');
INSERT INTO `actor_has_reference` VALUES (419, 1, '645-646');
INSERT INTO `actor_has_reference` VALUES (420, 1, '646-647');
INSERT INTO `actor_has_reference` VALUES (421, 1, '647');
INSERT INTO `actor_has_reference` VALUES (422, 1, '647-648');
INSERT INTO `actor_has_reference` VALUES (423, 1, '649');
INSERT INTO `actor_has_reference` VALUES (424, 1, '649-651');
INSERT INTO `actor_has_reference` VALUES (425, 1, '651-652');
INSERT INTO `actor_has_reference` VALUES (426, 1, '653-656');
INSERT INTO `actor_has_reference` VALUES (427, 1, '656');
INSERT INTO `actor_has_reference` VALUES (428, 1, '657');
COMMIT;

-- ----------------------------
-- Table structure for actor_has_role_and_place
-- ----------------------------
DROP TABLE IF EXISTS `actor_has_role_and_place`;
CREATE TABLE `actor_has_role_and_place` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actor` int(11) NOT NULL,
  `role` int(11) DEFAULT NULL,
  `place` int(11) DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `date_start_accuracy` varchar(10) DEFAULT NULL,
  `date_end_accuracy` varchar(10) DEFAULT NULL,
  `note` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_actor_has_role_role1_idx` (`role`),
  KEY `fk_actor_has_role_actor1_idx` (`actor`),
  KEY `fk_place_actor_has_RoleAndPlace_place_id_idx` (`place`),
  CONSTRAINT `fk_actor_has_role_actor1` FOREIGN KEY (`actor`) REFERENCES `actor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_actor_has_role_role1` FOREIGN KEY (`role`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_place_actor_has_RoleAndPlace_place_id` FOREIGN KEY (`place`) REFERENCES `place` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of actor_has_role_and_place
-- ----------------------------
BEGIN;
INSERT INTO `actor_has_role_and_place` VALUES (1, 1, 1, NULL, '0817-01-01', '0818-01-01', 'circa', 'circa', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (3, 2, 3, 2, '0781-01-01', '0814-01-01', 'circa', 'circa', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (4, 2, 4, 1, '0814-01-01', '0840-06-20', 'circa', 'exactement', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (5, 3, 4, 1, '0800-12-25', '0814-01-28', 'exactement', 'exactement', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (6, 3, 3, 8, '0768-01-01', '0814-12-25', 'circa', 'exactement', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (7, 4, 5, 9, '0675-01-01', '0714-12-16', 'circa', 'exactement', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (8, 5, 5, 10, '0718-01-01', '0741-10-22', 'circa', 'exactement', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (9, 5, 5, 9, '0715-01-01', '0741-10-22', 'circa', 'exactement', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (10, 6, 5, 10, '0741-01-01', '0751-11-01', 'circa', 'circa', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (11, 6, 5, 9, '0741-01-01', '0751-11-01', 'circa', 'circa', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (12, 6, 3, 8, '0751-11-01', '0768-09-24', 'circa', 'exactement', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (13, 7, 3, 2, '0846-01-01', '0877-10-06', 'circa', 'exactement', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (14, 7, 3, 12, '0843-05-01', '0877-10-06', 'circa', 'exactement', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (15, 7, 4, 1, '0875-10-25', '0877-10-06', 'exactement', 'exactement', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (16, 8, 4, 1, '0840-01-01', '0855-09-29', 'circa', 'exactement', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (17, 8, 3, 5, '0818-01-01', '0855-09-29', 'circa', 'exactement', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (18, 9, 3, 5, '0844-06-15', '0875-08-12', 'exactement', 'exactement', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (19, 9, 4, 1, '0850-01-01', '0875-08-12', 'circa', 'exactement', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (20, 10, 4, 1, '0881-02-12', '0888-01-12', NULL, 'circa', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (21, 11, 3, 13, '0843-08-01', '0876-05-28', 'circa', 'exactement', 'voir partage de Verdun (843)');
INSERT INTO `actor_has_role_and_place` VALUES (22, 12, 3, 2, '0817-01-01', '0832-01-01', 'circa', 'circa', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (23, 12, 3, 2, '0834-01-01', '0838-01-01', 'circa', 'circa', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (24, 13, 3, 14, '0855-01-01', '0869-01-01', 'circa', 'circa', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (25, 15, 6, NULL, '0853-01-01', NULL, 'circa', NULL, NULL);
INSERT INTO `actor_has_role_and_place` VALUES (26, 22, NULL, 28, NULL, NULL, NULL, NULL, 'Peut-être lié à la région?');
INSERT INTO `actor_has_role_and_place` VALUES (27, 26, 7, 29, '0816-01-01', '0841-01-01', 'circa', 'circa', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (28, 27, 11, 31, '0814-01-01', '0847-01-01', 'circa', 'circa', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (29, 26, NULL, 32, '0834-01-01', NULL, 'après', NULL, NULL);
INSERT INTO `actor_has_role_and_place` VALUES (30, 28, 7, 33, '0847-01-01', '0886-01-01', 'circa', 'circa', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (31, 28, 7, 34, '0847-01-01', '0886-01-01', 'circa', 'circa', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (32, 28, 7, 35, '0847-01-01', '0886-01-01', 'circa', 'circa', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (33, 29, 10, 36, '0842-01-01', '0859-01-01', 'circa', 'circa', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (34, 29, 6, 37, '0840-01-01', '0842-01-01', 'circa', 'avant', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (35, 38, 7, NULL, '0880-01-01', NULL, 'circa', NULL, NULL);
INSERT INTO `actor_has_role_and_place` VALUES (36, 10, 3, 13, '0882-01-01', '0887-11-01', 'circa', 'circa', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (37, 10, 3, 12, '0885-05-01', '0887-11-01', 'circa', 'circa', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (38, 39, 11, 38, '0880-01-01', NULL, 'circa', NULL, NULL);
INSERT INTO `actor_has_role_and_place` VALUES (39, 40, 7, 39, '0880-01-01', NULL, 'circa', NULL, NULL);
INSERT INTO `actor_has_role_and_place` VALUES (40, 10, 3, 5, '0879-01-01', '0887-11-01', 'circa', 'circa', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (41, 41, 7, NULL, '0854-01-01', '0894-01-01', 'circa', 'circa', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (42, 41, NULL, 43, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `actor_has_role_and_place` VALUES (43, 14, 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `actor_has_role_and_place` VALUES (44, 42, 7, 44, '0836-01-01', '0856-01-01', 'circa', 'circa', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (45, 49, 11, 17, '0867-01-01', '0893-01-01', NULL, 'circa', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (46, 50, 12, NULL, NULL, NULL, NULL, NULL, 'trésorier de Charlemagne???');
INSERT INTO `actor_has_role_and_place` VALUES (47, 51, 13, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `actor_has_role_and_place` VALUES (48, 52, 14, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `actor_has_role_and_place` VALUES (49, 53, 14, NULL, '0827-01-01', '0853-01-01', 'circa', 'circa', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (50, 53, 7, 47, '0827-01-01', '0853-01-01', 'circa', 'circa', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (51, 53, 10, 36, '0824-01-01', NULL, 'après', NULL, NULL);
INSERT INTO `actor_has_role_and_place` VALUES (52, 54, 11, 50, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `actor_has_role_and_place` VALUES (53, 58, 11, 52, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `actor_has_role_and_place` VALUES (54, 47, 7, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `actor_has_role_and_place` VALUES (55, 59, 6, 53, '0751-01-01', '0826-01-02', 'circa', 'circa', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (56, 394, 7, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `actor_has_role_and_place` VALUES (57, 250, 7, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `actor_has_role_and_place` VALUES (58, 112, NULL, 55, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `actor_has_role_and_place` VALUES (59, 271, NULL, 56, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `actor_has_role_and_place` VALUES (60, 60, 14, NULL, '0821-01-01', '0824-01-01', 'avant', 'avant', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (61, 60, 10, 36, '0821-01-01', '0824-01-01', 'circa', 'circa', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (62, 85, 7, 60, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `actor_has_role_and_place` VALUES (63, 46, 6, 61, '0846-01-01', '0864-01-01', 'circa', 'circa', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (64, 61, 14, NULL, '0871-01-01', '0884-01-01', 'circa', 'circa', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (65, 61, 7, 11, '0871-01-01', '0884-01-01', 'circa', 'circa', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (66, 429, 3, 12, '0877-10-06', '0879-04-11', 'exactement', 'exactement', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (67, 429, 3, 2, '0846-01-01', '0877-10-06', 'circa', 'exactement', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (68, 61, 7, 67, '0882-01-01', '0890-01-01', 'circa', 'circa', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (69, 295, NULL, 17, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `actor_has_role_and_place` VALUES (70, 62, 15, 68, '0816-01-01', '0829-01-01', 'circa', 'circa', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (71, 63, 11, 69, '0816-01-01', '0820-01-01', 'circa', 'circa', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (72, 64, 7, NULL, '0867-01-01', '0880-01-01', 'circa', 'circa', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (73, 430, 3, 12, '0893-01-28', '0922-06-30', 'exactement', 'exactement', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (74, 65, 6, 71, '0804-01-01', '0838-01-01', 'circa', 'circa', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (75, 65, 6, 72, '0808-01-01', '0838-01-01', 'circa', 'circa', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (76, 66, 11, 73, '0791-01-01', '0816-01-01', 'circa', 'circa', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (77, 98, NULL, 74, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `actor_has_role_and_place` VALUES (78, 67, 6, 76, NULL, '0779-01-01', NULL, 'avant', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (79, 67, 11, 77, '0779-01-01', '0819-01-01', 'circa', 'circa', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (80, 69, 11, 79, '0875-01-01', '0911-01-01', 'après', 'avant', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (81, 70, 6, 81, '0834-01-01', '0840-01-01', 'circa', 'circa', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (82, 101, 6, 30, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `actor_has_role_and_place` VALUES (83, 72, 7, 34, '0838-01-01', '0840-01-01', 'circa', 'circa', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (84, 73, 11, 85, '0826-01-01', '0833-01-01', 'circa', 'circa', NULL);
INSERT INTO `actor_has_role_and_place` VALUES (85, 74, 11, 87, '0843-01-01', '0867-01-01', 'circa', 'circa', NULL);
COMMIT;

-- ----------------------------
-- Table structure for actor_has_role_and_place_has_reference
-- ----------------------------
DROP TABLE IF EXISTS `actor_has_role_and_place_has_reference`;
CREATE TABLE `actor_has_role_and_place_has_reference` (
  `actor_has_role_and_place` int(11) NOT NULL,
  `reference` int(11) NOT NULL,
  `reference_page` varchar(45) DEFAULT NULL,
  KEY `fk_actor_has_RoleAndPlace_has_reference_reference1_idx` (`reference`),
  KEY `fk_actor_role_and_place_has_reference_actor_has_role_and_pl_idx` (`actor_has_role_and_place`),
  CONSTRAINT `fk_actor_has_RoleAndPlace_has_reference_reference1` FOREIGN KEY (`reference`) REFERENCES `reference` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_actor_role_and_place_has_reference_actor_has_role_and_place1` FOREIGN KEY (`actor_has_role_and_place`) REFERENCES `actor_has_role_and_place` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of actor_has_role_and_place_has_reference
-- ----------------------------
BEGIN;
INSERT INTO `actor_has_role_and_place_has_reference` VALUES (44, 6, 'p.110');
INSERT INTO `actor_has_role_and_place_has_reference` VALUES (68, 4, 'p.215');
COMMIT;

-- ----------------------------
-- Table structure for actor_makes_event
-- ----------------------------
DROP TABLE IF EXISTS `actor_makes_event`;
CREATE TABLE `actor_makes_event` (
  `actor` int(11) NOT NULL,
  `event` int(11) NOT NULL,
  `function` varchar(45) NOT NULL,
  KEY `fk_actor_has_event_event1_idx` (`event`),
  KEY `fk_actor_has_event_actor1_idx` (`actor`),
  CONSTRAINT `fk_actor_has_event_actor1` FOREIGN KEY (`actor`) REFERENCES `actor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_actor_has_event_event1` FOREIGN KEY (`event`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of actor_makes_event
-- ----------------------------
BEGIN;
INSERT INTO `actor_makes_event` VALUES (1, 1, 'agent');
INSERT INTO `actor_makes_event` VALUES (14, 1, 'agent');
INSERT INTO `actor_makes_event` VALUES (2, 1, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (15, 2, 'agent');
INSERT INTO `actor_makes_event` VALUES (17, 2, 'agent');
INSERT INTO `actor_makes_event` VALUES (18, 2, 'agent');
INSERT INTO `actor_makes_event` VALUES (16, 2, 'agent');
INSERT INTO `actor_makes_event` VALUES (19, 2, 'agent');
INSERT INTO `actor_makes_event` VALUES (7, 2, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (3, 3, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (20, 3, 'agent');
INSERT INTO `actor_makes_event` VALUES (21, 3, 'agent');
INSERT INTO `actor_makes_event` VALUES (3, 4, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (22, 4, 'agent');
INSERT INTO `actor_makes_event` VALUES (23, 4, 'agent');
INSERT INTO `actor_makes_event` VALUES (24, 4, 'agent');
INSERT INTO `actor_makes_event` VALUES (25, 4, 'agent');
INSERT INTO `actor_makes_event` VALUES (2, 5, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (26, 5, 'agent');
INSERT INTO `actor_makes_event` VALUES (2, 6, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (26, 6, 'agent');
INSERT INTO `actor_makes_event` VALUES (27, 6, 'agent');
INSERT INTO `actor_makes_event` VALUES (2, 7, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (26, 7, 'agent');
INSERT INTO `actor_makes_event` VALUES (8, 8, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (28, 8, 'agent');
INSERT INTO `actor_makes_event` VALUES (29, 8, 'agent');
INSERT INTO `actor_makes_event` VALUES (9, 9, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (28, 9, 'agent');
INSERT INTO `actor_makes_event` VALUES (30, 9, 'agent');
INSERT INTO `actor_makes_event` VALUES (31, 9, 'agent');
INSERT INTO `actor_makes_event` VALUES (9, 10, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (28, 10, 'agent');
INSERT INTO `actor_makes_event` VALUES (32, 10, 'agent');
INSERT INTO `actor_makes_event` VALUES (9, 11, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (28, 11, 'agent');
INSERT INTO `actor_makes_event` VALUES (33, 11, 'agent');
INSERT INTO `actor_makes_event` VALUES (34, 11, 'agent');
INSERT INTO `actor_makes_event` VALUES (35, 11, 'agent');
INSERT INTO `actor_makes_event` VALUES (36, 11, 'agent');
INSERT INTO `actor_makes_event` VALUES (37, 11, 'agent');
INSERT INTO `actor_makes_event` VALUES (10, 12, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (38, 12, 'agent');
INSERT INTO `actor_makes_event` VALUES (39, 12, 'agent');
INSERT INTO `actor_makes_event` VALUES (40, 12, 'agent');
INSERT INTO `actor_makes_event` VALUES (10, 13, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (38, 13, 'agent');
INSERT INTO `actor_makes_event` VALUES (39, 13, 'agent');
INSERT INTO `actor_makes_event` VALUES (40, 13, 'agent');
INSERT INTO `actor_makes_event` VALUES (10, 14, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (41, 14, 'agent');
INSERT INTO `actor_makes_event` VALUES (10, 15, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (41, 15, 'agent');
INSERT INTO `actor_makes_event` VALUES (7, 16, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (42, 16, 'agent');
INSERT INTO `actor_makes_event` VALUES (45, 16, 'agent');
INSERT INTO `actor_makes_event` VALUES (44, 16, 'agent');
INSERT INTO `actor_makes_event` VALUES (43, 16, 'agent');
INSERT INTO `actor_makes_event` VALUES (7, 17, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (42, 17, 'agent');
INSERT INTO `actor_makes_event` VALUES (43, 17, 'agent');
INSERT INTO `actor_makes_event` VALUES (46, 17, 'agent');
INSERT INTO `actor_makes_event` VALUES (47, 17, 'agent');
INSERT INTO `actor_makes_event` VALUES (48, 17, 'agent');
INSERT INTO `actor_makes_event` VALUES (7, 18, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (49, 18, 'agent');
INSERT INTO `actor_makes_event` VALUES (3, 19, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (50, 19, 'agent');
INSERT INTO `actor_makes_event` VALUES (51, 19, 'agent');
INSERT INTO `actor_makes_event` VALUES (52, 19, 'agent');
INSERT INTO `actor_makes_event` VALUES (8, 20, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (53, 20, 'agent');
INSERT INTO `actor_makes_event` VALUES (8, 21, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (53, 21, 'agent');
INSERT INTO `actor_makes_event` VALUES (54, 21, 'agent');
INSERT INTO `actor_makes_event` VALUES (8, 22, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (53, 22, 'agent');
INSERT INTO `actor_makes_event` VALUES (8, 23, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (53, 23, 'agent');
INSERT INTO `actor_makes_event` VALUES (55, 23, 'agent');
INSERT INTO `actor_makes_event` VALUES (56, 23, 'agent');
INSERT INTO `actor_makes_event` VALUES (57, 23, 'agent');
INSERT INTO `actor_makes_event` VALUES (9, 24, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (53, 24, 'agent');
INSERT INTO `actor_makes_event` VALUES (58, 24, 'agent');
INSERT INTO `actor_makes_event` VALUES (3, 25, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (59, 25, 'agent');
INSERT INTO `actor_makes_event` VALUES (179, 25, 'agent');
INSERT INTO `actor_makes_event` VALUES (394, 25, 'agent');
INSERT INTO `actor_makes_event` VALUES (250, 25, 'agent');
INSERT INTO `actor_makes_event` VALUES (3, 26, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (59, 26, 'agent');
INSERT INTO `actor_makes_event` VALUES (112, 26, 'agent');
INSERT INTO `actor_makes_event` VALUES (271, 26, 'agent');
INSERT INTO `actor_makes_event` VALUES (3, 27, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (59, 27, 'agent');
INSERT INTO `actor_makes_event` VALUES (3, 28, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (59, 28, 'agent');
INSERT INTO `actor_makes_event` VALUES (3, 29, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (59, 29, 'agent');
INSERT INTO `actor_makes_event` VALUES (3, 30, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (59, 30, 'agent');
INSERT INTO `actor_makes_event` VALUES (3, 31, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (59, 31, 'agent');
INSERT INTO `actor_makes_event` VALUES (3, 32, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (59, 32, 'agent');
INSERT INTO `actor_makes_event` VALUES (2, 33, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (60, 33, 'agent');
INSERT INTO `actor_makes_event` VALUES (85, 33, 'agent');
INSERT INTO `actor_makes_event` VALUES (289, 33, 'agent');
INSERT INTO `actor_makes_event` VALUES (2, 34, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (60, 34, 'agent');
INSERT INTO `actor_makes_event` VALUES (85, 34, 'agent');
INSERT INTO `actor_makes_event` VALUES (289, 34, 'agent');
INSERT INTO `actor_makes_event` VALUES (2, 35, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (60, 35, 'agent');
INSERT INTO `actor_makes_event` VALUES (2, 36, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (60, 36, 'agent');
INSERT INTO `actor_makes_event` VALUES (7, 37, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (46, 37, 'agent');
INSERT INTO `actor_makes_event` VALUES (400, 37, 'agent');
INSERT INTO `actor_makes_event` VALUES (259, 37, 'agent');
INSERT INTO `actor_makes_event` VALUES (321, 37, 'agent');
INSERT INTO `actor_makes_event` VALUES (7, 38, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (46, 38, 'agent');
INSERT INTO `actor_makes_event` VALUES (48, 38, 'agent');
INSERT INTO `actor_makes_event` VALUES (47, 38, 'agent');
INSERT INTO `actor_makes_event` VALUES (43, 38, 'agent');
INSERT INTO `actor_makes_event` VALUES (7, 39, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (46, 39, 'agent');
INSERT INTO `actor_makes_event` VALUES (245, 39, 'agent');
INSERT INTO `actor_makes_event` VALUES (264, 39, 'agent');
INSERT INTO `actor_makes_event` VALUES (47, 39, 'agent');
INSERT INTO `actor_makes_event` VALUES (48, 39, 'agent');
INSERT INTO `actor_makes_event` VALUES (43, 39, 'agent');
INSERT INTO `actor_makes_event` VALUES (7, 40, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (61, 40, 'agent');
INSERT INTO `actor_makes_event` VALUES (295, 40, 'agent');
INSERT INTO `actor_makes_event` VALUES (2, 41, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (62, 41, 'agent');
INSERT INTO `actor_makes_event` VALUES (2, 42, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (63, 42, 'agent');
INSERT INTO `actor_makes_event` VALUES (222, 42, 'agent');
INSERT INTO `actor_makes_event` VALUES (10, 43, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (64, 43, 'agent');
INSERT INTO `actor_makes_event` VALUES (206, 43, 'agent');
INSERT INTO `actor_makes_event` VALUES (2, 44, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (65, 44, 'agent');
INSERT INTO `actor_makes_event` VALUES (256, 44, 'agent');
INSERT INTO `actor_makes_event` VALUES (3, 45, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (66, 45, 'agent');
INSERT INTO `actor_makes_event` VALUES (98, 45, 'agent');
INSERT INTO `actor_makes_event` VALUES (105, 45, 'agent');
INSERT INTO `actor_makes_event` VALUES (134, 45, 'agent');
INSERT INTO `actor_makes_event` VALUES (407, 45, 'agent');
INSERT INTO `actor_makes_event` VALUES (3, 46, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (66, 46, 'agent');
INSERT INTO `actor_makes_event` VALUES (98, 46, 'agent');
INSERT INTO `actor_makes_event` VALUES (326, 46, 'agent');
INSERT INTO `actor_makes_event` VALUES (3, 47, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (66, 47, 'agent');
INSERT INTO `actor_makes_event` VALUES (98, 47, 'agent');
INSERT INTO `actor_makes_event` VALUES (105, 47, 'agent');
INSERT INTO `actor_makes_event` VALUES (407, 47, 'agent');
INSERT INTO `actor_makes_event` VALUES (130, 47, 'agent');
INSERT INTO `actor_makes_event` VALUES (3, 48, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (67, 48, 'agent');
INSERT INTO `actor_makes_event` VALUES (3, 49, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (67, 49, 'agent');
INSERT INTO `actor_makes_event` VALUES (305, 49, 'agent');
INSERT INTO `actor_makes_event` VALUES (278, 49, 'agent');
INSERT INTO `actor_makes_event` VALUES (293, 49, 'agent');
INSERT INTO `actor_makes_event` VALUES (200, 49, 'agent');
INSERT INTO `actor_makes_event` VALUES (2, 50, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (68, 50, 'agent');
INSERT INTO `actor_makes_event` VALUES (167, 50, 'agent');
INSERT INTO `actor_makes_event` VALUES (10, 51, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (69, 51, 'agent');
INSERT INTO `actor_makes_event` VALUES (10, 52, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (69, 52, 'agent');
INSERT INTO `actor_makes_event` VALUES (2, 53, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (70, 53, 'agent');
INSERT INTO `actor_makes_event` VALUES (116, 53, 'agent');
INSERT INTO `actor_makes_event` VALUES (137, 53, 'agent');
INSERT INTO `actor_makes_event` VALUES (3, 54, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (71, 54, 'agent');
INSERT INTO `actor_makes_event` VALUES (101, 54, 'agent');
INSERT INTO `actor_makes_event` VALUES (8, 55, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (72, 55, 'agent');
INSERT INTO `actor_makes_event` VALUES (128, 55, 'agent');
INSERT INTO `actor_makes_event` VALUES (8, 56, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (73, 56, 'agent');
INSERT INTO `actor_makes_event` VALUES (333, 56, 'agent');
INSERT INTO `actor_makes_event` VALUES (7, 57, 'commanditaire');
INSERT INTO `actor_makes_event` VALUES (74, 57, 'agent');
INSERT INTO `actor_makes_event` VALUES (405, 57, 'agent');
INSERT INTO `actor_makes_event` VALUES (241, 57, 'agent');
INSERT INTO `actor_makes_event` VALUES (226, 57, 'agent');
COMMIT;

-- ----------------------------
-- Table structure for event
-- ----------------------------
DROP TABLE IF EXISTS `event`;
CREATE TABLE `event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(45) NOT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `date_start_accuracy` varchar(10) DEFAULT NULL,
  `date_end_accuracy` varchar(10) DEFAULT NULL,
  `note` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `event_id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event
-- ----------------------------
BEGIN;
INSERT INTO `event` VALUES (1, 'mission', '0817-01-01', '0818-01-01', 'circa', 'circa', NULL);
INSERT INTO `event` VALUES (2, 'mission', '0853-01-01', NULL, 'circa', NULL, NULL);
INSERT INTO `event` VALUES (3, 'mission', '0791-08-14', NULL, 'exactement', NULL, NULL);
INSERT INTO `event` VALUES (4, 'mission', '0782-01-01', NULL, 'circa', NULL, NULL);
INSERT INTO `event` VALUES (5, 'mission', '0816-11-01', NULL, 'avant', NULL, NULL);
INSERT INTO `event` VALUES (6, 'mission', '0825-01-01', NULL, 'circa', NULL, NULL);
INSERT INTO `event` VALUES (7, 'mission', '0835-01-01', NULL, 'circa', NULL, NULL);
INSERT INTO `event` VALUES (8, 'mission', '0847-01-01', '0848-01-01', 'circa', 'circa', 'La mission a eu lieu dans le sud de l\'Italie.');
INSERT INTO `event` VALUES (9, 'mission', '0852-10-01', '0853-04-01', 'circa', 'circa', NULL);
INSERT INTO `event` VALUES (10, 'mission', '0855-01-01', NULL, 'circa', NULL, NULL);
INSERT INTO `event` VALUES (11, 'mission', '0871-12-18', NULL, 'avant', NULL, NULL);
INSERT INTO `event` VALUES (12, 'mission', '0880-04-01', NULL, 'circa', NULL, NULL);
INSERT INTO `event` VALUES (13, 'mission', '0880-05-17', NULL, 'circa', NULL, NULL);
INSERT INTO `event` VALUES (14, 'mission', '0876-08-01', NULL, 'circa', NULL, NULL);
INSERT INTO `event` VALUES (15, 'mission', '0877-01-01', NULL, 'circa', NULL, NULL);
INSERT INTO `event` VALUES (16, 'mission', '0853-01-01', NULL, NULL, NULL, NULL);
INSERT INTO `event` VALUES (17, 'mission', '0856-07-07', NULL, 'circa', NULL, NULL);
INSERT INTO `event` VALUES (18, 'mission', '0877-08-01', NULL, 'circa', NULL, NULL);
INSERT INTO `event` VALUES (19, 'mission', '0782-01-01', NULL, 'circa', NULL, NULL);
INSERT INTO `event` VALUES (20, 'mission', '0827-01-01', NULL, 'circa', NULL, NULL);
INSERT INTO `event` VALUES (21, 'mission', '0838-01-01', NULL, 'circa', NULL, NULL);
INSERT INTO `event` VALUES (22, 'mission', '0841-01-01', NULL, 'circa', NULL, NULL);
INSERT INTO `event` VALUES (23, 'mission', '0847-01-01', NULL, NULL, NULL, NULL);
INSERT INTO `event` VALUES (24, 'mission', '0853-05-01', NULL, 'circa', NULL, NULL);
INSERT INTO `event` VALUES (25, 'mission', '0806-01-01', NULL, 'circa', NULL, NULL);
INSERT INTO `event` VALUES (26, 'mission', '0809-11-01', NULL, 'circa', NULL, NULL);
INSERT INTO `event` VALUES (27, 'mission', '0810-01-01', NULL, 'circa', NULL, NULL);
INSERT INTO `event` VALUES (28, 'mission', '0811-05-01', NULL, 'circa', NULL, NULL);
INSERT INTO `event` VALUES (29, 'mission', '0812-03-01', NULL, NULL, NULL, NULL);
INSERT INTO `event` VALUES (30, 'mission', '0813-04-01', NULL, 'circa', NULL, NULL);
INSERT INTO `event` VALUES (31, 'mission', '0813-06-04', NULL, 'avant', NULL, NULL);
INSERT INTO `event` VALUES (32, 'mission', '0814-01-01', NULL, 'circa', NULL, NULL);
INSERT INTO `event` VALUES (33, 'mission', '0821-08-01', NULL, NULL, NULL, NULL);
INSERT INTO `event` VALUES (34, 'mission', '0821-01-01', NULL, 'circa', NULL, NULL);
INSERT INTO `event` VALUES (35, 'mission', '0823-01-01', NULL, NULL, NULL, NULL);
INSERT INTO `event` VALUES (36, 'mission', '0823-07-01', NULL, 'circa', NULL, NULL);
INSERT INTO `event` VALUES (37, 'mission', '0853-01-01', NULL, 'circa', NULL, NULL);
INSERT INTO `event` VALUES (38, 'mission', '0856-09-01', NULL, 'après', NULL, NULL);
INSERT INTO `event` VALUES (39, 'mission', '0856-09-01', '0856-10-10', 'après', 'avant', NULL);
INSERT INTO `event` VALUES (40, 'mission', '0866-01-01', '0875-01-01', 'après', 'avant', NULL);
INSERT INTO `event` VALUES (41, 'mission', '0816-01-01', NULL, 'circa', NULL, NULL);
INSERT INTO `event` VALUES (42, 'mission', '0820-01-01', NULL, 'circa', NULL, NULL);
INSERT INTO `event` VALUES (43, 'mission', '0880-04-01', NULL, 'circa', NULL, NULL);
INSERT INTO `event` VALUES (44, 'mission', '0823-01-01', NULL, 'circa', NULL, NULL);
INSERT INTO `event` VALUES (45, 'mission', '0802-06-11', NULL, 'exactement', NULL, NULL);
INSERT INTO `event` VALUES (46, 'mission', '0802-08-04', NULL, 'exactement', NULL, NULL);
INSERT INTO `event` VALUES (47, 'mission', '0806-01-01', NULL, 'circa', NULL, NULL);
INSERT INTO `event` VALUES (48, 'mission', '0779-01-01', '0780-01-01', 'après', 'avant', NULL);
INSERT INTO `event` VALUES (49, 'mission', '0787-01-01', '0788-01-01', 'après', 'avant', NULL);
INSERT INTO `event` VALUES (50, 'mission', '0824-01-01', '0825-01-01', 'après', 'avant', NULL);
INSERT INTO `event` VALUES (51, 'mission', '0880-12-01', '0880-12-28', 'après', 'exactement', NULL);
INSERT INTO `event` VALUES (52, 'mission', '0882-02-01', NULL, 'circa', NULL, NULL);
INSERT INTO `event` VALUES (53, 'mission', '0838-01-01', NULL, 'circa', NULL, NULL);
INSERT INTO `event` VALUES (54, 'mission', '0790-01-01', NULL, NULL, NULL, NULL);
INSERT INTO `event` VALUES (55, 'mission', '0838-01-01', NULL, 'circa', NULL, NULL);
INSERT INTO `event` VALUES (56, 'mission', '0833-01-01', NULL, 'circa', NULL, NULL);
INSERT INTO `event` VALUES (57, 'mission', '0855-01-01', NULL, 'circa', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for event_has_place
-- ----------------------------
DROP TABLE IF EXISTS `event_has_place`;
CREATE TABLE `event_has_place` (
  `event` int(11) NOT NULL,
  `place` int(11) NOT NULL,
  KEY `fk_event_has_place_place1_idx` (`place`),
  KEY `fk_event_has_place_event1_idx` (`event`),
  CONSTRAINT `fk_event_has_place_event1` FOREIGN KEY (`event`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_event_has_place_place1` FOREIGN KEY (`place`) REFERENCES `place` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_has_place
-- ----------------------------
BEGIN;
INSERT INTO `event_has_place` VALUES (1, 6);
INSERT INTO `event_has_place` VALUES (2, 15);
INSERT INTO `event_has_place` VALUES (2, 16);
INSERT INTO `event_has_place` VALUES (2, 17);
INSERT INTO `event_has_place` VALUES (2, 18);
INSERT INTO `event_has_place` VALUES (2, 19);
INSERT INTO `event_has_place` VALUES (2, 20);
INSERT INTO `event_has_place` VALUES (2, 21);
INSERT INTO `event_has_place` VALUES (3, 27);
INSERT INTO `event_has_place` VALUES (4, 28);
INSERT INTO `event_has_place` VALUES (5, 30);
INSERT INTO `event_has_place` VALUES (6, 31);
INSERT INTO `event_has_place` VALUES (7, 6);
INSERT INTO `event_has_place` VALUES (8, 5);
INSERT INTO `event_has_place` VALUES (9, 34);
INSERT INTO `event_has_place` VALUES (10, 7);
INSERT INTO `event_has_place` VALUES (11, 34);
INSERT INTO `event_has_place` VALUES (12, 5);
INSERT INTO `event_has_place` VALUES (13, 40);
INSERT INTO `event_has_place` VALUES (14, 41);
INSERT INTO `event_has_place` VALUES (15, 42);
INSERT INTO `event_has_place` VALUES (16, 44);
INSERT INTO `event_has_place` VALUES (17, 10);
INSERT INTO `event_has_place` VALUES (17, 2);
INSERT INTO `event_has_place` VALUES (18, 45);
INSERT INTO `event_has_place` VALUES (19, 46);
INSERT INTO `event_has_place` VALUES (20, 48);
INSERT INTO `event_has_place` VALUES (21, 49);
INSERT INTO `event_has_place` VALUES (22, 51);
INSERT INTO `event_has_place` VALUES (23, 5);
INSERT INTO `event_has_place` VALUES (24, 45);
INSERT INTO `event_has_place` VALUES (25, 54);
INSERT INTO `event_has_place` VALUES (26, 7);
INSERT INTO `event_has_place` VALUES (27, 5);
INSERT INTO `event_has_place` VALUES (28, 5);
INSERT INTO `event_has_place` VALUES (29, 57);
INSERT INTO `event_has_place` VALUES (30, 34);
INSERT INTO `event_has_place` VALUES (31, 58);
INSERT INTO `event_has_place` VALUES (32, 36);
INSERT INTO `event_has_place` VALUES (33, 59);
INSERT INTO `event_has_place` VALUES (34, 5);
INSERT INTO `event_has_place` VALUES (34, 59);
INSERT INTO `event_has_place` VALUES (35, 5);
INSERT INTO `event_has_place` VALUES (36, 5);
INSERT INTO `event_has_place` VALUES (37, 62);
INSERT INTO `event_has_place` VALUES (37, 63);
INSERT INTO `event_has_place` VALUES (37, 64);
INSERT INTO `event_has_place` VALUES (37, 65);
INSERT INTO `event_has_place` VALUES (37, 66);
INSERT INTO `event_has_place` VALUES (38, 10);
INSERT INTO `event_has_place` VALUES (38, 2);
INSERT INTO `event_has_place` VALUES (39, 10);
INSERT INTO `event_has_place` VALUES (39, 2);
INSERT INTO `event_has_place` VALUES (40, 17);
INSERT INTO `event_has_place` VALUES (41, 68);
INSERT INTO `event_has_place` VALUES (42, 70);
INSERT INTO `event_has_place` VALUES (43, 50);
INSERT INTO `event_has_place` VALUES (44, 7);
INSERT INTO `event_has_place` VALUES (45, 73);
INSERT INTO `event_has_place` VALUES (46, 75);
INSERT INTO `event_has_place` VALUES (47, 75);
INSERT INTO `event_has_place` VALUES (48, 7);
INSERT INTO `event_has_place` VALUES (49, 78);
INSERT INTO `event_has_place` VALUES (50, 7);
INSERT INTO `event_has_place` VALUES (51, 79);
INSERT INTO `event_has_place` VALUES (52, 80);
INSERT INTO `event_has_place` VALUES (53, 82);
INSERT INTO `event_has_place` VALUES (54, 83);
INSERT INTO `event_has_place` VALUES (54, 84);
INSERT INTO `event_has_place` VALUES (55, 34);
INSERT INTO `event_has_place` VALUES (56, 86);
INSERT INTO `event_has_place` VALUES (57, 88);
INSERT INTO `event_has_place` VALUES (2, 25);
INSERT INTO `event_has_place` VALUES (2, 26);
COMMIT;

-- ----------------------------
-- Table structure for event_has_reference
-- ----------------------------
DROP TABLE IF EXISTS `event_has_reference`;
CREATE TABLE `event_has_reference` (
  `event` int(11) NOT NULL,
  `reference` int(11) NOT NULL,
  `reference_page` varchar(45) DEFAULT NULL,
  KEY `fk_event_has_reference_reference1_idx` (`reference`),
  KEY `fk_event_has_reference_event1_idx` (`event`),
  CONSTRAINT `fk_event_has_reference_event1` FOREIGN KEY (`event`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_event_has_reference_reference1` FOREIGN KEY (`reference`) REFERENCES `reference` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_has_reference
-- ----------------------------
BEGIN;
INSERT INTO `event_has_reference` VALUES (1, 2, 'II, 64');
INSERT INTO `event_has_reference` VALUES (2, 2, 'I, 147');
INSERT INTO `event_has_reference` VALUES (3, 2, 'I, 12');
INSERT INTO `event_has_reference` VALUES (3, 1, '255');
INSERT INTO `event_has_reference` VALUES (2, 1, '254');
INSERT INTO `event_has_reference` VALUES (1, 1, '253');
INSERT INTO `event_has_reference` VALUES (4, 2, 'I, 5');
INSERT INTO `event_has_reference` VALUES (4, 1, '256-257');
INSERT INTO `event_has_reference` VALUES (5, 1, '258');
INSERT INTO `event_has_reference` VALUES (5, 2, 'II, 58');
INSERT INTO `event_has_reference` VALUES (6, 1, '258');
INSERT INTO `event_has_reference` VALUES (6, 2, 'I, 89');
INSERT INTO `event_has_reference` VALUES (7, 1, '259');
INSERT INTO `event_has_reference` VALUES (8, 2, 'II, 137');
INSERT INTO `event_has_reference` VALUES (8, 1, '260');
INSERT INTO `event_has_reference` VALUES (9, 2, 'I, 170');
INSERT INTO `event_has_reference` VALUES (9, 1, '260');
INSERT INTO `event_has_reference` VALUES (10, 2, 'II, 145');
INSERT INTO `event_has_reference` VALUES (10, 1, '261');
INSERT INTO `event_has_reference` VALUES (11, 2, 'II, 167');
INSERT INTO `event_has_reference` VALUES (11, 1, '261');
INSERT INTO `event_has_reference` VALUES (12, 1, '263');
INSERT INTO `event_has_reference` VALUES (13, 2, 'I, 186');
INSERT INTO `event_has_reference` VALUES (13, 1, '263');
INSERT INTO `event_has_reference` VALUES (14, 2, 'II, 205');
INSERT INTO `event_has_reference` VALUES (14, 1, '264');
INSERT INTO `event_has_reference` VALUES (15, 2, 'II, 207');
INSERT INTO `event_has_reference` VALUES (15, 1, '264');
INSERT INTO `event_has_reference` VALUES (16, 2, 'I, 140');
INSERT INTO `event_has_reference` VALUES (16, 1, '265');
INSERT INTO `event_has_reference` VALUES (17, 1, '265, 280');
INSERT INTO `event_has_reference` VALUES (18, 2, 'II, 131');
INSERT INTO `event_has_reference` VALUES (18, 1, 'p.266');
INSERT INTO `event_has_reference` VALUES (19, 2, 'II, 16');
INSERT INTO `event_has_reference` VALUES (19, 1, '269');
INSERT INTO `event_has_reference` VALUES (20, 1, '270');
INSERT INTO `event_has_reference` VALUES (21, 1, '271');
INSERT INTO `event_has_reference` VALUES (22, 2, 'II, 133');
INSERT INTO `event_has_reference` VALUES (22, 1, '271');
INSERT INTO `event_has_reference` VALUES (23, 2, 'II, 136');
INSERT INTO `event_has_reference` VALUES (23, 1, '271-272');
INSERT INTO `event_has_reference` VALUES (24, 1, '272');
INSERT INTO `event_has_reference` VALUES (25, 2, 'I, 63');
INSERT INTO `event_has_reference` VALUES (25, 1, '273');
INSERT INTO `event_has_reference` VALUES (26, 1, '274');
INSERT INTO `event_has_reference` VALUES (27, 2, 'I, 54');
INSERT INTO `event_has_reference` VALUES (27, 1, '274');
INSERT INTO `event_has_reference` VALUES (28, 2, 'II, 41');
INSERT INTO `event_has_reference` VALUES (28, 1, '275');
INSERT INTO `event_has_reference` VALUES (29, 2, 'I, 58');
INSERT INTO `event_has_reference` VALUES (29, 1, '275');
INSERT INTO `event_has_reference` VALUES (30, 2, 'I, 62');
INSERT INTO `event_has_reference` VALUES (30, 1, '275');
INSERT INTO `event_has_reference` VALUES (31, 2, 'I, 61');
INSERT INTO `event_has_reference` VALUES (31, 1, '275');
INSERT INTO `event_has_reference` VALUES (32, 2, 'I, 64');
INSERT INTO `event_has_reference` VALUES (32, 1, '276');
INSERT INTO `event_has_reference` VALUES (33, 2, 'I, 81');
INSERT INTO `event_has_reference` VALUES (33, 1, '277-278');
INSERT INTO `event_has_reference` VALUES (34, 1, '278-279');
INSERT INTO `event_has_reference` VALUES (35, 2, 'I, 84');
INSERT INTO `event_has_reference` VALUES (35, 1, '279');
INSERT INTO `event_has_reference` VALUES (36, 1, '279-280');
INSERT INTO `event_has_reference` VALUES (37, 2, 'I, 139');
INSERT INTO `event_has_reference` VALUES (37, 1, '280');
INSERT INTO `event_has_reference` VALUES (38, 1, '280-281');
INSERT INTO `event_has_reference` VALUES (40, 2, 'I, 162');
INSERT INTO `event_has_reference` VALUES (40, 1, '281');
INSERT INTO `event_has_reference` VALUES (41, 2, 'II, 62');
INSERT INTO `event_has_reference` VALUES (41, 1, '282');
INSERT INTO `event_has_reference` VALUES (42, 2, 'I, 77; II, 72');
INSERT INTO `event_has_reference` VALUES (42, 1, '282-283');
INSERT INTO `event_has_reference` VALUES (43, 2, 'II, 176');
INSERT INTO `event_has_reference` VALUES (43, 1, '283');
INSERT INTO `event_has_reference` VALUES (44, 2, 'II, 79a');
INSERT INTO `event_has_reference` VALUES (44, 1, '284');
INSERT INTO `event_has_reference` VALUES (45, 2, 'I, 29');
INSERT INTO `event_has_reference` VALUES (45, 1, '285');
INSERT INTO `event_has_reference` VALUES (46, 2, 'I, 31');
INSERT INTO `event_has_reference` VALUES (46, 1, '285-286');
INSERT INTO `event_has_reference` VALUES (47, 2, 'I, 48');
INSERT INTO `event_has_reference` VALUES (47, 1, '286');
INSERT INTO `event_has_reference` VALUES (48, 1, '286');
INSERT INTO `event_has_reference` VALUES (49, 1, '287');
INSERT INTO `event_has_reference` VALUES (50, 1, '287-288');
INSERT INTO `event_has_reference` VALUES (51, 2, 'I, 187');
INSERT INTO `event_has_reference` VALUES (51, 1, '288');
INSERT INTO `event_has_reference` VALUES (52, 2, 'II, 177');
INSERT INTO `event_has_reference` VALUES (52, 1, '288-289');
INSERT INTO `event_has_reference` VALUES (53, 2, 'II, 109');
INSERT INTO `event_has_reference` VALUES (53, 1, '290');
INSERT INTO `event_has_reference` VALUES (54, 2, 'I, 9');
INSERT INTO `event_has_reference` VALUES (54, 1, '291');
INSERT INTO `event_has_reference` VALUES (55, 2, 'II, 108');
INSERT INTO `event_has_reference` VALUES (55, 1, '291');
INSERT INTO `event_has_reference` VALUES (56, 2, 'I, 99');
INSERT INTO `event_has_reference` VALUES (56, 1, '291-293');
INSERT INTO `event_has_reference` VALUES (57, 1, '293');
COMMIT;

-- ----------------------------
-- Table structure for event_has_type
-- ----------------------------
DROP TABLE IF EXISTS `event_has_type`;
CREATE TABLE `event_has_type` (
  `event` int(11) NOT NULL,
  `event_type` int(11) NOT NULL,
  KEY `fk_event_has_eventType_eventType1_idx` (`event_type`),
  KEY `fk_event_has_eventType_event1_idx` (`event`),
  CONSTRAINT `fk_event_has_eventType_event1` FOREIGN KEY (`event`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_event_has_eventType_eventType1` FOREIGN KEY (`event_type`) REFERENCES `event_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_has_type
-- ----------------------------
BEGIN;
INSERT INTO `event_has_type` VALUES (1, 1);
INSERT INTO `event_has_type` VALUES (3, 2);
INSERT INTO `event_has_type` VALUES (4, 2);
INSERT INTO `event_has_type` VALUES (5, 2);
INSERT INTO `event_has_type` VALUES (5, 1);
INSERT INTO `event_has_type` VALUES (4, 1);
INSERT INTO `event_has_type` VALUES (3, 1);
INSERT INTO `event_has_type` VALUES (6, 2);
INSERT INTO `event_has_type` VALUES (7, 1);
INSERT INTO `event_has_type` VALUES (8, 3);
INSERT INTO `event_has_type` VALUES (9, 2);
INSERT INTO `event_has_type` VALUES (9, 1);
INSERT INTO `event_has_type` VALUES (10, 1);
INSERT INTO `event_has_type` VALUES (11, 1);
INSERT INTO `event_has_type` VALUES (11, 2);
INSERT INTO `event_has_type` VALUES (13, 2);
INSERT INTO `event_has_type` VALUES (13, 1);
INSERT INTO `event_has_type` VALUES (14, 4);
INSERT INTO `event_has_type` VALUES (15, 4);
INSERT INTO `event_has_type` VALUES (18, 5);
INSERT INTO `event_has_type` VALUES (19, 3);
INSERT INTO `event_has_type` VALUES (20, 5);
INSERT INTO `event_has_type` VALUES (20, 2);
INSERT INTO `event_has_type` VALUES (21, 2);
INSERT INTO `event_has_type` VALUES (21, 1);
INSERT INTO `event_has_type` VALUES (22, 1);
INSERT INTO `event_has_type` VALUES (23, 3);
INSERT INTO `event_has_type` VALUES (24, 1);
INSERT INTO `event_has_type` VALUES (25, 5);
INSERT INTO `event_has_type` VALUES (25, 6);
INSERT INTO `event_has_type` VALUES (26, 1);
INSERT INTO `event_has_type` VALUES (28, 2);
INSERT INTO `event_has_type` VALUES (29, 2);
INSERT INTO `event_has_type` VALUES (29, 1);
INSERT INTO `event_has_type` VALUES (30, 2);
INSERT INTO `event_has_type` VALUES (31, 1);
INSERT INTO `event_has_type` VALUES (32, 2);
INSERT INTO `event_has_type` VALUES (32, 1);
INSERT INTO `event_has_type` VALUES (33, 2);
INSERT INTO `event_has_type` VALUES (33, 1);
INSERT INTO `event_has_type` VALUES (34, 2);
INSERT INTO `event_has_type` VALUES (34, 1);
INSERT INTO `event_has_type` VALUES (35, 2);
INSERT INTO `event_has_type` VALUES (36, 2);
INSERT INTO `event_has_type` VALUES (36, 1);
INSERT INTO `event_has_type` VALUES (17, 5);
INSERT INTO `event_has_type` VALUES (38, 5);
INSERT INTO `event_has_type` VALUES (39, 5);
INSERT INTO `event_has_type` VALUES (40, 2);
INSERT INTO `event_has_type` VALUES (41, 5);
INSERT INTO `event_has_type` VALUES (42, 7);
INSERT INTO `event_has_type` VALUES (43, 2);
INSERT INTO `event_has_type` VALUES (44, 7);
INSERT INTO `event_has_type` VALUES (45, 2);
INSERT INTO `event_has_type` VALUES (45, 1);
INSERT INTO `event_has_type` VALUES (46, 2);
INSERT INTO `event_has_type` VALUES (46, 1);
INSERT INTO `event_has_type` VALUES (47, 2);
INSERT INTO `event_has_type` VALUES (47, 1);
INSERT INTO `event_has_type` VALUES (48, 5);
INSERT INTO `event_has_type` VALUES (49, 7);
INSERT INTO `event_has_type` VALUES (50, 1);
INSERT INTO `event_has_type` VALUES (50, 8);
INSERT INTO `event_has_type` VALUES (51, 2);
INSERT INTO `event_has_type` VALUES (51, 1);
INSERT INTO `event_has_type` VALUES (52, 4);
INSERT INTO `event_has_type` VALUES (53, 7);
INSERT INTO `event_has_type` VALUES (53, 2);
INSERT INTO `event_has_type` VALUES (54, 2);
INSERT INTO `event_has_type` VALUES (55, 7);
INSERT INTO `event_has_type` VALUES (55, 1);
INSERT INTO `event_has_type` VALUES (56, 2);
INSERT INTO `event_has_type` VALUES (56, 1);
INSERT INTO `event_has_type` VALUES (57, 7);
COMMIT;

-- ----------------------------
-- Table structure for event_type
-- ----------------------------
DROP TABLE IF EXISTS `event_type`;
CREATE TABLE `event_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `eventType_id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_type
-- ----------------------------
BEGIN;
INSERT INTO `event_type` VALUES (1, 'religieux');
INSERT INTO `event_type` VALUES (2, 'justice');
INSERT INTO `event_type` VALUES (3, 'militaire');
INSERT INTO `event_type` VALUES (4, 'commerce');
INSERT INTO `event_type` VALUES (5, 'messager');
INSERT INTO `event_type` VALUES (6, 'inspection');
INSERT INTO `event_type` VALUES (7, 'enquête');
INSERT INTO `event_type` VALUES (8, 'ambassade');
COMMIT;

-- ----------------------------
-- Table structure for family
-- ----------------------------
DROP TABLE IF EXISTS `family`;
CREATE TABLE `family` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `note` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `family_id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of family
-- ----------------------------
BEGIN;
INSERT INTO `family` VALUES (1, 'Carolingiens', NULL);
INSERT INTO `family` VALUES (2, 'Pépinides', NULL);
INSERT INTO `family` VALUES (3, 'Widonides', 'Ses membres sont également appelés les Vitton ou Guy-Garnier-Lambert : les principaux prénoms de ce lignage étaient Guy (latin Wido, Widonis, Vidoni transformé ensuite en Guido / Vito en italien), Garnier et Lambert.');
INSERT INTO `family` VALUES (4, 'Unrochides', 'variante: Hunrochides,');
INSERT INTO `family` VALUES (5, 'Supponides', NULL);
COMMIT;

-- ----------------------------
-- Table structure for family_has_place
-- ----------------------------
DROP TABLE IF EXISTS `family_has_place`;
CREATE TABLE `family_has_place` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `family` int(11) NOT NULL,
  `place` int(11) NOT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `date_start_accuracy` varchar(10) DEFAULT NULL,
  `date_end_accuracy` varchar(10) DEFAULT NULL,
  `note` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_family_has_place_place1_idx` (`place`),
  KEY `fk_family_has_place_family1_idx` (`family`),
  CONSTRAINT `fk_family_has_place_family1` FOREIGN KEY (`family`) REFERENCES `family` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_family_has_place_place1` FOREIGN KEY (`place`) REFERENCES `place` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of family_has_place
-- ----------------------------
BEGIN;
INSERT INTO `family_has_place` VALUES (1, 3, 36, '0842-01-01', '0897-01-01', 'circa', 'circa', NULL);
INSERT INTO `family_has_place` VALUES (2, 3, 5, '0889-01-01', '0894-01-01', 'circa', 'circa', NULL);
INSERT INTO `family_has_place` VALUES (3, 4, 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `family_has_place` VALUES (4, 5, 5, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for family_has_place_has_reference
-- ----------------------------
DROP TABLE IF EXISTS `family_has_place_has_reference`;
CREATE TABLE `family_has_place_has_reference` (
  `family_has_place` int(11) NOT NULL,
  `reference` int(11) NOT NULL,
  `reference_page` varchar(45) DEFAULT NULL,
  KEY `fk_family_has_place_has_reference_reference1_idx` (`reference`),
  KEY `fk_family_place_has_reference_family_has_place1_idx` (`family_has_place`),
  CONSTRAINT `fk_family_has_place_has_reference_reference1` FOREIGN KEY (`reference`) REFERENCES `reference` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_family_place_has_reference_family_has_place1` FOREIGN KEY (`family_has_place`) REFERENCES `family_has_place` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for family_has_reference
-- ----------------------------
DROP TABLE IF EXISTS `family_has_reference`;
CREATE TABLE `family_has_reference` (
  `family` int(11) NOT NULL,
  `reference` int(11) NOT NULL,
  `reference_page` varchar(45) DEFAULT NULL,
  KEY `fk_family_has_reference_reference1_idx` (`reference`),
  KEY `fk_family_has_reference_family1_idx` (`family`),
  CONSTRAINT `fk_family_has_reference_family1` FOREIGN KEY (`family`) REFERENCES `family` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_family_has_reference_reference1` FOREIGN KEY (`reference`) REFERENCES `reference` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of family_has_reference
-- ----------------------------
BEGIN;
INSERT INTO `family_has_reference` VALUES (3, 4, 'p. 441 Tableau généalogique « Les Widonides »');
COMMIT;

-- ----------------------------
-- Table structure for kinship
-- ----------------------------
DROP TABLE IF EXISTS `kinship`;
CREATE TABLE `kinship` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `coefficient` decimal(11,3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kinship_id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kinship
-- ----------------------------
BEGIN;
INSERT INTO `kinship` VALUES (1, 'frère, soeur', 0.250);
INSERT INTO `kinship` VALUES (2, 'père, mère', 0.250);
INSERT INTO `kinship` VALUES (3, 'grandparent', 0.125);
INSERT INTO `kinship` VALUES (4, 'oncle, tante', 0.125);
INSERT INTO `kinship` VALUES (5, 'neveu, nièce', 0.125);
INSERT INTO `kinship` VALUES (6, 'demi-frère, demi-soeur', 0.125);
INSERT INTO `kinship` VALUES (7, 'cousin, cousine', 0.625);
INSERT INTO `kinship` VALUES (8, 'fils, fille', 0.250);
INSERT INTO `kinship` VALUES (9, 'beau-père, belle-mère', NULL);
COMMIT;

-- ----------------------------
-- Table structure for place
-- ----------------------------
DROP TABLE IF EXISTS `place`;
CREATE TABLE `place` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `note` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `place_id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of place
-- ----------------------------
BEGIN;
INSERT INTO `place` VALUES (1, 'empire', 'empire carolingien', NULL);
INSERT INTO `place` VALUES (2, 'royaume', 'Aquitaine (royaume)', NULL);
INSERT INTO `place` VALUES (4, 'duché', 'Gascogne', NULL);
INSERT INTO `place` VALUES (5, 'royaume', 'Italie', NULL);
INSERT INTO `place` VALUES (6, 'ville', 'Fulda', NULL);
INSERT INTO `place` VALUES (7, 'ville', 'Rome', NULL);
INSERT INTO `place` VALUES (8, 'royaume', 'royaume franc', NULL);
INSERT INTO `place` VALUES (9, 'royaume', 'Austrasie', NULL);
INSERT INTO `place` VALUES (10, 'royaume', 'Neustrie', NULL);
INSERT INTO `place` VALUES (11, 'royaume', 'Bourgogne', NULL);
INSERT INTO `place` VALUES (12, 'royaume', 'Francie Occidentale', 'Voir le partage de Verdun (843)');
INSERT INTO `place` VALUES (13, 'royaume', 'Francie Orientale', 'Voir le partage de Verdun. Fin - ensuite l\'empire gérmanique.');
INSERT INTO `place` VALUES (14, 'royaume', 'Lotharingie', 'création - traité de Prüm\rfin - séparation en deux duchés');
INSERT INTO `place` VALUES (15, 'comté', 'de Milos', NULL);
INSERT INTO `place` VALUES (16, 'comté', 'de Isembard', NULL);
INSERT INTO `place` VALUES (17, 'ville', 'Autun', NULL);
INSERT INTO `place` VALUES (18, 'ville', 'Mâcon', NULL);
INSERT INTO `place` VALUES (19, 'ville', 'Dijon', NULL);
INSERT INTO `place` VALUES (20, 'ville', 'Châlon', NULL);
INSERT INTO `place` VALUES (21, 'pagi', 'Atuyer', 'latin: Chattuairie');
INSERT INTO `place` VALUES (22, 'ville', 'Tonnerre', NULL);
INSERT INTO `place` VALUES (23, 'ville', 'Beaune', NULL);
INSERT INTO `place` VALUES (24, 'ville', 'Duesme', NULL);
INSERT INTO `place` VALUES (25, 'comté', 'd\'Attela', NULL);
INSERT INTO `place` VALUES (26, 'comté', 'de Romold', NULL);
INSERT INTO `place` VALUES (27, 'ville', 'Melun', NULL);
INSERT INTO `place` VALUES (28, 'ville', 'Narbonne', NULL);
INSERT INTO `place` VALUES (29, 'ville', 'Metz', NULL);
INSERT INTO `place` VALUES (30, 'ville', 'Prüm', NULL);
INSERT INTO `place` VALUES (31, 'diocèse', 'Trèves', NULL);
INSERT INTO `place` VALUES (32, 'pagi', 'Wormsgau', NULL);
INSERT INTO `place` VALUES (33, 'région', 'Toscane', NULL);
INSERT INTO `place` VALUES (34, 'ville', 'Lucques', NULL);
INSERT INTO `place` VALUES (35, 'région', 'Corse', NULL);
INSERT INTO `place` VALUES (36, 'duché', 'Spolète', NULL);
INSERT INTO `place` VALUES (37, 'ville', 'Mettlach', NULL);
INSERT INTO `place` VALUES (38, 'ville', 'Pavie', NULL);
INSERT INTO `place` VALUES (39, 'ville', 'Milan', NULL);
INSERT INTO `place` VALUES (40, 'ville', 'Corno', 'dans le nord de l\'Italie');
INSERT INTO `place` VALUES (41, 'ville', 'Eschenz', NULL);
INSERT INTO `place` VALUES (42, 'ville', 'Lörrach', NULL);
INSERT INTO `place` VALUES (43, 'région', 'Alémanie', NULL);
INSERT INTO `place` VALUES (44, 'ville', 'Thérouanne', NULL);
INSERT INTO `place` VALUES (45, 'ville', 'Ravenne', NULL);
INSERT INTO `place` VALUES (46, 'région', 'Saxe', NULL);
INSERT INTO `place` VALUES (47, 'ville', 'Parme', NULL);
INSERT INTO `place` VALUES (48, 'ville', 'Ostiglia', NULL);
INSERT INTO `place` VALUES (49, 'ville', 'Rovigo', NULL);
INSERT INTO `place` VALUES (50, 'ville', 'Turin', NULL);
INSERT INTO `place` VALUES (51, 'ville', 'Crémone', NULL);
INSERT INTO `place` VALUES (52, 'ville', 'Brescia', NULL);
INSERT INTO `place` VALUES (53, 'ville', 'Corbie', NULL);
INSERT INTO `place` VALUES (54, 'ville', 'Liège', NULL);
INSERT INTO `place` VALUES (55, 'ville', 'Worms', NULL);
INSERT INTO `place` VALUES (56, 'ville', 'Amiens', NULL);
INSERT INTO `place` VALUES (57, 'ville', 'Pistoia', NULL);
INSERT INTO `place` VALUES (58, 'ville', 'Nonantola', NULL);
INSERT INTO `place` VALUES (59, 'ville', 'Norcia', NULL);
INSERT INTO `place` VALUES (60, 'ville', 'Troyes', NULL);
INSERT INTO `place` VALUES (61, 'abbaye', 'Saint-Bertin', NULL);
INSERT INTO `place` VALUES (62, 'ville', 'Noyon', NULL);
INSERT INTO `place` VALUES (63, 'région', 'Vermandois', NULL);
INSERT INTO `place` VALUES (64, 'ville', 'Arras', NULL);
INSERT INTO `place` VALUES (65, 'ville', 'Courtrai', NULL);
INSERT INTO `place` VALUES (66, 'région', 'Flandre', NULL);
INSERT INTO `place` VALUES (67, 'ville', 'Paris', NULL);
INSERT INTO `place` VALUES (68, 'ville', 'Bordeaux', NULL);
INSERT INTO `place` VALUES (69, 'ville', 'Strasbourg', NULL);
INSERT INTO `place` VALUES (70, 'ville', 'Plaisance', NULL);
INSERT INTO `place` VALUES (71, 'ville', 'Lorsch', NULL);
INSERT INTO `place` VALUES (72, 'abbaye', 'Saint-Vaast', NULL);
INSERT INTO `place` VALUES (73, 'ville', 'Ratisbonne', NULL);
INSERT INTO `place` VALUES (74, 'ville', 'Salzbourg', NULL);
INSERT INTO `place` VALUES (75, 'région', 'Bavière', NULL);
INSERT INTO `place` VALUES (76, 'ville', 'Poitiers', NULL);
INSERT INTO `place` VALUES (77, 'ville', 'Saintes', NULL);
INSERT INTO `place` VALUES (78, 'ville', 'Bénévent', NULL);
INSERT INTO `place` VALUES (79, 'ville', 'Vérone', NULL);
INSERT INTO `place` VALUES (80, 'ville', 'Fano', NULL);
INSERT INTO `place` VALUES (81, 'ville', 'Flavigny', NULL);
INSERT INTO `place` VALUES (82, 'région', 'Septimanie', NULL);
INSERT INTO `place` VALUES (83, 'région', 'Lahngau', NULL);
INSERT INTO `place` VALUES (84, 'duché', 'Engersgau', NULL);
INSERT INTO `place` VALUES (85, 'ville', 'Florence', NULL);
INSERT INTO `place` VALUES (86, 'ville', 'Sienne', NULL);
INSERT INTO `place` VALUES (87, 'ville', 'Orléans', NULL);
INSERT INTO `place` VALUES (88, 'ville', 'Saint-Benoît-sur-Loire', NULL);
INSERT INTO `place` VALUES (89, 'région', 'Provence', NULL);
COMMIT;

-- ----------------------------
-- Table structure for place_over_time
-- ----------------------------
DROP TABLE IF EXISTS `place_over_time`;
CREATE TABLE `place_over_time` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `place` int(11) NOT NULL,
  `geo` geometry DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `date_start_accuracy` varchar(10) DEFAULT NULL,
  `date_end_accuracy` varchar(10) DEFAULT NULL,
  `note` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `placeOverTime_id_UNIQUE` (`id`),
  KEY `fk_place_placeOverTime_place_id_idx` (`place`),
  CONSTRAINT `fk_place_placeOverTime_place_id` FOREIGN KEY (`place`) REFERENCES `place` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of place_over_time
-- ----------------------------
BEGIN;
INSERT INTO `place_over_time` VALUES (1, 1, ST_GeomFromText('POLYGON((48.5636 -2.86353, 47.6836 -2.95142, 47.2081 -2.38013, 46.6981 -2.02857, 46.1529 -1.677, 45.6943 -1.41333, 44.7659 -1.10571, 43.9173 -1.2815, 43.2168 -1.1936, 42.9279 -0.49048, 42.6377 1.00366, 42.346 1.70679, 42.2485 2.84936, 42.573 3.24487, 43.1528 3.64038, 43.3128 4.56323, 43.0886 5.44214, 43.0565 6.71655, 43.7271 7.59546, 43.949 8.6062, 43.854 9.79272, 43.2809 10.408, 42.7023 10.9353, 41.9224 11.7263, 41.43 12.4294, 41.0334 13.3083, 41.7259 14.3191, 42.2485 14.8904, 44.1385 12.9128, 45.1391 12.3416, 45.1701 12.9128, 44.9839 13.572, 44.7035 14.363, 45.1391 14.8025, 46.031 14.5388, 47.1483 13.3523, 47.8608 13.7478, 48.7667 12.825, 49.4571 11.0232, 50.0251 11.5945, 51.0307 12.1218, 51.8796 11.6384, 52.9781 11.6824, 53.8166 11.3748, 54.2553 10.8474, 54.4346 9.48511, 53.6606 6.49683, 53.163 4.65112, 49.5997 -1.85278, 48.5636 -2.86353))'), '0800-12-25', '0924-04-07', 'exactement', 'exactement', NULL);
INSERT INTO `place_over_time` VALUES (2, 2, ST_GeomFromText('POLYGON((46.9989 -1.82985, 46.6531 -1.96169, 46.1835 -1.25856, 45.8631 -0.972918, 45.5409 -0.928973, 45.0773 -1.1487, 44.249 -1.28054, 43.4568 -1.19265, 43.0728 0.521222, 42.9121 1.20237, 43.201 1.99339, 43.6161 2.85032, 43.9176 3.46556, 44.0282 3.79515, 44.8285 3.37767, 45.8937 2.49876, 46.7887 1.99339, 47.5059 1.79564, 46.9989 -1.82985))'), '0781-01-01', '0877-01-01', 'circa', 'circa', NULL);
INSERT INTO `place_over_time` VALUES (5, 4, ST_GeomFromText('POLYGON((45.085 -0.57837, 44.8128 0.256591, 44.4375 0.608153, 44.0124 0.750976, 43.608 0.805907, 43.1048 0.805907, 42.8073 0.70703, 42.876 -0.0878906, 42.9843 -0.984864, 43.313 -1.58911, 44.1387 -1.40234, 45.5408 -1.23755, 45.4445 -0.831056, 45.085 -0.57837))'), '0877-01-01', '1058-01-01', 'circa', 'circa', NULL);
INSERT INTO `place_over_time` VALUES (6, 5, ST_GeomFromText('POLYGON((43.8304 7.70532, 44.9607 7.04614, 45.8248 7.48559, 46.0997 9.19946, 46.7359 11.1331, 46.6455 12.803, 46.1606 13.6379, 45.7635 13.9016, 44.6802 12.4514, 43.8937 12.9348, 43.4806 13.6379, 42.484 14.5168, 41.7342 15.1321, 41.1081 14.385, 41.4054 12.2756, 43.1128 10.4299, 44.2332 9.37524, 43.8304 7.70532))'), '0774-01-01', '0855-01-01', 'circa', 'circa', NULL);
INSERT INTO `place_over_time` VALUES (7, 5, ST_GeomFromText('POLYGON((43.8304 7.70532, 44.9607 7.04614, 45.8248 7.48559, 46.0997 9.19946, 46.7359 11.1331, 46.6455 12.803, 46.1606 13.6379, 45.7635 13.9016, 44.6802 12.4514, 43.8937 12.9348, 43.4806 13.6379, 42.484 14.5168, 41.7342 15.1321, 41.1081 14.385, 41.4054 12.2756, 43.1128 10.4299, 44.2332 9.37524, 43.8304 7.70532))'), '0855-01-01', '0962-01-01', 'circa', 'circa', NULL);
INSERT INTO `place_over_time` VALUES (8, 8, ST_GeomFromText('POLYGON((48.2501 -2.53394, 47.126 -2.53394, 46.4036 -1.65503, 45.2399 -1.39136, 43.8621 -1.21558, 43.6716 0.278563, 43.225 2.12427, 43.608 3.44263, 43.7986 5.02466, 44.4297 6.87036, 45.61 7.57349, 46.0997 9.3313, 46.766 11.0012, 47.7798 10.2981, 48.6581 9.06763, 49.9192 7.74927, 50.8162 6.95825, 51.6417 5.90356, 51.6417 3.7063, 50.2013 -0.292726, 49.6923 -1.47925, 48.2501 -2.53394))'), '0481-01-01', '0800-12-25', 'circa', 'exactement', NULL);
INSERT INTO `place_over_time` VALUES (9, 9, ST_GeomFromText('POLYGON((49.997 1.35618, 49.9511 1.96592, 49.9193 2.57567, 49.8485 3.28978, 49.6782 4.22361, 49.5572 4.84984, 49.4537 4.93223, 49.4073 5.01463, 49.1636 5.16844, 48.9693 5.22337, 48.7452 5.28929, 48.6001 5.27281, 48.4837 5.28929, 48.3671 5.30027, 48.3233 5.58592, 48.4254 5.93748, 48.7017 6.33299, 48.8176 6.90428, 48.9476 7.56346, 49.1061 8.0908, 49.5643 8.06883, 49.9758 8.31053, 50.4819 8.68406, 50.844 8.02488, 51.162 7.12401, 51.3682 5.95945, 51.7915 5.58592, 51.7643 4.50926, 51.7643 3.916, 51.2859 3.05906, 50.941 2.09227, 50.9618 1.85057, 50.8162 1.65281, 49.997 1.35618))'), '0511-01-01', NULL, 'circa', NULL, NULL);
INSERT INTO `place_over_time` VALUES (10, 10, ST_GeomFromText('POLYGON((49.5848 -1.83268, 48.8239 -1.52506, 48.2712 -1.43717, 47.6828 -1.8107, 47.2371 -2.09635, 47.1625 -1.15152, 47.4456 0.166837, 47.4753 0.891934, 47.7124 2.01254, 47.86 2.86947, 47.8895 3.28695, 48.0366 4.03402, 48.1833 4.6932, 48.4172 5.15463, 48.8673 5.14364, 49.5135 4.73715, 49.7767 3.42978, 49.9396 1.16659, 49.7625 0.328885, 49.3277 -0.15726, 49.3742 -0.972995, 49.6915 -1.34928, 49.7306 -1.88761, 49.5848 -1.83268))'), '0511-01-01', NULL, 'circa', NULL, NULL);
INSERT INTO `place_over_time` VALUES (11, 11, ST_GeomFromText('POLYGON((47.594 1.97958, 46.8478 2.22128, 45.8774 2.74862, 45.1383 3.36386, 43.9798 4.02304, 43.5355 4.46249, 43.3759 5.91269, 43.0557 6.57187, 43.7263 7.58261, 44.515 7.09921, 45.5091 7.27499, 46.1825 6.74765, 46.8478 6.65976, 47.3564 6.65976, 48.2419 5.18759, 47.8895 3.8912, 47.7198 2.94638, 47.594 1.97958))'), '0534-01-01', '0843-01-01', 'circa', 'circa', NULL);
INSERT INTO `place_over_time` VALUES (12, 12, ST_GeomFromText('POLYGON((49.5264 -1.61954, 48.7501 -1.39981, 47.9911 -1.70743, 47.2208 -2.19083, 46.2267 -1.35586, 45.3997 -1.09219, 44.748 -1.18008, 44.152 -1.13614, 43.4861 -1.18008, 43.2305 0.00644049, 43.0059 1.54453, 43.0059 2.99472, 43.4542 4.00546, 43.4861 4.84042, 44.3408 5.23593, 46.9215 4.26914, 48.1086 3.78574, 49.1254 3.82968, 50.0935 3.39023, 51.1805 2.775, 49.5264 -1.61954))'), '0843-01-01', NULL, 'circa', NULL, NULL);
INSERT INTO `place_over_time` VALUES (13, 13, ST_GeomFromText('POLYGON((54.3432 9.05917, 53.4368 7.60898, 53.4499 6.26865, 52.8304 5.71933, 51.263 6.07089, 50.0653 7.08164, 48.576 7.82871, 47.6962 8.4, 46.9215 8.88339, 46.5903 10.5094, 46.8013 12.2672, 46.1658 13.3658, 46.9515 14.4205, 47.6962 15.7828, 48.7791 15.3434, 49.5264 14.393, 49.9806 12.4759, 51.7009 10.4874, 53.3319 10.6082, 54.3432 9.05917))'), '0843-01-01', '0962-01-01', 'circa', NULL, NULL);
INSERT INTO `place_over_time` VALUES (14, 14, ST_GeomFromText('POLYGON((52.9762 4.75253, 51.7009 4.00546, 51.2493 3.08261, 50.9526 3.10459, 50.6262 3.43417, 50.2624 3.54404, 49.7256 3.69785, 49.1685 4.07138, 48.6486 4.07138, 47.8881 4.11533, 47.2953 4.26914, 46.7119 4.53143, 46.0754 4.77313, 45.7237 5.21258, 45.8004 5.98162, 46.0297 7.19012, 45.9686 8.02508, 45.9839 8.90399, 46.3339 9.76092, 46.561 9.73895, 46.7571 8.89712, 47.1919 8.49475, 48.1682 7.82183, 49.8967 6.87152, 50.5608 6.56115, 51.1744 6.07501, 52.4043 5.58612, 52.9762 4.75253))'), '0855-01-01', '0953-01-01', 'circa', 'après', 'fin - séparation en deux duchés');
INSERT INTO `place_over_time` VALUES (15, 15, ST_GeomFromText('POLYGON((47.0322 4.27845, 46.9835 4.32789, 46.9461 4.3993, 47.0435 4.44874, 47.1519 4.36634, 47.137 4.2455, 47.0809 4.15211, 47.0322 4.27845))'), '0853-01-01', NULL, 'circa', NULL, NULL);
INSERT INTO `place_over_time` VALUES (16, 16, ST_GeomFromText('POLYGON((47.3648 4.85769, 47.0887 4.34134, 46.9427 4.22598, 46.6757 4.6105, 46.434 4.65994, 46.252 4.80826, 46.3051 5.017, 46.6154 5.26419, 47.0176 5.27517, 47.3462 5.31912, 47.3648 4.85769))'), '0853-01-01', NULL, 'circa', NULL, 'Autun, Mâcon, Dijon, Chälon et Chattuarii');
INSERT INTO `place_over_time` VALUES (17, 21, ST_GeomFromText('POLYGON((47.7438 5.47993, 47.5643 5.32062, 47.4233 5.19428, 47.3471 5.15034, 47.3005 5.3838, 47.3377 5.65571, 47.4809 5.91114, 47.6051 6.02375, 47.7235 6.07868, 47.7789 5.826, 47.7438 5.47993))'), '0853-01-01', NULL, 'circa', NULL, NULL);
INSERT INTO `place_over_time` VALUES (18, 25, ST_GeomFromText('POLYGON((46.8823 4.35536, 46.8259 4.3993, 46.8034 4.57509, 46.9048 4.55861, 46.9723 4.49818, 46.8823 4.35536))'), '0853-01-01', NULL, 'circa', NULL, NULL);
INSERT INTO `place_over_time` VALUES (19, 26, ST_GeomFromText('POLYGON((46.9686 4.58058, 46.8597 4.65748, 46.8071 4.76735, 46.8635 4.89369, 47.0285 4.81678, 46.9686 4.58058))'), '0853-01-01', NULL, 'circa', NULL, NULL);
INSERT INTO `place_over_time` VALUES (20, 32, ST_GeomFromText('POLYGON((49.6389 8.3004, 49.6042 8.29903, 49.5632 8.32237, 49.5677 8.38005, 49.5793 8.41301, 49.606 8.38966, 49.6238 8.35533, 49.6389 8.3004))'), '0835-01-01', NULL, 'circa', NULL, 'comprising the surroundings of the city of Worms and further territories on the left bank of the Upper Rhine river');
INSERT INTO `place_over_time` VALUES (21, 35, ST_GeomFromText('POLYGON((42.5453 8.7082, 42.4035 8.64228, 42.2613 8.60932, 41.8698 8.64228, 41.5746 8.88398, 41.3606 9.08173, 41.6239 9.41132, 42.1148 9.54316, 42.5372 9.56513, 42.8118 9.45527, 42.9406 9.45527, 42.5453 8.7082))'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (22, 36, ST_GeomFromText('POLYGON((43.3789 13.696, 43.255 13.2291, 42.8698 12.5919, 42.5266 12.5314, 42.1042 12.8445, 41.8387 13.1522, 41.8673 13.4543, 41.9614 14.075, 42.1571 14.7287, 42.3898 14.3524, 42.6621 14.0311, 43.3789 13.696))'), '0570-01-01', '1228-01-01', 'circa', 'circa', NULL);
INSERT INTO `place_over_time` VALUES (23, 17, ST_GeomFromText('POINT(13.5178 76.4539)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (24, 6, ST_GeomFromText('POINT(50.5558 9.68084)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (25, 7, ST_GeomFromText('POINT(41.9028 12.4964)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (26, 18, ST_GeomFromText('POINT(46.3069 4.82873)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (27, 19, ST_GeomFromText('POINT(47.322 5.04148)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (28, 20, ST_GeomFromText('POINT(46.7808 4.85395)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (29, 22, ST_GeomFromText('POINT(47.8567 3.97353)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (30, 23, ST_GeomFromText('POINT(47.026 4.84)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (31, 24, ST_GeomFromText('POINT(47.6433 4.68362)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (32, 27, ST_GeomFromText('POINT(48.5421 2.6554)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (33, 28, ST_GeomFromText('POINT(43.1843 3.00308)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (34, 29, ST_GeomFromText('POINT(49.1193 6.17572)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (35, 30, ST_GeomFromText('POINT(50.2082 6.4197)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (36, 34, ST_GeomFromText('POINT(43.8376 10.4951)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (37, 37, ST_GeomFromText('POINT(49.4955 6.5835)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (38, 38, ST_GeomFromText('POINT(45.1847 9.15821)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (39, 39, ST_GeomFromText('POINT(45.4642 9.18998)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (40, 40, ST_GeomFromText('POINT(45.9916 13.4416)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (41, 41, ST_GeomFromText('POINT(47.6482 8.87339)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (42, 42, ST_GeomFromText('POINT(47.6169 7.67093)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (43, 44, ST_GeomFromText('POINT(50.6378 2.25698)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (44, 45, ST_GeomFromText('POINT(44.4184 12.2035)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (45, 47, ST_GeomFromText('POINT(44.8015 10.3279)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (46, 48, ST_GeomFromText('POINT(45.0714 11.1339)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (47, 49, ST_GeomFromText('POINT(45.0698 11.7902)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (48, 50, ST_GeomFromText('POINT(45.0703 7.68686)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (49, 51, ST_GeomFromText('POINT(45.1332 10.0227)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (50, 52, ST_GeomFromText('POINT(45.5416 10.2118)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (51, 53, ST_GeomFromText('POINT(49.9077 2.51195)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (52, 54, ST_GeomFromText('POINT(50.6326 5.57967)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (53, 55, ST_GeomFromText('POINT(49.6341 8.35072)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (54, 56, ST_GeomFromText('POINT(49.8941 2.29575)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (55, 57, ST_GeomFromText('POINT(43.9303 10.9079)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (56, 58, ST_GeomFromText('POINT(44.6789 11.0412)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (57, 59, ST_GeomFromText('POINT(42.7917 13.0947)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (58, 60, ST_GeomFromText('POINT(48.2973 4.0744)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (59, 62, ST_GeomFromText('POINT(49.5802 3.00072)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (60, 64, ST_GeomFromText('POINT(50.291 2.77753)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (61, 65, ST_GeomFromText('POINT(50.8195 3.25773)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (62, 67, ST_GeomFromText('POINT(48.8566 2.35222)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (63, 68, ST_GeomFromText('POINT(44.8378 -0.57918)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (64, 69, ST_GeomFromText('POINT(48.5734 7.75211)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (65, 70, ST_GeomFromText('POINT(45.0526 9.69298)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (66, 71, ST_GeomFromText('POINT(49.6539 8.56751)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (67, 73, ST_GeomFromText('POINT(49.0134 12.1016)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (68, 74, ST_GeomFromText('POINT(47.8095 13.055)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (69, 76, ST_GeomFromText('POINT(46.5802 0.340375)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (70, 77, ST_GeomFromText('POINT(45.7442 -0.633389)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (71, 78, ST_GeomFromText('POINT(41.1298 14.7826)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (72, 79, ST_GeomFromText('POINT(45.4384 10.9916)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (73, 80, ST_GeomFromText('POINT(43.8398 13.0194)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (74, 81, ST_GeomFromText('POINT(47.5109 4.52894)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (75, 85, ST_GeomFromText('POINT(43.7696 11.2558)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (76, 86, ST_GeomFromText('POINT(43.3188 11.3308)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (77, 87, ST_GeomFromText('POINT(47.903 1.90925)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (78, 88, ST_GeomFromText('POINT(47.8103 2.31923)'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (79, 82, ST_GeomFromText('POLYGON((42.5625 1.98947, 42.4248 2.36301, 42.441 2.85739, 42.6434 3.03317, 42.9336 3.04416, 43.1344 3.15402, 43.2865 3.3298, 43.3664 3.4946, 43.4542 3.7363, 43.5339 3.96701, 43.5896 4.12082, 43.8675 4.0549, 43.9427 3.70334, 43.7168 3.15402, 43.5419 2.7695, 43.3265 2.3685, 43.1344 1.90158, 42.9082 1.32935, 42.5625 1.98947))'), NULL, NULL, NULL, NULL, NULL);
INSERT INTO `place_over_time` VALUES (80, 89, ST_GeomFromText('POLYGON((43.4502 4.38999, 43.3425 5.06015, 43.2825 5.38425, 43.2212 5.42725, 43.1464 5.7468, 43.1384 5.91709, 43.1604 6.49661, 43.4183 6.72458, 43.5155 6.93263, 43.7714 6.72321, 43.9012 5.87589, 44.0899 4.8363, 43.8462 4.48131, 43.4502 4.38999))'), NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for place_over_time_has_reference
-- ----------------------------
DROP TABLE IF EXISTS `place_over_time_has_reference`;
CREATE TABLE `place_over_time_has_reference` (
  `place_over_time` int(11) NOT NULL,
  `reference` int(11) NOT NULL,
  `reference_page` varchar(45) DEFAULT NULL,
  KEY `fk_placeOverTime_has_reference_reference1_idx` (`reference`),
  KEY `fk_placeOverTime_has_reference_placeOverTime1_idx` (`place_over_time`),
  CONSTRAINT `fk_placeOverTime_has_reference_placeOverTime1` FOREIGN KEY (`place_over_time`) REFERENCES `place_over_time` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_placeOverTime_has_reference_reference1` FOREIGN KEY (`reference`) REFERENCES `reference` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of place_over_time_has_reference
-- ----------------------------
BEGIN;
INSERT INTO `place_over_time_has_reference` VALUES (16, 1, '254');
COMMIT;

-- ----------------------------
-- Table structure for reference
-- ----------------------------
DROP TABLE IF EXISTS `reference`;
CREATE TABLE `reference` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(45) NOT NULL,
  `name` text NOT NULL,
  `note` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reference_id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reference
-- ----------------------------
BEGIN;
INSERT INTO `reference` VALUES (1, 'bibliographie', 'Kikuchi, S., Untersuchungen zu den Missi dominici. Herrschaft, Delegation und Kommunikation in der Karolingerzeit, Thèse de Doktorgrades der Philosophie soutenue à Ludwig-Maximilians-Universität München, 2013.', NULL);
INSERT INTO `reference` VALUES (2, 'bibliographie', 'Krause, V., \"Geschichte des Institutes der missi dominici\", Mitteilungen des Instituts für Österreichische Geschichtsforschung, 11, 1890, pp.193-300', NULL);
INSERT INTO `reference` VALUES (3, 'bibliographie', 'Depreux, P., Prosopographie de l\'entourage de Louis le Pieux (781-840), (Instrumenta - 1), Thorbecke, Sigmaringen, 1997.', NULL);
INSERT INTO `reference` VALUES (4, 'bibliographie', 'Le Jan, R., Famille et pouvoir dans le monde franc (VIIe-Xe siècle), Paris, 1995.', NULL);
INSERT INTO `reference` VALUES (5, 'bibliographie', 'Kölzer, T., \"Adalbert I., Markgraf von Tuszien\". In: Lexikon des Mittelalters (LexMA). Band 1, München, 1980, p. 96', NULL);
INSERT INTO `reference` VALUES (6, 'bibliographie', 'Nelson, J.L., Charles the Bald, (The Medieval world), London ; New York, Longman, 1992.', NULL);
COMMIT;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `category` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `role_id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
BEGIN;
INSERT INTO `role` VALUES (1, 'prêtre', 'ecclésiastique');
INSERT INTO `role` VALUES (2, 'moine', 'ecclésiastique');
INSERT INTO `role` VALUES (3, 'roi', 'laïc');
INSERT INTO `role` VALUES (4, 'empereur', 'laïc');
INSERT INTO `role` VALUES (5, 'maire de palais', 'laïc');
INSERT INTO `role` VALUES (6, 'abbé', 'ecclésiastique');
INSERT INTO `role` VALUES (7, 'comte', 'laïc');
INSERT INTO `role` VALUES (8, 'sénéchal', 'laïc');
INSERT INTO `role` VALUES (9, 'comte de la marche', 'laïc');
INSERT INTO `role` VALUES (10, 'duc', 'laïc');
INSERT INTO `role` VALUES (11, 'évêque', 'ecclésiastique');
INSERT INTO `role` VALUES (12, 'trésorier', 'laïc');
INSERT INTO `role` VALUES (13, 'connétable', 'laïc');
INSERT INTO `role` VALUES (14, 'comte palatin', 'laïc');
INSERT INTO `role` VALUES (15, 'archevêque', 'ecclésiastique');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
