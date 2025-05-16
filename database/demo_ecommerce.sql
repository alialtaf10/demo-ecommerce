-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.32-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table demo_ecommerce.cache
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table demo_ecommerce.cache: ~0 rows (approximately)

-- Dumping structure for table demo_ecommerce.cache_locks
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table demo_ecommerce.cache_locks: ~0 rows (approximately)

-- Dumping structure for table demo_ecommerce.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table demo_ecommerce.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table demo_ecommerce.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table demo_ecommerce.jobs: ~0 rows (approximately)
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
	(1, 'emails', '{"uuid":"570200c5-9241-4749-9843-c4342944859e","displayName":"App\\\\Listeners\\\\SendOrderConfirmation","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"maxExceptions":null,"failOnTimeout":false,"backoff":null,"timeout":null,"retryUntil":null,"data":{"commandName":"Illuminate\\\\Events\\\\CallQueuedListener","command":"O:36:\\"Illuminate\\\\Events\\\\CallQueuedListener\\":20:{s:5:\\"class\\";s:35:\\"App\\\\Listeners\\\\SendOrderConfirmation\\";s:6:\\"method\\";s:6:\\"handle\\";s:4:\\"data\\";a:1:{i:0;O:23:\\"App\\\\Events\\\\OrderCreated\\":1:{s:5:\\"order\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":5:{s:5:\\"class\\";s:16:\\"App\\\\Models\\\\Order\\";s:2:\\"id\\";i:7;s:9:\\"relations\\";a:1:{i:0;s:4:\\"user\\";}s:10:\\"connection\\";s:5:\\"mysql\\";s:15:\\"collectionClass\\";N;}}}s:5:\\"tries\\";N;s:13:\\"maxExceptions\\";N;s:7:\\"backoff\\";N;s:10:\\"retryUntil\\";N;s:7:\\"timeout\\";N;s:13:\\"failOnTimeout\\";b:0;s:17:\\"shouldBeEncrypted\\";b:0;s:3:\\"job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:5:\\"delay\\";N;s:11:\\"afterCommit\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:19:\\"chainCatchCallbacks\\";N;}"},"createdAt":1747427839,"delay":null}', 0, NULL, 1747427839, 1747427839),
	(2, 'emails', '{"uuid":"168b1e04-f3bf-40dd-9eda-b712c2e64981","displayName":"App\\\\Listeners\\\\SendOrderConfirmation","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"maxExceptions":null,"failOnTimeout":false,"backoff":null,"timeout":null,"retryUntil":null,"data":{"commandName":"Illuminate\\\\Events\\\\CallQueuedListener","command":"O:36:\\"Illuminate\\\\Events\\\\CallQueuedListener\\":20:{s:5:\\"class\\";s:35:\\"App\\\\Listeners\\\\SendOrderConfirmation\\";s:6:\\"method\\";s:6:\\"handle\\";s:4:\\"data\\";a:1:{i:0;O:23:\\"App\\\\Events\\\\OrderCreated\\":1:{s:5:\\"order\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":5:{s:5:\\"class\\";s:16:\\"App\\\\Models\\\\Order\\";s:2:\\"id\\";i:7;s:9:\\"relations\\";a:1:{i:0;s:4:\\"user\\";}s:10:\\"connection\\";s:5:\\"mysql\\";s:15:\\"collectionClass\\";N;}}}s:5:\\"tries\\";N;s:13:\\"maxExceptions\\";N;s:7:\\"backoff\\";N;s:10:\\"retryUntil\\";N;s:7:\\"timeout\\";N;s:13:\\"failOnTimeout\\";b:0;s:17:\\"shouldBeEncrypted\\";b:0;s:3:\\"job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:5:\\"delay\\";N;s:11:\\"afterCommit\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:19:\\"chainCatchCallbacks\\";N;}"},"createdAt":1747427839,"delay":null}', 0, NULL, 1747427839, 1747427839),
	(3, 'default', '{"uuid":"a93a0df6-84ab-4938-92f6-3e5caccff770","displayName":"App\\\\Mail\\\\OrderConfirmation","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"maxExceptions":null,"failOnTimeout":false,"backoff":null,"timeout":null,"retryUntil":null,"data":{"commandName":"Illuminate\\\\Mail\\\\SendQueuedMailable","command":"O:34:\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\":15:{s:8:\\"mailable\\";O:26:\\"App\\\\Mail\\\\OrderConfirmation\\":22:{s:6:\\"locale\\";N;s:4:\\"from\\";a:0:{}s:2:\\"to\\";a:1:{i:0;a:2:{s:4:\\"name\\";N;s:7:\\"address\\";s:17:\\"admin@example.com\\";}}s:2:\\"cc\\";a:0:{}s:3:\\"bcc\\";a:0:{}s:7:\\"replyTo\\";a:0:{}s:7:\\"subject\\";N;s:8:\\"markdown\\";N;s:7:\\"\\u0000*\\u0000html\\";N;s:4:\\"view\\";N;s:8:\\"textView\\";N;s:8:\\"viewData\\";a:0:{}s:11:\\"attachments\\";a:0:{}s:14:\\"rawAttachments\\";a:0:{}s:15:\\"diskAttachments\\";a:0:{}s:7:\\"\\u0000*\\u0000tags\\";a:0:{}s:11:\\"\\u0000*\\u0000metadata\\";a:0:{}s:9:\\"callbacks\\";a:0:{}s:5:\\"theme\\";N;s:6:\\"mailer\\";s:4:\\"smtp\\";s:29:\\"\\u0000*\\u0000assertionableRenderStrings\\";N;s:5:\\"order\\";O:16:\\"App\\\\Models\\\\Order\\":32:{s:13:\\"\\u0000*\\u0000connection\\";s:5:\\"mysql\\";s:8:\\"\\u0000*\\u0000table\\";N;s:13:\\"\\u0000*\\u0000primaryKey\\";s:2:\\"id\\";s:10:\\"\\u0000*\\u0000keyType\\";s:3:\\"int\\";s:12:\\"incrementing\\";b:1;s:7:\\"\\u0000*\\u0000with\\";a:0:{}s:12:\\"\\u0000*\\u0000withCount\\";a:0:{}s:19:\\"preventsLazyLoading\\";b:0;s:10:\\"\\u0000*\\u0000perPage\\";i:15;s:6:\\"exists\\";b:1;s:18:\\"wasRecentlyCreated\\";b:1;s:28:\\"\\u0000*\\u0000escapeWhenCastingToString\\";b:0;s:13:\\"\\u0000*\\u0000attributes\\";a:7:{s:7:\\"user_id\\";i:2;s:12:\\"total_amount\\";d:399.97;s:6:\\"status\\";s:7:\\"pending\\";s:10:\\"updated_at\\";s:19:\\"2025-05-16 20:54:05\\";s:10:\\"created_at\\";s:19:\\"2025-05-16 20:54:04\\";s:2:\\"id\\";i:10;s:17:\\"payment_intent_id\\";N;}s:11:\\"\\u0000*\\u0000original\\";a:7:{s:7:\\"user_id\\";i:2;s:12:\\"total_amount\\";d:399.97;s:6:\\"status\\";s:7:\\"pending\\";s:10:\\"updated_at\\";s:19:\\"2025-05-16 20:54:05\\";s:10:\\"created_at\\";s:19:\\"2025-05-16 20:54:04\\";s:2:\\"id\\";i:10;s:17:\\"payment_intent_id\\";N;}s:10:\\"\\u0000*\\u0000changes\\";a:2:{s:10:\\"updated_at\\";s:19:\\"2025-05-16 20:54:05\\";s:17:\\"payment_intent_id\\";N;}s:8:\\"\\u0000*\\u0000casts\\";a:0:{}s:17:\\"\\u0000*\\u0000classCastCache\\";a:0:{}s:21:\\"\\u0000*\\u0000attributeCastCache\\";a:0:{}s:13:\\"\\u0000*\\u0000dateFormat\\";N;s:10:\\"\\u0000*\\u0000appends\\";a:0:{}s:19:\\"\\u0000*\\u0000dispatchesEvents\\";a:0:{}s:14:\\"\\u0000*\\u0000observables\\";a:0:{}s:12:\\"\\u0000*\\u0000relations\\";a:2:{s:4:\\"user\\";O:15:\\"App\\\\Models\\\\User\\":35:{s:13:\\"\\u0000*\\u0000connection\\";s:5:\\"mysql\\";s:8:\\"\\u0000*\\u0000table\\";s:5:\\"users\\";s:13:\\"\\u0000*\\u0000primaryKey\\";s:2:\\"id\\";s:10:\\"\\u0000*\\u0000keyType\\";s:3:\\"int\\";s:12:\\"incrementing\\";b:1;s:7:\\"\\u0000*\\u0000with\\";a:0:{}s:12:\\"\\u0000*\\u0000withCount\\";a:0:{}s:19:\\"preventsLazyLoading\\";b:0;s:10:\\"\\u0000*\\u0000perPage\\";i:15;s:6:\\"exists\\";b:1;s:18:\\"wasRecentlyCreated\\";b:0;s:28:\\"\\u0000*\\u0000escapeWhenCastingToString\\";b:0;s:13:\\"\\u0000*\\u0000attributes\\";a:10:{s:2:\\"id\\";i:2;s:4:\\"name\\";s:5:\\"admin\\";s:5:\\"email\\";s:17:\\"admin@example.com\\";s:17:\\"email_verified_at\\";N;s:8:\\"password\\";s:60:\\"$2y$12$98PuCB6FBi1xO81WaZ8JTuZ5jJPTSlx7TRmjP12pInYyH58NV2Y4a\\";s:8:\\"is_admin\\";i:1;s:14:\\"remember_token\\";N;s:9:\\"stripe_id\\";N;s:10:\\"created_at\\";s:19:\\"2025-05-16 19:05:57\\";s:10:\\"updated_at\\";s:19:\\"2025-05-16 19:05:57\\";}s:11:\\"\\u0000*\\u0000original\\";a:10:{s:2:\\"id\\";i:2;s:4:\\"name\\";s:5:\\"admin\\";s:5:\\"email\\";s:17:\\"admin@example.com\\";s:17:\\"email_verified_at\\";N;s:8:\\"password\\";s:60:\\"$2y$12$98PuCB6FBi1xO81WaZ8JTuZ5jJPTSlx7TRmjP12pInYyH58NV2Y4a\\";s:8:\\"is_admin\\";i:1;s:14:\\"remember_token\\";N;s:9:\\"stripe_id\\";N;s:10:\\"created_at\\";s:19:\\"2025-05-16 19:05:57\\";s:10:\\"updated_at\\";s:19:\\"2025-05-16 19:05:57\\";}s:10:\\"\\u0000*\\u0000changes\\";a:0:{}s:8:\\"\\u0000*\\u0000casts\\";a:2:{s:17:\\"email_verified_at\\";s:8:\\"datetime\\";s:8:\\"password\\";s:6:\\"hashed\\";}s:17:\\"\\u0000*\\u0000classCastCache\\";a:0:{}s:21:\\"\\u0000*\\u0000attributeCastCache\\";a:0:{}s:13:\\"\\u0000*\\u0000dateFormat\\";N;s:10:\\"\\u0000*\\u0000appends\\";a:0:{}s:19:\\"\\u0000*\\u0000dispatchesEvents\\";a:0:{}s:14:\\"\\u0000*\\u0000observables\\";a:0:{}s:12:\\"\\u0000*\\u0000relations\\";a:0:{}s:10:\\"\\u0000*\\u0000touches\\";a:0:{}s:27:\\"\\u0000*\\u0000relationAutoloadCallback\\";N;s:26:\\"\\u0000*\\u0000relationAutoloadContext\\";N;s:10:\\"timestamps\\";b:1;s:13:\\"usesUniqueIds\\";b:0;s:9:\\"\\u0000*\\u0000hidden\\";a:2:{i:0;s:8:\\"password\\";i:1;s:14:\\"remember_token\\";}s:10:\\"\\u0000*\\u0000visible\\";a:0:{}s:11:\\"\\u0000*\\u0000fillable\\";a:3:{i:0;s:4:\\"name\\";i:1;s:5:\\"email\\";i:2;s:8:\\"password\\";}s:10:\\"\\u0000*\\u0000guarded\\";a:1:{i:0;s:1:\\"*\\";}s:19:\\"\\u0000*\\u0000authPasswordName\\";s:8:\\"password\\";s:20:\\"\\u0000*\\u0000rememberTokenName\\";s:14:\\"remember_token\\";s:14:\\"\\u0000*\\u0000accessToken\\";N;}s:5:\\"items\\";O:39:\\"Illuminate\\\\Database\\\\Eloquent\\\\Collection\\":2:{s:8:\\"\\u0000*\\u0000items\\";a:2:{i:0;O:20:\\"App\\\\Models\\\\OrderItem\\":32:{s:13:\\"\\u0000*\\u0000connection\\";s:5:\\"mysql\\";s:8:\\"\\u0000*\\u0000table\\";s:11:\\"order_items\\";s:13:\\"\\u0000*\\u0000primaryKey\\";s:2:\\"id\\";s:10:\\"\\u0000*\\u0000keyType\\";s:3:\\"int\\";s:12:\\"incrementing\\";b:1;s:7:\\"\\u0000*\\u0000with\\";a:0:{}s:12:\\"\\u0000*\\u0000withCount\\";a:0:{}s:19:\\"preventsLazyLoading\\";b:0;s:10:\\"\\u0000*\\u0000perPage\\";i:15;s:6:\\"exists\\";b:1;s:18:\\"wasRecentlyCreated\\";b:0;s:28:\\"\\u0000*\\u0000escapeWhenCastingToString\\";b:0;s:13:\\"\\u0000*\\u0000attributes\\";a:8:{s:2:\\"id\\";i:15;s:8:\\"order_id\\";i:10;s:10:\\"product_id\\";i:1;s:8:\\"quantity\\";i:2;s:10:\\"unit_price\\";s:5:\\"99.99\\";s:11:\\"total_price\\";s:6:\\"199.98\\";s:10:\\"created_at\\";s:19:\\"2025-05-16 20:54:04\\";s:10:\\"updated_at\\";s:19:\\"2025-05-16 20:54:04\\";}s:11:\\"\\u0000*\\u0000original\\";a:8:{s:2:\\"id\\";i:15;s:8:\\"order_id\\";i:10;s:10:\\"product_id\\";i:1;s:8:\\"quantity\\";i:2;s:10:\\"unit_price\\";s:5:\\"99.99\\";s:11:\\"total_price\\";s:6:\\"199.98\\";s:10:\\"created_at\\";s:19:\\"2025-05-16 20:54:04\\";s:10:\\"updated_at\\";s:19:\\"2025-05-16 20:54:04\\";}s:10:\\"\\u0000*\\u0000changes\\";a:0:{}s:8:\\"\\u0000*\\u0000casts\\";a:0:{}s:17:\\"\\u0000*\\u0000classCastCache\\";a:0:{}s:21:\\"\\u0000*\\u0000attributeCastCache\\";a:0:{}s:13:\\"\\u0000*\\u0000dateFormat\\";N;s:10:\\"\\u0000*\\u0000appends\\";a:0:{}s:19:\\"\\u0000*\\u0000dispatchesEvents\\";a:0:{}s:14:\\"\\u0000*\\u0000observables\\";a:0:{}s:12:\\"\\u0000*\\u0000relations\\";a:1:{s:7:\\"product\\";O:18:\\"App\\\\Models\\\\Product\\":32:{s:13:\\"\\u0000*\\u0000connection\\";s:5:\\"mysql\\";s:8:\\"\\u0000*\\u0000table\\";s:8:\\"products\\";s:13:\\"\\u0000*\\u0000primaryKey\\";s:2:\\"id\\";s:10:\\"\\u0000*\\u0000keyType\\";s:3:\\"int\\";s:12:\\"incrementing\\";b:1;s:7:\\"\\u0000*\\u0000with\\";a:0:{}s:12:\\"\\u0000*\\u0000withCount\\";a:0:{}s:19:\\"preventsLazyLoading\\";b:0;s:10:\\"\\u0000*\\u0000perPage\\";i:15;s:6:\\"exists\\";b:1;s:18:\\"wasRecentlyCreated\\";b:0;s:28:\\"\\u0000*\\u0000escapeWhenCastingToString\\";b:0;s:13:\\"\\u0000*\\u0000attributes\\";a:8:{s:2:\\"id\\";i:1;s:4:\\"name\\";s:14:\\"Premium Widget\\";s:11:\\"description\\";s:19:\\"High quality widget\\";s:5:\\"price\\";s:5:\\"99.99\\";s:8:\\"quantity\\";i:92;s:6:\\"status\\";s:6:\\"active\\";s:10:\\"created_at\\";s:19:\\"2025-05-16 19:52:59\\";s:10:\\"updated_at\\";s:19:\\"2025-05-16 20:54:04\\";}s:11:\\"\\u0000*\\u0000original\\";a:8:{s:2:\\"id\\";i:1;s:4:\\"name\\";s:14:\\"Premium Widget\\";s:11:\\"description\\";s:19:\\"High quality widget\\";s:5:\\"price\\";s:5:\\"99.99\\";s:8:\\"quantity\\";i:92;s:6:\\"status\\";s:6:\\"active\\";s:10:\\"created_at\\";s:19:\\"2025-05-16 19:52:59\\";s:10:\\"updated_at\\";s:19:\\"2025-05-16 20:54:04\\";}s:10:\\"\\u0000*\\u0000changes\\";a:0:{}s:8:\\"\\u0000*\\u0000casts\\";a:0:{}s:17:\\"\\u0000*\\u0000classCastCache\\";a:0:{}s:21:\\"\\u0000*\\u0000attributeCastCache\\";a:0:{}s:13:\\"\\u0000*\\u0000dateFormat\\";N;s:10:\\"\\u0000*\\u0000appends\\";a:0:{}s:19:\\"\\u0000*\\u0000dispatchesEvents\\";a:0:{}s:14:\\"\\u0000*\\u0000observables\\";a:0:{}s:12:\\"\\u0000*\\u0000relations\\";a:0:{}s:10:\\"\\u0000*\\u0000touches\\";a:0:{}s:27:\\"\\u0000*\\u0000relationAutoloadCallback\\";N;s:26:\\"\\u0000*\\u0000relationAutoloadContext\\";N;s:10:\\"timestamps\\";b:1;s:13:\\"usesUniqueIds\\";b:0;s:9:\\"\\u0000*\\u0000hidden\\";a:0:{}s:10:\\"\\u0000*\\u0000visible\\";a:0:{}s:11:\\"\\u0000*\\u0000fillable\\";a:5:{i:0;s:4:\\"name\\";i:1;s:11:\\"description\\";i:2;s:5:\\"price\\";i:3;s:8:\\"quantity\\";i:4;s:6:\\"status\\";}s:10:\\"\\u0000*\\u0000guarded\\";a:1:{i:0;s:1:\\"*\\";}}}s:10:\\"\\u0000*\\u0000touches\\";a:0:{}s:27:\\"\\u0000*\\u0000relationAutoloadCallback\\";N;s:26:\\"\\u0000*\\u0000relationAutoloadContext\\";N;s:10:\\"timestamps\\";b:1;s:13:\\"usesUniqueIds\\";b:0;s:9:\\"\\u0000*\\u0000hidden\\";a:0:{}s:10:\\"\\u0000*\\u0000visible\\";a:0:{}s:11:\\"\\u0000*\\u0000fillable\\";a:5:{i:0;s:10:\\"product_id\\";i:1;s:10:\\"product_id\\";i:2;s:8:\\"quantity\\";i:3;s:10:\\"unit_price\\";i:4;s:11:\\"total_price\\";}s:10:\\"\\u0000*\\u0000guarded\\";a:1:{i:0;s:1:\\"*\\";}}i:1;O:20:\\"App\\\\Models\\\\OrderItem\\":32:{s:13:\\"\\u0000*\\u0000connection\\";s:5:\\"mysql\\";s:8:\\"\\u0000*\\u0000table\\";s:11:\\"order_items\\";s:13:\\"\\u0000*\\u0000primaryKey\\";s:2:\\"id\\";s:10:\\"\\u0000*\\u0000keyType\\";s:3:\\"int\\";s:12:\\"incrementing\\";b:1;s:7:\\"\\u0000*\\u0000with\\";a:0:{}s:12:\\"\\u0000*\\u0000withCount\\";a:0:{}s:19:\\"preventsLazyLoading\\";b:0;s:10:\\"\\u0000*\\u0000perPage\\";i:15;s:6:\\"exists\\";b:1;s:18:\\"wasRecentlyCreated\\";b:0;s:28:\\"\\u0000*\\u0000escapeWhenCastingToString\\";b:0;s:13:\\"\\u0000*\\u0000attributes\\";a:8:{s:2:\\"id\\";i:16;s:8:\\"order_id\\";i:10;s:10:\\"product_id\\";i:2;s:8:\\"quantity\\";i:1;s:10:\\"unit_price\\";s:6:\\"199.99\\";s:11:\\"total_price\\";s:6:\\"199.99\\";s:10:\\"created_at\\";s:19:\\"2025-05-16 20:54:04\\";s:10:\\"updated_at\\";s:19:\\"2025-05-16 20:54:04\\";}s:11:\\"\\u0000*\\u0000original\\";a:8:{s:2:\\"id\\";i:16;s:8:\\"order_id\\";i:10;s:10:\\"product_id\\";i:2;s:8:\\"quantity\\";i:1;s:10:\\"unit_price\\";s:6:\\"199.99\\";s:11:\\"total_price\\";s:6:\\"199.99\\";s:10:\\"created_at\\";s:19:\\"2025-05-16 20:54:04\\";s:10:\\"updated_at\\";s:19:\\"2025-05-16 20:54:04\\";}s:10:\\"\\u0000*\\u0000changes\\";a:0:{}s:8:\\"\\u0000*\\u0000casts\\";a:0:{}s:17:\\"\\u0000*\\u0000classCastCache\\";a:0:{}s:21:\\"\\u0000*\\u0000attributeCastCache\\";a:0:{}s:13:\\"\\u0000*\\u0000dateFormat\\";N;s:10:\\"\\u0000*\\u0000appends\\";a:0:{}s:19:\\"\\u0000*\\u0000dispatchesEvents\\";a:0:{}s:14:\\"\\u0000*\\u0000observables\\";a:0:{}s:12:\\"\\u0000*\\u0000relations\\";a:1:{s:7:\\"product\\";O:18:\\"App\\\\Models\\\\Product\\":32:{s:13:\\"\\u0000*\\u0000connection\\";s:5:\\"mysql\\";s:8:\\"\\u0000*\\u0000table\\";s:8:\\"products\\";s:13:\\"\\u0000*\\u0000primaryKey\\";s:2:\\"id\\";s:10:\\"\\u0000*\\u0000keyType\\";s:3:\\"int\\";s:12:\\"incrementing\\";b:1;s:7:\\"\\u0000*\\u0000with\\";a:0:{}s:12:\\"\\u0000*\\u0000withCount\\";a:0:{}s:19:\\"preventsLazyLoading\\";b:0;s:10:\\"\\u0000*\\u0000perPage\\";i:15;s:6:\\"exists\\";b:1;s:18:\\"wasRecentlyCreated\\";b:0;s:28:\\"\\u0000*\\u0000escapeWhenCastingToString\\";b:0;s:13:\\"\\u0000*\\u0000attributes\\";a:8:{s:2:\\"id\\";i:2;s:4:\\"name\\";s:16:\\"Premium Widget 2\\";s:11:\\"description\\";s:21:\\"High quality widget 2\\";s:5:\\"price\\";s:6:\\"199.99\\";s:8:\\"quantity\\";i:6;s:6:\\"status\\";s:6:\\"active\\";s:10:\\"created_at\\";s:19:\\"2025-05-16 19:56:30\\";s:10:\\"updated_at\\";s:19:\\"2025-05-16 20:54:04\\";}s:11:\\"\\u0000*\\u0000original\\";a:8:{s:2:\\"id\\";i:2;s:4:\\"name\\";s:16:\\"Premium Widget 2\\";s:11:\\"description\\";s:21:\\"High quality widget 2\\";s:5:\\"price\\";s:6:\\"199.99\\";s:8:\\"quantity\\";i:6;s:6:\\"status\\";s:6:\\"active\\";s:10:\\"created_at\\";s:19:\\"2025-05-16 19:56:30\\";s:10:\\"updated_at\\";s:19:\\"2025-05-16 20:54:04\\";}s:10:\\"\\u0000*\\u0000changes\\";a:0:{}s:8:\\"\\u0000*\\u0000casts\\";a:0:{}s:17:\\"\\u0000*\\u0000classCastCache\\";a:0:{}s:21:\\"\\u0000*\\u0000attributeCastCache\\";a:0:{}s:13:\\"\\u0000*\\u0000dateFormat\\";N;s:10:\\"\\u0000*\\u0000appends\\";a:0:{}s:19:\\"\\u0000*\\u0000dispatchesEvents\\";a:0:{}s:14:\\"\\u0000*\\u0000observables\\";a:0:{}s:12:\\"\\u0000*\\u0000relations\\";a:0:{}s:10:\\"\\u0000*\\u0000touches\\";a:0:{}s:27:\\"\\u0000*\\u0000relationAutoloadCallback\\";N;s:26:\\"\\u0000*\\u0000relationAutoloadContext\\";N;s:10:\\"timestamps\\";b:1;s:13:\\"usesUniqueIds\\";b:0;s:9:\\"\\u0000*\\u0000hidden\\";a:0:{}s:10:\\"\\u0000*\\u0000visible\\";a:0:{}s:11:\\"\\u0000*\\u0000fillable\\";a:5:{i:0;s:4:\\"name\\";i:1;s:11:\\"description\\";i:2;s:5:\\"price\\";i:3;s:8:\\"quantity\\";i:4;s:6:\\"status\\";}s:10:\\"\\u0000*\\u0000guarded\\";a:1:{i:0;s:1:\\"*\\";}}}s:10:\\"\\u0000*\\u0000touches\\";a:0:{}s:27:\\"\\u0000*\\u0000relationAutoloadCallback\\";N;s:26:\\"\\u0000*\\u0000relationAutoloadContext\\";N;s:10:\\"timestamps\\";b:1;s:13:\\"usesUniqueIds\\";b:0;s:9:\\"\\u0000*\\u0000hidden\\";a:0:{}s:10:\\"\\u0000*\\u0000visible\\";a:0:{}s:11:\\"\\u0000*\\u0000fillable\\";a:5:{i:0;s:10:\\"product_id\\";i:1;s:10:\\"product_id\\";i:2;s:8:\\"quantity\\";i:3;s:10:\\"unit_price\\";i:4;s:11:\\"total_price\\";}s:10:\\"\\u0000*\\u0000guarded\\";a:1:{i:0;s:1:\\"*\\";}}}s:28:\\"\\u0000*\\u0000escapeWhenCastingToString\\";b:0;}}s:10:\\"\\u0000*\\u0000touches\\";a:0:{}s:27:\\"\\u0000*\\u0000relationAutoloadCallback\\";N;s:26:\\"\\u0000*\\u0000relationAutoloadContext\\";N;s:10:\\"timestamps\\";b:1;s:13:\\"usesUniqueIds\\";b:0;s:9:\\"\\u0000*\\u0000hidden\\";a:0:{}s:10:\\"\\u0000*\\u0000visible\\";a:0:{}s:11:\\"\\u0000*\\u0000fillable\\";a:3:{i:0;s:17:\\"payment_intent_id\\";i:1;s:7:\\"user_id\\";i:2;s:12:\\"total_amount\\";}s:10:\\"\\u0000*\\u0000guarded\\";a:1:{i:0;s:1:\\"*\\";}}}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:13:\\"maxExceptions\\";N;s:17:\\"shouldBeEncrypted\\";b:0;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:5:\\"delay\\";N;s:11:\\"afterCommit\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:19:\\"chainCatchCallbacks\\";N;s:3:\\"job\\";N;}"},"createdAt":1747428845,"delay":null}', 0, NULL, 1747428845, 1747428845);

