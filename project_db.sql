-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Feb 2025 pada 06.00
-- Versi server: 10.4.27-MariaDB-log
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2025_02_16_025238_create_projects_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 6, 'auth_token', 'd1defd70005544cca046badd5f210c7f5482ec45f57b08c0fd9626ef7244b2c6', '[\"*\"]', NULL, NULL, '2025-02-15 21:14:06', '2025-02-15 21:14:06'),
(2, 'App\\Models\\User', 6, 'auth_token', '0ddb37c81543c28870bd0653850d98c161fc2de0cfca8f0647c90555367ea0e9', '[\"*\"]', '2025-02-15 21:56:27', NULL, '2025-02-15 21:18:45', '2025-02-15 21:56:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `projects`
--

INSERT INTO `projects` (`id`, `user_id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Incidunt et voluptates at.', 'Aspernatur velit dolorem magni autem eum alias. Sit officia est et perspiciatis recusandae deleniti dolorem porro. Itaque culpa sit sit repellendus illo ab ad eaque.', '2025-02-15 21:10:27', '2025-02-15 21:10:27'),
(2, 1, 'Quos quae.', 'Velit accusamus repudiandae omnis inventore vel quia. Ea quam exercitationem praesentium inventore. Neque enim ut voluptas maiores vero earum.', '2025-02-15 21:10:27', '2025-02-15 21:10:27'),
(3, 1, 'Officia est sed.', 'Vitae velit ipsa neque aut molestias aut officia. Voluptas asperiores aut possimus eaque minus itaque cumque. Vitae exercitationem sit laborum hic voluptate. Dignissimos tempore quae sapiente veniam.', '2025-02-15 21:10:27', '2025-02-15 21:10:27'),
(4, 1, 'Reiciendis qui doloremque.', 'Et qui nam sequi numquam id qui. Et assumenda et laborum ea vero. Laboriosam ut ut enim non ut harum officia.', '2025-02-15 21:10:27', '2025-02-15 21:10:27'),
(5, 1, 'Sed non ipsa magnam.', 'Est cupiditate vel sed facilis. Ea accusantium quis sapiente vel iste aut. Minus reiciendis tenetur ut dolore quas. Deserunt tempore velit sapiente illo ut qui.', '2025-02-15 21:10:27', '2025-02-15 21:10:27'),
(6, 2, 'Optio dicta cum.', 'Omnis recusandae voluptas vel hic rem. Ut qui earum et iusto. Enim et libero tenetur ut.', '2025-02-15 21:10:27', '2025-02-15 21:10:27'),
(7, 2, 'Commodi dolore totam aut.', 'Reiciendis necessitatibus cum deleniti. Sit id ut ut non in vero dolorum. At consequatur illo incidunt aut accusantium rem.', '2025-02-15 21:10:27', '2025-02-15 21:10:27'),
(8, 2, 'Rerum dolore facere.', 'Dolorem harum laborum facere illum. Corporis assumenda architecto velit illo nihil. Repellat dignissimos atque in fugit et modi. Iusto amet incidunt maxime et natus qui.', '2025-02-15 21:10:27', '2025-02-15 21:10:27'),
(9, 2, 'Odio incidunt deserunt et.', 'Reiciendis qui et non quidem pariatur sit reiciendis veniam. Est consequuntur ut in quasi et libero. Ea quam nemo qui quia. Animi excepturi iure modi dolorum odio soluta soluta.', '2025-02-15 21:10:27', '2025-02-15 21:10:27'),
(10, 2, 'Beatae dolorem blanditiis.', 'Non iure minima nulla aut id est. Odio qui nisi perferendis aliquid voluptatem rerum. Est porro repudiandae corrupti ab voluptate quos cum.', '2025-02-15 21:10:27', '2025-02-15 21:10:27'),
(11, 3, 'Exercitationem autem quas vero.', 'Optio alias sint distinctio est enim voluptas ut. A distinctio omnis itaque sunt rerum. Voluptatem ipsa mollitia sint maxime optio assumenda qui quia. Natus fugit nemo perferendis reprehenderit delectus.', '2025-02-15 21:10:27', '2025-02-15 21:10:27'),
(12, 3, 'Illo quis fugiat.', 'Placeat et temporibus quia culpa omnis. A deserunt repudiandae iste consequuntur sapiente. Soluta optio eum eius aperiam dolore. Quisquam pariatur tempore quo sequi.', '2025-02-15 21:10:27', '2025-02-15 21:10:27'),
(13, 3, 'Facere perspiciatis dolores soluta.', 'Dolorem ut voluptatem omnis cupiditate accusantium. Repellendus nihil unde veritatis tenetur perspiciatis voluptatem. Autem beatae enim ratione velit ut ipsam. Ratione facere optio error velit.', '2025-02-15 21:10:27', '2025-02-15 21:10:27'),
(14, 3, 'Sit voluptas qui.', 'Labore corrupti blanditiis molestiae sit. Rerum fuga labore quisquam voluptatem fugit ea quibusdam. Quibusdam expedita et nulla ad quasi.', '2025-02-15 21:10:27', '2025-02-15 21:10:27'),
(15, 3, 'Magni aliquam voluptas harum.', 'Quia esse perferendis et quia non vel odio expedita. Maxime eius animi autem. Odit ratione quaerat sed est rerum minima eius. Reprehenderit eaque omnis vero animi in velit et consequatur.', '2025-02-15 21:10:27', '2025-02-15 21:10:27'),
(16, 4, 'Qui cupiditate non omnis.', 'Voluptatem quas est quisquam reiciendis illum cumque tempora. Quis a et corrupti et in minima impedit. Dolorum repellendus nobis eum tempora nobis illo.', '2025-02-15 21:10:27', '2025-02-15 21:10:27'),
(17, 4, 'Delectus tenetur eius voluptatem dolorem.', 'Velit perferendis consequatur est voluptatem qui ut magnam. A consectetur dolores nostrum ab qui.', '2025-02-15 21:10:27', '2025-02-15 21:10:27'),
(18, 4, 'Qui voluptas dicta eum.', 'Inventore tempora quis et autem inventore minima debitis. Consequuntur ullam expedita qui asperiores sunt esse. Perferendis laudantium voluptas voluptatum molestias enim beatae mollitia. Soluta vel voluptate minima repudiandae.', '2025-02-15 21:10:27', '2025-02-15 21:10:27'),
(19, 4, 'Quae nostrum aut temporibus.', 'Dicta quia illum quo voluptas soluta ipsam omnis. Reprehenderit repudiandae libero exercitationem quia tenetur vero. Odio beatae quia id nesciunt omnis.', '2025-02-15 21:10:27', '2025-02-15 21:10:27'),
(20, 4, 'Aut temporibus ea.', 'Ut repellendus ullam sunt adipisci. Dolor unde enim nobis dicta illum voluptatem ipsa. Illum et quibusdam sed quam quia adipisci voluptates. Quis commodi autem distinctio quas qui sequi. Laboriosam quaerat sint autem pariatur quo dolorum beatae.', '2025-02-15 21:10:27', '2025-02-15 21:10:27'),
(21, 5, 'Repellat amet officiis eligendi.', 'Voluptates rerum illum alias aut id. Voluptas et temporibus omnis quos. Accusamus repellendus nam sit consequuntur nihil.', '2025-02-15 21:10:27', '2025-02-15 21:10:27'),
(22, 5, 'Perspiciatis voluptatum aut error.', 'Quos assumenda harum fugit rerum blanditiis asperiores quo. Officiis recusandae commodi repudiandae harum est voluptas velit.', '2025-02-15 21:10:27', '2025-02-15 21:10:27'),
(23, 5, 'Tempore impedit id.', 'Eum dicta sit eos. Saepe et dignissimos recusandae dolore repellat officia molestias exercitationem. Quis corporis omnis a ut. Aut neque in non doloremque aut.', '2025-02-15 21:10:27', '2025-02-15 21:10:27'),
(24, 5, 'Molestiae libero temporibus qui.', 'Vel maiores est similique autem accusamus qui sunt. Aut perspiciatis rerum ut et ut. Iste debitis provident at et dicta odio.', '2025-02-15 21:10:27', '2025-02-15 21:10:27'),
(25, 5, 'Consequatur ad vel omnis.', 'Facere saepe hic in sequi in. Cumque rerum qui iusto quia necessitatibus molestiae laudantium.', '2025-02-15 21:10:27', '2025-02-15 21:10:27'),
(26, 6, 'Project Update', 'Deskripsi baru proyek', '2025-02-15 21:42:34', '2025-02-15 21:49:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Maya Graham MD', '$2y$12$BZdxyThpEPK9VvvFtlAjhuzZX3U/RRX0I2ahNYYxlmLJxM1ySbjDK', '2025-02-15 21:10:27', '2025-02-15 21:10:27'),
(2, 'Zoila Rice', '$2y$12$BZdxyThpEPK9VvvFtlAjhuzZX3U/RRX0I2ahNYYxlmLJxM1ySbjDK', '2025-02-15 21:10:27', '2025-02-15 21:10:27'),
(3, 'Saige Lubowitz', '$2y$12$BZdxyThpEPK9VvvFtlAjhuzZX3U/RRX0I2ahNYYxlmLJxM1ySbjDK', '2025-02-15 21:10:27', '2025-02-15 21:10:27'),
(4, 'Ms. Ally Hills I', '$2y$12$BZdxyThpEPK9VvvFtlAjhuzZX3U/RRX0I2ahNYYxlmLJxM1ySbjDK', '2025-02-15 21:10:27', '2025-02-15 21:10:27'),
(5, 'Jaqueline McGlynn', '$2y$12$BZdxyThpEPK9VvvFtlAjhuzZX3U/RRX0I2ahNYYxlmLJxM1ySbjDK', '2025-02-15 21:10:27', '2025-02-15 21:10:27'),
(6, 'JohnDoe', '$2y$12$s9RU7d1fn5EW8LAlC8OGIe3uUOTJBAEBQtdt7z/ApR1OMCFR2Uyiq', '2025-02-15 21:14:06', '2025-02-15 21:14:06');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
