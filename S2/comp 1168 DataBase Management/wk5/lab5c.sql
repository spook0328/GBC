-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema lab5c
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema lab5c
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lab5c` DEFAULT CHARACTER SET utf8 ;
USE `lab5c` ;

-- -----------------------------------------------------
-- Table `lab5c`.`Client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab5c`.`Client` (
  `idClient` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idClient`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab5c`.`Court`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab5c`.`Court` (
  `idCourt` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idCourt`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab5c`.`Case`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab5c`.`Case` (
  `idCase` INT NOT NULL AUTO_INCREMENT,
  `Court_idCourt` INT NOT NULL,
  PRIMARY KEY (`idCase`),
  INDEX `fk_Case_Court1_idx` (`Court_idCourt` ASC) VISIBLE,
  CONSTRAINT `fk_Case_Court1`
    FOREIGN KEY (`Court_idCourt`)
    REFERENCES `lab5c`.`Court` (`idCourt`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab5c`.`Judge`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab5c`.`Judge` (
  `idJudge` INT NOT NULL AUTO_INCREMENT,
  `Court_idCourt` INT NOT NULL,
  PRIMARY KEY (`idJudge`),
  INDEX `fk_Judge_Court1_idx` (`Court_idCourt` ASC) VISIBLE,
  CONSTRAINT `fk_Judge_Court1`
    FOREIGN KEY (`Court_idCourt`)
    REFERENCES `lab5c`.`Court` (`idCourt`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab5c`.`Attorney`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab5c`.`Attorney` (
  `idAttorney` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idAttorney`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab5c`.`files`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab5c`.`files` (
  `Case_idCase` INT NOT NULL,
  `Client_idClient` INT NOT NULL,
  `Client_Clientcol` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Case_idCase`, `Client_idClient`, `Client_Clientcol`),
  INDEX `fk_Case_has_Client_Client1_idx` (`Client_idClient` ASC, `Client_Clientcol` ASC) VISIBLE,
  INDEX `fk_Case_has_Client_Case_idx` (`Case_idCase` ASC) VISIBLE,
  CONSTRAINT `fk_Case_has_Client_Case`
    FOREIGN KEY (`Case_idCase`)
    REFERENCES `lab5c`.`Case` (`idCase`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Case_has_Client_Client1`
    FOREIGN KEY (`Client_idClient`)
    REFERENCES `lab5c`.`Client` (`idClient`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab5c`.`hears`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab5c`.`hears` (
  `Case_idCase` INT NOT NULL,
  `Judge_idJudge` INT NOT NULL,
  PRIMARY KEY (`Case_idCase`, `Judge_idJudge`),
  INDEX `fk_Case_has_Judge_Judge1_idx` (`Judge_idJudge` ASC) VISIBLE,
  INDEX `fk_Case_has_Judge_Case1_idx` (`Case_idCase` ASC) VISIBLE,
  CONSTRAINT `fk_Case_has_Judge_Case1`
    FOREIGN KEY (`Case_idCase`)
    REFERENCES `lab5c`.`Case` (`idCase`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Case_has_Judge_Judge1`
    FOREIGN KEY (`Judge_idJudge`)
    REFERENCES `lab5c`.`Judge` (`idJudge`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab5c`.`Case_has_Attorney`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab5c`.`Case_has_Attorney` (
  `Case_idCase` INT NOT NULL,
  `Attorney_idAttorney` INT NOT NULL,
  PRIMARY KEY (`Case_idCase`, `Attorney_idAttorney`),
  INDEX `fk_Case_has_Attorney_Attorney1_idx` (`Attorney_idAttorney` ASC) VISIBLE,
  INDEX `fk_Case_has_Attorney_Case1_idx` (`Case_idCase` ASC) VISIBLE,
  CONSTRAINT `fk_Case_has_Attorney_Case1`
    FOREIGN KEY (`Case_idCase`)
    REFERENCES `lab5c`.`Case` (`idCase`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Case_has_Attorney_Attorney1`
    FOREIGN KEY (`Attorney_idAttorney`)
    REFERENCES `lab5c`.`Attorney` (`idAttorney`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
