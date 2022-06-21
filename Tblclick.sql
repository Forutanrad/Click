-- ----------------------------
DROP TABLE IF EXISTS `click`;
CREATE TABLE `click` (
  `X` int(11) DEFAULT NULL,
  `Y` int(11) DEFAULT NULL,
  `Type` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
SET FOREIGN_KEY_CHECKS=1;
