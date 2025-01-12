-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema AE9688_3
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema AE9688_3
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `AE9688_3` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
USE `AE9688_3` ;

-- -----------------------------------------------------
-- Table `AE9688_3`.`Asiakkaat`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AE9688_3`.`Asiakkaat` (
  `AsiakasID` INT(11) NOT NULL AUTO_INCREMENT,
  `Firstname` VARCHAR(45) NOT NULL,
  `Lastname` VARCHAR(45) NOT NULL,
  `Company` VARCHAR(64) NULL DEFAULT NULL,
  `Address` VARCHAR(64) NOT NULL,
  `Phonenumber` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`AsiakasID`))
ENGINE = InnoDB
AUTO_INCREMENT = 31
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `AE9688_3`.`Kuljettajat`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AE9688_3`.`Kuljettajat` (
  `KuljettajatID` INT(11) NOT NULL AUTO_INCREMENT,
  `Firstname` VARCHAR(45) NOT NULL,
  `Lastname` VARCHAR(45) NOT NULL,
  `Company` VARCHAR(64) NULL DEFAULT NULL,
  `Phonenumber` VARCHAR(45) NOT NULL,
  `Vehicle` VARCHAR(64) NULL DEFAULT NULL,
  PRIMARY KEY (`KuljettajatID`))
