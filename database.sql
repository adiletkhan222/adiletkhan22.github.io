CREATE TABLE `transfers` (
  `id` int,
  `user_id` int,
  `created_at` timestamp,
  `amount` int,
  `status` var
);

CREATE TABLE `users` (
  `id` int PRIMARY KEY,
  `username` string,
  `role` varchar(255),
  `created_at` timestamp,
  `bio` text,
  `token` string
);

CREATE TABLE `transfers_history` (
  `transfer_id` int,
  `body` text,
  `user_id` integer,
  `status` varchar(255),
  `created_at` timestamp
);

ALTER TABLE `transfers` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `transfers_history` ADD FOREIGN KEY (`transfer_id`) REFERENCES `transfers` (`id`);

ALTER TABLE `transfers` ADD FOREIGN KEY (`created_at`) REFERENCES `transfers_history` (`created_at`);

ALTER TABLE `transfers_history` ADD FOREIGN KEY (`status`) REFERENCES `transfers` (`status`);

ALTER TABLE `transfers` ADD FOREIGN KEY (`user_id`) REFERENCES `transfers_history` (`user_id`);
