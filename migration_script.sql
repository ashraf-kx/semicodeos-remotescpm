-- ----------------------------------------------------------------------------
-- MySQL Workbench Migration
-- Migrated Schemata: homestead2
-- Source Schemata: homestead
-- Created: Fri Jun 16 04:46:51 2017
-- Workbench Version: 6.3.6
-- ----------------------------------------------------------------------------

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------------------------------------------------------
-- Schema homestead2
-- ----------------------------------------------------------------------------
DROP SCHEMA IF EXISTS `homestead2` ;
CREATE SCHEMA IF NOT EXISTS `homestead2` ;

-- ----------------------------------------------------------------------------
-- Table homestead2.migrations
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `homestead2`.`migrations` (
  `migration` VARCHAR(255) CHARACTER SET 'utf8' NOT NULL,
  `batch` INT(11) NOT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;

-- ----------------------------------------------------------------------------
-- Table homestead2.password_resets
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `homestead2`.`password_resets` (
  `email` VARCHAR(255) CHARACTER SET 'utf8' NOT NULL,
  `token` VARCHAR(255) CHARACTER SET 'utf8' NOT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  INDEX `password_resets_email_index` (`email` ASC),
  INDEX `password_resets_token_index` (`token` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;

-- ----------------------------------------------------------------------------
-- Table homestead2.sc_packages
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `homestead2`.`sc_packages` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `id_user` INT(11) NULL DEFAULT NULL,
  `package_name` VARCHAR(100) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `candidate` VARCHAR(45) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `archive` VARCHAR(45) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `origin` VARCHAR(45) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `component` VARCHAR(45) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 8053
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

-- ----------------------------------------------------------------------------
-- Table homestead2.users
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `homestead2`.`users` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) CHARACTER SET 'utf8' NOT NULL,
  `email` VARCHAR(255) CHARACTER SET 'utf8' NOT NULL,
  `password` VARCHAR(255) CHARACTER SET 'utf8' NOT NULL,
  `remember_token` VARCHAR(100) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `users_email_unique` (`email` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;
SET FOREIGN_KEY_CHECKS = 1;
