-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Doctors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Doctors` (
  `doctor_id` INT NOT NULL AUTO_INCREMENT COMMENT 'Primary key of the table',
  `doctor_first_name` VARCHAR(100) NOT NULL COMMENT 'Doctor First Name\n',
  `doctor_last_name` VARCHAR(100) NOT NULL COMMENT 'Doctor Last Name\n',
  `doctor_phone_number` VARCHAR(12) NOT NULL COMMENT 'Doctor Phone Number',
  `doctor_date_of_birth` DATE NOT NULL COMMENT 'Birth Date ',
  `doctor_email` VARCHAR(50) NOT NULL COMMENT 'Doctor Email\n',
  PRIMARY KEY (`doctor_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Emergency Contact Person`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Emergency Contact Person` (
  `emergency_contact_person_id` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `contact_first_name` VARCHAR(100) NOT NULL COMMENT 'Contact Person First Name',
  `contact_last_name` VARCHAR(100) NOT NULL COMMENT 'Contact Person Last Name',
  `contact_phone_number` VARCHAR(50) NOT NULL COMMENT 'Contact Person phone number',
  `relationship` VARCHAR(50) NOT NULL COMMENT 'Relation with patient',
  PRIMARY KEY (`emergency_contact_person_id`),
  UNIQUE INDEX `emergency_contact_person_id_UNIQUE` (`emergency_contact_person_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Patients`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Patients` (
  `patient_id` INT NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `patient_ first_name` VARCHAR(100) NOT NULL COMMENT 'Patient First Name\n',
  `patient_last_name` VARCHAR(100) NOT NULL COMMENT 'Patient Last Name',
  `patient_date_of_birth` DATE NOT NULL COMMENT 'Patient Birth Date\n',
  `patient_address` VARCHAR(100) NOT NULL COMMENT 'Patient address\n',
  `city` VARCHAR(50) NOT NULL COMMENT 'City',
  `zipcode` VARCHAR(10) NOT NULL COMMENT 'zipcode',
  `country` VARCHAR(100) NOT NULL COMMENT 'country',
  `patient_phone_number` VARCHAR(50) NOT NULL COMMENT 'Patient Phone umber',
  `patient_email` VARCHAR(100) NOT NULL COMMENT 'Patient Email',
  `patient_type` ENUM('Walk-in', 'enrolled') NOT NULL COMMENT 'Walk-in patient or enrolled patient',
  `Patient History_patient_history_id1` INT UNSIGNED NOT NULL,
  `Emergency Contact Person_emergency_contact_person_id1` INT UNSIGNED NOT NULL,
  `Emergency Contact Person_emergency_contact_person_id` INT UNSIGNED NOT NULL,
  `Doctors_doctor_id` INT NOT NULL,
  PRIMARY KEY (`patient_id`),
  UNIQUE INDEX `patient_id_UNIQUE` (`patient_id` ASC) VISIBLE,
  INDEX `fk_Patients_Emergency Contact Person1_idx` (`Emergency Contact Person_emergency_contact_person_id` ASC) VISIBLE,
  INDEX `fk_Patients_Doctors1_idx` (`Doctors_doctor_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Appointments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Appointments` (
  `appointment_id` INT NOT NULL AUTO_INCREMENT COMMENT 'Primary Key on appointment table',
  `appointment_date` DATE NOT NULL COMMENT 'Date of appointment',
  `appointment_time` TIME NOT NULL COMMENT 'Time of appointment',
  `appointment_status` ENUM('Booked', 'Cancelled', 'CheckedIn', 'CheckedOut', 'WithoutTreatment') NOT NULL COMMENT 'Booked, Cancelled, checked in, checked out, left without treatment',
  `Patients_patient_id` INT NOT NULL,
  `Doctors_doctor_id` INT NOT NULL,
  PRIMARY KEY (`appointment_id`),
  UNIQUE INDEX `appointment_id_UNIQUE` (`appointment_id` ASC) VISIBLE,
  INDEX `fk_Appointments_Patients1_idx` (`Patients_patient_id` ASC) VISIBLE,
  INDEX `fk_Appointments_Doctors1_idx` (`Doctors_doctor_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`employees`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`employees` (
  `employee_id` INT NOT NULL AUTO_INCREMENT COMMENT 'Primary Key of employee table',
  `employee_first_name` VARCHAR(100) NOT NULL COMMENT 'Employee fist name',
  `employee_last_name` VARCHAR(100) NOT NULL COMMENT 'Employee last name',
  `employee_position` VARCHAR(50) NOT NULL COMMENT 'Role: 6 nurses, 5 office secretaries, 2 administrative assistants, one manager',
  `employee_date_of_birth` DATE NULL COMMENT 'Employee date of birth',
  `employee_phone_number` VARCHAR(20) NOT NULL COMMENT 'Employee phone number information',
  `employee_email` VARCHAR(100) NOT NULL COMMENT 'Employee email information',
  `hourly_salary` DECIMAL(10) NOT NULL COMMENT 'Salary per hour for each employee, considering the position they work in.',
  PRIMARY KEY (`employee_id`),
  UNIQUE INDEX `employee_id_UNIQUE` (`employee_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Patient Visit`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Patient Visit` (
  `patient_visit_id` INT NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `purpose_of_visit` VARCHAR(500) NOT NULL COMMENT 'Just check up or any illness',
  `patient_symptoms` VARCHAR(100) NULL COMMENT 'Patient symptoms for each visit and additional information',
  `blood_pressure` VARCHAR(10) NOT NULL,
  `temperature_measurement` INT NULL COMMENT 'can be null',
  `patient_height` FLOAT NULL COMMENT 'can be null',
  `patient_weight` FLOAT NULL COMMENT 'can be null',
  `visit_notes` VARCHAR(1000) NULL COMMENT 'Additional notes about the patient visit',
  `appointment_id` VARCHAR(45) NOT NULL COMMENT 'Date come from appointment id',
  `Appointments_appointment_id1` INT NOT NULL,
  `Employees_employee_id1` INT NOT NULL,
  PRIMARY KEY (`patient_visit_id`),
  UNIQUE INDEX `patient_visit_id_UNIQUE` (`patient_visit_id` ASC) VISIBLE,
  INDEX `fk_Patient Visit_Appointments1_idx` (`Appointments_appointment_id1` ASC) VISIBLE,
  INDEX `fk_Patient Visit_Employees1_idx` (`Employees_employee_id1` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Patient History`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Patient History` (
  `patient_history_id` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `allergies_history` VARCHAR(250) NULL COMMENT 'any allergy conditions',
  `history_date` DATE NULL COMMENT 'Date when patient ...',
  `patient_condition` VARCHAR(250) NULL COMMENT 'Any previous health conditions',
  `additional_information` VARCHAR(250) NULL COMMENT 'Any previous surgery or other important information to mention',
  `Patients_patient_id` INT NOT NULL,
  PRIMARY KEY (`patient_history_id`),
  INDEX `fk_Patient History_Patients1_idx` (`Patients_patient_id` ASC) VISIBLE,
  UNIQUE INDEX `patient_history_id_UNIQUE` (`patient_history_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Patient Prescription`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Patient Prescription` (
  `patient_prescription_id` INT NOT NULL AUTO_INCREMENT COMMENT 'Primary key on patient prescription table',
  `patient_treatment` VARCHAR(250) NULL COMMENT 'Example of treatment: Medication, referral, diagnostic test',
  `Patient Visit_patient_visit_id` INT NOT NULL,
  PRIMARY KEY (`patient_prescription_id`),
  UNIQUE INDEX `patient_prescription_id_UNIQUE` (`patient_prescription_id` ASC) VISIBLE,
  INDEX `fk_Patient Prescription_Patient Visit1_idx` (`Patient Visit_patient_visit_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Diagnostic Test`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Diagnostic Test` (
  `patient_diagnostic_test_id` INT NOT NULL AUTO_INCREMENT COMMENT 'Primary key on patient diagnostic test table',
  `diagnostic_test_date` DATE NOT NULL,
  `diagnostic_test_type` VARCHAR(250) NOT NULL COMMENT 'Specific diagnostic test (example: blood work, XRAY, Ultrasound)',
  `diagnostic_test_resultl` VARCHAR(100) NULL,
  `patient_prescription_id` INT NOT NULL COMMENT 'Patient prescription id as foreign key on patient diagnostic test',
  `Patient Prescription_patient_prescription_id` INT NOT NULL,
  PRIMARY KEY (`patient_diagnostic_test_id`),
  UNIQUE INDEX `patient_diagnostic_test_id_UNIQUE` (`patient_diagnostic_test_id` ASC) VISIBLE,
  INDEX `fk_Diagnostic Test_Patient Prescription1_idx` (`Patient Prescription_patient_prescription_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`appointment_followup`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`appointment_followup` (
  `appointment_followup_id` INT NOT NULL,
  `Appointments_appointment_id` INT NOT NULL,
  PRIMARY KEY (`appointment_followup_id`),
  UNIQUE INDEX `appointment_followup_id_UNIQUE` (`appointment_followup_id` ASC) VISIBLE,
  INDEX `fk_Appointment Follow Up_Appointments1_idx` (`Appointments_appointment_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`schedule`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`schedule` (
  `schedule_id` INT NOT NULL AUTO_INCREMENT COMMENT 'Primary key of schedule table',
  `date` DATE NOT NULL COMMENT 'Schedule specific date',
  `start_time` VARCHAR(45) NOT NULL COMMENT 'Scheduled shift start time',
  `end_time` VARCHAR(45) NOT NULL COMMENT 'Scheduled shift end time',
  PRIMARY KEY (`schedule_id`),
  UNIQUE INDEX `schedule_id_UNIQUE` (`schedule_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`health_insurance`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`health_insurance` (
  `health_insurance_id` INT NOT NULL AUTO_INCREMENT COMMENT 'Primary Key on health insurance table',
  `company` VARCHAR(100) NOT NULL COMMENT 'Company name',
  `health_insurance_number` VARCHAR(100) NOT NULL COMMENT 'Health insurance number',
  `Patients_patient_id` INT NOT NULL,
  PRIMARY KEY (`health_insurance_id`),
  UNIQUE INDEX `health_insurance_id_UNIQUE` (`health_insurance_id` ASC) VISIBLE,
  INDEX `fk_Health Insurance_Patients1_idx` (`Patients_patient_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`billing`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`billing` (
  `billing_id` INT NOT NULL AUTO_INCREMENT COMMENT 'Primary key of billing table',
  `amount` DECIMAL(10) NOT NULL COMMENT 'Total amount on the billing',
  `payment_date` DATE NULL COMMENT 'Billing payment date ',
  `insurance_payable` DECIMAL(9,2) NULL COMMENT 'Total payable by the insurance company',
  `patient_payable` DECIMAL(9,2) NULL COMMENT 'Total payable by the patient (if applicable)',
  `Appointments_appointment_id` INT NOT NULL,
  PRIMARY KEY (`billing_id`),
  UNIQUE INDEX `billing_id_UNIQUE` (`billing_id` ASC) VISIBLE,
  INDEX `fk_Billing_Appointments1_idx` (`Appointments_appointment_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`services`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`services` (
  `services_id` INT NOT NULL AUTO_INCREMENT COMMENT 'Primary key of services table',
  `service_name` VARCHAR(50) NOT NULL COMMENT 'Service type offered on the clinic, and no show or any additional service/item specification and price',
  `current_price` DECIMAL(9,2) NOT NULL COMMENT 'Services offered at the clinic and respective price.',
  PRIMARY KEY (`services_id`),
  UNIQUE INDEX `services_id_UNIQUE` (`services_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`billing_details`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`billing_details` (
  `billing_details_id` INT NOT NULL AUTO_INCREMENT COMMENT 'Primary key of billing details',
  `quantity` INT NOT NULL COMMENT 'Quantity of item/service',
  `total_service_price` DECIMAL(10) NOT NULL COMMENT 'Total price for services',
  `Billing_billing_id` INT NOT NULL,
  `Services_services_id` INT NOT NULL,
  PRIMARY KEY (`billing_details_id`),
  UNIQUE INDEX `billing_details_id_UNIQUE` (`billing_details_id` ASC) VISIBLE,
  INDEX `fk_Billing Details_Billing1_idx` (`Billing_billing_id` ASC) VISIBLE,
  INDEX `fk_Billing Details_Services1_idx` (`Services_services_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`bill_payment_history`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`bill_payment_history` (
  `Bill_Payment_History_id` INT NOT NULL,
  `amount_paid` DECIMAL(10,2) NULL,
  `payer` ENUM('Patient', 'Insurance') NULL,
  `note` VARCHAR(500) NULL,
  `billing_id` INT NULL,
  INDEX `fk_Bill Payment History_Billing1_idx` (`billing_id` ASC) VISIBLE,
  PRIMARY KEY (`Bill_Payment_History_id`),
  UNIQUE INDEX `Bill_Payment_History_id_UNIQUE` (`Bill_Payment_History_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Schedule_has_Doctors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Schedule_has_Doctors` (
  `Schedule_schedule_id` INT NOT NULL,
  `Doctors_doctor_id` INT NOT NULL,
  PRIMARY KEY (`Schedule_schedule_id`, `Doctors_doctor_id`),
  INDEX `fk_Schedule_has_Doctors_Doctors1_idx` (`Doctors_doctor_id` ASC) VISIBLE,
  INDEX `fk_Schedule_has_Doctors_Schedule1_idx` (`Schedule_schedule_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`employees_has_schedule`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`employees_has_schedule` (
  `Schedule_schedule_id` INT NOT NULL,
  `Employees_employee_id` INT NOT NULL,
  PRIMARY KEY (`Schedule_schedule_id`, `Employees_employee_id`),
  INDEX `fk_Employees_has_Schedule_Schedule1_idx` (`Schedule_schedule_id` ASC) VISIBLE,
  INDEX `fk_Employees_has_Schedule_Employees1_idx` (`Employees_employee_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Billing_Has_Insurance`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Billing_Has_Insurance` (
  `Health Insurance_health_insurance_id` INT NOT NULL,
  `Billing_billing_id` INT NOT NULL,
  PRIMARY KEY (`Health Insurance_health_insurance_id`, `Billing_billing_id`),
  INDEX `fk_Health Insurance_has_Billing_Billing1_idx` (`Billing_billing_id` ASC) VISIBLE,
  INDEX `fk_Health Insurance_has_Billing_Health Insurance1_idx` (`Health Insurance_health_insurance_id` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
