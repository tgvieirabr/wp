-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_jet_cct_projects`
--

DROP TABLE IF EXISTS `wp_jet_cct_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_jet_cct_projects` (
  `_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `cct_status` text COLLATE utf8mb4_unicode_520_ci,
  `titulo` text COLLATE utf8mb4_unicode_520_ci,
  `imagem` text COLLATE utf8mb4_unicode_520_ci,
  `resumo` longtext COLLATE utf8mb4_unicode_520_ci,
  `descricao` longtext COLLATE utf8mb4_unicode_520_ci,
  `cct_author_id` bigint(20) DEFAULT NULL,
  `cct_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `cct_modified` timestamp NULL DEFAULT NULL,
  `data_do_projeto` text COLLATE utf8mb4_unicode_520_ci,
  `tipo_de_projeto` text COLLATE utf8mb4_unicode_520_ci,
  `link_do_projeto` text COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_jet_cct_projects`
--

LOCK TABLES `wp_jet_cct_projects` WRITE;
/*!40000 ALTER TABLE `wp_jet_cct_projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_jet_cct_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_jet_post_types`
--

DROP TABLE IF EXISTS `wp_jet_post_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_jet_post_types` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `slug` text COLLATE utf8mb4_unicode_520_ci,
  `status` text COLLATE utf8mb4_unicode_520_ci,
  `labels` longtext COLLATE utf8mb4_unicode_520_ci,
  `args` longtext COLLATE utf8mb4_unicode_520_ci,
  `meta_fields` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_jet_post_types`
--

LOCK TABLES `wp_jet_post_types` WRITE;
/*!40000 ALTER TABLE `wp_jet_post_types` DISABLE KEYS */;
INSERT INTO `wp_jet_post_types` VALUES (1,'projects','content-type',NULL,'a:20:{s:10:\"has_single\";b:0;s:12:\"create_index\";b:0;s:16:\"rest_get_enabled\";b:1;s:16:\"rest_put_enabled\";b:0;s:17:\"rest_post_enabled\";b:0;s:19:\"rest_delete_enabled\";b:0;s:16:\"hide_field_names\";b:1;s:4:\"name\";s:8:\"Projects\";s:4:\"slug\";s:8:\"projects\";s:8:\"position\";i:4;s:4:\"icon\";s:22:\"dashicons-format-aside\";s:10:\"capability\";s:10:\"edit_posts\";s:17:\"related_post_type\";s:0:\"\";s:23:\"related_post_type_title\";s:0:\"\";s:25:\"related_post_type_content\";s:0:\"\";s:15:\"rest_get_access\";s:0:\"\";s:15:\"rest_put_access\";s:10:\"edit_posts\";s:16:\"rest_post_access\";s:10:\"edit_posts\";s:18:\"rest_delete_access\";s:10:\"edit_posts\";s:13:\"admin_columns\";a:13:{s:3:\"_ID\";a:4:{s:7:\"enabled\";b:1;s:11:\"is_sortable\";b:1;s:6:\"is_num\";b:1;s:6:\"prefix\";s:1:\"#\";}s:18:\"cct_single_post_id\";a:3:{s:7:\"enabled\";b:0;s:11:\"is_sortable\";b:0;s:6:\"is_num\";b:0;}s:13:\"cct_author_id\";a:3:{s:7:\"enabled\";b:0;s:11:\"is_sortable\";b:0;s:6:\"is_num\";b:0;}s:11:\"cct_created\";a:3:{s:7:\"enabled\";b:0;s:11:\"is_sortable\";b:0;s:6:\"is_num\";b:0;}s:12:\"cct_modified\";a:3:{s:7:\"enabled\";b:0;s:11:\"is_sortable\";b:0;s:6:\"is_num\";b:0;}s:10:\"cct_status\";a:3:{s:7:\"enabled\";b:0;s:11:\"is_sortable\";b:0;s:6:\"is_num\";b:0;}s:6:\"imagem\";a:3:{s:7:\"enabled\";b:0;s:11:\"is_sortable\";b:0;s:6:\"is_num\";b:0;}s:6:\"resumo\";a:3:{s:7:\"enabled\";b:0;s:11:\"is_sortable\";b:0;s:6:\"is_num\";b:0;}s:6:\"titulo\";a:3:{s:7:\"enabled\";b:1;s:11:\"is_sortable\";b:0;s:6:\"is_num\";b:0;}s:9:\"descricao\";a:3:{s:7:\"enabled\";b:0;s:11:\"is_sortable\";b:0;s:6:\"is_num\";b:0;}s:15:\"data_do_projeto\";a:3:{s:7:\"enabled\";b:1;s:11:\"is_sortable\";b:1;s:6:\"is_num\";b:0;}s:15:\"tipo_de_projeto\";a:3:{s:7:\"enabled\";b:0;s:11:\"is_sortable\";b:0;s:6:\"is_num\";b:0;}s:15:\"link_do_projeto\";a:3:{s:7:\"enabled\";b:0;s:11:\"is_sortable\";b:0;s:6:\"is_num\";b:0;}}}','a:7:{i:0;a:12:{s:5:\"title\";s:6:\"Imagem\";s:4:\"name\";s:6:\"imagem\";s:11:\"object_type\";s:5:\"field\";s:5:\"width\";s:4:\"100%\";s:7:\"options\";a:0:{}s:15:\"repeater-fields\";a:0:{}s:4:\"type\";s:5:\"media\";s:2:\"id\";i:3948;s:8:\"isNested\";b:0;s:14:\"options_source\";s:6:\"manual\";s:11:\"description\";s:28:\"Insira uma imagem do projeto\";s:12:\"value_format\";s:4:\"both\";}i:1;a:11:{s:5:\"title\";s:7:\"Título\";s:4:\"name\";s:6:\"titulo\";s:11:\"object_type\";s:5:\"field\";s:5:\"width\";s:4:\"100%\";s:7:\"options\";a:0:{}s:15:\"repeater-fields\";a:0:{}s:4:\"type\";s:4:\"text\";s:2:\"id\";i:9817;s:8:\"isNested\";b:0;s:14:\"options_source\";s:6:\"manual\";s:11:\"description\";s:27:\"Digite o Título do projeto\";}i:2;a:10:{s:5:\"title\";s:6:\"Resumo\";s:4:\"name\";s:6:\"resumo\";s:11:\"object_type\";s:5:\"field\";s:5:\"width\";s:4:\"100%\";s:7:\"options\";a:0:{}s:15:\"repeater-fields\";a:0:{}s:4:\"type\";s:8:\"textarea\";s:2:\"id\";i:5002;s:8:\"isNested\";b:0;s:14:\"options_source\";s:6:\"manual\";}i:3;a:11:{s:5:\"title\";s:11:\"Descrição\";s:4:\"name\";s:9:\"descricao\";s:11:\"object_type\";s:5:\"field\";s:5:\"width\";s:4:\"100%\";s:7:\"options\";a:0:{}s:15:\"repeater-fields\";a:0:{}s:4:\"type\";s:8:\"textarea\";s:2:\"id\";i:1010;s:8:\"isNested\";b:0;s:14:\"options_source\";s:6:\"manual\";s:11:\"description\";s:31:\"Insira a descrição do projeto\";}i:4;a:11:{s:5:\"title\";s:15:\"Data do projeto\";s:4:\"name\";s:15:\"data_do_projeto\";s:11:\"object_type\";s:5:\"field\";s:5:\"width\";s:4:\"100%\";s:7:\"options\";a:0:{}s:15:\"repeater-fields\";a:0:{}s:4:\"type\";s:14:\"datetime-local\";s:2:\"id\";i:3804;s:8:\"isNested\";b:0;s:14:\"options_source\";s:6:\"manual\";s:11:\"description\";s:22:\"Insira data do projeto\";}i:5;a:12:{s:5:\"title\";s:15:\"Tipo de projeto\";s:4:\"name\";s:15:\"tipo_de_projeto\";s:11:\"object_type\";s:5:\"field\";s:5:\"width\";s:4:\"100%\";s:7:\"options\";a:5:{i:0;a:3:{s:3:\"key\";s:15:\"Desenvolvimento\";s:5:\"value\";s:15:\"Desenvolvimento\";s:2:\"id\";i:8378;}i:1;a:3:{s:3:\"key\";s:18:\"Site Institucional\";s:5:\"value\";s:18:\"Site Institucional\";s:2:\"id\";i:6616;}i:2;a:3:{s:3:\"key\";s:10:\"E-commerce\";s:5:\"value\";s:10:\"E-commerce\";s:2:\"id\";i:8284;}i:3;a:3:{s:3:\"key\";s:29:\"Aplicativo para IOS e Android\";s:5:\"value\";s:29:\"Aplicativo para IOS e Android\";s:2:\"id\";i:2572;}i:4;a:3:{s:3:\"key\";s:24:\"Blogs e sites editoriais\";s:5:\"value\";s:24:\"Blogs e sites editoriais\";s:2:\"id\";i:1813;}}s:15:\"repeater-fields\";a:0:{}s:4:\"type\";s:8:\"checkbox\";s:2:\"id\";i:8437;s:8:\"isNested\";b:0;s:14:\"options_source\";s:6:\"manual\";s:12:\"allow_custom\";s:0:\"\";s:11:\"save_custom\";s:0:\"\";}i:6;a:11:{s:5:\"title\";s:15:\"Link do projeto\";s:4:\"name\";s:15:\"link_do_projeto\";s:11:\"object_type\";s:5:\"field\";s:5:\"width\";s:4:\"100%\";s:7:\"options\";a:0:{}s:15:\"repeater-fields\";a:0:{}s:4:\"type\";s:4:\"text\";s:2:\"id\";i:2580;s:8:\"isNested\";b:0;s:14:\"options_source\";s:6:\"manual\";s:11:\"description\";s:44:\"Insira aqui o link para visualizar o projeto\";}}');
/*!40000 ALTER TABLE `wp_jet_post_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_jet_taxonomies`
--

DROP TABLE IF EXISTS `wp_jet_taxonomies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_jet_taxonomies` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `slug` text COLLATE utf8mb4_unicode_520_ci,
  `object_type` text COLLATE utf8mb4_unicode_520_ci,
  `status` text COLLATE utf8mb4_unicode_520_ci,
  `labels` longtext COLLATE utf8mb4_unicode_520_ci,
  `args` longtext COLLATE utf8mb4_unicode_520_ci,
  `meta_fields` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_jet_taxonomies`
--

LOCK TABLES `wp_jet_taxonomies` WRITE;
/*!40000 ALTER TABLE `wp_jet_taxonomies` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_jet_taxonomies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://teste-wp.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://teste-wp.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','teste-wp','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','tgvieirabr@gmail.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:111:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:36:\"projetos/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"projetos/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"projetos/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"projetos/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"projetos/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"projetos/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"projetos/([^/]+)/embed/?$\";s:41:\"index.php?projetos=$matches[1]&embed=true\";s:29:\"projetos/([^/]+)/trackback/?$\";s:35:\"index.php?projetos=$matches[1]&tb=1\";s:37:\"projetos/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?projetos=$matches[1]&paged=$matches[2]\";s:44:\"projetos/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?projetos=$matches[1]&cpage=$matches[2]\";s:33:\"projetos/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?projetos=$matches[1]&page=$matches[2]\";s:25:\"projetos/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"projetos/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"projetos/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"projetos/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"projetos/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"projetos/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=58&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:3:{i:0;s:29:\"acf-extended/acf-extended.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','-3','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','teste','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','teste','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','56657','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','58','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1716768167','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'wp_attachment_pages_enabled','0','yes');
INSERT INTO `wp_options` VALUES (100,'initial_db_version','56657','yes');
INSERT INTO `wp_options` VALUES (101,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (102,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (103,'user_count','2','no');
INSERT INTO `wp_options` VALUES (104,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'sidebars_widgets','a:3:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:7:\"sidebar\";a:0:{}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (106,'cron','a:9:{i:1701914569;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1701950569;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1701950594;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1701993769;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1701993794;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1701993796;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1702428722;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1702512169;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (116,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (119,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (121,'_transient_wp_core_block_css_files','a:2:{s:7:\"version\";s:5:\"6.4.1\";s:5:\"files\";a:500:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:23:\"post-date/style-rtl.css\";i:281;s:27:\"post-date/style-rtl.min.css\";i:282;s:19:\"post-date/style.css\";i:283;s:23:\"post-date/style.min.css\";i:284;s:27:\"post-excerpt/editor-rtl.css\";i:285;s:31:\"post-excerpt/editor-rtl.min.css\";i:286;s:23:\"post-excerpt/editor.css\";i:287;s:27:\"post-excerpt/editor.min.css\";i:288;s:26:\"post-excerpt/style-rtl.css\";i:289;s:30:\"post-excerpt/style-rtl.min.css\";i:290;s:22:\"post-excerpt/style.css\";i:291;s:26:\"post-excerpt/style.min.css\";i:292;s:34:\"post-featured-image/editor-rtl.css\";i:293;s:38:\"post-featured-image/editor-rtl.min.css\";i:294;s:30:\"post-featured-image/editor.css\";i:295;s:34:\"post-featured-image/editor.min.css\";i:296;s:33:\"post-featured-image/style-rtl.css\";i:297;s:37:\"post-featured-image/style-rtl.min.css\";i:298;s:29:\"post-featured-image/style.css\";i:299;s:33:\"post-featured-image/style.min.css\";i:300;s:34:\"post-navigation-link/style-rtl.css\";i:301;s:38:\"post-navigation-link/style-rtl.min.css\";i:302;s:30:\"post-navigation-link/style.css\";i:303;s:34:\"post-navigation-link/style.min.css\";i:304;s:28:\"post-template/editor-rtl.css\";i:305;s:32:\"post-template/editor-rtl.min.css\";i:306;s:24:\"post-template/editor.css\";i:307;s:28:\"post-template/editor.min.css\";i:308;s:27:\"post-template/style-rtl.css\";i:309;s:31:\"post-template/style-rtl.min.css\";i:310;s:23:\"post-template/style.css\";i:311;s:27:\"post-template/style.min.css\";i:312;s:24:\"post-terms/style-rtl.css\";i:313;s:28:\"post-terms/style-rtl.min.css\";i:314;s:20:\"post-terms/style.css\";i:315;s:24:\"post-terms/style.min.css\";i:316;s:24:\"post-title/style-rtl.css\";i:317;s:28:\"post-title/style-rtl.min.css\";i:318;s:20:\"post-title/style.css\";i:319;s:24:\"post-title/style.min.css\";i:320;s:26:\"preformatted/style-rtl.css\";i:321;s:30:\"preformatted/style-rtl.min.css\";i:322;s:22:\"preformatted/style.css\";i:323;s:26:\"preformatted/style.min.css\";i:324;s:24:\"pullquote/editor-rtl.css\";i:325;s:28:\"pullquote/editor-rtl.min.css\";i:326;s:20:\"pullquote/editor.css\";i:327;s:24:\"pullquote/editor.min.css\";i:328;s:23:\"pullquote/style-rtl.css\";i:329;s:27:\"pullquote/style-rtl.min.css\";i:330;s:19:\"pullquote/style.css\";i:331;s:23:\"pullquote/style.min.css\";i:332;s:23:\"pullquote/theme-rtl.css\";i:333;s:27:\"pullquote/theme-rtl.min.css\";i:334;s:19:\"pullquote/theme.css\";i:335;s:23:\"pullquote/theme.min.css\";i:336;s:39:\"query-pagination-numbers/editor-rtl.css\";i:337;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:338;s:35:\"query-pagination-numbers/editor.css\";i:339;s:39:\"query-pagination-numbers/editor.min.css\";i:340;s:31:\"query-pagination/editor-rtl.css\";i:341;s:35:\"query-pagination/editor-rtl.min.css\";i:342;s:27:\"query-pagination/editor.css\";i:343;s:31:\"query-pagination/editor.min.css\";i:344;s:30:\"query-pagination/style-rtl.css\";i:345;s:34:\"query-pagination/style-rtl.min.css\";i:346;s:26:\"query-pagination/style.css\";i:347;s:30:\"query-pagination/style.min.css\";i:348;s:25:\"query-title/style-rtl.css\";i:349;s:29:\"query-title/style-rtl.min.css\";i:350;s:21:\"query-title/style.css\";i:351;s:25:\"query-title/style.min.css\";i:352;s:20:\"query/editor-rtl.css\";i:353;s:24:\"query/editor-rtl.min.css\";i:354;s:16:\"query/editor.css\";i:355;s:20:\"query/editor.min.css\";i:356;s:19:\"query/style-rtl.css\";i:357;s:23:\"query/style-rtl.min.css\";i:358;s:15:\"query/style.css\";i:359;s:19:\"query/style.min.css\";i:360;s:19:\"quote/style-rtl.css\";i:361;s:23:\"quote/style-rtl.min.css\";i:362;s:15:\"quote/style.css\";i:363;s:19:\"quote/style.min.css\";i:364;s:19:\"quote/theme-rtl.css\";i:365;s:23:\"quote/theme-rtl.min.css\";i:366;s:15:\"quote/theme.css\";i:367;s:19:\"quote/theme.min.css\";i:368;s:23:\"read-more/style-rtl.css\";i:369;s:27:\"read-more/style-rtl.min.css\";i:370;s:19:\"read-more/style.css\";i:371;s:23:\"read-more/style.min.css\";i:372;s:18:\"rss/editor-rtl.css\";i:373;s:22:\"rss/editor-rtl.min.css\";i:374;s:14:\"rss/editor.css\";i:375;s:18:\"rss/editor.min.css\";i:376;s:17:\"rss/style-rtl.css\";i:377;s:21:\"rss/style-rtl.min.css\";i:378;s:13:\"rss/style.css\";i:379;s:17:\"rss/style.min.css\";i:380;s:21:\"search/editor-rtl.css\";i:381;s:25:\"search/editor-rtl.min.css\";i:382;s:17:\"search/editor.css\";i:383;s:21:\"search/editor.min.css\";i:384;s:20:\"search/style-rtl.css\";i:385;s:24:\"search/style-rtl.min.css\";i:386;s:16:\"search/style.css\";i:387;s:20:\"search/style.min.css\";i:388;s:20:\"search/theme-rtl.css\";i:389;s:24:\"search/theme-rtl.min.css\";i:390;s:16:\"search/theme.css\";i:391;s:20:\"search/theme.min.css\";i:392;s:24:\"separator/editor-rtl.css\";i:393;s:28:\"separator/editor-rtl.min.css\";i:394;s:20:\"separator/editor.css\";i:395;s:24:\"separator/editor.min.css\";i:396;s:23:\"separator/style-rtl.css\";i:397;s:27:\"separator/style-rtl.min.css\";i:398;s:19:\"separator/style.css\";i:399;s:23:\"separator/style.min.css\";i:400;s:23:\"separator/theme-rtl.css\";i:401;s:27:\"separator/theme-rtl.min.css\";i:402;s:19:\"separator/theme.css\";i:403;s:23:\"separator/theme.min.css\";i:404;s:24:\"shortcode/editor-rtl.css\";i:405;s:28:\"shortcode/editor-rtl.min.css\";i:406;s:20:\"shortcode/editor.css\";i:407;s:24:\"shortcode/editor.min.css\";i:408;s:24:\"site-logo/editor-rtl.css\";i:409;s:28:\"site-logo/editor-rtl.min.css\";i:410;s:20:\"site-logo/editor.css\";i:411;s:24:\"site-logo/editor.min.css\";i:412;s:23:\"site-logo/style-rtl.css\";i:413;s:27:\"site-logo/style-rtl.min.css\";i:414;s:19:\"site-logo/style.css\";i:415;s:23:\"site-logo/style.min.css\";i:416;s:27:\"site-tagline/editor-rtl.css\";i:417;s:31:\"site-tagline/editor-rtl.min.css\";i:418;s:23:\"site-tagline/editor.css\";i:419;s:27:\"site-tagline/editor.min.css\";i:420;s:25:\"site-title/editor-rtl.css\";i:421;s:29:\"site-title/editor-rtl.min.css\";i:422;s:21:\"site-title/editor.css\";i:423;s:25:\"site-title/editor.min.css\";i:424;s:24:\"site-title/style-rtl.css\";i:425;s:28:\"site-title/style-rtl.min.css\";i:426;s:20:\"site-title/style.css\";i:427;s:24:\"site-title/style.min.css\";i:428;s:26:\"social-link/editor-rtl.css\";i:429;s:30:\"social-link/editor-rtl.min.css\";i:430;s:22:\"social-link/editor.css\";i:431;s:26:\"social-link/editor.min.css\";i:432;s:27:\"social-links/editor-rtl.css\";i:433;s:31:\"social-links/editor-rtl.min.css\";i:434;s:23:\"social-links/editor.css\";i:435;s:27:\"social-links/editor.min.css\";i:436;s:26:\"social-links/style-rtl.css\";i:437;s:30:\"social-links/style-rtl.min.css\";i:438;s:22:\"social-links/style.css\";i:439;s:26:\"social-links/style.min.css\";i:440;s:21:\"spacer/editor-rtl.css\";i:441;s:25:\"spacer/editor-rtl.min.css\";i:442;s:17:\"spacer/editor.css\";i:443;s:21:\"spacer/editor.min.css\";i:444;s:20:\"spacer/style-rtl.css\";i:445;s:24:\"spacer/style-rtl.min.css\";i:446;s:16:\"spacer/style.css\";i:447;s:20:\"spacer/style.min.css\";i:448;s:20:\"table/editor-rtl.css\";i:449;s:24:\"table/editor-rtl.min.css\";i:450;s:16:\"table/editor.css\";i:451;s:20:\"table/editor.min.css\";i:452;s:19:\"table/style-rtl.css\";i:453;s:23:\"table/style-rtl.min.css\";i:454;s:15:\"table/style.css\";i:455;s:19:\"table/style.min.css\";i:456;s:19:\"table/theme-rtl.css\";i:457;s:23:\"table/theme-rtl.min.css\";i:458;s:15:\"table/theme.css\";i:459;s:19:\"table/theme.min.css\";i:460;s:23:\"tag-cloud/style-rtl.css\";i:461;s:27:\"tag-cloud/style-rtl.min.css\";i:462;s:19:\"tag-cloud/style.css\";i:463;s:23:\"tag-cloud/style.min.css\";i:464;s:28:\"template-part/editor-rtl.css\";i:465;s:32:\"template-part/editor-rtl.min.css\";i:466;s:24:\"template-part/editor.css\";i:467;s:28:\"template-part/editor.min.css\";i:468;s:27:\"template-part/theme-rtl.css\";i:469;s:31:\"template-part/theme-rtl.min.css\";i:470;s:23:\"template-part/theme.css\";i:471;s:27:\"template-part/theme.min.css\";i:472;s:30:\"term-description/style-rtl.css\";i:473;s:34:\"term-description/style-rtl.min.css\";i:474;s:26:\"term-description/style.css\";i:475;s:30:\"term-description/style.min.css\";i:476;s:27:\"text-columns/editor-rtl.css\";i:477;s:31:\"text-columns/editor-rtl.min.css\";i:478;s:23:\"text-columns/editor.css\";i:479;s:27:\"text-columns/editor.min.css\";i:480;s:26:\"text-columns/style-rtl.css\";i:481;s:30:\"text-columns/style-rtl.min.css\";i:482;s:22:\"text-columns/style.css\";i:483;s:26:\"text-columns/style.min.css\";i:484;s:19:\"verse/style-rtl.css\";i:485;s:23:\"verse/style-rtl.min.css\";i:486;s:15:\"verse/style.css\";i:487;s:19:\"verse/style.min.css\";i:488;s:20:\"video/editor-rtl.css\";i:489;s:24:\"video/editor-rtl.min.css\";i:490;s:16:\"video/editor.css\";i:491;s:20:\"video/editor.min.css\";i:492;s:19:\"video/style-rtl.css\";i:493;s:23:\"video/style-rtl.min.css\";i:494;s:15:\"video/style.css\";i:495;s:19:\"video/style.min.css\";i:496;s:19:\"video/theme-rtl.css\";i:497;s:23:\"video/theme-rtl.min.css\";i:498;s:15:\"video/theme.css\";i:499;s:19:\"video/theme.min.css\";}}','yes');
INSERT INTO `wp_options` VALUES (123,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (136,'theme_mods_twentytwentyfour','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1701216614;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (149,'can_compress_scripts','1','yes');
INSERT INTO `wp_options` VALUES (152,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (153,'current_theme','teste olivas ;','yes');
INSERT INTO `wp_options` VALUES (154,'theme_mods_teste','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:11:\"header-menu\";i:4;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (155,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (166,'recently_activated','a:1:{s:25:\"jet-engine/jet-engine.php\";i:1701726856;}','yes');
INSERT INTO `wp_options` VALUES (167,'jet-license-data','a:1:{s:12:\"license-list\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (170,'jet_engine_modules','a:4:{i:0;s:20:\"custom-content-types\";i:1;s:13:\"maps-listings\";i:2;s:17:\"rest-api-listings\";i:3;s:18:\"listing-injections\";}','yes');
INSERT INTO `wp_options` VALUES (190,'acf_version','6.2.4','yes');
INSERT INTO `wp_options` VALUES (199,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (202,'WPLANG','pt_BR','yes');
INSERT INTO `wp_options` VALUES (203,'new_admin_email','tgvieirabr@gmail.com','yes');
INSERT INTO `wp_options` VALUES (222,'_transient_health-check-site-status-result','{\"good\":17,\"recommended\":2,\"critical\":1}','yes');
INSERT INTO `wp_options` VALUES (227,'_site_transient_timeout_browser_c02fcafb462a9fc69e2cdbab731c7ba3','1702034607','no');
INSERT INTO `wp_options` VALUES (228,'_site_transient_browser_c02fcafb462a9fc69e2cdbab731c7ba3','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"119.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (244,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:4;}}','yes');
INSERT INTO `wp_options` VALUES (281,'wpcf7','a:2:{s:7:\"version\";s:5:\"5.8.4\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1701441517;s:7:\"version\";s:5:\"5.8.4\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}','yes');
INSERT INTO `wp_options` VALUES (289,'secret_key','>>|ac]fg/D$4D2Oe.Tk#p-9Js%YhT?,1_]/If@~g6U7/znk.+&]9eLGu$s+;2S92','no');
INSERT INTO `wp_options` VALUES (431,'_site_transient_timeout_browser_f529a32073a22388a8370c39e9b93c86','1702477298','no');
INSERT INTO `wp_options` VALUES (432,'_site_transient_browser_f529a32073a22388a8370c39e9b93c86','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"119.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (433,'_site_transient_timeout_php_check_18f908370f4cb169b20964c7203d6110','1702477299','no');
INSERT INTO `wp_options` VALUES (434,'_site_transient_php_check_18f908370f4cb169b20964c7203d6110','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (435,'_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e','1701939697','no');
INSERT INTO `wp_options` VALUES (436,'_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e','a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (454,'auto_core_update_notified','a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:20:\"tgvieirabr@gmail.com\";s:7:\"version\";s:5:\"6.4.2\";s:9:\"timestamp\";i:1701883861;}','no');
INSERT INTO `wp_options` VALUES (461,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-6.4.2.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-6.4.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.4.2\";s:7:\"version\";s:5:\"6.4.2\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1701912129;s:15:\"version_checked\";s:5:\"6.4.2\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (463,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1701907681;s:7:\"checked\";a:1:{s:5:\"teste\";s:7:\"1.0.0.;\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (464,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1701907681;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.2.4\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.2.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=2892919\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=2892919\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:29:\"acf-extended/acf-extended.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:26:\"w.org/plugins/acf-extended\";s:4:\"slug\";s:12:\"acf-extended\";s:6:\"plugin\";s:29:\"acf-extended/acf-extended.php\";s:11:\"new_version\";s:7:\"0.8.9.5\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/acf-extended/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/acf-extended.0.8.9.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/acf-extended/assets/icon-256x256.png?rev=2071550\";s:2:\"1x\";s:65:\"https://ps.w.org/acf-extended/assets/icon-128x128.png?rev=2071550\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/acf-extended/assets/banner-1544x500.png?rev=2071550\";s:2:\"1x\";s:67:\"https://ps.w.org/acf-extended/assets/banner-772x250.png?rev=2071550\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.8.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.8.4.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.2\";}}s:7:\"checked\";a:3:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.2.4\";s:29:\"acf-extended/acf-extended.php\";s:7:\"0.8.9.5\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.8.4\";}}','no');
INSERT INTO `wp_options` VALUES (469,'wp_calendar_block_has_published_posts','1','yes');
INSERT INTO `wp_options` VALUES (497,'_site_transient_timeout_theme_roots','1701909465','no');
INSERT INTO `wp_options` VALUES (498,'_site_transient_theme_roots','a:1:{s:5:\"teste\";s:7:\"/themes\";}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=389 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (7,8,'_wp_attached_file','2023/11/image_sobre-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (8,8,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:30:\"2023/11/image_sobre-scaled.jpg\";s:8:\"filesize\";i:446029;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"image_sobre-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:58648;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"image_sobre-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:144948;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"image_sobre-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:49827;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"image_sobre-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:109300;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"image_sobre-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:228136;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:25:\"image_sobre-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:328349;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"1.4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:20:\"Canon EOS 5D Mark IV\";s:7:\"caption\";s:114:\"Team of young entrepreneurs having a business meeting in the office. Focus is on businessman using digital tablet.\";s:17:\"created_timestamp\";s:10:\"1571327993\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"85\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:7:\"0.00125\";s:5:\"title\";s:64:\"Young businessman using touchpad while having a meeting with fem\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:49:{i:0;s:19:\"Caucasian ethnicity\";i:1;s:10:\"Lifestyles\";i:2;s:5:\"adult\";i:3;s:8:\"business\";i:4;s:15:\"business casual\";i:5;s:16:\"business meeting\";i:6;s:15:\"business person\";i:7;s:11:\"businessman\";i:8;s:13:\"businesswoman\";i:9;s:9:\"colleague\";i:10;s:11:\"cooperation\";i:11;s:18:\"corporate business\";i:12;s:8:\"coworker\";i:13;s:19:\"creative occupation\";i:14;s:17:\"design occupation\";i:15;s:14:\"digital tablet\";i:16;s:6:\"e-mail\";i:17;s:8:\"employee\";i:18;s:12:\"entrepreneur\";i:19;s:6:\"female\";i:20;s:14:\"freelance work\";i:21;s:10:\"friendship\";i:22;s:15:\"group of people\";i:23;s:7:\"indoors\";i:24;s:8:\"internet\";i:25;s:16:\"leisure activity\";i:26;s:4:\"male\";i:27;s:3:\"man\";i:28;s:9:\"marketing\";i:29;s:7:\"meeting\";i:30;s:21:\"millennial generation\";i:31;s:12:\"new business\";i:32;s:10:\"occupation\";i:33;s:6:\"office\";i:34;s:6:\"people\";i:35;s:23:\"professional occupation\";i:36;s:7:\"reading\";i:37;s:14:\"small business\";i:38;s:8:\"start up\";i:39;s:15:\"surfing the net\";i:40;s:8:\"teamwork\";i:41;s:10:\"technology\";i:42;s:12:\"three people\";i:43;s:8:\"touchpad\";i:44;s:20:\"using digital tablet\";i:45;s:19:\"wireless technology\";i:46;s:5:\"woman\";i:47;s:7:\"working\";i:48;s:11:\"young adult\";}}s:14:\"original_image\";s:15:\"image_sobre.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (9,9,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (10,9,'_edit_lock','1701220740:1');
INSERT INTO `wp_postmeta` VALUES (11,10,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (12,10,'_edit_lock','1701220809:1');
INSERT INTO `wp_postmeta` VALUES (25,28,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (26,28,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (27,28,'_menu_item_object_id','28');
INSERT INTO `wp_postmeta` VALUES (28,28,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (29,28,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (30,28,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (31,28,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (32,28,'_menu_item_url','http://teste-wp.local/');
INSERT INTO `wp_postmeta` VALUES (33,28,'_menu_item_orphaned','1701222192');
INSERT INTO `wp_postmeta` VALUES (44,31,'_edit_lock','1701437351:1');
INSERT INTO `wp_postmeta` VALUES (45,32,'_edit_lock','1701437374:1');
INSERT INTO `wp_postmeta` VALUES (87,40,'_edit_lock','1701438158:1');
INSERT INTO `wp_postmeta` VALUES (88,41,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (89,41,'_wp_trash_meta_time','1701438414');
INSERT INTO `wp_postmeta` VALUES (90,42,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (91,42,'_wp_trash_meta_time','1701438441');
INSERT INTO `wp_postmeta` VALUES (112,48,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (113,48,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (114,48,'_menu_item_object_id','48');
INSERT INTO `wp_postmeta` VALUES (115,48,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (116,48,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (117,48,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (118,48,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (119,48,'_menu_item_url','http://teste-wp.local/');
INSERT INTO `wp_postmeta` VALUES (120,48,'_menu_item_orphaned','1701439501');
INSERT INTO `wp_postmeta` VALUES (142,51,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (143,51,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (144,51,'_menu_item_object_id','51');
INSERT INTO `wp_postmeta` VALUES (145,51,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (146,51,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (147,51,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (148,51,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (149,51,'_menu_item_url','http://teste-wp.local/');
INSERT INTO `wp_postmeta` VALUES (169,54,'_form','<label> Seu nome\n    [text* your-name autocomplete:name] </label>\n\n<label> Seu e-mail\n    [email* your-email autocomplete:email] </label>\n\n<label> Telefone\n    [tel tel-623]  </label>\n\n<label> Sua mensagem (opcional)\n    [textarea your-message] </label>\n\n[submit \"Enviar\"]');
INSERT INTO `wp_postmeta` VALUES (170,54,'_mail','a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:40:\"[_site_title] <wordpress@teste-wp.local>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:204:\"De: [your-name] [your-email]\nAssunto: [your-subject]\n\nCorpo da mensagem:\n[your-message]\n\n-- \nEsta é uma notificação de que um formulário de contato foi enviado em seu site ([_site_title] [_site_url]).\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}');
INSERT INTO `wp_postmeta` VALUES (171,54,'_mail_2','a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:40:\"[_site_title] <wordpress@teste-wp.local>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:224:\"Corpo da mensagem:\n[your-message]\n\n-- \nEste e-mail é um recibo do envio do formulário de contato em nosso site ([_site_title] [_site_url]) no qual seu endereço de e-mail foi usado. Se não foi você, ignore esta mensagem.\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}');
INSERT INTO `wp_postmeta` VALUES (172,54,'_messages','a:22:{s:12:\"mail_sent_ok\";s:27:\"Agradecemos a sua mensagem.\";s:12:\"mail_sent_ng\";s:74:\"Ocorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\";s:16:\"validation_error\";s:63:\"Um ou mais campos possuem um erro. Verifique e tente novamente.\";s:4:\"spam\";s:74:\"Ocorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\";s:12:\"accept_terms\";s:72:\"Você deve aceitar os termos e condições antes de enviar sua mensagem.\";s:16:\"invalid_required\";s:20:\"Preencha este campo.\";s:16:\"invalid_too_long\";s:39:\"Este campo tem uma entrada muito longa.\";s:17:\"invalid_too_short\";s:39:\"Este campo tem uma entrada muito curta.\";s:13:\"upload_failed\";s:49:\"Ocorreu um erro desconhecido ao enviar o arquivo.\";s:24:\"upload_file_type_invalid\";s:59:\"Você não tem permissão para enviar esse tipo de arquivo.\";s:21:\"upload_file_too_large\";s:34:\"O arquivo enviado é muito grande.\";s:23:\"upload_failed_php_error\";s:36:\"Ocorreu um erro ao enviar o arquivo.\";s:12:\"invalid_date\";s:38:\"Digite uma data no formato AAAA-MM-DD.\";s:14:\"date_too_early\";s:39:\"Este campo tem uma data muito próxima.\";s:13:\"date_too_late\";s:39:\"Este campo tem uma data muito distante.\";s:14:\"invalid_number\";s:18:\"Digite um número.\";s:16:\"number_too_small\";s:41:\"Este campo tem um número pequeno demais.\";s:16:\"number_too_large\";s:40:\"Este campo tem um número grande demais.\";s:23:\"quiz_answer_not_correct\";s:39:\"A resposta para o quiz está incorreta.\";s:13:\"invalid_email\";s:30:\"Digite um endereço de e-mail.\";s:11:\"invalid_url\";s:14:\"Digite um URL.\";s:11:\"invalid_tel\";s:30:\"Digite um número de telefone.\";}');
INSERT INTO `wp_postmeta` VALUES (173,54,'_additional_settings','');
INSERT INTO `wp_postmeta` VALUES (174,54,'_locale','pt_BR');
INSERT INTO `wp_postmeta` VALUES (175,54,'_hash','34aebe0d24ed103edf30e100e073370b3261efba');
INSERT INTO `wp_postmeta` VALUES (176,55,'_edit_lock','1701442848:1');
INSERT INTO `wp_postmeta` VALUES (177,56,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (178,56,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (179,56,'_menu_item_object_id','55');
INSERT INTO `wp_postmeta` VALUES (180,56,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (181,56,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (182,56,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (183,56,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (184,56,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (185,55,'_wp_page_template','page-contato.php');
INSERT INTO `wp_postmeta` VALUES (186,58,'_edit_lock','1701443054:1');
INSERT INTO `wp_postmeta` VALUES (187,59,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (188,59,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (189,59,'_menu_item_object_id','58');
INSERT INTO `wp_postmeta` VALUES (190,59,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (191,59,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (192,59,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (193,59,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (194,59,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (195,58,'_wp_page_template','page-home.php');
INSERT INTO `wp_postmeta` VALUES (199,61,'_edit_lock','1701444368:1');
INSERT INTO `wp_postmeta` VALUES (200,3,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (201,3,'_wp_trash_meta_time','1701444555');
INSERT INTO `wp_postmeta` VALUES (202,3,'_wp_desired_post_slug','privacy-policy');
INSERT INTO `wp_postmeta` VALUES (203,63,'_edit_lock','1701888333:1');
INSERT INTO `wp_postmeta` VALUES (204,64,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (205,64,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (206,64,'_menu_item_object_id','63');
INSERT INTO `wp_postmeta` VALUES (207,64,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (208,64,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (209,64,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (210,64,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (211,64,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (212,63,'_wp_page_template','projetos.php');
INSERT INTO `wp_postmeta` VALUES (213,66,'_edit_lock','1701712388:1');
INSERT INTO `wp_postmeta` VALUES (214,67,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (215,67,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (216,67,'_menu_item_object_id','66');
INSERT INTO `wp_postmeta` VALUES (217,67,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (218,67,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (219,67,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (220,67,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (221,67,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (222,66,'_wp_page_template','page-single.php');
INSERT INTO `wp_postmeta` VALUES (223,70,'_edit_lock','1701714126:1');
INSERT INTO `wp_postmeta` VALUES (228,73,'_edit_lock','1701896581:1');
INSERT INTO `wp_postmeta` VALUES (229,73,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (230,74,'_edit_lock','1701723449:1');
INSERT INTO `wp_postmeta` VALUES (231,75,'_edit_lock','1701723622:1');
INSERT INTO `wp_postmeta` VALUES (232,76,'_edit_lock','1701892820:1');
INSERT INTO `wp_postmeta` VALUES (233,77,'_wp_attached_file','2023/12/image_sobre-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (234,77,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:30:\"2023/12/image_sobre-scaled.jpg\";s:8:\"filesize\";i:446029;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"image_sobre-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:58648;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"image_sobre-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:144948;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"image_sobre-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:49827;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"image_sobre-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:109300;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"image_sobre-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:228136;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:25:\"image_sobre-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:328349;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"1.4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:20:\"Canon EOS 5D Mark IV\";s:7:\"caption\";s:114:\"Team of young entrepreneurs having a business meeting in the office. Focus is on businessman using digital tablet.\";s:17:\"created_timestamp\";s:10:\"1571327993\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"85\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:7:\"0.00125\";s:5:\"title\";s:64:\"Young businessman using touchpad while having a meeting with fem\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:49:{i:0;s:19:\"Caucasian ethnicity\";i:1;s:10:\"Lifestyles\";i:2;s:5:\"adult\";i:3;s:8:\"business\";i:4;s:15:\"business casual\";i:5;s:16:\"business meeting\";i:6;s:15:\"business person\";i:7;s:11:\"businessman\";i:8;s:13:\"businesswoman\";i:9;s:9:\"colleague\";i:10;s:11:\"cooperation\";i:11;s:18:\"corporate business\";i:12;s:8:\"coworker\";i:13;s:19:\"creative occupation\";i:14;s:17:\"design occupation\";i:15;s:14:\"digital tablet\";i:16;s:6:\"e-mail\";i:17;s:8:\"employee\";i:18;s:12:\"entrepreneur\";i:19;s:6:\"female\";i:20;s:14:\"freelance work\";i:21;s:10:\"friendship\";i:22;s:15:\"group of people\";i:23;s:7:\"indoors\";i:24;s:8:\"internet\";i:25;s:16:\"leisure activity\";i:26;s:4:\"male\";i:27;s:3:\"man\";i:28;s:9:\"marketing\";i:29;s:7:\"meeting\";i:30;s:21:\"millennial generation\";i:31;s:12:\"new business\";i:32;s:10:\"occupation\";i:33;s:6:\"office\";i:34;s:6:\"people\";i:35;s:23:\"professional occupation\";i:36;s:7:\"reading\";i:37;s:14:\"small business\";i:38;s:8:\"start up\";i:39;s:15:\"surfing the net\";i:40;s:8:\"teamwork\";i:41;s:10:\"technology\";i:42;s:12:\"three people\";i:43;s:8:\"touchpad\";i:44;s:20:\"using digital tablet\";i:45;s:19:\"wireless technology\";i:46;s:5:\"woman\";i:47;s:7:\"working\";i:48;s:11:\"young adult\";}}s:14:\"original_image\";s:15:\"image_sobre.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (235,76,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (236,78,'_edit_lock','1701724386:1');
INSERT INTO `wp_postmeta` VALUES (245,51,'_wp_old_date','2023-12-01');
INSERT INTO `wp_postmeta` VALUES (246,59,'_wp_old_date','2023-12-01');
INSERT INTO `wp_postmeta` VALUES (247,64,'_wp_old_date','2023-12-01');
INSERT INTO `wp_postmeta` VALUES (248,67,'_wp_old_date','2023-12-01');
INSERT INTO `wp_postmeta` VALUES (249,56,'_wp_old_date','2023-12-01');
INSERT INTO `wp_postmeta` VALUES (250,80,'_edit_lock','1701726888:1');
INSERT INTO `wp_postmeta` VALUES (251,81,'_edit_lock','1701728334:1');
INSERT INTO `wp_postmeta` VALUES (252,82,'_edit_lock','1701728226:1');
INSERT INTO `wp_postmeta` VALUES (258,84,'_edit_lock','1701731062:1');
INSERT INTO `wp_postmeta` VALUES (259,85,'_edit_lock','1701731201:1');
INSERT INTO `wp_postmeta` VALUES (260,87,'_edit_lock','1701731251:1');
INSERT INTO `wp_postmeta` VALUES (261,89,'_edit_lock','1701731767:1');
INSERT INTO `wp_postmeta` VALUES (274,76,'_oembed_637c4771401839b4da5c761b0f9b6f7b','{{unknown}}');
INSERT INTO `wp_postmeta` VALUES (275,76,'_oembed_c6f3829aaee1b0a24745975954a91199','{{unknown}}');
INSERT INTO `wp_postmeta` VALUES (276,76,'_oembed_72a172868a1978a7ab9ed6e8fe618081','{{unknown}}');
INSERT INTO `wp_postmeta` VALUES (277,90,'_wp_attached_file','2023/12/projetos.png');
INSERT INTO `wp_postmeta` VALUES (278,90,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:195;s:6:\"height\";i:270;s:4:\"file\";s:20:\"2023/12/projetos.png\";s:8:\"filesize\";i:81353;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"projetos-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:33334;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (279,73,'project_url','http://teste-wp.local/wp-admin/post-new.php?post_type=projetos');
INSERT INTO `wp_postmeta` VALUES (280,73,'project_checkbox','a:1:{i:0;s:15:\"desenvolvimento\";}');
INSERT INTO `wp_postmeta` VALUES (281,73,'project_date','2023-12-04');
INSERT INTO `wp_postmeta` VALUES (282,76,'project_url','http://teste-wp.local/wp-admin/post-new.php?post_type=projetos');
INSERT INTO `wp_postmeta` VALUES (283,76,'project_checkbox','a:2:{i:0;s:4:\"site\";i:1;s:4:\"blog\";}');
INSERT INTO `wp_postmeta` VALUES (284,76,'project_date','2023-12-04');
INSERT INTO `wp_postmeta` VALUES (285,95,'_edit_lock','1701873377:1');
INSERT INTO `wp_postmeta` VALUES (293,97,'_edit_lock','1701892934:1');
INSERT INTO `wp_postmeta` VALUES (294,97,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (295,98,'_edit_lock','1701889035:1');
INSERT INTO `wp_postmeta` VALUES (296,99,'_edit_lock','1701887741:1');
INSERT INTO `wp_postmeta` VALUES (297,98,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (298,106,'_edit_lock','1701887628:1');
INSERT INTO `wp_postmeta` VALUES (299,107,'_edit_lock','1701887780:1');
INSERT INTO `wp_postmeta` VALUES (300,108,'_edit_lock','1701887667:1');
INSERT INTO `wp_postmeta` VALUES (301,109,'_edit_lock','1701888044:1');
INSERT INTO `wp_postmeta` VALUES (304,109,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (305,109,'nome_do_projeto','teste-acf');
INSERT INTO `wp_postmeta` VALUES (306,109,'_nome_do_projeto','field_6570bd74ea979');
INSERT INTO `wp_postmeta` VALUES (307,109,'descricao','teste acf des');
INSERT INTO `wp_postmeta` VALUES (308,109,'_descricao','field_6570bdf4ea97a');
INSERT INTO `wp_postmeta` VALUES (309,109,'resumo','resumo acf');
INSERT INTO `wp_postmeta` VALUES (310,109,'_resumo','field_6570be72ea97b');
INSERT INTO `wp_postmeta` VALUES (311,109,'tipo_de_projeto','a:1:{i:0;s:4:\"site\";}');
INSERT INTO `wp_postmeta` VALUES (312,109,'_tipo_de_projeto','field_6570be79ea97c');
INSERT INTO `wp_postmeta` VALUES (313,109,'link_do_projeto','https://readme.so/');
INSERT INTO `wp_postmeta` VALUES (314,109,'_link_do_projeto','field_6570bed3ea97d');
INSERT INTO `wp_postmeta` VALUES (315,109,'data_do_projeto','20231206');
INSERT INTO `wp_postmeta` VALUES (316,109,'_data_do_projeto','field_6570bedfea97e');
INSERT INTO `wp_postmeta` VALUES (317,110,'nome_do_projeto','teste-acf');
INSERT INTO `wp_postmeta` VALUES (318,110,'_nome_do_projeto','field_6570bd74ea979');
INSERT INTO `wp_postmeta` VALUES (319,110,'descricao','teste acf des');
INSERT INTO `wp_postmeta` VALUES (320,110,'_descricao','field_6570bdf4ea97a');
INSERT INTO `wp_postmeta` VALUES (321,110,'resumo','resumo acf');
INSERT INTO `wp_postmeta` VALUES (322,110,'_resumo','field_6570be72ea97b');
INSERT INTO `wp_postmeta` VALUES (323,110,'tipo_de_projeto','a:1:{i:0;s:4:\"site\";}');
INSERT INTO `wp_postmeta` VALUES (324,110,'_tipo_de_projeto','field_6570be79ea97c');
INSERT INTO `wp_postmeta` VALUES (325,110,'link_do_projeto','https://readme.so/');
INSERT INTO `wp_postmeta` VALUES (326,110,'_link_do_projeto','field_6570bed3ea97d');
INSERT INTO `wp_postmeta` VALUES (327,110,'data_do_projeto','20231206');
INSERT INTO `wp_postmeta` VALUES (328,110,'_data_do_projeto','field_6570bedfea97e');
INSERT INTO `wp_postmeta` VALUES (329,113,'_edit_lock','1701888607:1');
INSERT INTO `wp_postmeta` VALUES (330,114,'_edit_lock','1701888642:1');
INSERT INTO `wp_postmeta` VALUES (331,115,'_edit_lock','1701888671:1');
INSERT INTO `wp_postmeta` VALUES (332,116,'_edit_lock','1701888775:1');
INSERT INTO `wp_postmeta` VALUES (333,117,'_edit_lock','1701889012:1');
INSERT INTO `wp_postmeta` VALUES (334,118,'_edit_lock','1701888887:1');
INSERT INTO `wp_postmeta` VALUES (335,120,'_edit_lock','1701889039:1');
INSERT INTO `wp_postmeta` VALUES (336,121,'_edit_lock','1701888917:1');
INSERT INTO `wp_postmeta` VALUES (337,123,'_edit_lock','1701888933:1');
INSERT INTO `wp_postmeta` VALUES (338,124,'_edit_lock','1701892941:1');
INSERT INTO `wp_postmeta` VALUES (339,124,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (340,124,'nome_do_projeto','teste 3');
INSERT INTO `wp_postmeta` VALUES (341,124,'_nome_do_projeto','field_6570bd74ea979');
INSERT INTO `wp_postmeta` VALUES (342,124,'descricao','teste 3 dec');
INSERT INTO `wp_postmeta` VALUES (343,124,'_descricao','field_6570bdf4ea97a');
INSERT INTO `wp_postmeta` VALUES (344,124,'resumo','teste 3 resumo');
INSERT INTO `wp_postmeta` VALUES (345,124,'_resumo','field_6570be72ea97b');
INSERT INTO `wp_postmeta` VALUES (346,124,'tipo_de_projeto','a:2:{i:0;s:4:\"site\";i:1;s:4:\"blog\";}');
INSERT INTO `wp_postmeta` VALUES (347,124,'_tipo_de_projeto','field_6570be79ea97c');
INSERT INTO `wp_postmeta` VALUES (348,124,'link_do_projeto','https://readme.so/');
INSERT INTO `wp_postmeta` VALUES (349,124,'_link_do_projeto','field_6570bed3ea97d');
INSERT INTO `wp_postmeta` VALUES (350,124,'data_do_projeto','20231206');
INSERT INTO `wp_postmeta` VALUES (351,124,'_data_do_projeto','field_6570bedfea97e');
INSERT INTO `wp_postmeta` VALUES (352,124,'imagem_do_projeto','77');
INSERT INTO `wp_postmeta` VALUES (353,124,'_imagem_do_projeto','field_6570c0e563053');
INSERT INTO `wp_postmeta` VALUES (354,125,'_edit_lock','1701892908:1');
INSERT INTO `wp_postmeta` VALUES (355,125,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (356,125,'nome_do_projeto','teste 4');
INSERT INTO `wp_postmeta` VALUES (357,125,'_nome_do_projeto','field_6570bd74ea979');
INSERT INTO `wp_postmeta` VALUES (358,125,'descricao','teste 4');
INSERT INTO `wp_postmeta` VALUES (359,125,'_descricao','field_6570bdf4ea97a');
INSERT INTO `wp_postmeta` VALUES (360,125,'resumo','4');
INSERT INTO `wp_postmeta` VALUES (361,125,'_resumo','field_6570be72ea97b');
INSERT INTO `wp_postmeta` VALUES (362,125,'tipo_de_projeto','a:1:{i:0;s:10:\"aplicativo\";}');
INSERT INTO `wp_postmeta` VALUES (363,125,'_tipo_de_projeto','field_6570be79ea97c');
INSERT INTO `wp_postmeta` VALUES (364,125,'link_do_projeto','https://readme.so/');
INSERT INTO `wp_postmeta` VALUES (365,125,'_link_do_projeto','field_6570bed3ea97d');
INSERT INTO `wp_postmeta` VALUES (366,125,'data_do_projeto','20231207');
INSERT INTO `wp_postmeta` VALUES (367,125,'_data_do_projeto','field_6570bedfea97e');
INSERT INTO `wp_postmeta` VALUES (368,125,'imagem_do_projeto','90');
INSERT INTO `wp_postmeta` VALUES (369,125,'_imagem_do_projeto','field_6570c0e563053');
INSERT INTO `wp_postmeta` VALUES (370,76,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (371,76,'_wp_trash_meta_time','1701892968');
INSERT INTO `wp_postmeta` VALUES (372,76,'_wp_desired_post_slug','projetosite');
INSERT INTO `wp_postmeta` VALUES (373,126,'_wp_attached_file','2023/12/melinda-l.png');
INSERT INTO `wp_postmeta` VALUES (374,126,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:162;s:6:\"height\";i:162;s:4:\"file\";s:21:\"2023/12/melinda-l.png\";s:8:\"filesize\";i:42800;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"melinda-l-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:30200;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (375,73,'nome_do_projeto','teste app');
INSERT INTO `wp_postmeta` VALUES (376,73,'_nome_do_projeto','field_6570bd74ea979');
INSERT INTO `wp_postmeta` VALUES (377,73,'descricao','desc');
INSERT INTO `wp_postmeta` VALUES (378,73,'_descricao','field_6570bdf4ea97a');
INSERT INTO `wp_postmeta` VALUES (379,73,'resumo','resumo');
INSERT INTO `wp_postmeta` VALUES (380,73,'_resumo','field_6570be72ea97b');
INSERT INTO `wp_postmeta` VALUES (381,73,'tipo_de_projeto','a:1:{i:0;s:10:\"aplicativo\";}');
INSERT INTO `wp_postmeta` VALUES (382,73,'_tipo_de_projeto','field_6570be79ea97c');
INSERT INTO `wp_postmeta` VALUES (383,73,'link_do_projeto','https://readme.so/');
INSERT INTO `wp_postmeta` VALUES (384,73,'_link_do_projeto','field_6570bed3ea97d');
INSERT INTO `wp_postmeta` VALUES (385,73,'data_do_projeto','20231206');
INSERT INTO `wp_postmeta` VALUES (386,73,'_data_do_projeto','field_6570bedfea97e');
INSERT INTO `wp_postmeta` VALUES (387,73,'imagem_do_projeto','126');
INSERT INTO `wp_postmeta` VALUES (388,73,'_imagem_do_projeto','field_6570c0e563053');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (3,1,'2023-11-29 00:02:48','2023-11-29 00:02:48','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://teste-wp.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','trash','closed','open','','privacy-policy__trashed','','','2023-12-01 12:29:15','2023-12-01 15:29:15','',0,'http://teste-wp.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2023-11-29 00:03:16','2023-11-29 00:03:16','<!-- wp:page-list /-->','Navigation','','publish','closed','closed','','navigation','','','2023-11-29 00:03:16','2023-11-29 00:03:16','',0,'http://teste-wp.local/navigation/',0,'wp_navigation','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2023-11-29 01:11:06','2023-11-29 01:11:06','','Young businessman using touchpad while having a meeting with fem','Team of young entrepreneurs having a business meeting in the office. Focus is on businessman using digital tablet.','inherit','open','closed','','young-businessman-using-touchpad-while-having-a-meeting-with-fem','','','2023-12-04 18:06:37','2023-12-04 21:06:37','',76,'http://teste-wp.local/wp-content/uploads/2023/11/image_sobre.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (28,1,'2023-11-28 22:43:12','0000-00-00 00:00:00','','Início','','draft','closed','closed','','','','','2023-11-28 22:43:12','0000-00-00 00:00:00','',0,'http://teste-wp.local/?p=28',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2023-12-01 10:31:22','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2023-12-01 10:31:22','0000-00-00 00:00:00','',0,'http://teste-wp.local/?page_id=31',0,'page','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2023-12-01 10:31:46','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2023-12-01 10:31:46','0000-00-00 00:00:00','',0,'http://teste-wp.local/?page_id=32',0,'page','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2023-12-01 10:44:45','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2023-12-01 10:44:45','0000-00-00 00:00:00','',0,'http://teste-wp.local/?p=40',0,'wp_block','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2023-12-01 10:46:54','2023-12-01 13:46:54','{\n    \"nav_menu_item[34]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 2,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"P\\u00e1gina\",\n            \"_invalid\": true,\n            \"url\": \"http://teste-wp.local/?page_id=2\",\n            \"title\": \"projetos\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 3,\n            \"status\": \"publish\",\n            \"original_title\": \"Sample Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-12-01 13:46:54\"\n    }\n}','','','trash','closed','closed','','a18f97f8-57aa-4dab-97e0-9125e49c7e9f','','','2023-12-01 10:46:54','2023-12-01 13:46:54','',0,'http://teste-wp.local/a18f97f8-57aa-4dab-97e0-9125e49c7e9f/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2023-12-01 10:47:21','2023-12-01 13:47:21','{\n    \"nav_menu_item[34]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 2,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"P\\u00e1gina\",\n            \"_invalid\": true,\n            \"url\": \"http://teste-wp.local/?page_id=2\",\n            \"title\": \"Projetos\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 3,\n            \"status\": \"publish\",\n            \"original_title\": \"Sample Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-12-01 13:47:21\"\n    }\n}','','','trash','closed','closed','','5f32602b-6bba-4d05-a221-7b6c9a84a0ea','','','2023-12-01 10:47:21','2023-12-01 13:47:21','',0,'http://teste-wp.local/5f32602b-6bba-4d05-a221-7b6c9a84a0ea/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2023-12-01 11:05:01','0000-00-00 00:00:00','','Início','','draft','closed','closed','','','','','2023-12-01 11:05:01','0000-00-00 00:00:00','',0,'http://teste-wp.local/?p=48',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2023-12-04 18:22:42','2023-12-01 14:08:40','','Início','','publish','closed','closed','','inicio','','','2023-12-04 18:22:42','2023-12-04 21:22:42','',0,'http://teste-wp.local/?p=51',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2023-12-01 11:38:37','2023-12-01 14:38:37','<label> Seu nome\r\n    [text* your-name autocomplete:name] </label>\r\n\r\n<label> Seu e-mail\r\n    [email* your-email autocomplete:email] </label>\r\n\r\n<label> Telefone\r\n    [tel tel-623]  </label>\r\n\r\n<label> Sua mensagem (opcional)\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Enviar\"]\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@teste-wp.local>\n[_site_admin_email]\nDe: [your-name] [your-email]\r\nAssunto: [your-subject]\r\n\r\nCorpo da mensagem:\r\n[your-message]\r\n\r\n-- \r\nEsta é uma notificação de que um formulário de contato foi enviado em seu site ([_site_title] [_site_url]).\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@teste-wp.local>\n[your-email]\nCorpo da mensagem:\r\n[your-message]\r\n\r\n-- \r\nEste e-mail é um recibo do envio do formulário de contato em nosso site ([_site_title] [_site_url]) no qual seu endereço de e-mail foi usado. Se não foi você, ignore esta mensagem.\nReply-To: [_site_admin_email]\n\n\n\nAgradecemos a sua mensagem.\nOcorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\nUm ou mais campos possuem um erro. Verifique e tente novamente.\nOcorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\nVocê deve aceitar os termos e condições antes de enviar sua mensagem.\nPreencha este campo.\nEste campo tem uma entrada muito longa.\nEste campo tem uma entrada muito curta.\nOcorreu um erro desconhecido ao enviar o arquivo.\nVocê não tem permissão para enviar esse tipo de arquivo.\nO arquivo enviado é muito grande.\nOcorreu um erro ao enviar o arquivo.\nDigite uma data no formato AAAA-MM-DD.\nEste campo tem uma data muito próxima.\nEste campo tem uma data muito distante.\nDigite um número.\nEste campo tem um número pequeno demais.\nEste campo tem um número grande demais.\nA resposta para o quiz está incorreta.\nDigite um endereço de e-mail.\nDigite um URL.\nDigite um número de telefone.','Formulário de contato 1','','publish','closed','closed','','formulario-de-contato-1','','','2023-12-01 11:42:25','2023-12-01 14:42:25','',0,'http://teste-wp.local/?post_type=wpcf7_contact_form&#038;p=54',0,'wpcf7_contact_form','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2023-12-01 12:02:33','2023-12-01 15:02:33','','Contato','','publish','closed','closed','','contato','','','2023-12-01 12:02:33','2023-12-01 15:02:33','',0,'http://teste-wp.local/?page_id=55',0,'page','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2023-12-04 18:22:42','2023-12-01 15:02:33',' ','','','publish','closed','closed','','56','','','2023-12-04 18:22:42','2023-12-04 21:22:42','',0,'http://teste-wp.local/56/',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2023-12-01 12:02:33','2023-12-01 15:02:33','','Contato','','inherit','closed','closed','','55-revision-v1','','','2023-12-01 12:02:33','2023-12-01 15:02:33','',55,'http://teste-wp.local/?p=57',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2023-12-01 12:04:38','2023-12-01 15:04:38','','Home','','publish','closed','closed','','home','','','2023-12-01 12:04:38','2023-12-01 15:04:38','',0,'http://teste-wp.local/?page_id=58',0,'page','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2023-12-04 18:22:42','2023-12-01 15:04:38',' ','','','publish','closed','closed','','59','','','2023-12-04 18:22:42','2023-12-04 21:22:42','',0,'http://teste-wp.local/59/',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2023-12-01 12:04:38','2023-12-01 15:04:38','','Home','','inherit','closed','closed','','58-revision-v1','','','2023-12-01 12:04:38','2023-12-01 15:04:38','',58,'http://teste-wp.local/?p=60',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2023-12-01 12:28:16','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2023-12-01 12:28:16','0000-00-00 00:00:00','',0,'http://teste-wp.local/?page_id=61',0,'page','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2023-12-01 12:29:15','2023-12-01 15:29:15','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://teste-wp.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2023-12-01 12:29:15','2023-12-01 15:29:15','',3,'http://teste-wp.local/?p=62',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2023-12-01 12:29:56','2023-12-01 15:29:56','','Projetos','','publish','closed','closed','','projetos','','','2023-12-01 18:10:08','2023-12-01 21:10:08','',0,'http://teste-wp.local/?page_id=63',0,'page','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2023-12-04 18:22:42','2023-12-01 15:29:56',' ','','','publish','closed','closed','','64','','','2023-12-04 18:22:42','2023-12-04 21:22:42','',0,'http://teste-wp.local/64/',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2023-12-01 12:29:56','2023-12-01 15:29:56','','Projetos','','inherit','closed','closed','','63-revision-v1','','','2023-12-01 12:29:56','2023-12-01 15:29:56','',63,'http://teste-wp.local/?p=65',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2023-12-01 12:30:35','2023-12-01 15:30:35','','Single','','publish','closed','closed','','single','','','2023-12-01 12:30:35','2023-12-01 15:30:35','',0,'http://teste-wp.local/?page_id=66',0,'page','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2023-12-04 18:22:42','2023-12-01 15:30:35',' ','','','publish','closed','closed','','67','','','2023-12-04 18:22:42','2023-12-04 21:22:42','',0,'http://teste-wp.local/67/',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2023-12-01 12:30:35','2023-12-01 15:30:35','','Single','','inherit','closed','closed','','66-revision-v1','','','2023-12-01 12:30:35','2023-12-01 15:30:35','',66,'http://teste-wp.local/?p=68',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2023-12-04 15:23:48','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2023-12-04 15:23:48','0000-00-00 00:00:00','',0,'http://teste-wp.local/?post_type=projetos&p=69',0,'projetos','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2023-12-04 15:24:14','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','open','open','','','','','2023-12-04 15:24:14','0000-00-00 00:00:00','',0,'http://teste-wp.local/?p=70',0,'post','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2023-12-04 17:03:57','2023-12-04 20:03:57','','teste app','Resumo do app','publish','closed','closed','','teste-app','','','2023-12-06 18:02:59','2023-12-06 21:02:59','',0,'http://teste-wp.local/?post_type=projetos&#038;p=73',0,'projetos','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2023-12-04 17:56:42','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2023-12-04 17:56:42','0000-00-00 00:00:00','',0,'http://teste-wp.local/?post_type=projetos&p=74',0,'projetos','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2023-12-04 18:02:28','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','open','open','','','','','2023-12-04 18:02:28','0000-00-00 00:00:00','',0,'http://teste-wp.local/?p=75',0,'post','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2023-12-04 18:07:03','2023-12-04 21:07:03','&nbsp;\r\n\r\n<img class=\"size-medium wp-image-77\" src=\"http://teste-wp.local/wp-content/uploads/2023/12/image_sobre-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" />\r\n\r\n[caption id=\"attachment_8\" align=\"alignnone\" width=\"300\"]<img class=\"size-medium wp-image-8\" src=\"http://teste-wp.local/wp-content/uploads/2023/11/image_sobre-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" /> Team of young entrepreneurs having a business meeting in the office. Focus is on businessman using digital tablet.site[/caption]\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;','projetosite','Resumo do projeto','trash','closed','closed','','projetosite__trashed','','','2023-12-06 17:02:48','2023-12-06 20:02:48','',0,'http://teste-wp.local/?post_type=projetos&#038;p=76',0,'projetos','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2023-12-04 18:06:28','2023-12-04 21:06:28','','Young businessman using touchpad while having a meeting with fem','Team of young entrepreneurs having a business meeting in the office. Focus is on businessman using digital tablet.','inherit','open','closed','','young-businessman-using-touchpad-while-having-a-meeting-with-fem-2','','','2023-12-04 18:06:28','2023-12-04 21:06:28','',76,'http://teste-wp.local/wp-content/uploads/2023/12/image_sobre.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (78,1,'2023-12-04 18:09:51','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2023-12-04 18:09:51','0000-00-00 00:00:00','',0,'http://teste-wp.local/?post_type=projetos&p=78',0,'projetos','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2023-12-04 18:54:48','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','open','open','','','','','2023-12-04 18:54:48','0000-00-00 00:00:00','',0,'http://teste-wp.local/?p=80',0,'post','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2023-12-04 19:18:54','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','open','open','','','','','2023-12-04 19:18:54','0000-00-00 00:00:00','',0,'http://teste-wp.local/?p=81',0,'post','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2023-12-04 19:19:13','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','open','open','','','','','2023-12-04 19:19:13','0000-00-00 00:00:00','',0,'http://teste-wp.local/?p=82',0,'post','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2023-12-04 20:03:27','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2023-12-04 20:03:27','0000-00-00 00:00:00','',0,'http://teste-wp.local/?post_type=projetos&p=84',0,'projetos','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2023-12-04 20:04:29','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2023-12-04 20:04:29','0000-00-00 00:00:00','',0,'http://teste-wp.local/?post_type=projetos&p=85',0,'projetos','',0);
INSERT INTO `wp_posts` VALUES (86,1,'2023-12-04 20:04:29','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2023-12-04 20:04:29','0000-00-00 00:00:00','',0,'http://teste-wp.local/?post_type=projetos&p=86',0,'projetos','',0);
INSERT INTO `wp_posts` VALUES (87,1,'2023-12-04 20:06:43','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2023-12-04 20:06:43','0000-00-00 00:00:00','',0,'http://teste-wp.local/?post_type=projetos&p=87',0,'projetos','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2023-12-04 20:07:43','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2023-12-04 20:07:43','0000-00-00 00:00:00','',0,'http://teste-wp.local/?post_type=projetos&p=88',0,'projetos','',0);
INSERT INTO `wp_posts` VALUES (89,1,'2023-12-04 20:07:57','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2023-12-04 20:07:57','0000-00-00 00:00:00','',0,'http://teste-wp.local/?post_type=projetos&p=89',0,'projetos','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2023-12-04 20:18:21','2023-12-04 23:18:21','','projetos','','inherit','open','closed','','projetos-2','','','2023-12-04 20:18:21','2023-12-04 23:18:21','',73,'http://teste-wp.local/wp-content/uploads/2023/12/projetos.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (92,1,'2023-12-05 11:08:18','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2023-12-05 11:08:18','0000-00-00 00:00:00','',0,'http://teste-wp.local/?post_type=projetos&p=92',0,'projetos','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2023-12-06 11:21:39','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','open','open','','','','','2023-12-06 11:21:39','0000-00-00 00:00:00','',0,'http://teste-wp.local/?p=93',0,'post','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2023-12-06 11:23:47','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2023-12-06 11:23:47','0000-00-00 00:00:00','',0,'http://teste-wp.local/?post_type=projetos&p=94',0,'projetos','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2023-12-06 11:35:58','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2023-12-06 11:35:58','0000-00-00 00:00:00','',0,'http://teste-wp.local/?post_type=projetos&p=95',0,'projetos','',0);
INSERT INTO `wp_posts` VALUES (97,1,'2023-12-06 15:29:02','2023-12-06 18:29:02','a:35:{s:9:\"post_type\";s:8:\"projetos\";s:22:\"advanced_configuration\";b:1;s:13:\"import_source\";s:0:\"\";s:11:\"import_date\";s:0:\"\";s:6:\"labels\";a:33:{s:4:\"name\";s:8:\"Projetos\";s:13:\"singular_name\";s:7:\"projeto\";s:9:\"menu_name\";s:8:\"Projetos\";s:9:\"all_items\";s:17:\"Todos os Projetos\";s:9:\"edit_item\";s:13:\"Editar projto\";s:9:\"view_item\";s:10:\"Ver projto\";s:10:\"view_items\";s:12:\"Ver Projetos\";s:12:\"add_new_item\";s:21:\"Adicionar novo projto\";s:7:\"add_new\";s:21:\"Adicionar novo projto\";s:8:\"new_item\";s:11:\"Novo projto\";s:17:\"parent_item_colon\";s:18:\"projto ascendente:\";s:12:\"search_items\";s:18:\"Pesquisar Projetos\";s:9:\"not_found\";s:37:\"Não foi possível encontrar projetos\";s:18:\"not_found_in_trash\";s:48:\"Não foi possível encontrar projetos na lixeira\";s:8:\"archives\";s:18:\"Arquivos de projto\";s:10:\"attributes\";s:19:\"Atributos de projto\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:16:\"insert_into_item\";s:17:\"Inserir no projto\";s:21:\"uploaded_to_this_item\";s:24:\"Enviado para este projto\";s:17:\"filter_items_list\";s:25:\"Filtrar lista de projetos\";s:14:\"filter_by_date\";s:25:\"Filtrar projetos por data\";s:21:\"items_list_navigation\";s:32:\"Navegação na lista de Projetos\";s:10:\"items_list\";s:17:\"Lista de Projetos\";s:14:\"item_published\";s:17:\"projto publicado.\";s:24:\"item_published_privately\";s:34:\"projto publicado de forma privada.\";s:22:\"item_reverted_to_draft\";s:31:\"projto revertido para rascunho.\";s:14:\"item_scheduled\";s:16:\"projto agendado.\";s:12:\"item_updated\";s:18:\"projto atualizado.\";s:9:\"item_link\";s:14:\"Link de projto\";s:21:\"item_link_description\";s:23:\"Um link para um projto.\";}s:11:\"description\";s:8:\"Projetos\";s:6:\"public\";b:1;s:12:\"hierarchical\";b:0;s:19:\"exclude_from_search\";b:0;s:18:\"publicly_queryable\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"admin_menu_parent\";s:0:\"\";s:17:\"show_in_admin_bar\";b:1;s:17:\"show_in_nav_menus\";b:1;s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:0:\"\";s:14:\"rest_namespace\";s:5:\"wp/v2\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Posts_Controller\";s:13:\"menu_position\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:19:\"rename_capabilities\";b:0;s:24:\"singular_capability_name\";s:4:\"post\";s:22:\"plural_capability_name\";s:5:\"posts\";s:8:\"supports\";a:6:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:15:\"page-attributes\";i:3;s:9:\"thumbnail\";i:4;s:13:\"custom-fields\";i:5;s:12:\"post-formats\";}s:10:\"taxonomies\";a:3:{i:0;s:8:\"post_tag\";i:1;s:11:\"post_format\";i:2;s:8:\"category\";}s:11:\"has_archive\";b:0;s:16:\"has_archive_slug\";s:0:\"\";s:7:\"rewrite\";a:4:{s:17:\"permalink_rewrite\";s:13:\"post_type_key\";s:10:\"with_front\";s:1:\"1\";s:5:\"feeds\";s:1:\"0\";s:5:\"pages\";s:1:\"1\";}s:9:\"query_var\";s:13:\"post_type_key\";s:14:\"query_var_name\";s:0:\"\";s:10:\"can_export\";b:1;s:16:\"delete_with_user\";b:0;s:20:\"register_meta_box_cb\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}','Projetos','projetos','publish','closed','closed','','post_type_6570bd055b8d0','','','2023-12-06 15:56:40','2023-12-06 18:56:40','',0,'http://teste-wp.local/?post_type=acf-post-type&#038;p=97',0,'acf-post-type','',0);
INSERT INTO `wp_posts` VALUES (98,1,'2023-12-06 15:35:36','2023-12-06 18:35:36','a:8:{s:8:\"location\";a:5:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"default\";}}i:2;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"projetos\";}}i:3;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}}i:4;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"63\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:1;}','Projetos','projetos','publish','closed','closed','','group_6570bd7343ab1','','','2023-12-06 15:59:27','2023-12-06 18:59:27','',0,'http://teste-wp.local/?post_type=acf-field-group&#038;p=98',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (99,1,'2023-12-06 15:32:58','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2023-12-06 15:32:58','0000-00-00 00:00:00','',0,'http://teste-wp.local/?post_type=projetos&p=99',0,'projetos','',0);
INSERT INTO `wp_posts` VALUES (100,1,'2023-12-06 15:35:35','2023-12-06 18:35:35','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Nome do projeto','nome_do_projeto','publish','closed','closed','','field_6570bd74ea979','','','2023-12-06 15:35:35','2023-12-06 18:35:35','',98,'http://teste-wp.local/?post_type=acf-field&p=100',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (101,1,'2023-12-06 15:35:35','2023-12-06 18:35:35','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','descrição','descricao','publish','closed','closed','','field_6570bdf4ea97a','','','2023-12-06 15:35:35','2023-12-06 18:35:35','',98,'http://teste-wp.local/?post_type=acf-field&p=101',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (102,1,'2023-12-06 15:35:35','2023-12-06 18:35:35','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','resumo','resumo','publish','closed','closed','','field_6570be72ea97b','','','2023-12-06 15:35:35','2023-12-06 18:35:35','',98,'http://teste-wp.local/?post_type=acf-field&p=102',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (103,1,'2023-12-06 15:35:36','2023-12-06 18:35:36','a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"checkbox\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:3:{s:4:\"site\";s:4:\"site\";s:4:\"blog\";s:4:\"blog\";s:10:\"aplicativo\";s:10:\"aplicativo\";}s:13:\"default_value\";a:0:{}s:13:\"return_format\";s:5:\"value\";s:12:\"allow_custom\";i:0;s:6:\"layout\";s:8:\"vertical\";s:6:\"toggle\";i:0;s:11:\"save_custom\";i:0;s:25:\"custom_choice_button_text\";s:22:\"Adicionar nova escolha\";}','tipo de projeto','tipo_de_projeto','publish','closed','closed','','field_6570be79ea97c','','','2023-12-06 15:35:36','2023-12-06 18:35:36','',98,'http://teste-wp.local/?post_type=acf-field&p=103',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (104,1,'2023-12-06 15:35:36','2023-12-06 18:35:36','a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}','link do projeto','link_do_projeto','publish','closed','closed','','field_6570bed3ea97d','','','2023-12-06 15:35:36','2023-12-06 18:35:36','',98,'http://teste-wp.local/?post_type=acf-field&p=104',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (105,1,'2023-12-06 15:35:36','2023-12-06 18:35:36','a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:5:\"d/m/Y\";s:9:\"first_day\";i:1;}','data do projeto','data_do_projeto','publish','closed','closed','','field_6570bedfea97e','','','2023-12-06 15:35:36','2023-12-06 18:35:36','',98,'http://teste-wp.local/?post_type=acf-field&p=105',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (106,1,'2023-12-06 15:35:46','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2023-12-06 15:35:46','0000-00-00 00:00:00','',0,'http://teste-wp.local/?post_type=projeto&p=106',0,'projeto','',0);
INSERT INTO `wp_posts` VALUES (107,1,'2023-12-06 15:36:20','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2023-12-06 15:36:20','0000-00-00 00:00:00','',0,'http://teste-wp.local/?post_type=projeto&p=107',0,'projeto','',0);
INSERT INTO `wp_posts` VALUES (108,1,'2023-12-06 15:36:22','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2023-12-06 15:36:22','0000-00-00 00:00:00','',0,'http://teste-wp.local/?post_type=projeto&p=108',0,'projeto','',0);
INSERT INTO `wp_posts` VALUES (109,1,'2023-12-06 15:40:14','2023-12-06 18:40:14','','teste','','publish','open','open','','teste','','','2023-12-06 15:40:18','2023-12-06 18:40:18','',0,'http://teste-wp.local/?p=109',0,'post','',0);
INSERT INTO `wp_posts` VALUES (110,1,'2023-12-06 15:40:14','2023-12-06 18:40:14','','teste','','inherit','closed','closed','','109-revision-v1','','','2023-12-06 15:40:14','2023-12-06 18:40:14','',109,'http://teste-wp.local/?p=110',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (111,1,'2023-12-06 15:40:18','2023-12-06 18:40:18','','teste','','inherit','closed','closed','','109-revision-v1','','','2023-12-06 15:40:18','2023-12-06 18:40:18','',109,'http://teste-wp.local/?p=111',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (112,1,'2023-12-06 15:44:48','2023-12-06 18:44:48','a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}','imagem do projeto','imagem_do_projeto','publish','closed','closed','','field_6570c0e563053','','','2023-12-06 15:44:48','2023-12-06 18:44:48','',98,'http://teste-wp.local/?post_type=acf-field&p=112',6,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (113,1,'2023-12-06 15:50:04','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2023-12-06 15:50:04','0000-00-00 00:00:00','',0,'http://teste-wp.local/?post_type=acf-post-type&p=113',0,'acf-post-type','',0);
INSERT INTO `wp_posts` VALUES (114,1,'2023-12-06 15:52:50','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2023-12-06 15:52:50','0000-00-00 00:00:00','',0,'http://teste-wp.local/?post_type=projeto&p=114',0,'projeto','',0);
INSERT INTO `wp_posts` VALUES (115,1,'2023-12-06 15:53:17','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','open','open','','','','','2023-12-06 15:53:17','0000-00-00 00:00:00','',0,'http://teste-wp.local/?p=115',0,'post','',0);
INSERT INTO `wp_posts` VALUES (116,1,'2023-12-06 15:54:48','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2023-12-06 15:54:48','0000-00-00 00:00:00','',0,'http://teste-wp.local/?post_type=projeto&p=116',0,'projeto','',0);
INSERT INTO `wp_posts` VALUES (117,1,'2023-12-06 15:56:49','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2023-12-06 15:56:49','0000-00-00 00:00:00','',0,'http://teste-wp.local/?post_type=acf-post-type&p=117',0,'acf-post-type','',0);
INSERT INTO `wp_posts` VALUES (118,1,'2023-12-06 15:56:56','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2023-12-06 15:56:56','0000-00-00 00:00:00','',0,'http://teste-wp.local/?post_type=projetos&p=118',0,'projetos','',0);
INSERT INTO `wp_posts` VALUES (119,1,'2023-12-06 15:57:13','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2023-12-06 15:57:13','0000-00-00 00:00:00','',0,'http://teste-wp.local/?post_type=acf-post-type&p=119',0,'acf-post-type','',0);
INSERT INTO `wp_posts` VALUES (120,1,'2023-12-06 15:57:16','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2023-12-06 15:57:16','0000-00-00 00:00:00','',0,'http://teste-wp.local/?post_type=acf-post-type&p=120',0,'acf-post-type','',0);
INSERT INTO `wp_posts` VALUES (121,1,'2023-12-06 15:57:24','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2023-12-06 15:57:24','0000-00-00 00:00:00','',0,'http://teste-wp.local/?post_type=projetos&p=121',0,'projetos','',0);
INSERT INTO `wp_posts` VALUES (122,1,'2023-12-06 15:57:38','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2023-12-06 15:57:38','0000-00-00 00:00:00','',0,'http://teste-wp.local/?post_type=acf-post-type&p=122',0,'acf-post-type','',0);
INSERT INTO `wp_posts` VALUES (123,1,'2023-12-06 15:57:41','0000-00-00 00:00:00','','Rascunho automático','','auto-draft','closed','closed','','','','','2023-12-06 15:57:41','0000-00-00 00:00:00','',0,'http://teste-wp.local/?post_type=projetos&p=123',0,'projetos','',0);
INSERT INTO `wp_posts` VALUES (124,1,'2023-12-06 16:00:35','2023-12-06 19:00:35','','teste','','publish','closed','closed','','teste','','','2023-12-06 17:02:18','2023-12-06 20:02:18','',0,'http://teste-wp.local/?post_type=projetos&#038;p=124',0,'projetos','',0);
INSERT INTO `wp_posts` VALUES (125,1,'2023-12-06 16:02:26','2023-12-06 19:02:26','','teste 4','','publish','closed','closed','','teste-4','','','2023-12-06 17:01:48','2023-12-06 20:01:48','',0,'http://teste-wp.local/?post_type=projetos&#038;p=125',0,'projetos','',0);
INSERT INTO `wp_posts` VALUES (126,1,'2023-12-06 18:02:22','2023-12-06 21:02:22','','melinda-l','','inherit','open','closed','','melinda-l','','','2023-12-06 18:02:22','2023-12-06 21:02:22','',73,'http://teste-wp.local/wp-content/uploads/2023/12/melinda-l.png',0,'attachment','image/png',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (51,4,0);
INSERT INTO `wp_term_relationships` VALUES (56,4,0);
INSERT INTO `wp_term_relationships` VALUES (59,4,0);
INSERT INTO `wp_term_relationships` VALUES (64,4,0);
INSERT INTO `wp_term_relationships` VALUES (67,4,0);
INSERT INTO `wp_term_relationships` VALUES (109,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'nav_menu','',0,5);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (4,'Menu','menu',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','admin');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','0');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:10:{s:64:\"70bb2d696fbff55ffec920e6d590e0d738f04b09a74987a063938d7d61b1bad0\";a:4:{s:10:\"expiration\";i:1702431670;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36\";s:5:\"login\";i:1701222070;}s:64:\"b0c220707c85c3180b3cf591cefc50e77471c00ec251cea6af9a005f7edf3288\";a:4:{s:10:\"expiration\";i:1702933446;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36\";s:5:\"login\";i:1701723846;}s:64:\"55aef00bcdd817368f1bc6d7e8daabb346ab15b6d609bc5abe42a0dba8a24604\";a:4:{s:10:\"expiration\";i:1701897697;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36\";s:5:\"login\";i:1701724897;}s:64:\"756ab053185dcdbcc2aa101e6ce093c5e123c228dd50df0786571c59458ce3a6\";a:4:{s:10:\"expiration\";i:1701946434;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36\";s:5:\"login\";i:1701773634;}s:64:\"a7a831ad90ef6ab0792ec886cd99d0a2df7a0bea28227c809871cd581598886e\";a:4:{s:10:\"expiration\";i:1701958095;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:125:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0\";s:5:\"login\";i:1701785295;}s:64:\"58b31dae86cb17358266e56b5118c8e9572035aeb58fe4b97cb1f763a1c71ef7\";a:4:{s:10:\"expiration\";i:1702045292;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36\";s:5:\"login\";i:1701872492;}s:64:\"73f547bd51130b25a6582c0ef0b15a3b8f60330cfd56b8e421163fd4b1a66612\";a:4:{s:10:\"expiration\";i:1702048687;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:125:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0\";s:5:\"login\";i:1701875887;}s:64:\"6ec480167f3d29112a81f9a0c71d0940dfa0298f12a947494c86e1ed4c0ceea1\";a:4:{s:10:\"expiration\";i:1702059830;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36\";s:5:\"login\";i:1701887030;}s:64:\"c7cd4e501c167d1e80244c999f6a8ee7c0e7f047e6da156164c2e0641cf835d6\";a:4:{s:10:\"expiration\";i:1702065663;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36\";s:5:\"login\";i:1701892863;}s:64:\"ff38f3fe71015ce3a938226b290ead61779c2d627493587a169b7527a13f8d16\";a:4:{s:10:\"expiration\";i:1702069288;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36\";s:5:\"login\";i:1701896488;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','93');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_user-settings','libraryContent=browse&editor=tinymce');
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_user-settings-time','1701724381');
INSERT INTO `wp_usermeta` VALUES (20,1,'manageedit-acf-post-typecolumnshidden','a:1:{i:0;s:7:\"acf-key\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'acf_user_settings','a:2:{s:19:\"post-type-first-run\";b:1;s:20:\"taxonomies-first-run\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (22,1,'closedpostboxes_acf-post-type','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (23,1,'metaboxhidden_acf-post-type','a:1:{i:0;s:7:\"slugdiv\";}');
INSERT INTO `wp_usermeta` VALUES (24,1,'wp_persisted_preferences','a:3:{s:14:\"core/edit-post\";a:4:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:5:{i:0;s:11:\"post-status\";i:1;s:16:\"discussion-panel\";i:2;s:34:\"taxonomy-panel-wp_pattern_category\";i:3;s:15:\"page-attributes\";i:4;s:12:\"post-excerpt\";}s:10:\"editorMode\";s:6:\"visual\";}s:9:\"_modified\";s:24:\"2023-12-06T18:43:00.997Z\";s:17:\"core/edit-widgets\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}}');
INSERT INTO `wp_usermeta` VALUES (25,2,'nickname','teste');
INSERT INTO `wp_usermeta` VALUES (26,2,'first_name','teste');
INSERT INTO `wp_usermeta` VALUES (27,2,'last_name','teste');
INSERT INTO `wp_usermeta` VALUES (28,2,'description','');
INSERT INTO `wp_usermeta` VALUES (29,2,'rich_editing','false');
INSERT INTO `wp_usermeta` VALUES (30,2,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (31,2,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (32,2,'admin_color','midnight');
INSERT INTO `wp_usermeta` VALUES (33,2,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (34,2,'show_admin_bar_front','false');
INSERT INTO `wp_usermeta` VALUES (35,2,'locale','');
INSERT INTO `wp_usermeta` VALUES (36,2,'wp_capabilities','a:1:{s:6:\"editor\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (37,2,'wp_user_level','7');
INSERT INTO `wp_usermeta` VALUES (38,2,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (40,2,'wp_dashboard_quick_press_last_post_id','27');
INSERT INTO `wp_usermeta` VALUES (41,2,'closedpostboxes_dashboard','a:1:{i:0;s:17:\"dashboard_primary\";}');
INSERT INTO `wp_usermeta` VALUES (42,2,'metaboxhidden_dashboard','a:4:{i:0;s:19:\"dashboard_right_now\";i:1;s:18:\"dashboard_activity\";i:2;s:21:\"dashboard_quick_press\";i:3;s:17:\"dashboard_primary\";}');
INSERT INTO `wp_usermeta` VALUES (46,1,'closedpostboxes_dashboard','a:5:{i:0;s:21:\"dashboard_site_health\";i:1;s:19:\"dashboard_right_now\";i:2;s:18:\"dashboard_activity\";i:3;s:21:\"dashboard_quick_press\";i:4;s:17:\"dashboard_primary\";}');
INSERT INTO `wp_usermeta` VALUES (47,1,'metaboxhidden_dashboard','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (48,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (49,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (50,1,'nav_menu_recently_edited','4');
INSERT INTO `wp_usermeta` VALUES (51,1,'closedpostboxes_projetos','a:3:{i:0;s:11:\"project_url\";i:1;s:12:\"project_date\";i:2;s:10:\"postcustom\";}');
INSERT INTO `wp_usermeta` VALUES (52,1,'metaboxhidden_projetos','a:1:{i:0;s:7:\"slugdiv\";}');
INSERT INTO `wp_usermeta` VALUES (53,1,'meta-box-order_projetos','a:3:{s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:72:\"postexcerpt,project_checkbox,project_url,project_date,postcustom,slugdiv\";s:8:\"advanced\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (54,1,'screen_layout_projetos','2');
INSERT INTO `wp_usermeta` VALUES (55,1,'manageedit-acf-taxonomycolumnshidden','a:1:{i:0;s:7:\"acf-key\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$P$BXmf.z2RumtOP/qdDlwME1UOfAFLwq/','admin','tgvieirabr@gmail.com','http://teste-wp.local','2023-11-29 00:02:48','',0,'admin');
INSERT INTO `wp_users` VALUES (2,'teste','$P$B5cSzT.xluSJTp4ronRkLN4u9/DxMI/','teste','xloooco98@gmail.com','http://tgdev.be','2023-11-29 01:28:10','',0,'teste teste');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-06 22:23:23
