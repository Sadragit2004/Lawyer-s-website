-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 18, 2026 at 06:05 PM
-- Server version: 11.4.5-MariaDB-cll-lve
-- PHP Version: 8.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fczgtpwy_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add محتوا', 7, 'add_content'),
(26, 'Can change محتوا', 7, 'change_content'),
(27, 'Can delete محتوا', 7, 'delete_content'),
(28, 'Can view محتوا', 7, 'view_content'),
(29, 'Can add مشاوره', 8, 'add_consultation'),
(30, 'Can change مشاوره', 8, 'change_consultation'),
(31, 'Can delete مشاوره', 8, 'delete_consultation'),
(32, 'Can view مشاوره', 8, 'view_consultation'),
(33, 'Can add author', 9, 'add_author'),
(34, 'Can change author', 9, 'change_author'),
(35, 'Can delete author', 9, 'delete_author'),
(36, 'Can view author', 9, 'view_author'),
(37, 'Can add category', 10, 'add_category'),
(38, 'Can change category', 10, 'change_category'),
(39, 'Can delete category', 10, 'delete_category'),
(40, 'Can view category', 10, 'view_category'),
(41, 'Can add Meta Tags', 11, 'add_metatags'),
(42, 'Can change Meta Tags', 11, 'change_metatags'),
(43, 'Can delete Meta Tags', 11, 'delete_metatags'),
(44, 'Can view Meta Tags', 11, 'view_metatags'),
(45, 'Can add tag', 12, 'add_tag'),
(46, 'Can change tag', 12, 'change_tag'),
(47, 'Can delete tag', 12, 'delete_tag'),
(48, 'Can view tag', 12, 'view_tag'),
(49, 'Can add blog post', 13, 'add_blogpost'),
(50, 'Can change blog post', 13, 'change_blogpost'),
(51, 'Can delete blog post', 13, 'delete_blogpost'),
(52, 'Can view blog post', 13, 'view_blogpost');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$zGOMthF3nBkI1EhJrw5wIt$ciJFPlRHtQgviD+JRKftS2tsXkmJ5vKwwzOj9SX5tuA=', '2025-12-27 09:26:14.933036', 1, 'sadra', 'sa', 'abad', 'sadra@gmail.com', 1, 1, '2025-12-27 12:54:46.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_author`
--

CREATE TABLE `blog_author` (
  `id` bigint(20) NOT NULL,
  `display_name` varchar(150) NOT NULL,
  `bio` longtext NOT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `blog_author`
--

INSERT INTO `blog_author` (`id`, `display_name`, `bio`, `avatar`, `website`, `user_id`) VALUES
(1, 'رضا کریمی', 'رضا کریمی - وکیل پایه یک دادگستری', '', 'https://karimivakil.ir', 1);

-- --------------------------------------------------------

--
-- Table structure for table `blog_blogpost`
--

CREATE TABLE `blog_blogpost` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `excerpt` longtext NOT NULL,
  `content` longtext NOT NULL,
  `cover_image` varchar(100) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `status` varchar(10) NOT NULL,
  `views` bigint(20) UNSIGNED NOT NULL CHECK (`views` >= 0),
  `seo_title` varchar(255) NOT NULL,
  `seo_description` varchar(300) NOT NULL,
  `reading_time` smallint(5) UNSIGNED DEFAULT NULL CHECK (`reading_time` >= 0),
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `publish_at` datetime(6) DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `meta_tags_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `blog_blogpost`
--

