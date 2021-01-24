CREATE TABLE `sections` (
	`id` BIGINT unsigned NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(40),
    `description` VARCHAR(40),
    UNIQUE KEY `sections_id` (`id`) USING BTREE,
	PRIMARY KEY (`id`)
);