-- Dumping structure for table demo_ecommerce.job_batches
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table demo_ecommerce.job_batches: ~0 rows (approximately)

-- Dumping structure for table demo_ecommerce.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table demo_ecommerce.migrations: ~8 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '0001_01_01_000000_create_users_table', 1),
	(2, '0001_01_01_000001_create_cache_table', 1),
	(3, '0001_01_01_000002_create_jobs_table', 1),
	(4, '2025_05_16_145458_create_products_table', 1),
	(5, '2025_05_16_145528_create_orders_table', 1),
	(6, '2025_05_16_145545_create_order_items_table', 1),
	(7, '2025_05_16_145810_create_personal_access_tokens_table', 1),
	(8, '2025_05_16_202848_add_stripe_id_to_users_table', 2),
	(9, '2025_05_16_205230_add_checkout_session_id_to_orders_table', 3);

-- Dumping structure for table demo_ecommerce.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `payment_intent_id` varchar(255) DEFAULT NULL,
  `checkout_session_id` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_user_id_foreign` (`user_id`),
  CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table demo_ecommerce.orders: ~2 rows (approximately)
INSERT INTO `orders` (`id`, `user_id`, `total_amount`, `payment_intent_id`, `checkout_session_id`, `status`, `created_at`, `updated_at`) VALUES
	(5, 2, 399.97, NULL, NULL, 'pending', '2025-05-16 15:33:59', '2025-05-16 15:33:59'),
	(6, 2, 399.97, NULL, NULL, 'pending', '2025-05-16 15:35:19', '2025-05-16 15:35:19'),
	(7, 2, 399.97, 'pi_3RPV0QPEFG00CKEz0BbvA3hv', NULL, 'pending', '2025-05-16 15:37:17', '2025-05-16 15:37:19'),
	(10, 2, 399.97, NULL, NULL, 'pending', '2025-05-16 15:54:04', '2025-05-16 15:54:05');

-- Dumping structure for table demo_ecommerce.order_items
CREATE TABLE IF NOT EXISTS `order_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_items_order_id_foreign` (`order_id`),
  KEY `order_items_product_id_foreign` (`product_id`),
  CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table demo_ecommerce.order_items: ~4 rows (approximately)
INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `unit_price`, `total_price`, `created_at`, `updated_at`) VALUES
	(5, 5, 1, 2, 99.99, 199.98, '2025-05-16 15:33:59', '2025-05-16 15:33:59'),
	(6, 5, 2, 1, 199.99, 199.99, '2025-05-16 15:33:59', '2025-05-16 15:33:59'),
	(7, 6, 1, 2, 99.99, 199.98, '2025-05-16 15:35:19', '2025-05-16 15:35:19'),
	(8, 6, 2, 1, 199.99, 199.99, '2025-05-16 15:35:19', '2025-05-16 15:35:19'),
	(9, 7, 1, 2, 99.99, 199.98, '2025-05-16 15:37:17', '2025-05-16 15:37:17'),
	(10, 7, 2, 1, 199.99, 199.99, '2025-05-16 15:37:17', '2025-05-16 15:37:17'),
	(15, 10, 1, 2, 99.99, 199.98, '2025-05-16 15:54:04', '2025-05-16 15:54:04'),
	(16, 10, 2, 1, 199.99, 199.99, '2025-05-16 15:54:04', '2025-05-16 15:54:04');

-- Dumping structure for table demo_ecommerce.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table demo_ecommerce.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table demo_ecommerce.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table demo_ecommerce.personal_access_tokens: ~1 rows (approximately)
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
	(1, 'App\\Models\\User', 2, 'auth_token', '55f0c3af6e23ffe284687bf9d089e18c815c145029e71ee9d9dc456c02139f94', '["*"]', '2025-05-16 15:54:04', NULL, '2025-05-16 14:49:42', '2025-05-16 15:54:04');

-- Dumping structure for table demo_ecommerce.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table demo_ecommerce.products: ~2 rows (approximately)
INSERT INTO `products` (`id`, `name`, `description`, `price`, `quantity`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'Premium Widget', 'High quality widget', 99.99, 92, 'active', '2025-05-16 14:52:59', '2025-05-16 15:54:04'),
	(2, 'Premium Widget 2', 'High quality widget 2', 199.99, 6, 'active', '2025-05-16 14:56:30', '2025-05-16 15:54:04');

-- Dumping structure for table demo_ecommerce.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table demo_ecommerce.sessions: ~1 rows (approximately)
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('JBzybbNCB3juypFwtFKovqSjnEAXvVZE0ym1OsN5', NULL, '127.0.0.1', 'PostmanRuntime/7.43.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOTh5RmdUbjVUek5NOUsxYW1WRU93bmV6Q2REeXU4Vlp4NmNQOGI2RiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1747424659);

-- Dumping structure for table demo_ecommerce.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `stripe_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table demo_ecommerce.users: ~2 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `is_admin`, `remember_token`, `stripe_id`, `created_at`, `updated_at`) VALUES
	(1, 'John Doe', 'john@example.com', NULL, '$2y$12$3u0im3Z5.8sXRPD6g1syi.tEGXVwxWzsKpCQJcWh1INqoMDFRrWmy', 0, NULL, NULL, '2025-05-16 14:05:30', '2025-05-16 14:05:30'),
	(2, 'admin', 'admin@example.com', NULL, '$2y$12$98PuCB6FBi1xO81WaZ8JTuZ5jJPTSlx7TRmjP12pInYyH58NV2Y4a', 1, NULL, NULL, '2025-05-16 14:05:57', '2025-05-16 14:05:57');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