INSERT INTO `blog_blogpost` (`id`, `title`, `slug`, `excerpt`, `content`, `cover_image`, `description`, `is_featured`, `status`, `views`, `seo_title`, `seo_description`, `reading_time`, `created_at`, `updated_at`, `publish_at`, `author_id`, `category_id`, `meta_tags_id`) VALUES
(1, 'مجازات سکس و رابطه با زن شوهردار در قانون ایران', 'illegal-sex-with-married-woman-iran', '.', '.', 'blog/covers/optimized_by_opt.imum.ir__2026-01-05_14-03-33.jpg', '<h2 dir=\"rtl\">.مجازات سکس و رابطه با زن شوهردار در قانون ایران</h2>\r\n\r\n<p dir=\"rtl\">مجازات سکس و رابطه با زن شوهردار یکی از حساس&zwnj;ترین و شدیدترین احکام کیفری در نظام حقوقی جمهوری اسلامی ایران به شمار می&zwnj;رود. از آن&zwnj;جا که بنیان خانواده در فقه اسلامی و قوانین موضوعه جایگاه ویژه&zwnj;ای دارد، هرگونه رابطه خارج از چارچوب ازدواج، به&zwnj;ویژه زمانی که یکی از طرفین متأهل باشد، با برخورد جدی قانون&zwnj;گذار مواجه شده است.</p>\r\n\r\n<p dir=\"rtl\">بر اساس قانون مجازات اسلامی، رابطه با زن شوهردار می&zwnj;تواند مصادیق مختلفی داشته باشد؛ از روابط نامشروع بدون دخول گرفته تا زنا (سکس کامل). هر یک از این موارد، عنوان مجرمانه و مجازات متفاوتی دارند که در ادامه به&zwnj;صورت دقیق بررسی می&zwnj;شود.</p>\r\n\r\n<hr />\r\n<h2 dir=\"rtl\">جرم رابطه با زن شوهردار چیست؟</h2>\r\n\r\n<p dir=\"rtl\">از نظر حقوقی، هرگونه ارتباط جنسی یا عاطفی خارج از ازدواج میان زن و مردی که رابطه زوجیت ندارند، جرم محسوب می&zwnj;شود. در خصوص زن متأهل، این موضوع حساس&zwnj;تر بوده و قانون میان دو حالت تفکیک قائل شده است:</p>\r\n\r\n<ol dir=\"rtl\">\r\n	<li>\r\n	<p><strong>رابطه نامشروع مادون زنا</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>زنا (سکس کامل)</strong></p>\r\n	</li>\r\n</ol>\r\n\r\n<p dir=\"rtl\">تشخیص اینکه عمل ارتکابی در کدام دسته قرار می&zwnj;گیرد، تأثیر مستقیمی بر نوع و میزان مجازات دارد.</p>\r\n\r\n<hr />\r\n<h2 dir=\"rtl\">تفاوت رابطه نامشروع و زنا با زن شوهردار</h2>\r\n\r\n<h3 dir=\"rtl\">۱. رابطه نامشروع با زن شوهردار</h3>\r\n\r\n<p dir=\"rtl\">بر اساس ماده ۶۳۷ قانون مجازات اسلامی، رابطه نامشروع شامل اعمالی مانند:</p>\r\n\r\n<ul dir=\"rtl\">\r\n	<li>\r\n	<p>بوسیدن</p>\r\n	</li>\r\n	<li>\r\n	<p>در آغوش گرفتن</p>\r\n	</li>\r\n	<li>\r\n	<p>لمس بدن</p>\r\n	</li>\r\n	<li>\r\n	<p>هم&zwnj;خوابگی بدون دخول</p>\r\n	</li>\r\n	<li>\r\n	<p>چت و ارتباطات جنسی در فضای مجازی</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"rtl\">می&zwnj;شود؛ مشروط بر اینکه بین زن و مرد رابطه زوجیت وجود نداشته باشد.</p>\r\n\r\n<h3 dir=\"rtl\">مجازات رابطه نامشروع با زن شوهردار</h3>\r\n\r\n<p dir=\"rtl\">در این حالت:</p>\r\n\r\n<ul dir=\"rtl\">\r\n	<li>\r\n	<p><strong>زن شوهردار</strong> و</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>مرد (چه مجرد و چه متأهل)</strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"rtl\">به <strong>شلاق تعزیری تا ۹۹ ضربه</strong> محکوم می&zwnj;شوند. تعیین تعداد دقیق ضربات شلاق بر عهده قاضی و بر اساس شرایط پرونده است.</p>\r\n\r\n<hr />\r\n<h2 dir=\"rtl\">مجازات سکس (زنا) با زن شوهردار</h2>\r\n\r\n<p dir=\"rtl\">چنانچه رابطه از حد روابط نامشروع عبور کرده و <strong>دخول کامل</strong> (به اندازه ختنه&zwnj;گاه) رخ داده باشد، جرم <strong>زنا</strong> محقق می&zwnj;شود.</p>\r\n\r\n<h3 dir=\"rtl\">زنای محصنه چیست؟</h3>\r\n\r\n<p dir=\"rtl\">زنای محصنه زمانی اتفاق می&zwnj;افتد که:</p>\r\n\r\n<ul dir=\"rtl\">\r\n	<li>\r\n	<p>زن یا مرد <strong>متأهل</strong> باشد</p>\r\n	</li>\r\n	<li>\r\n	<p>امکان رابطه جنسی مشروع با همسر خود را داشته باشد</p>\r\n	</li>\r\n	<li>\r\n	<p>بالغ و عاقل باشد</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"rtl\">در این شرایط، زنا از نوع <strong>زنای محصنه</strong> محسوب می&zwnj;شود.</p>\r\n\r\n<hr />\r\n<h2 dir=\"rtl\">مجازات زن شوهردار در صورت ارتکاب زنا</h2>\r\n\r\n<p dir=\"rtl\">اگر زن شوهردار با رضایت خود اقدام به زنا کند:</p>\r\n\r\n<ul dir=\"rtl\">\r\n	<li>\r\n	<p>مجازات قانونی او <strong>رجم (سنگسار)</strong> است</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"rtl\">در صورت عدم امکان اجرای رجم:</p>\r\n\r\n<ul dir=\"rtl\">\r\n	<li>\r\n	<p>با پیشنهاد دادگاه و تأیید رئیس قوه قضاییه:</p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p><strong>اعدام</strong> (در صورت اثبات با شهادت)</p>\r\n		</li>\r\n		<li>\r\n		<p>یا <strong>۱۰۰ ضربه شلاق</strong> (در صورت اثبات غیر بینه&zwnj;ای)</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h2 dir=\"rtl\">مجازات مردی که با زن شوهردار رابطه دارد</h2>\r\n\r\n<p dir=\"rtl\">وضعیت مرد به تأهل او بستگی دارد:</p>\r\n\r\n<ul dir=\"rtl\">\r\n	<li>\r\n	<p><strong>مرد متأهل (محصن)</strong> &rarr; رجم یا اعدام</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>مرد مجرد</strong> &rarr; ۱۰۰ ضربه شلاق حدی</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h2 dir=\"rtl\">آیا مجازات سنگسار هنوز اجرا می&zwnj;شود؟</h2>\r\n\r\n<p dir=\"rtl\">در عمل، اجرای رجم بسیار نادر است. قانون پیش&zwnj;بینی کرده است که در صورت عدم امکان اجرای سنگسار، مجازات جایگزین (اعدام یا شلاق) اعمال شود. این تصمیم تنها با تأیید مقامات عالی قضایی امکان&zwnj;پذیر است.</p>\r\n\r\n<hr />\r\n<h2 dir=\"rtl\">رابطه با زن شوهردار بدون رضایت (زنای به عنف)</h2>\r\n\r\n<p dir=\"rtl\">در صورتی که زن شوهردار <strong>مورد اجبار، تهدید یا تجاوز</strong> قرار گرفته باشد:</p>\r\n\r\n<ul dir=\"rtl\">\r\n	<li>\r\n	<p>زن <strong>هیچ&zwnj;گونه مجازاتی ندارد</strong></p>\r\n	</li>\r\n	<li>\r\n	<p>مرد مرتکب به <strong>اعدام</strong> محکوم می&zwnj;شود</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h2 dir=\"rtl\">نحوه شکایت از رابطه یا سکس با زن شوهردار</h2>\r\n\r\n<p dir=\"rtl\">برای طرح شکایت:</p>\r\n\r\n<ol dir=\"rtl\">\r\n	<li>\r\n	<p>مراجعه به <strong>دفاتر خدمات الکترونیک قضایی</strong></p>\r\n	</li>\r\n	<li>\r\n	<p>ثبت شکواییه</p>\r\n	</li>\r\n	<li>\r\n	<p>ارائه ادله اثبات جرم مانند:</p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p>اقرار</p>\r\n		</li>\r\n		<li>\r\n		<p>شهادت شهود</p>\r\n		</li>\r\n		<li>\r\n		<p>فیلم یا پیام (در حد ایجاد علم قاضی)</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n\r\n<p dir=\"rtl\">⚠️ <strong>هشدار مهم:</strong><br />\r\nدر صورت عدم اثبات، شاکی ممکن است به جرم <strong>قذف یا افترا</strong> محکوم شود.</p>\r\n\r\n<hr />\r\n<h2 dir=\"rtl\">رسیدگی قضایی به جرم رابطه با زن شوهردار</h2>\r\n\r\n<ul dir=\"rtl\">\r\n	<li>\r\n	<p><strong>زنا با زن شوهردار</strong> &rarr; دادگاه کیفری یک</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>رابطه نامشروع</strong> &rarr; دادگاه کیفری دو</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"rtl\">این جرایم مستقیماً در دادگاه رسیدگی می&zwnj;شوند و وارد مرحله دادسرا نمی&zwnj;شوند.</p>\r\n\r\n<hr />\r\n<h2 dir=\"rtl\">حکم زن شوهرداری که دوست پسر دارد</h2>\r\n\r\n<p dir=\"rtl\">داشتن دوست پسر برای زن متأهل:</p>\r\n\r\n<ul dir=\"rtl\">\r\n	<li>\r\n	<p>اگر در حد ارتباط عاطفی یا فیزیکی بدون دخول باشد &rarr; شلاق</p>\r\n	</li>\r\n	<li>\r\n	<p>اگر منجر به رابطه جنسی شود &rarr; زنای محصنه و رجم</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h2 dir=\"rtl\">عواقب اجتماعی و خانوادگی رابطه با زن شوهردار</h2>\r\n\r\n<p dir=\"rtl\">علاوه بر مجازات قانونی، این رابطه پیامدهای سنگینی دارد، از جمله:</p>\r\n\r\n<ul dir=\"rtl\">\r\n	<li>\r\n	<p>فروپاشی خانواده</p>\r\n	</li>\r\n	<li>\r\n	<p>طلاق</p>\r\n	</li>\r\n	<li>\r\n	<p>از بین رفتن آبرو</p>\r\n	</li>\r\n	<li>\r\n	<p>آسیب&zwnj;های روحی و روانی</p>\r\n	</li>\r\n	<li>\r\n	<p>محرومیت&zwnj;های اجتماعی</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h2 dir=\"rtl\">حکم قضایی رابطه با زن شوهردار بدون دخول</h2>\r\n\r\n<p dir=\"rtl\">در روابطی مانند بوسیدن یا هم&zwnj;خوابگی بدون دخول:</p>\r\n\r\n<ul dir=\"rtl\">\r\n	<li>\r\n	<p>عنوان جرم: <strong>رابطه نامشروع</strong></p>\r\n	</li>\r\n	<li>\r\n	<p>مجازات: <strong>شلاق تا ۹۹ ضربه</strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h2 dir=\"rtl\">حکم زنای با رضایت</h2>\r\n\r\n<p dir=\"rtl\">بر اساس ماده ۲۲۵ قانون مجازات اسلامی:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p dir=\"rtl\">زن و مرد محصن &rarr; رجم</p>\r\n	</li>\r\n	<li>\r\n	<p dir=\"rtl\">در صورت عدم امکان &rarr; اعدام یا شلاق</p>\r\n	</li>\r\n	<li>\r\n	<p dir=\"rtl\">زنای به عنف &rarr; اعدام</p>\r\n	</li>\r\n</ul>', 0, 'published', 42, '', '', 12, '2026-01-05 10:36:28.688312', '2026-01-05 10:37:22.632714', '2026-01-05 10:36:23.000000', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_blogpost_tags`
--

CREATE TABLE `blog_blogpost_tags` (
  `id` bigint(20) NOT NULL,
  `blogpost_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(120) NOT NULL,
  `slug` varchar(140) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`id`, `name`, `slug`, `description`) VALUES
