-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 16, 2021 at 03:57 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `djangomain`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'kementrian');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(6, 1, 25),
(7, 1, 26),
(8, 1, 27),
(9, 1, 28),
(10, 1, 29),
(11, 1, 30),
(12, 1, 31),
(1, 1, 32),
(2, 1, 33),
(3, 1, 34),
(4, 1, 35),
(5, 1, 36);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(25, 'Can add data pasien', 7, 'add_datapasien'),
(26, 'Can change data pasien', 7, 'change_datapasien'),
(27, 'Can delete data pasien', 7, 'delete_datapasien'),
(28, 'Can view data pasien', 7, 'view_datapasien'),
(29, 'Can add harga', 8, 'add_harga'),
(30, 'Can change harga', 8, 'change_harga'),
(31, 'Can delete harga', 8, 'delete_harga'),
(32, 'Can view harga', 8, 'view_harga'),
(33, 'Can add berita', 9, 'add_berita'),
(34, 'Can change berita', 9, 'change_berita'),
(35, 'Can delete berita', 9, 'delete_berita'),
(36, 'Can view berita', 9, 'view_berita'),
(37, 'Can add rujukan karantina', 10, 'add_rujukankarantina'),
(38, 'Can change rujukan karantina', 10, 'change_rujukankarantina'),
(39, 'Can delete rujukan karantina', 10, 'delete_rujukankarantina'),
(40, 'Can view rujukan karantina', 10, 'view_rujukankarantina');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$gDfM6vALGcQE$0c7yKx6LA+YnnMDGHdkUKls+R55gDPZFAYBL0x2YBh0=', '2021-01-05 15:42:38.221381', 1, 'abifadli', '', '', 'abi@fadli.co.id', 1, 1, '2021-01-05 15:42:22.120362'),
(2, 'pbkdf2_sha256$216000$JjCkSV2SX4yU$3521aVzbBJN8F3QcHnBIjMIMzoV+ZS3Ng4mkpmyAVYk=', '2021-01-06 04:50:46.923890', 0, 'faza', '', '', '', 0, 1, '2021-01-05 15:42:58.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-01-05 15:42:58.535830', '2', 'faza', 1, '[{\"added\": {}}]', 4, 1),
(2, '2021-01-05 15:43:21.346605', '1', 'kementrian', 1, '[{\"added\": {}}]', 3, 1),
(3, '2021-01-05 15:43:33.093540', '2', 'faza', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'harga', 'harga'),
(9, 'info', 'berita'),
(10, 'karantina', 'rujukankarantina'),
(7, 'map', 'datapasien'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-01-05 15:40:51.466648'),
(2, 'auth', '0001_initial', '2021-01-05 15:40:51.721163'),
(3, 'admin', '0001_initial', '2021-01-05 15:40:52.532626'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-01-05 15:40:52.713739'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-01-05 15:40:52.738838'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-01-05 15:40:52.883969'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-01-05 15:40:52.996067'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-01-05 15:40:53.107799'),
(9, 'auth', '0004_alter_user_username_opts', '2021-01-05 15:40:53.138709'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-01-05 15:40:53.258969'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-01-05 15:40:53.269062'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-01-05 15:40:53.299983'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-01-05 15:40:53.386144'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-01-05 15:40:53.501607'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-01-05 15:40:53.621148'),
(16, 'auth', '0011_update_proxy_permissions', '2021-01-05 15:40:53.652234'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-01-05 15:40:53.766196'),
(18, 'harga', '0001_initial', '2021-01-05 15:40:53.815767'),
(19, 'harga', '0002_auto_20210101_0557', '2021-01-05 15:40:53.992949'),
(20, 'info', '0001_initial', '2021-01-05 15:40:54.049706'),
(21, 'info', '0002_auto_20201229_1654', '2021-01-05 15:40:54.316282'),
(22, 'info', '0003_auto_20201230_0355', '2021-01-05 15:40:54.381607'),
(23, 'info', '0004_auto_20201230_0416', '2021-01-05 15:40:54.568453'),
(24, 'info', '0005_auto_20201230_0741', '2021-01-05 15:40:54.628893'),
(25, 'info', '0006_auto_20201230_1459', '2021-01-05 15:40:54.708921'),
(26, 'info', '0007_berita_fotojudul', '2021-01-05 15:40:54.765275'),
(27, 'info', '0008_remove_berita_fotojudul', '2021-01-05 15:40:54.819339'),
(28, 'info', '0009_uploaddocument', '2021-01-05 15:40:54.864618'),
(29, 'info', '0010_auto_20210102_0835', '2021-01-05 15:40:54.926103'),
(30, 'info', '0011_auto_20210102_0903', '2021-01-05 15:40:54.936385'),
(31, 'info', '0012_delete_uploaddocument', '2021-01-05 15:40:54.959265'),
(32, 'info', '0013_berita_fotojudul', '2021-01-05 15:40:55.025988'),
(33, 'info', '0014_auto_20210102_1306', '2021-01-05 15:40:55.037396'),
(34, 'info', '0015_auto_20210103_0340', '2021-01-05 15:40:55.051581'),
(35, 'map', '0001_initial', '2021-01-05 15:40:55.109558'),
(36, 'map', '0002_datapasien_datawaktu', '2021-01-05 15:40:55.171857'),
(37, 'map', '0003_auto_20210104_1227', '2021-01-05 15:40:55.348776'),
(38, 'sessions', '0001_initial', '2021-01-05 15:40:55.398323'),
(39, 'karantina', '0001_initial', '2021-01-06 02:12:16.446835'),
(40, 'karantina', '0002_auto_20210106_0338', '2021-01-06 03:38:39.444425');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('bl96f5qyvivflifhooo2jpkragexa48s', '.eJxVjMsOwiAQRf-FtSEwUh4u3fcbCMMwUjU0Ke3K-O_apAvd3nPOfYmYtrXGrZclTiQuAsTpd8OUH6XtgO6p3WaZ57YuE8pdkQftcpypPK-H-3dQU6_fGo0BBqWtwkBu8MpQ4LNmRMiBkNgF9tZopYsDxxyYXAkDa8WOwXrx_gDesTfx:1kwocc:PwllAxnULgCA9Yxj2cQvyGubjXtdbQKXlk-Ie2-HvR8', '2021-01-19 15:51:46.274506'),
('fe5v6xm4h3uss6obiuvz4fxrerkoo322', '.eJxVjMsOwiAQRf-FtSEwUh4u3fcbCMMwUjU0Ke3K-O_apAvd3nPOfYmYtrXGrZclTiQuAsTpd8OUH6XtgO6p3WaZ57YuE8pdkQftcpypPK-H-3dQU6_fGo0BBqWtwkBu8MpQ4LNmRMiBkNgF9tZopYsDxxyYXAkDa8WOwXrx_gDesTfx:1kx0fQ:rDPhJ4Bdsq9x6JOJ8s77Lu9el_D410f0xLwuGy13ixc', '2021-01-20 04:43:28.539618'),
('gvxg3o5pkcx2jnvdg2yd1t0y63vyiq1v', '.eJxVjMsOwiAQRf-FtSEwUh4u3fcbCMMwUjU0Ke3K-O_apAvd3nPOfYmYtrXGrZclTiQuAsTpd8OUH6XtgO6p3WaZ57YuE8pdkQftcpypPK-H-3dQU6_fGo0BBqWtwkBu8MpQ4LNmRMiBkNgF9tZopYsDxxyYXAkDa8WOwXrx_gDesTfx:1kx0Yh:YPW64pq5bopw1wM2gQ8VleFGnvrzHTG-jn7-lSJxzOo', '2021-01-20 04:36:31.920457'),
('j422dz1xbddsl2lgvetdcg0qwqbfuuog', '.eJxVjMsOwiAQRf-FtSEwUh4u3fcbCMMwUjU0Ke3K-O_apAvd3nPOfYmYtrXGrZclTiQuAsTpd8OUH6XtgO6p3WaZ57YuE8pdkQftcpypPK-H-3dQU6_fGo0BBqWtwkBu8MpQ4LNmRMiBkNgF9tZopYsDxxyYXAkDa8WOwXrx_gDesTfx:1kx0YC:T-zIpZVrOaQhmPf3ylrZO8V_oDakZAEk-iTK3ij7mnU', '2021-01-20 04:36:00.638940'),
('ndj22uotnnryip8340ju3mu6ee73byex', '.eJxVjMsOwiAQRf-FtSEwUh4u3fcbCMMwUjU0Ke3K-O_apAvd3nPOfYmYtrXGrZclTiQuAsTpd8OUH6XtgO6p3WaZ57YuE8pdkQftcpypPK-H-3dQU6_fGo0BBqWtwkBu8MpQ4LNmRMiBkNgF9tZopYsDxxyYXAkDa8WOwXrx_gDesTfx:1kwzwr:-281bUXPQhoEGaJ3eeUoi--chYlYue_OQBd0q1cXf_Y', '2021-01-20 03:57:25.576255'),
('pz8942wrro9l9647tc47ujmwvepao3j2', '.eJxVjMsOwiAQRf-FtSEwUh4u3fcbCMMwUjU0Ke3K-O_apAvd3nPOfYmYtrXGrZclTiQuAsTpd8OUH6XtgO6p3WaZ57YuE8pdkQftcpypPK-H-3dQU6_fGo0BBqWtwkBu8MpQ4LNmRMiBkNgF9tZopYsDxxyYXAkDa8WOwXrx_gDesTfx:1kwyU1:pWF44clsN1-OiFjGUzj2x6tsYMau39rtU5FR3_5-hic', '2021-01-20 02:23:33.188048'),
('ym65jvivlz7905io3y268by43ykiq3j3', '.eJxVjMsOwiAQRf-FtSEwUh4u3fcbCMMwUjU0Ke3K-O_apAvd3nPOfYmYtrXGrZclTiQuAsTpd8OUH6XtgO6p3WaZ57YuE8pdkQftcpypPK-H-3dQU6_fGo0BBqWtwkBu8MpQ4LNmRMiBkNgF9tZopYsDxxyYXAkDa8WOwXrx_gDesTfx:1kwyUK:7ZTgi3zi2YeDHFYuzMC756n2wH8GoXLTJuza2t1Zbwo', '2021-01-20 02:23:52.052494');

-- --------------------------------------------------------

--
-- Table structure for table `harga_harga`
--

CREATE TABLE `harga_harga` (
  `id` int(11) NOT NULL,
  `daerah` varchar(100) NOT NULL,
  `hargaSwab` decimal(6,0) NOT NULL,
  `hargaRapid` decimal(6,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `info_berita`
--

CREATE TABLE `info_berita` (
  `id` int(11) NOT NULL,
  `judul` varchar(20) NOT NULL,
  `isi` longtext NOT NULL,
  `FotoJudul` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info_berita`
--

INSERT INTO `info_berita` (`id`, `judul`, `isi`, `FotoJudul`) VALUES
(3, 'Banjir Di Atas Bumi', 'tes1', '8b2ea05ad48d4893b69ff9c872aaab26.png'),
(9, 'SATGAS Covid-19', 'Sembilan provinsi itu yakni DKI Jakarta (84,74 persen), Banten (84,52 persen), DIY (83,36 persen), Jawa Barat (79,77 persen), Sulawesi Barat (79,31 persen), Jawa Timur (78,41 persen). \"Kemudian Jawa Tengah 76,27 persen, Sulawesi Selatan 72,40 persen dan Sulawesi Tengah 70,59 persen. Ini harusnya menjadi peringatan bagi semua pihak,\" ujar Wiku dikutip dari siaran pers Tim Komunikasi Komite Penanganan Corona Virus Disease 2019 (Covid-19) dan Pemulihan Ekonomi Nasional, Rabu (6/1/2021). \"Bahwa Indonesia sedang dalam keadaan darurat yang ditandai dengan ketersediaan tempat tidur yang semakin berkurang jumlahnya,\" lanjutnya menegaskan.', '0cd548718ee44b2783bdb9a3221b960c.jpeg'),
(10, 'penyakit', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', '7b9ed377c32f4cd9a8ee63016a856bdb.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `karantina_rujukankarantina`
--

CREATE TABLE `karantina_rujukankarantina` (
  `id` int(11) NOT NULL,
  `Kabupaten` varchar(255) NOT NULL,
  `namaRS` varchar(255) NOT NULL,
  `namaTempatKarantina` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karantina_rujukankarantina`
--

INSERT INTO `karantina_rujukankarantina` (`id`, `Kabupaten`, `namaRS`, `namaTempatKarantina`, `kecamatan`) VALUES
(6, 'Gunungkidul', 'Rumah Sakit Umum Kabupaten Gunungkidul', 'RSUD Wonosari', 'Playen'),
(7, 'Yogyakarta', 'RS JIH', 'Stadion Maguwo', ''),
(10, 'Sleman', 'Rumah Sakit JIH', 'TambakBoyo II', 'Condongcatur'),
(11, 'Bantul', 'RSUD Bantul', '-', 'Bantul');

-- --------------------------------------------------------

--
-- Table structure for table `map_datapasien`
--

CREATE TABLE `map_datapasien` (
  `id` int(11) NOT NULL,
  `daerah` varchar(100) NOT NULL,
  `P_Positif` decimal(6,0) NOT NULL,
  `P_Meninggal` decimal(6,0) NOT NULL,
  `P_Sembuh` decimal(6,0) NOT NULL,
  `datawaktu` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Indexes for table `harga_harga`
--
ALTER TABLE `harga_harga`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info_berita`
--
ALTER TABLE `info_berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `karantina_rujukankarantina`
--
ALTER TABLE `karantina_rujukankarantina`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `map_datapasien`
--
ALTER TABLE `map_datapasien`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `harga_harga`
--
ALTER TABLE `harga_harga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `info_berita`
--
ALTER TABLE `info_berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `karantina_rujukankarantina`
--
ALTER TABLE `karantina_rujukankarantina`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `map_datapasien`
--
ALTER TABLE `map_datapasien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
