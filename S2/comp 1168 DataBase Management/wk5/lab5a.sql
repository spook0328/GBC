-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema lab5a
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema lab5a
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lab5a` DEFAULT CHARACTER SET utf8 ;
USE `lab5a` ;

-- -----------------------------------------------------
-- Table `lab5a`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab5a`.`customers` (
  `customer_id` INT NOT NULL AUTO_INCREMENT,
  `customer_first_name` VARCHAR(150) NOT NULL,
  `customer_lasst_name` VARCHAR(150) NULL,
  `email` VARCHAR(150) NOT NULL,
  PRIMARY KEY (`customer_id`, `email`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab5a`.`courier`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab5a`.`courier` (
  `courier_id` INT NOT NULL AUTO_INCREMENT,
  `courier_name` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`courier_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab5a`.`orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab5a`.`orders` (
  `order_id` INT NOT NULL AUTO_INCREMENT,
  `order_date` DATE NOT NULL,
  `shipped_date` DATE NULL,
  `price` DECIMAL(9,2) NULL,
  `customers_customer_id` INT NOT NULL,
  `customers_email` VARCHAR(150) NOT NULL,
  `courier_courier_id` INT NOT NULL,
  PRIMARY KEY (`order_id`),
  INDEX `fk_ordes_customers_idx` (`customers_customer_id` ASC, `customers_email` ASC) VISIBLE,
  INDEX `fk_ordes_courier1_idx` (`courier_courier_id` ASC) VISIBLE,
  CONSTRAINT `fk_ordes_customers`
    FOREIGN KEY (`customers_customer_id` , `customers_email`)
    REFERENCES `lab5a`.`customers` (`customer_id` , `email`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ordes_courier1`
    FOREIGN KEY (`courier_courier_id`)
    REFERENCES `lab5a`.`courier` (`courier_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab5a`.`item`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab5a`.`item` (
  `item_id` INT NOT NULL AUTO_INCREMENT,
  `item_name` VARCHAR(150) NOT NULL,
  `price` DECIMAL(9,2) NOT NULL,
  PRIMARY KEY (`item_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab5a`.`contains`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab5a`.`contains` (
  `item_item_id` INT NOT NULL,
  `ordes_order_id` INT NOT NULL,
  PRIMARY KEY (`item_item_id`, `ordes_order_id`),
  INDEX `fk_item_has_ordes_ordes1_idx` (`ordes_order_id` ASC) VISIBLE,
  INDEX `fk_item_has_ordes_item1_idx` (`item_item_id` ASC) VISIBLE,
  CONSTRAINT `fk_item_has_ordes_item1`
    FOREIGN KEY (`item_item_id`)
    REFERENCES `lab5a`.`item` (`item_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_item_has_ordes_ordes1`
    FOREIGN KEY (`ordes_order_id`)
    REFERENCES `lab5a`.`orders` (`order_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