(1, 'پر جستجو ها', 'r-gstgo-h', '');

-- --------------------------------------------------------

--
-- Table structure for table `blog_metatags`
--

CREATE TABLE `blog_metatags` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `title` varchar(60) NOT NULL,
  `description` longtext NOT NULL,
  `author` varchar(100) NOT NULL,
  `copyright` varchar(100) NOT NULL,
  `robots` varchar(100) NOT NULL,
  `og_title` varchar(90) NOT NULL,
  `og_description` longtext NOT NULL,
  `og_image` varchar(100) DEFAULT NULL,
  `og_type` varchar(50) NOT NULL,
  `og_url` varchar(200) NOT NULL,
  `twitter_card` varchar(50) NOT NULL,
  `twitter_site` varchar(100) NOT NULL,
  `twitter_creator` varchar(100) NOT NULL,
  `twitter_title` varchar(70) NOT NULL,
  `twitter_description` longtext NOT NULL,
  `twitter_image` varchar(100) DEFAULT NULL,
  `canonical_url` varchar(200) NOT NULL,
  `content_type` varchar(50) NOT NULL,
  `viewport` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_tag`
--

CREATE TABLE `blog_tag` (
  `id` bigint(20) NOT NULL,
  `name` varchar(80) NOT NULL,
  `slug` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2025-12-27 09:29:20.389051', '1', 'رضا کریمی, وکیل پایه یک دادگستری', 1, '[{\"added\": {}}]', 7, 1),
(2, '2026-01-05 10:25:29.828514', '1', 'رضا کریمی', 1, '[{\"added\": {}}]', 9, 1),
(3, '2026-01-05 10:25:40.136899', '1', 'پر جستجو ها', 1, '[{\"added\": {}}]', 10, 1),
(4, '2026-01-05 10:36:28.754598', '1', 'مجازات سکس و رابطه با زن شوهردار در قانون ایران', 1, '[{\"added\": {}}]', 13, 1),
(5, '2026-01-05 10:37:22.638176', '1', 'مجازات سکس و رابطه با زن شوهردار در قانون ایران', 2, '[{\"changed\": {\"fields\": [\"\\u062a\\u0648\\u0636\\u06cc\\u062d\\u0627\\u062a \"]}}]', 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(9, 'blog', 'author'),
(13, 'blog', 'blogpost'),
(10, 'blog', 'category'),
(11, 'blog', 'metatags'),
(12, 'blog', 'tag'),
(5, 'contenttypes', 'contenttype'),
(8, 'main', 'consultation'),
(7, 'main', 'content'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-12-27 06:43:10.213470'),
(2, 'auth', '0001_initial', '2025-12-27 06:43:10.382016'),
(3, 'admin', '0001_initial', '2025-12-27 06:43:10.417448'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-12-27 06:43:10.423044'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-12-27 06:43:10.427920'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-12-27 06:43:10.456148'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-12-27 06:43:10.472645'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-12-27 06:43:10.488153'),
(9, 'auth', '0004_alter_user_username_opts', '2025-12-27 06:43:10.493691'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-12-27 06:43:10.508818'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-12-27 06:43:10.510396'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-12-27 06:43:10.516391'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-12-27 06:43:10.527868'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-12-27 06:43:10.539192'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-12-27 06:43:10.554798'),
(16, 'auth', '0011_update_proxy_permissions', '2025-12-27 06:43:10.560360'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-12-27 06:43:10.571851'),
(18, 'blog', '0001_initial', '2025-12-27 06:43:10.768242'),
(19, 'main', '0001_initial', '2025-12-27 06:43:10.777197'),
(20, 'main', '0002_consultation', '2025-12-27 06:43:10.785746'),
(21, 'sessions', '0001_initial', '2025-12-27 06:43:10.805354');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('m5i7zj9hrnzx6ql58m9o72818ge2sfl3', '.eJxVjEEOwiAQRe_C2pACBQaX7nsGMjCDVE2blHZlvLtt0oVu_3vvv0XEba1xa7zEkcRVKHH53RLmJ08HoAdO91nmeVqXMclDkSdtcpiJX7fT_Tuo2OpeewSkricfrAslK5fIk_YBNHllki66cODSgwLoiTtjwYDr0s6sRjbi8wXgOTeI:1vZQYw:9hnOAfDyPvmqzDnZLmlMK5HXDmT29bAZU6sBupT6muI', '2026-01-10 09:26:14.934609');

-- --------------------------------------------------------

--
-- Table structure for table `main_consultation`
--

CREATE TABLE `main_consultation` (
  `id` bigint(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `main_consultation`
--

INSERT INTO `main_consultation` (`id`, `mobile`, `created_at`) VALUES
(1, '09309087909', '2025-12-29 13:07:38.437307'),
(2, '09148660463', '2025-12-30 14:45:38.766867');

-- --------------------------------------------------------

--
-- Table structure for table `main_content`
--

CREATE TABLE `main_content` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `main_content`
--

INSERT INTO `main_content` (`id`, `title`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'رضا کریمی, وکیل پایه یک دادگستری', 'images/about_vzI4Oui.jpg', 'قبول وکالت در دعاوی ثبتی , حقوقی , کیفری  و خانواده', 1, '2025-12-27 09:29:20.387329', '2025-12-27 09:29:20.387350');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `blog_author`
--
ALTER TABLE `blog_author`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `blog_blogpost`
--
ALTER TABLE `blog_blogpost`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD UNIQUE KEY `meta_tags_id` (`meta_tags_id`),
  ADD KEY `blog_blogpo_slug_361555_idx` (`slug`),
  ADD KEY `blog_blogpo_status_400e50_idx` (`status`,`publish_at`),
  ADD KEY `blog_blogpost_author_id_ffcc150f_fk_blog_author_id` (`author_id`),
  ADD KEY `blog_blogpost_category_id_0e9835dd_fk_blog_category_id` (`category_id`);

--
-- Indexes for table `blog_blogpost_tags`
--
ALTER TABLE `blog_blogpost_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_blogpost_tags_blogpost_id_tag_id_657ed214_uniq` (`blogpost_id`,`tag_id`),
  ADD KEY `blog_blogpost_tags_tag_id_680e7081_fk_blog_tag_id` (`tag_id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `blog_metatags`
