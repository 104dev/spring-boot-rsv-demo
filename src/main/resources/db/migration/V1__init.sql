-- -----------------------------------------------------
-- Table `mydb`.`books`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `books` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `begin_dt` DATETIME NOT NULL,
  `end_dt` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `last_name` VARCHAR(45) NOT NULL,
  `first_name` VARCHAR(45) NOT NULL,
  `sex` ENUM('male', 'femail') NULL,
  `birth` DATE NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`menus`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `menus` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `default_time_slot` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`book_menus`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `book_menus` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `book_id` INT NOT NULL,
  `menu_id` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;