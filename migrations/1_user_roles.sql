CREATE TABLE `roles` (
	`id` BIGINT unsigned NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(40),
	UNIQUE KEY `roles_id` (`id`) USING BTREE,
	PRIMARY KEY (`id`)
);