--
ALTER TABLE `blog_metatags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_tag`
--
ALTER TABLE `blog_tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `main_consultation`
--
ALTER TABLE `main_consultation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_content`
--
ALTER TABLE `main_content`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_author`
--
ALTER TABLE `blog_author`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_blogpost`
--
ALTER TABLE `blog_blogpost`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_blogpost_tags`
--
ALTER TABLE `blog_blogpost_tags`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_metatags`
--
ALTER TABLE `blog_metatags`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_tag`
--
ALTER TABLE `blog_tag`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `main_consultation`
--
ALTER TABLE `main_consultation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_content`
--
ALTER TABLE `main_content`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `blog_author`
--
ALTER TABLE `blog_author`
  ADD CONSTRAINT `blog_author_user_id_bedbc289_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `blog_blogpost`
--
ALTER TABLE `blog_blogpost`
  ADD CONSTRAINT `blog_blogpost_author_id_ffcc150f_fk_blog_author_id` FOREIGN KEY (`author_id`) REFERENCES `blog_author` (`id`),
  ADD CONSTRAINT `blog_blogpost_category_id_0e9835dd_fk_blog_category_id` FOREIGN KEY (`category_id`) REFERENCES `blog_category` (`id`),
  ADD CONSTRAINT `blog_blogpost_meta_tags_id_0b2c8b91_fk_blog_metatags_id` FOREIGN KEY (`meta_tags_id`) REFERENCES `blog_metatags` (`id`);

--
-- Constraints for table `blog_blogpost_tags`
--
ALTER TABLE `blog_blogpost_tags`
  ADD CONSTRAINT `blog_blogpost_tags_blogpost_id_cdcddf6c_fk_blog_blogpost_id` FOREIGN KEY (`blogpost_id`) REFERENCES `blog_blogpost` (`id`),
  ADD CONSTRAINT `blog_blogpost_tags_tag_id_680e7081_fk_blog_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `blog_tag` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
