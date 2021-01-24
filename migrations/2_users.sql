CREATE TABLE `users` (
	`id` BIGINT unsigned NOT NULL AUTO_INCREMENT,
	`first_name` VARCHAR(40),
	`last_name` VARCHAR(40),
    `gender` VARCHAR(30),
	`email` VARCHAR(70),
	`password` VARCHAR(100),
	`role_id` BIGINT unsigned,
	`phone` VARCHAR(40),
	UNIQUE KEY `users_id` (`id`) USING BTREE,
	PRIMARY KEY (`id`)
);

ALTER TABLE `users`
ADD FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION
