-- TrinityCore\sql\updates\characters\2013_03_04_00_characters_character_queststatus_rewarded.sql 
ALTER TABLE `character_queststatus_rewarded` ADD `active` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1' AFTER `quest`;
 
-- TrinityCore\sql\updates\characters\2013_04_05_00_characters_banned_addons.sql 
DROP TABLE IF EXISTS `banned_addons`;
CREATE TABLE `banned_addons` (
  `Id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(255) NOT NULL,
  `Version` VARCHAR(255) NOT NULL DEFAULT '',
  `Timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `idx_name_ver` (`Name`, `Version`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;
 
-- TrinityCore\sql\updates\characters\2013_06_23_00_characters_game_event.sql 
-- Delete no longer used data from Characters Database
DELETE FROM `game_event_save` WHERE `eventEntry` BETWEEN 33 AND 47;
DELETE FROM `game_event_condition_save` WHERE `eventEntry` BETWEEN 33 AND 47;
 
