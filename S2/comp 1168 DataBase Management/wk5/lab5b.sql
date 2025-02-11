-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema lab5b
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema lab5b
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lab5b` DEFAULT CHARACTER SET utf8 ;
USE `lab5b` ;

-- -----------------------------------------------------
-- Table `lab5b`.`Department`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab5b`.`Department` (
  `idDepartment` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idDepartment`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab5b`.`Faculty`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab5b`.`Faculty` (
  `idFaculty` INT NOT NULL AUTO_INCREMENT,
  `Department_idDepartment` INT NULL,
  PRIMARY KEY (`idFaculty`, `Department_idDepartment`),
  INDEX `fk_Faculty_Department_idx` (`Department_idDepartment` ASC) VISIBLE,
  CONSTRAINT `fk_Faculty_Department`
    FOREIGN KEY (`Department_idDepartment`)
    REFERENCES `lab5b`.`Department` (`idDepartment`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab5b`.`Course`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab5b`.`Course` (
  `idCourse` INT NOT NULL AUTO_INCREMENT,
  `Department_idDepartment` INT NOT NULL,
  `Faculty_idFaculty` INT NOT NULL,
  PRIMARY KEY (`idCourse`),
  INDEX `fk_Course_Department1_idx` (`Department_idDepartment` ASC) VISIBLE,
  INDEX `fk_Course_Faculty1_idx` (`Faculty_idFaculty` ASC) VISIBLE,
  CONSTRAINT `fk_Course_Department1`
    FOREIGN KEY (`Department_idDepartment`)
    REFERENCES `lab5b`.`Department` (`idDepartment`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Course_Faculty1`
    FOREIGN KEY (`Faculty_idFaculty`)
    REFERENCES `lab5b`.`Faculty` (`idFaculty`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab5b`.`Section`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab5b`.`Section` (
  `idSection` INT NOT NULL AUTO_INCREMENT,
  `Course_idCourse` INT NOT NULL,
  PRIMARY KEY (`idSection`),
  INDEX `fk_Section_Course1_idx` (`Course_idCourse` ASC) VISIBLE,
  CONSTRAINT `fk_Section_Course1`
    FOREIGN KEY (`Course_idCourse`)
    REFERENCES `lab5b`.`Course` (`idCourse`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab5b`.`Student`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab5b`.`Student` (
  `idStudent` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idStudent`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab5b`.`Section_has_Faculty`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab5b`.`Section_has_Faculty` (
  `Section_idSection` INT NOT NULL,
  `Faculty_idFaculty` INT NOT NULL,
  PRIMARY KEY (`Faculty_idFaculty`, `Section_idSection`),
  INDEX `fk_Section_has_Faculty_Faculty1_idx` (`Faculty_idFaculty` ASC) VISIBLE,
  INDEX `fk_Section_has_Faculty_Section1_idx` (`Section_idSection` ASC) VISIBLE,
  CONSTRAINT `fk_Section_has_Faculty_Section1`
    FOREIGN KEY (`Section_idSection`)
    REFERENCES `lab5b`.`Section` (`idSection`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Section_has_Faculty_Faculty1`
    FOREIGN KEY (`Faculty_idFaculty`)
    REFERENCES `lab5b`.`Faculty` (`idFaculty`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab5b`.`Student_has_Section`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab5b`.`Student_has_Section` (
  `Student_idStudent` INT NOT NULL,
  `Section_idSection` INT NOT NULL,
  PRIMARY KEY (`Student_idStudent`, `Section_idSection`),
  INDEX `fk_Student_has_Section_Section1_idx` (`Section_idSection` ASC) VISIBLE,
  INDEX `fk_Student_has_Section_Student1_idx` (`Student_idStudent` ASC) VISIBLE,
  CONSTRAINT `fk_Student_has_Section_Student1`
    FOREIGN KEY (`Student_idStudent`)
    REFERENCES `lab5b`.`Student` (`idStudent`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Student_has_Section_Section1`
    FOREIGN KEY (`Section_idSection`)
    REFERENCES `lab5b`.`Section` (`idSection`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
