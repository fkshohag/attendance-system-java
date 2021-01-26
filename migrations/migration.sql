CREATE TABLE `roles` (
	`id` BIGINT unsigned NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(40),
    `created_at` TIMESTAMP DEFAULT now(),
    `updated_at` TIMESTAMP DEFAULT now() ON UPDATE now(),
	UNIQUE KEY `roles_id` (`id`) USING BTREE,
	PRIMARY KEY (`id`)
);

CREATE TABLE `users` (
	`id` BIGINT unsigned NOT NULL AUTO_INCREMENT,
	`first_name` VARCHAR(40),
	`last_name` VARCHAR(40),
    `gender` VARCHAR(30),
	`email` VARCHAR(70),
	`password` VARCHAR(100),
	`role_id` BIGINT unsigned,
	`phone` VARCHAR(40),
    `created_at` TIMESTAMP DEFAULT now(),
    `updated_at` TIMESTAMP DEFAULT now() ON UPDATE now(),
	UNIQUE KEY `users_id` (`id`) USING BTREE,
	PRIMARY KEY (`id`)
);

ALTER TABLE `users`
ADD FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

CREATE TABLE `sections` (
	`id` BIGINT unsigned NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(40),
    `description` VARCHAR(40),
    `created_at` TIMESTAMP DEFAULT now(),
    `updated_at` TIMESTAMP DEFAULT now() ON UPDATE now(),
    UNIQUE KEY `sections_id` (`id`) USING BTREE,
	PRIMARY KEY (`id`)
);

CREATE TABLE `attendances` (
	`id` BIGINT unsigned NOT NULL AUTO_INCREMENT,
	`section_id` BIGINT unsigned,
    `student_id` BIGINT unsigned,
	`student_name` VARCHAR(100),
	`phone` VARCHAR(30) NULL,
	`email` VARCHAR(50) NOT NULL,
    `created_by` BIGINT,
    `created_at` TIMESTAMP DEFAULT now(),
    `updated_at` TIMESTAMP DEFAULT now() ON UPDATE now(),
    UNIQUE KEY `attendances_id` (`id`) USING BTREE,
	PRIMARY KEY (`id`)
);

ALTER TABLE `attendances`
ADD FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;
ALTER TABLE `attendances`
ADD FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE `attendances`
ADD FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

CREATE TABLE `class_logs` (
	`id` BIGINT unsigned NOT NULL AUTO_INCREMENT,
	`section_id` BIGINT unsigned,
	`schedule` VARCHAR(256),
	`attended` INT,
	`registered` INT,
	`date` date,
	`start_time` datetime,
	`end_time` datetime,
	`duration` double,
	`resource_type` INT,
	`link` VARCHAR(55),
	`remark` text,
    `created_at` TIMESTAMP DEFAULT now(),
    `updated_at` TIMESTAMP DEFAULT now() ON UPDATE now(),
    `created_by` BIGINT,
    `updated_by` BIGINT,
    UNIQUE KEY `class_logs_id` (`id`) USING BTREE,
	PRIMARY KEY (`id`)
);

ALTER TABLE `class_logs`
ADD FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;
ALTER TABLE `class_logs`
ADD FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE `class_logs`
ADD FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;