ENGINE = InnoDB
AUTO_INCREMENT = 25
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `AE9688_3`.`Tilaukset`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AE9688_3`.`Tilaukset` (
  `TilauksetID` INT(11) NOT NULL AUTO_INCREMENT,
  `AsiakasID` INT(11) NOT NULL,
  `Address` VARCHAR(45) NOT NULL,
  `Orderprice` DECIMAL(8,0) NOT NULL,
  `Orderdate` DATETIME NOT NULL,
  `Orderstate` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`TilauksetID`),
  INDEX `fk_Tilaukset_Asiakkaat1_idx` (`AsiakasID` ASC) VISIBLE,
  CONSTRAINT `fk_Tilaukset_Asiakkaat1`
    FOREIGN KEY (`AsiakasID`)
    REFERENCES `AE9688_3`.`Asiakkaat` (`AsiakasID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 61
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `AE9688_3`.`Toimitukset`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AE9688_3`.`Toimitukset` (
  `ToimituksetID` INT(11) NOT NULL AUTO_INCREMENT,
  `TransportState` VARCHAR(45) NOT NULL,
  `Transportdate` DATETIME NOT NULL,
  PRIMARY KEY (`ToimituksetID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `AE9688_3`.`Tilaukset_has_Toimitukset`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AE9688_3`.`Tilaukset_has_Toimitukset` (
  `TilauksetID` INT(11) NOT NULL,
  `ToimituksetID` INT(11) NOT NULL,
  PRIMARY KEY (`TilauksetID`, `ToimituksetID`),
  INDEX `fk_Tilaukset_has_Toimitukset_Toimitukset1_idx` (`ToimituksetID` ASC) VISIBLE,
  INDEX `fk_Tilaukset_has_Toimitukset_Tilaukset1_idx` (`TilauksetID` ASC) VISIBLE,
  CONSTRAINT `fk_Tilaukset_has_Toimitukset_Tilaukset1`
    FOREIGN KEY (`TilauksetID`)
    REFERENCES `AE9688_3`.`Tilaukset` (`TilauksetID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tilaukset_has_Toimitukset_Toimitukset1`
    FOREIGN KEY (`ToimituksetID`)
    REFERENCES `AE9688_3`.`Toimitukset` (`ToimituksetID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `AE9688_3`.`Tuotteet`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AE9688_3`.`Tuotteet` (
  `TuotteetID` INT(11) NOT NULL AUTO_INCREMENT,
  `Productname` VARCHAR(128) NOT NULL,
  `Description` TEXT NULL DEFAULT 'Ei kuvausta toistaiseksi',
  `Productdate` VARCHAR(45) NULL DEFAULT '2024',
  `Productprice` DECIMAL(8,2) NOT NULL,
  `Productcategory` VARCHAR(45) NOT NULL,
  `Productamount` DECIMAL(8,0) NOT NULL,
  PRIMARY KEY (`TuotteetID`))
ENGINE = InnoDB
AUTO_INCREMENT = 56
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `AE9688_3`.`Tilaukset_has_Tuotteet`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AE9688_3`.`Tilaukset_has_Tuotteet` (
  `TilauksetID` INT(11) NOT NULL,
  `TuotteetID` INT(11) NOT NULL,
  PRIMARY KEY (`TilauksetID`, `TuotteetID`),
  INDEX `fk_Tilaukset_has_Tuotteet_Tuotteet1_idx` (`TuotteetID` ASC) VISIBLE,
  INDEX `fk_Tilaukset_has_Tuotteet_Tilaukset_idx` (`TilauksetID` ASC) VISIBLE,
  CONSTRAINT `fk_Tilaukset_has_Tuotteet_Tilaukset`
    FOREIGN KEY (`TilauksetID`)
    REFERENCES `AE9688_3`.`Tilaukset` (`TilauksetID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tilaukset_has_Tuotteet_Tuotteet1`
    FOREIGN KEY (`TuotteetID`)
    REFERENCES `AE9688_3`.`Tuotteet` (`TuotteetID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `AE9688_3`.`Toimittajat`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AE9688_3`.`Toimittajat` (
  `ToimittajatID` INT(11) NOT NULL AUTO_INCREMENT,
  `Suppliername` VARCHAR(45) NOT NULL,
  `Supplierproducts` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ToimittajatID`))
ENGINE = InnoDB
AUTO_INCREMENT = 10
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `AE9688_3`.`Toimitukset_has_Kuljettajat`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AE9688_3`.`Toimitukset_has_Kuljettajat` (
  `ToimituksetID` INT(11) NOT NULL,
  `KuljettajatID` INT(11) NOT NULL,
  PRIMARY KEY (`ToimituksetID`, `KuljettajatID`),
  INDEX `fk_Toimitukset_has_Kuljettajat_Kuljettajat1_idx` (`KuljettajatID` ASC) VISIBLE,
  INDEX `fk_Toimitukset_has_Kuljettajat_Toimitukset1_idx` (`ToimituksetID` ASC) VISIBLE,
  CONSTRAINT `fk_Toimitukset_has_Kuljettajat_Kuljettajat1`
    FOREIGN KEY (`KuljettajatID`)
    REFERENCES `AE9688_3`.`Kuljettajat` (`KuljettajatID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Toimitukset_has_Kuljettajat_Toimitukset1`
    FOREIGN KEY (`ToimituksetID`)
    REFERENCES `AE9688_3`.`Toimitukset` (`ToimituksetID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `AE9688_3`.`Tuoteryhmat`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AE9688_3`.`Tuoteryhmat` (
  `TuoteryhmatID` INT(11) NOT NULL AUTO_INCREMENT,
  `Categoryname` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`TuoteryhmatID`))
ENGINE = InnoDB
AUTO_INCREMENT = 10
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `AE9688_3`.`Tuoteryhmat_has_Tuotteet`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AE9688_3`.`Tuoteryhmat_has_Tuotteet` (
  `TuoteryhmatID` INT(11) NOT NULL,
  `TuotteetID` INT(11) NOT NULL,
  PRIMARY KEY (`TuoteryhmatID`, `TuotteetID`),
  INDEX `fk_Tuoteryhmat_has_Tuotteet_Tuotteet1_idx` (`TuotteetID` ASC) VISIBLE,
  INDEX `fk_Tuoteryhmat_has_Tuotteet_Tuoteryhmat1_idx` (`TuoteryhmatID` ASC) VISIBLE,
  CONSTRAINT `fk_Tuoteryhmat_has_Tuotteet_Tuoteryhmat1`
    FOREIGN KEY (`TuoteryhmatID`)
    REFERENCES `AE9688_3`.`Tuoteryhmat` (`TuoteryhmatID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tuoteryhmat_has_Tuotteet_Tuotteet1`
    FOREIGN KEY (`TuotteetID`)
    REFERENCES `AE9688_3`.`Tuotteet` (`TuotteetID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `AE9688_3`.`Tuotteet_has_Toimittajat`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AE9688_3`.`Tuotteet_has_Toimittajat` (
  `TuotteetID` INT(11) NOT NULL,
  `ToimittajatID` INT(11) NOT NULL,
  PRIMARY KEY (`TuotteetID`, `ToimittajatID`),
  INDEX `fk_Tuotteet_has_Toimittajat_Toimittajat1_idx` (`ToimittajatID` ASC) VISIBLE,
  INDEX `fk_Tuotteet_has_Toimittajat_Tuotteet1_idx` (`TuotteetID` ASC) VISIBLE,
  CONSTRAINT `fk_Tuotteet_has_Toimittajat_Toimittajat1`
    FOREIGN KEY (`ToimittajatID`)
    REFERENCES `AE9688_3`.`Toimittajat` (`ToimittajatID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tuotteet_has_Toimittajat_Tuotteet1`
    FOREIGN KEY (`TuotteetID`)
    REFERENCES `AE9688_3`.`Tuotteet` (`TuotteetID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `AE9688_3`.`Varastot`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AE9688_3`.`Varastot` (
  `VarastotID` INT(11) NOT NULL AUTO_INCREMENT,
  `Warehouseaddress` VARCHAR(64) NOT NULL,
  `Productavailabilty` VARCHAR(45) NOT NULL,
  `Category` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`VarastotID`))
ENGINE = InnoDB
AUTO_INCREMENT = 19
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `AE9688_3`.`Tuotteet_has_Varastot`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AE9688_3`.`Tuotteet_has_Varastot` (
  `TuotteetID` INT(11) NOT NULL,
  `VarastotID` INT(11) NOT NULL,
  `Saldo` VARCHAR(45) NULL DEFAULT 'Tuotetta ei varastossa',
  PRIMARY KEY (`TuotteetID`, `VarastotID`),
  INDEX `fk_Tuotteet_has_Varastot_Varastot1_idx` (`VarastotID` ASC) VISIBLE,
  INDEX `fk_Tuotteet_has_Varastot_Tuotteet1_idx` (`TuotteetID` ASC) VISIBLE,
  CONSTRAINT `fk_Tuotteet_has_Varastot_Tuotteet1`
    FOREIGN KEY (`TuotteetID`)
    REFERENCES `AE9688_3`.`Tuotteet` (`TuotteetID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tuotteet_has_Varastot_Varastot1`
    FOREIGN KEY (`VarastotID`)
    REFERENCES `AE9688_3`.`Varastot` (`VarastotID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

USE `AE9688_3` ;

-- -----------------------------------------------------
-- Placeholder table for view `AE9688_3`.`Asiakas_toimitukset`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AE9688_3`.`Asiakas_toimitukset` (`Firstname` INT, `Lastname` INT, `Toimitusosoite` INT, `Orderstate` INT);

-- -----------------------------------------------------
-- View `AE9688_3`.`Asiakas_toimitukset`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AE9688_3`.`Asiakas_toimitukset`;
USE `AE9688_3`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`AE9688`@`%` SQL SECURITY DEFINER VIEW `AE9688_3`.`Asiakas_toimitukset` AS select `A`.`Firstname` AS `Firstname`,`A`.`Lastname` AS `Lastname`,`T`.`Address` AS `Toimitusosoite`,`T`.`Orderstate` AS `Orderstate` from (`AE9688_3`.`Tilaukset` `T` join `AE9688_3`.`Asiakkaat` `A`) where `A`.`AsiakasID` = `T`.`AsiakasID`;
USE `AE9688_3`;

DELIMITER $$
USE `AE9688_3`$$
CREATE
DEFINER=`AE9688`@`%`
TRIGGER `AE9688_3`.`Ilmaistuote`
BEFORE INSERT ON `AE9688_3`.`Tuotteet`
FOR EACH ROW
begin
if(new.Productprice <=0) then
call `Ei ilmaisjakelua`;
end if;
end$$


DELIMITER ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
