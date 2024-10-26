CREATE DATABASE pet_database;

CREATE TABLE `pet_database`.`petpet` (
  `petname` VARCHAR(20) NOT NULL,
  `owner` VARCHAR(45) NULL,
  `species` VARCHAR(45) NULL,
  `gender` ENUM('M','F') NULL,
  `birth` DATE NULL,
  `death` DATE NULL,
  PRIMARY KEY (`petname`));
  

CREATE TABLE `pet_database`.`petevent` (
  `petname` VARCHAR(20) NOT NULL,
  `eventdate` DATE NULL,
  `eventtype` VARCHAR(15) NULL,
  `remark` VARCHAR(255) NULL,
  PRIMARY KEY (`petname`),
  CONSTRAINT `petname`
    FOREIGN KEY (`petname`)
    REFERENCES `pet_database`.`petpet` (`petname`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);