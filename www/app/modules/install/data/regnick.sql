DROP TABLE IF EXISTS `{PREFIX}groups`;
:: split ::

CREATE TABLE `{PREFIX}groups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `access` varchar(50) NOT NULL,
  `public` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
:: split ::

INSERT INTO `{PREFIX}groups` VALUES ('1', 'Default', 'z', '0');
:: split ::

UPDATE `{PREFIX}groups` SET `ID` = '0' WHERE (`ID`='1');
:: split ::

DROP TABLE IF EXISTS `{PREFIX}options`;
:: split ::

CREATE TABLE `{PREFIX}options` (
  `name` varchar(64) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
:: split ::

INSERT INTO `{PREFIX}options` VALUES ('app_version', '2.0.3-alpha');
:: split ::
INSERT INTO `{PREFIX}options` VALUES ('db_version', '21062012');
:: split ::

DROP TABLE IF EXISTS `{PREFIX}servers`;
:: split ::
CREATE TABLE `{PREFIX}servers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
:: split ::

INSERT INTO `{PREFIX}servers` VALUES ('1', 'All servers', 'All servers');
:: split ::
UPDATE `{PREFIX}servers` SET `ID` = '0' WHERE (`ID`='1');
:: split ::
ALTER TABLE {PREFIX}servers AUTO_INCREMENT = 1;
:: split ::

DROP TABLE IF EXISTS `{PREFIX}users`;
:: split ::
CREATE TABLE `{PREFIX}users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) NOT NULL,
  `password` varchar(64) NOT NULL,
  `email` varchar(100) NOT NULL,
  `register_date` int(10) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '0',
  `activation_key` varchar(60) NOT NULL,
  `account_flags` varchar(12) NOT NULL DEFAULT 'ab',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
:: split ::

INSERT INTO `{PREFIX}users` VALUES ('1', 'administrator', 'admin', 'admin@example.com', '1331499421', '1', 'FROM_INSTALL', 'abf');
:: split ::

DROP TABLE IF EXISTS `{PREFIX}users_access`;
:: split ::

CREATE TABLE `{PREFIX}users_access` (
  `access_ID` int(11) NOT NULL AUTO_INCREMENT,
  `user_ID` int(11) NOT NULL,
  `server_ID` int(11) NOT NULL,
  `group_ID` int(11) NOT NULL,
  PRIMARY KEY (`access_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
:: split ::