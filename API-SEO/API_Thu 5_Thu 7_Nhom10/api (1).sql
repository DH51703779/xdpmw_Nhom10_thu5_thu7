-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th4 03, 2021 lúc 03:01 AM
-- Phiên bản máy phục vụ: 5.7.31
-- Phiên bản PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `api`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_03_31_121013_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8_unicode_ci,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('zbbrwRh0EmNJ8w4w3HIt4id08PeEsvO4qCSubgYa', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/93.0.148 Chrome/87.0.4280.148 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUkZYNzR6WWRzRTh0VUtNUnVCcDJPWW9panRKN29ER1l2bFBYVkpMZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly9sb2NhbGhvc3Q6NzAvQVBJX25ob20xMC9wdWJsaWMvYXV0aC9nb29nbGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjU6InN0YXRlIjtzOjQwOiJPcm9QRkZhNTJqS0hHWGFvd2YyS1J1WHhMcTdWMlZoTTJTajZQOUlTIjt9', 1617415935),
('3ZBkcXVVHxJGW8WgI5LuYSfU8pldmJQWdTnadNnl', 4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.148 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUnB5b2RqTUkxMlJvRWFBT2FwNW1IbUl3aGNEaHl5QmtxanpzUTk0WSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY2OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvYXV0aC9nb29nbGUvY2FsbGJhY2s/YXV0aHVzZXI9MCZjb2RlPTQlMkYwQVkwZS1nNkZYSFZmTmR1S1docTF4aGRMYlVCNmFPekNYZmxwdUN3ODhHYl9naVhvSE1lbTdIbkNuMm5TU01qVEg1VVFlUSZoZD1zdHVkZW50LnN0dS5lZHUudm4mcHJvbXB0PW5vbmUmc2NvcGU9ZW1haWwlMjBwcm9maWxlJTIwb3BlbmlkJTIwaHR0cHMlM0ElMkYlMkZ3d3cuZ29vZ2xlYXBpcy5jb20lMkZhdXRoJTJGdXNlcmluZm8uZW1haWwlMjBodHRwcyUzQSUyRiUyRnd3dy5nb29nbGVhcGlzLmNvbSUyRmF1dGglMkZ1c2VyaW5mby5wcm9maWxlJnN0YXRlPWRpbkJscXU0YjIzTjlCZ2tMdFVmY2NqNlJ0YlBoalZuNUpidXg3ZWgiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo0O30=', 1617418809),
('DUoFAR9MNuK63iNYlQHm68wIaEnbudhKskq9ajdb', 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36 Edg/89.0.774.63', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiUVF3WEJra0FCa1hpZk1WUXJmR3U5YUVLZWVWd3pvV2pLWlIzSjRiQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ3OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvYXV0aC9nb29nbGUvY2FsbGJhY2s/YXV0aHVzZXI9MCZjb2RlPTQlMkYwQVkwZS1nN0pBWS1hdUhnOGpRaTljcEZRODdwLWNYTVZXTHpDazJQSDU1ZmxVSnlwZThySUlrUTFQbjVSNTNibDBtMllEUSZwcm9tcHQ9Y29uc2VudCZzY29wZT1lbWFpbCUyMHByb2ZpbGUlMjBvcGVuaWQlMjBodHRwcyUzQSUyRiUyRnd3dy5nb29nbGVhcGlzLmNvbSUyRmF1dGglMkZ1c2VyaW5mby5wcm9maWxlJTIwaHR0cHMlM0ElMkYlMkZ3d3cuZ29vZ2xlYXBpcy5jb20lMkZhdXRoJTJGdXNlcmluZm8uZW1haWwmc3RhdGU9SUtUcmFoeUNDNkFOU1ZIQlRoczhNcGVlNU1XNGx4TUNNQmV3c3FleiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjY7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6MjE2OiJleUpwZGlJNkltbzBRMFJqSzNCUWNUTjVNaTl3WXpCd1UzZExVRUU5UFNJc0luWmhiSFZsSWpvaVVHSndLM1JSV1dsMksycFNZWHBMSzJwMVRrMVRjazVKVFZWaFdqaGpXVGgyUVdsVmMwWmtOVkIyVVQwaUxDSnRZV01pT2lKbE5HUmhNemcyTmpZNVpHUTVPVE5pTXpFek5EZGpNamd3WVdWa1pHTmtObVJsWkdRNFlXVXhNRGcyTnpFM09EQTJNams0TWpOaU9ESmtNREpqWkRVMEluMD0iO30=', 1617383538),
('YRLXASCYu3Q4MMHbmiNskJmSKaK9s81KUATz4NxM', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/93.0.148 Chrome/87.0.4280.148 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZ2VXVTB5UFF1VzVmUW9rSFRDT3lHbHZENzJURXBXSFJrS0ZTVzlHNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hdXRoL2dvb2dsZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NToic3RhdGUiO3M6NDA6IlJKNmtFd2pUZGxRRWxOM0Q3M2gyVTh0T0gwc3QySmtkVXdsTnM0dm0iO30=', 1617383483),
('YOiYoiUoiYWmGuBcUrJ5NbQyNUDAaNOlfGLmUhXz', 4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/93.0.148 Chrome/87.0.4280.148 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoidWxxZWVGeVlZYU9EMDV6RndiUDJLUm9MZ0FINGxYTlpTWWhhVHNWRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo0O3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjIxNjoiZXlKcGRpSTZJamQzV0VSeFRqUlJTazh3VWpSdGNUZzVORlV3YzFFOVBTSXNJblpoYkhWbElqb2lkR1JtVEZGcGExUmhUbVZxY1RaWFZUaHZTM0JVUXlzd1VtNU9TblZzTjFOcFNGRnRUMFJ6WjFaMldUMGlMQ0p0WVdNaU9pSTFaakJqTnpsbU0yUTNNV0psWWpCaE5EVmtaVGsyWW1JeU4ySmlPREpsWmpBNE9EbGlZVFJrTkRoaFpEYzRZVFV3WVRJeVpqVXhZVEprTXpNek1qWm1JbjA9IjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6MjE2OiJleUpwZGlJNklqZDNXRVJ4VGpSUlNrOHdValJ0Y1RnNU5GVXdjMUU5UFNJc0luWmhiSFZsSWpvaWRHUm1URkZwYTFSaFRtVnFjVFpYVlRodlMzQlVReXN3VW01T1NuVnNOMU5wU0ZGdFQwUnpaMVoyV1QwaUxDSnRZV01pT2lJMVpqQmpOemxtTTJRM01XSmxZakJoTkRWa1pUazJZbUl5TjJKaU9ESmxaakE0T0RsaVlUUmtORGhoWkRjNFlUVXdZVEl5WmpVeFlUSmtNek16TWpabUluMD0iO30=', 1617383509),
('2UIFTyCLbvRpFTzVZeg5USVcJudXifHJEXcUR2US', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/93.0.148 Chrome/87.0.4280.148 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQWk5aVljREJQRzViNEwyV2RrdlNSQ1FGUUZVWjVybmhIWWNjV01QMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hdXRoL2dvb2dsZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NToic3RhdGUiO3M6NDA6IkNXdmVuV0x1VnBJS2cwWVprSUh3V0dhakJGTGZLam92UGM3eGhoRzciO30=', 1617383357);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `google_id` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `google_id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(6, '106261465282460355477', 'thanh ngân Nguyễn', 'perseusnguyen210@gmail.com', NULL, 'eyJpdiI6Imo0Q0RjK3BQcTN5Mi9wYzBwU3dLUEE9PSIsInZhbHVlIjoiUGJwK3RRWWl2K2pSYXpLK2p1Tk1Tck5JTVVhWjhjWTh2QWlVc0ZkNVB2UT0iLCJtYWMiOiJlNGRhMzg2NjY5ZGQ5OTNiMzEzNDdjMjgwYWVkZGNkNmRlZGQ4YWUxMDg2NzE3ODA2Mjk4MjNiODJkMDJjZDU0In0=', NULL, NULL, NULL, NULL, NULL, '2021-04-02 10:12:07', '2021-04-02 10:12:07'),
(5, '104196492890235926930', 'kiếp sầu mạc', 'mackiepsau007@gmail.com', NULL, 'eyJpdiI6InpVZzZIYjRMSG53V3RoSTMzVkd5d0E9PSIsInZhbHVlIjoiZUgvd3Y5czJoS3dYQTROQ25uaGpwQ3NJR1BCTS9KZDFwNUZoUGVBdHkxaz0iLCJtYWMiOiIwNGZiZjIyMjI2ODlmYWE4MmU1MTBlZjRkMjBjYTI1NDA4ZDA1YmYyYjQ2YTNmZDE2MTc1NjcxMjUyYTI3MmViIn0=', NULL, NULL, NULL, NULL, NULL, '2021-04-02 10:05:39', '2021-04-02 10:05:39'),
(4, '106093466554196712228', 'Ngan Nguyen Thanh', 'dh51703779@student.stu.edu.vn', NULL, 'eyJpdiI6Ijd3WERxTjRRSk8wUjRtcTg5NFUwc1E9PSIsInZhbHVlIjoidGRmTFFpa1RhTmVqcTZXVThvS3BUQyswUm5OSnVsN1NpSFFtT0RzZ1Z2WT0iLCJtYWMiOiI1ZjBjNzlmM2Q3MWJlYjBhNDVkZTk2YmIyN2JiODJlZjA4ODliYTRkNDhhZDc4YTUwYTIyZjUxYTJkMzMzMjZmIn0=', NULL, NULL, NULL, NULL, NULL, '2021-04-02 10:05:13', '2021-04-02 10:05:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users1`
--

DROP TABLE IF EXISTS `users1`;
CREATE TABLE IF NOT EXISTS `users1` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users1`
--

INSERT INTO `users1` (`id`, `name`, `email`, `password`, `Phone`) VALUES
(7, 'Nguyễn Văn A', 'VanA@gmail.com', '123456Nn', '013456789'),
(8, 'B van Nguyen', 'B@gmail.com', '456465AA', '3486789');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
