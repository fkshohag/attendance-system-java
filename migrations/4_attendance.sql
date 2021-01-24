CREATE TABLE `attendances` (
	`id` BIGINT unsigned NOT NULL AUTO_INCREMENT,
	`section_id` BIGINT unsigned,
    `student_id` BIGINT unsigned,
	`student_name` VARCHAR(100),
	`phone` VARCHAR(30) NULL,
	`email` VARCHAR(50) NOT NULL,
    UNIQUE KEY `attendances_id` (`id`) USING BTREE,
	PRIMARY KEY (`id`)
);

ALTER TABLE `attendances`
ADD FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION