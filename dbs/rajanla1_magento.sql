-- phpMyAdmin SQL Dump
-- version 4.1.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 17, 2015 at 04:40 AM
-- Server version: 5.5.41-37.0-log
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rajanla1_magento`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminnotification_inbox`
--

CREATE TABLE IF NOT EXISTS `adminnotification_inbox` (
  `notification_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Notification id',
  `severity` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Problem type',
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Create date',
  `title` varchar(255) NOT NULL COMMENT 'Title',
  `description` text COMMENT 'Description',
  `url` varchar(255) DEFAULT NULL COMMENT 'Url',
  `is_read` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag if notification read',
  `is_remove` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag if notification might be removed',
  PRIMARY KEY (`notification_id`),
  KEY `IDX_ADMINNOTIFICATION_INBOX_SEVERITY` (`severity`),
  KEY `IDX_ADMINNOTIFICATION_INBOX_IS_READ` (`is_read`),
  KEY `IDX_ADMINNOTIFICATION_INBOX_IS_REMOVE` (`is_remove`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Adminnotification Inbox' AUTO_INCREMENT=126 ;

--
-- Dumping data for table `adminnotification_inbox`
--

INSERT INTO `adminnotification_inbox` (`notification_id`, `severity`, `date_added`, `title`, `description`, `url`, `is_read`, `is_remove`) VALUES
(1, 4, '2008-07-25 04:24:40', 'Magento 1.1 Production Version Now Available', 'We are thrilled to announce the availability of the production release of Magento 1.1. Read more about the release in the Magento Blog.', 'http://www.magentocommerce.com/blog/comments/magento-11-is-here-1/', 0, 1),
(2, 4, '2008-08-02 04:30:16', 'Updated iPhone Theme is now available', 'Updated iPhone theme for Magento 1.1 is now available on Magento Connect and for upgrade through your Magento Connect Manager.', 'http://www.magentocommerce.com/blog/comments/updated-iphone-theme-for-magento-11-is-now-available/', 0, 1),
(3, 3, '2008-08-02 04:40:27', 'Magento version 1.1.2 is now available', 'Magento version 1.1.2 is now available for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-version-112-is-now-available/', 0, 1),
(4, 3, '2008-08-13 20:51:46', 'Magento version 1.1.3 is now available', 'Magento version 1.1.3 is now available', 'http://www.magentocommerce.com/blog/comments/magento-version-113-is-now-available/', 0, 1),
(5, 1, '2008-09-03 00:10:31', 'Magento Version 1.1.4 Security Update Now Available', 'Magento 1.1.4 Security Update Now Available. If you are using Magento version 1.1.x, we highly recommend upgrading to this version as soon as possible.', 'http://www.magentocommerce.com/blog/comments/magento-version-114-security-update/', 0, 1),
(6, 3, '2008-09-16 01:09:54', 'Magento version 1.1.5 Now Available', 'Magento version 1.1.5 Now Available.\n\nThis release includes many bug fixes, a new category manager and a new skin for the default Magento theme.', 'http://www.magentocommerce.com/blog/comments/magento-version-115-now-available/', 0, 1),
(7, 3, '2008-09-17 23:18:35', 'Magento version 1.1.6 Now Available', 'Magento version 1.1.6 Now Available.\n\nThis version includes bug fixes for Magento 1.1.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-116-now-available/', 0, 1),
(8, 4, '2008-11-08 04:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(9, 3, '2008-11-20 06:31:12', 'Magento version 1.1.7 Now Available', 'Magento version 1.1.7 Now Available.\n\nThis version includes over 350 issue resolutions for Magento 1.1.x that are listed in the release notes section, and new functionality that includes:\n\n-Google Website Optimizer integration\n-Google Base integration\n-Scheduled DB logs cleaning option', 'http://www.magentocommerce.com/blog/comments/magento-version-117-now-available/', 0, 1),
(10, 3, '2008-11-27 02:24:50', 'Magento Version 1.1.8 Now Available', 'Magento version 1.1.8 now available.\n\nThis version includes some issue resolutions for Magento 1.1.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-118-now-available/', 0, 1),
(11, 3, '2008-12-30 12:45:59', 'Magento version 1.2.0 is now available for download and upgrade', 'We are extremely happy to announce the availability of Magento version 1.2.0 for download and upgrade.\n\nThis version includes numerous issue resolutions for Magento version 1.1.x and some highly requested new features such as:\n\n    * Support for Downloadable/Digital Products. \n    * Added Layered Navigation to site search result page.\n    * Improved site search to utilize MySQL fulltext search\n    * Added support for fixed-taxes on product level.\n    * Upgraded Zend Framework to the latest stable version 1.7.2', 'http://www.magentocommerce.com/blog/comments/magento-version-120-is-now-available/', 0, 1),
(12, 2, '2008-12-31 02:59:22', 'Magento version 1.2.0.1 now available', 'Magento version 1.2.0.1 now available.This version includes some issue resolutions for Magento 1.2.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-1201-available/', 0, 1),
(13, 2, '2009-01-13 01:41:49', 'Magento version 1.2.0.2 now available', 'Magento version 1.2.0.2 is now available for download and upgrade. This version includes an issue resolutions for Magento version 1.2.0.x as listed in the release notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1202-now-available/', 0, 1),
(14, 3, '2009-01-24 05:25:56', 'Magento version 1.2.0.3 now available', 'Magento version 1.2.0.3 is now available for download and upgrade. This version includes issue resolutions for Magento version 1.2.0.x as listed in the release notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1203-now-available/', 0, 1),
(15, 3, '2009-02-03 02:57:00', 'Magento version 1.2.1 is now available for download and upgrade', 'We are happy to announce the availability of Magento version 1.2.1 for download and upgrade.\n\nThis version includes some issue resolutions for Magento version 1.2.x. A full list of items included in this release can be found on the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-121-now-available/', 0, 1),
(16, 3, '2009-02-24 05:45:47', 'Magento version 1.2.1.1 now available', 'Magento version 1.2.1.1 now available.This version includes some issue resolutions for Magento 1.2.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-1211-now-available/', 0, 1),
(17, 3, '2009-02-27 06:39:24', 'CSRF Attack Prevention', 'We have just posted a blog entry about a hypothetical CSRF attack on a Magento admin panel. Please read the post to find out if your Magento installation is at risk at http://www.magentocommerce.com/blog/comments/csrf-vulnerabilities-in-web-application-and-how-to-avoid-them-in-magento/', 'http://www.magentocommerce.com/blog/comments/csrf-vulnerabilities-in-web-application-and-how-to-avoid-them-in-magento/', 0, 1),
(18, 2, '2009-03-04 04:03:58', 'Magento version 1.2.1.2 now available', 'Magento version 1.2.1.2 is now available for download and upgrade.\nThis version includes some updates to improve admin security as described in the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-1212-now-available/', 0, 1),
(19, 3, '2009-03-31 05:22:40', 'Magento version 1.3.0 now available', 'Magento version 1.3.0 is now available for download and upgrade. This version includes numerous issue resolutions for Magento version 1.2.x and new features as described on the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-130-is-now-available/', 0, 1),
(20, 3, '2009-04-18 07:06:02', 'Magento version 1.3.1 now available', 'Magento version 1.3.1 is now available for download and upgrade. This version includes some issue resolutions for Magento version 1.3.x and new features such as Checkout By Amazon and Amazon Flexible Payment. To see a full list of updates please check the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-131-now-available/', 0, 1),
(21, 3, '2009-05-20 01:31:21', 'Magento version 1.3.1.1 now available', 'Magento version 1.3.1.1 is now available for download and upgrade. This version includes some issue resolutions for Magento version 1.3.x and a security update for Magento installations that run on multiple domains or sub-domains. If you are running Magento with multiple domains or sub-domains we highly recommend upgrading to this version.', 'http://www.magentocommerce.com/blog/comments/magento-version-1311-now-available/', 0, 1),
(22, 3, '2009-05-30 01:54:06', 'Magento version 1.3.2 now available', 'This version includes some improvements and issue resolutions for version 1.3.x that are listed on the release notes page. also included is a Beta version of the Compile module.', 'http://www.magentocommerce.com/blog/comments/magento-version-132-now-available/', 0, 1),
(23, 3, '2009-06-01 22:32:52', 'Magento version 1.3.2.1 now available', 'Magento version 1.3.2.1 now available for download and upgrade.\n\nThis release solves an issue for users running Magento with PHP 5.2.0, and changes to index.php to support the new Compiler Module.', 'http://www.magentocommerce.com/blog/comments/magento-version-1321-now-available/', 0, 1),
(24, 3, '2009-07-02 04:21:44', 'Magento version 1.3.2.2 now available', 'Magento version 1.3.2.2 is now available for download and upgrade.\n\nThis release includes issue resolution for Magento version 1.3.x. To see a full list of changes please visit the release notes page http://www.magentocommerce.com/download/release_notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1322-now-available/', 0, 1),
(25, 3, '2009-07-23 09:48:54', 'Magento version 1.3.2.3 now available', 'Magento version 1.3.2.3 is now available for download and upgrade.\n\nThis release includes issue resolution for Magento version 1.3.x. We recommend to upgrade to this version if PayPal payment modules are in use. To see a full list of changes please visit the release notes page http://www.magentocommerce.com/download/release_notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1323-now-available/', 0, 1),
(26, 4, '2009-08-28 21:26:28', 'PayPal is updating Payflow Pro and Website Payments Pro (Payflow Edition) UK.', 'If you are using Payflow Pro and/or Website Payments Pro (Payflow Edition) UK.  payment methods, you will need to update the URL‘s in your Magento Administrator Panel in order to process transactions after September 1, 2009. Full details are available here: http://www.magentocommerce.com/wiki/paypal_payflow_changes', 'http://www.magentocommerce.com/wiki/paypal_payflow_changes', 0, 1),
(27, 2, '2009-09-23 23:16:49', 'Magento Version 1.3.2.4 Security Update', 'Magento Version 1.3.2.4 is now available. This version includes a security updates for Magento 1.3.x that solves possible XSS vulnerability issue on customer registration page and is available through SVN, Download Page and through the Magento Connect Manager.', 'http://www.magentocommerce.com/blog/comments/magento-version-1324-security-update/', 0, 1),
(28, 4, '2009-09-25 17:57:54', 'Magento Preview Version 1.4.0.0-alpha2 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-alpha2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-alpha2-now-available/', 0, 1),
(29, 4, '2009-10-07 03:55:40', 'Magento Preview Version 1.4.0.0-alpha3 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-alpha3 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-alpha3-now-available/', 0, 1),
(30, 4, '2009-12-09 04:30:36', 'Magento Preview Version 1.4.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-beta1-now-available/', 0, 1),
(31, 4, '2009-12-31 14:22:12', 'Magento Preview Version 1.4.0.0-rc1 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-rc1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-rc1-now-available/', 0, 1),
(32, 4, '2010-02-13 08:39:53', 'Magento CE Version 1.4.0.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.0.0 Stable for upgrade and download.', 'http://bit.ly/c53rpK', 0, 1),
(33, 3, '2010-02-20 07:39:36', 'Magento CE Version 1.4.0.1 Stable is now available', 'Magento CE 1.4.0.1 Stable is now available for upgrade and download.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1401-stable-now-available/', 0, 1),
(34, 4, '2010-04-23 23:09:03', 'Magento Version CE 1.3.3.0 Stable - Now Available With Support for 3-D Secure', 'Based on community requests, we are excited to announce the release of Magento CE 1.3.3.0-Stable with support for 3-D Secure. This release is intended for Magento merchants using version 1.3.x, who want to add support for 3-D Secure.', 'http://www.magentocommerce.com/blog/comments/magento-version-ce-1330-stable-now-available-with-support-for-3-d-secure/', 0, 1),
(35, 4, '2010-05-31 20:20:21', 'Announcing the Launch of Magento Mobile', 'The Magento team is pleased to announce the launch of Magento mobile, a new product that will allow Magento merchants to easily create branded, native mobile storefront applications that are deeply integrated with Magento’s market-leading eCommerce platform. The product includes a new administrative manager, a native iPhone app that is fully customizable, and a service where Magento manages the submission and maintenance process for the iTunes App Store.\n\nLearn more by visiting the Magento mobile product page and sign-up to be the first to launch a native mobile commerce app, fully integrated with Magento.', 'http://www.magentocommerce.com/product/mobile', 0, 1),
(36, 4, '2010-06-10 23:08:08', 'Magento CE Version 1.4.1.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.1.0 Stable for upgrade and download. Some of the highlights of this release include: Enhanced PayPal integration (more info to follow), Change of Database structure of the Sales module to no longer use EAV, and much more.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1410-stable-now-available/', 0, 1),
(37, 4, '2010-07-27 00:37:34', 'Magento CE Version 1.4.1.1 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.1.1 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1411-stable-now-available/', 0, 1),
(38, 4, '2010-07-28 08:12:12', 'Magento CE Version 1.4.2.0-beta1 Preview Release Now Available', 'This release gives a preview of the new Magento Connect Manager.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1420-beta1-now-available/', 0, 1),
(39, 4, '2010-07-28 23:15:01', 'Magento CE Version 1.4.1.1 Patch Available', 'As some users experienced issues with upgrading to CE 1.4.1.1 through PEAR channels we provided a patch for it that is available on our blog http://www.magentocommerce.com/blog/comments/magento-ce-version-1411-stable-patch/', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1411-stable-patch/', 0, 1),
(40, 4, '2010-10-12 03:13:25', 'Magento Mobile is now live!', 'Magento Mobile is now live! Signup today to have your own native iPhone mobile-shopping app in iTunes for the holiday season! Learn more at http://www.magentomobile.com/', 'http://www.magentomobile.com/', 0, 1),
(41, 4, '2010-11-09 02:52:06', 'Magento CE Version 1.4.2.0-RC1 Preview Release Now Available', 'We are happy to announce the availability of Magento Preview Version 1.4.2.0-RC1 for download.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1420-rc1-now-available/', 0, 1),
(42, 4, '2010-12-03 01:33:00', 'Magento CE Version 1.4.2.0-RC2 Preview Release Now Available', 'We are happy to announce the availability of Magento Preview Version 1.4.2.0-RC2 for download.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1420-rc2-now-available/', 0, 1),
(43, 4, '2010-12-09 03:29:55', 'Magento CE Version 1.4.2.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.2.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1420-stable-now-available/', 0, 1),
(44, 4, '2010-12-18 04:23:55', 'Magento Preview Version CE 1.5.0.0-alpha1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-alpha1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-alpha1-now-available/', 0, 1),
(45, 4, '2010-12-30 04:51:08', 'Magento Preview Version CE 1.5.0.0-alpha2 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-alpha2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-alpha2-now-available/', 0, 1),
(46, 4, '2011-01-14 05:35:36', 'Magento Preview Version CE 1.5.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-beta1-now-available/', 0, 1),
(47, 4, '2011-01-22 02:19:09', 'Magento Preview Version CE 1.5.0.0-beta2 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-beta2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-beta2-now-available/', 0, 1),
(48, 4, '2011-01-25 03:10:33', 'Join us for Magento''s Imagine eCommerce Conference!', 'Magento''s Imagine eCommerce Conference is a must-attend event for anyone who uses the Magento platform or is part of the Magento ecosystem. The conference will bring together over 500 retailers, merchants, developers, partners, eCommerce experts, technologists and marketing pros for a fun and intensive conversation about the future of eCommerce.\n\nThe conference is in Los Angeles and kicks off early Monday evening February 7th through Wednesday, February 9th, 2011.\n\nRegister at http://www.magento.com/imagine. First 20 registrants use discount code IMAGINE3X76 for $300 off. *This discount is sponsored by PayPal and is only valid for new registrations.\n\nHope to see you there!\n\nMagento Team', 'http://www.magento.com/imagine', 0, 1),
(49, 4, '2011-01-28 02:27:57', 'Magento Preview Version CE 1.5.0.0-rc1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-rc1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-rc1-now-available/', 0, 1),
(50, 4, '2011-02-04 02:56:33', 'Magento Preview Version CE 1.5.0.0-rc2 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-rc2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-rc2-now-available/', 0, 1),
(51, 4, '2011-02-09 00:43:23', 'Magento CE Version 1.5.0.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.5.0.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-community-professional-and-enterprise-editions-releases-now-availab/', 0, 1),
(52, 4, '2011-02-10 04:42:57', 'Magento CE 1.5.0.1 stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.5.0.1 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-1501-stable-now-available/', 0, 1),
(53, 4, '2011-03-19 00:15:45', 'Magento CE 1.5.1.0-beta1 Now Available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.1.0-beta1 for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1510-beta1-now-available/', 0, 1),
(54, 4, '2011-03-31 21:43:02', 'Magento CE 1.5.1.0-rc1 Now Available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.1.0-rc1 for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1510-rc1-now-available/', 0, 1),
(55, 4, '2011-04-26 22:21:07', 'Magento CE 1.5.1.0-stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.5.1.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1510-stable-now-available/', 0, 1),
(56, 4, '2011-05-26 22:33:23', 'Magento Preview Version CE 1.6.0.0-alpha1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.0.0-alpha1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1600-alpha1-now-available/', 0, 1),
(57, 4, '2011-06-15 21:12:08', 'Magento Preview Version CE 1.6.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.0.0-beta1for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1600-beta1-now-available/', 0, 1),
(58, 4, '2011-06-30 22:03:58', 'Magento Preview Version CE 1.6.0.0-rc1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.0.0-rc1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1600-rc1-now-available/', 0, 1),
(59, 4, '2011-07-11 22:07:39', 'Magento Preview Version CE 1.6.0.0-rc2 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.0.0-rc2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1600-rc2-now-available/', 0, 1),
(60, 4, '2011-08-19 20:58:31', 'Magento CE 1.6.0.0-stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.6.0.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1600-stable-now-available/', 0, 1),
(61, 4, '2011-09-17 04:31:26', 'Magento Preview Version CE 1.6.1.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.1.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1610-beta1-now-available/', 0, 1),
(62, 4, '2011-09-29 18:44:10', 'Magento Preview Version CE 1.6.1.0-rc1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.1.0-rc1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1610-rc1-now-available/', 0, 1),
(63, 4, '2011-10-19 20:50:05', 'Magento CE 1.6.1.0-stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.6.1.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1610-stable-now-available/', 0, 1),
(64, 4, '2008-11-08 04:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(65, 4, '2011-12-30 22:39:35', 'Magento Preview Version CE 1.7.0.0-alpha1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.7.0.0-alpha1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1700-alpha1-now-available/', 0, 1),
(66, 4, '2012-01-11 22:24:20', 'Magento CE 1.6.2.0-stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.6.2.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1620-stable-now-available/', 0, 1),
(67, 4, '2012-03-03 00:54:12', 'Magento Preview Version CE 1.7.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.7.0.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1700-beta1-now-available/', 0, 1),
(68, 4, '2012-04-23 13:02:40', 'Magento Community Preview Version CE 1.7.0.0-RC1 has been released!', 'Learn more about the exciting new features and updates in this release and how you can take it for a test drive. As this is a preview version, we need to stress that it''s likely unstable and that we DON''T recommend that you use it in any production environment just yet.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1700-rc1-now-available/', 0, 1),
(69, 4, '2012-05-11 08:46:54', 'Magento Community 1.7 and Magento Enterprise 1.12 now available!', 'Learn more about the exciting new features and updates in these releases.', 'http://www.magentocommerce.com/blog/comments/magento-enterprise-112-and-community-17-now-available/', 0, 1),
(70, 4, '2008-11-08 04:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(71, 4, '2008-11-08 04:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(72, 4, '2008-11-08 04:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(73, 4, '2008-11-08 04:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(74, 4, '2008-11-08 04:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(75, 4, '2008-11-08 04:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(76, 4, '2008-11-08 04:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(77, 4, '2008-11-08 04:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(78, 4, '2008-11-08 04:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(79, 4, '2008-11-08 10:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(80, 4, '2008-11-08 10:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(81, 4, '2008-11-08 10:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(82, 4, '2008-11-08 10:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(83, 4, '2008-11-08 10:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(84, 4, '2008-11-08 10:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(85, 4, '2008-11-08 10:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(86, 4, '2008-11-08 10:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(87, 4, '2008-11-08 10:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(88, 4, '2008-11-08 10:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(89, 4, '2008-11-08 10:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(90, 4, '2008-11-08 11:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(91, 4, '2012-06-21 00:54:07', 'Magento Community Edition 1.7.0.1 now available! ', 'We have just released an updated version of Magento Community Edition, version 1.7.0.1. This update delivers new, minor functionality and fixes for some potential security vulnerabilities.', 'http://www.magentocommerce.com/blog/comments/magento-community-edition-1701-released/', 0, 1),
(92, 4, '2012-07-06 01:21:43', 'Important Security Update - Zend Platform Vulnerability', 'We have recently learned of a serious vulnerability in the Zend platform on which Magento is built. Learn more and access a patch that addresses this issue. ', 'http://www.magentocommerce.com/blog/comments/important-security-update-zend-platform-vulnerability/', 0, 1),
(93, 4, '2008-11-08 11:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(94, 4, '2008-11-08 11:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(95, 4, '2008-11-08 11:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(96, 4, '2008-11-08 11:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(97, 4, '2008-11-08 11:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(98, 4, '2008-11-08 11:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(99, 4, '2008-11-08 11:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(100, 4, '2008-11-08 11:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(101, 4, '2008-11-08 11:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(102, 4, '2008-11-08 11:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(103, 4, '2008-11-08 11:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(104, 4, '2008-11-08 11:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(105, 4, '2008-11-08 11:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(106, 4, '2008-11-08 11:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(107, 4, '2008-11-08 11:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(108, 4, '2008-11-08 11:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(109, 4, '2012-08-25 04:37:47', 'Increase Your Sales With PayPal', 'Magento merchants using PayPal Express Checkout can help increase their sales on average 18%. It is one simple thing you can do right now to help boost your sales. Learn more.', 'http://www.magentocommerce.com/add-paypal?utm_source=CEModule&utm_medium=copy&utm_content=18&utm_campaign=choosepaypal', 0, 0),
(110, 4, '2012-11-20 03:27:42', 'Wrap up more holiday sales with financing', 'Give your customers up to 6 months financing. You get paid right away with Bill Me Later, a PayPal service. It’s a great way to extend financing in time for the holidays. Learn More.', 'http://www.magentocommerce.com/paypal/billmelater?utm_source=CEMessaging&utm_medium=copy&utm_content=sixmonths&utm_campaign=BML', 0, 0),
(111, 4, '2013-01-16 05:02:07', 'Imagine 2013 Registration is Now Open!', 'Join 1500 merchants, partners, developers and enthusiasts from 35+ countries around the world for Magento’s premier global conference! Collaborate, learn, network and get inspired by the future of eCommerce. Tickets will sell out fast! April 8th – 10th in Las Vegas.', 'https://registration.imagineecommerce.com/', 0, 0),
(112, 4, '2013-02-13 00:53:42', 'Get More eCommerce Power with Magento Enterprise', 'Limited time offer: Get a free, customized evaluation of your Community Edition site from a Magento Solution Partner. This evaluation gives you a clear look at the numerous benefits you can achieve by upgrading to Enterprise Edition. ', 'http://www.magentocommerce.com/community-to-enterprise?utm_source=CEMM&utm_medium=copy&utm_campaign=CE2EE', 0, 0),
(113, 2, '2013-09-27 23:28:13', 'Magento Community Edition 1.8.0.0 - now available for download!', 'Get tax, security, performance, and many other improvements. \n\nLearn more at http://www.magentocommerce.com/blog/comments/magento-community-edition-one-eight-now-available/ ', 'http://www.magentocommerce.com/blog/comments/magento-community-edition-one-eight-now-available/', 0, 0),
(114, 4, '2013-12-11 22:35:06', 'Magento Community Edition 1.8.1.0 is here!', 'This new version offers significant tax calculation, product quality, and security enhancements. Be sure to carefully review the upgrade instructions before starting. More information is available at http://www.magentocommerce.com/blog/comments/magento-community-edition-1810-is-here/', 'http://www.magentocommerce.com/blog/comments/magento-community-edition-1810-is-here/', 0, 0),
(115, 4, '2013-12-13 06:24:39', 'Important Magento Community Edition Patch', 'A security patch is available for Magento Community Edition 1.4.0.0 through 1.7.0.2; the issue has been fixed in Magento Community Edition 1.8.0.0 and later. It resolves a vulnerability discovered through our quarterly penetration testing process and has not been reported by merchants. We encourage all merchants to apply the patch in their next regularly scheduled maintenance cycle. The patch is available at http://www.magentocommerce.com/download in the Magento Community Edition Patches section.', 'http://www.magentocommerce.com/download', 0, 0),
(116, 4, '2014-01-22 01:34:48', 'PHP 5.4 Patch Now Available', 'Magento is advancing its platform and making development more efficient by adding support for PHP 5.4. Patches are available for download at www.magentocommerce.com/download and you can learn more about this update in our blog post at http://www.magentocommerce.com/blog/comments/magento-now-supports-php-54 .', 'http://www.magentocommerce.com/blog/comments/magento-now-supports-php-54', 0, 0),
(117, 4, '2014-02-03 23:14:54', 'Imagine 2014 Registration is Open', 'Register today to join us May 12-14 at the Hard Rock Hotel in Las Vegas for Imagine 2014, Magento''s annual conference.\n\nEarly-bird registration pricing ends February 17 so don’t delay!\n\nhttp://www.imagineecommerce.com?utm_source=magento&utm_medium=cerss&utm_campaign=registrationopen\n\n', 'http://www.imagineecommerce.com?utm_source=magento&utm_medium=cerss&utm_campaign=registrationopen', 0, 0),
(118, 4, '2014-02-21 00:51:46', 'Discover Card Validation Patch Available', 'A patch that resolves an issue with validating Discover credit cards is now available for download at http://www.magentocommerce.com/download. More information on the patch is available in the Magento Knowledge Base at http://www.magentocommerce.com/knowledge-base/entry/discover-card-validation', 'http://www.magentocommerce.com/knowledge-base/entry/discover-card-validation ', 0, 0),
(119, 4, '2014-03-04 22:12:26', 'Learn How to Quickly Increase Sales on Your Site', 'Adding the PayPal Express Checkout button to your checkout page can help increase sales 18% on average. It’s fast and easy and you can do it right now to boost sales. Express Checkout is already seamlessly integrated into Community Edition.', 'http://magento.com/paypal/CE_Express_Checkout_NA?utm_source=messagemodule&utm_medium=message&utm_campaign=Ceexpresscheckout', 0, 0),
(120, 4, '2014-05-13 22:46:11', 'Magento Community Edition 1.9 is now available!', 'It accelerates your entry into the mobile commerce space by slashing the time and cost of getting a mobile device-friendly responsive site.  And a new Bill Me Later payment option helps boost your sales. Visit http://magento.com/blog/magento-news/magento-enables-responsive-sites-half-time to learn more.', 'http://magento.com/blog/magento-news/magento-enables-responsive-sites-half-time', 0, 0),
(121, 4, '2014-09-23 12:50:48', 'eBay Enterprise Display and Affiliate services can turbocharge your holiday sales. Learn how.', 'Learn more at www.ebayenterprise.com/turbochargesales.  DID YOU KNOW: Over 128 million shoppers visit eBay.com each month in Q4--and you can reach these highly qualified shoppers with eBay Enterprise Display. Also Magento merchants who use product-based retargeting ads average at least $5 in sales for every $1 in Retargeting spend. And on the Affiliate Network, you get access to over 200,000 active network publishers across 20+ promotional categories and 30+ verticals, and only pay when a consumer makes a purchase (Affiliate Network is only available in the U.S. & Canada). GET STARTED TODAY by visiting www.ebayenterprise.com/turbochargesales.', 'http://www.ebayenterprise.com/turbochargesales', 0, 0),
(122, 4, '2014-10-08 10:55:06', 'It’s still not too late: Boost your 2014 Holiday sales today.', 'See results in as little as one week with eBay Enterprise Display and 2 business days with eBay Enterprise Affiliate. DID YOU KNOW: Get access to over 128 million highly qualified shoppers on eBay.com with eBay Enterprise Display. And the average retail client using product retargeting sees a $10 to $1 ROI on retargeting spend during Q4. With the eBay Enterprise Affiliate Network, get access to over 200,000 active network publishers across 30+ verticals, and only pay when a customer makes a purchase (Affiliate Network is only available in the U.S. & Canada).  GET STARTED TODAY by visiting www.ebayenterprise.com/turbochargesales', 'http://www.ebayenterprise.com/turbochargesales', 0, 0),
(123, 4, '2014-11-13 02:03:26', 'Important: PayPal Users Must Discontinue Using SSL 3.0 By December 3, 2014', 'To address a vulnerability with the SSL 3.0 security protocol, PayPal and other payment gateways will be disabling SSL 3.0 support. Merchants must upgrade to Transport Layer Service (TLS) by December 3, 2014 to avoid PayPal payment operation failures. Learn more about what you need to do at https://devblog.paypal.com/poodle-ssl-3-0-vulnerability/', 'https://devblog.paypal.com/poodle-ssl-3-0-vulnerability/', 0, 0),
(124, 4, '2014-11-25 06:25:21', 'Magento Community Edition 1.9.1 is available!', 'Magento Community Edition 1.9.1 empowers merchants to deliver compelling shopping experiences by offering enhanced responsive design capabilities, new swatches to display product variations, and improved performance through support for MySQL 5.6 and PHP 5.5. It also includes support for Google Universal Analytics and over 70 product improvements. Find out more at http://magento.com/blog/magento-news/magento-community-edition-191-now-available-download', 'http://magento.com/blog/magento-news/magento-community-edition-191-now-available-download', 0, 0),
(125, 4, '2015-01-23 00:47:08', 'Join Us at Imagine Commerce 2015 - April 20-22 at the Wynn Las Vegas', 'Join Magento, eBay Enterprise, and over 2,000 merchants, developers, and eCommerce experts at the premier Commerce event of the year. With three days of cutting-edge keynote presentations, special technical programs, dynamic breakout sessions, and incredible networking opportunities, Imagine Commerce 2015 will educate, enrich, and inspire you to take your business to new heights. Register now at http://imagine2015.magento.com/.', 'http://imagine2015.magento.com/', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin_assert`
--

CREATE TABLE IF NOT EXISTS `admin_assert` (
  `assert_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Assert ID',
  `assert_type` varchar(20) NOT NULL COMMENT 'Assert Type',
  `assert_data` text COMMENT 'Assert Data',
  PRIMARY KEY (`assert_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin Assert Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `admin_role`
--

CREATE TABLE IF NOT EXISTS `admin_role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Role ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Role ID',
  `tree_level` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role Tree Level',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role Sort Order',
  `role_type` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Role Type',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User ID',
  `role_name` varchar(50) NOT NULL COMMENT 'Role Name',
  PRIMARY KEY (`role_id`),
  KEY `IDX_ADMIN_ROLE_PARENT_ID_SORT_ORDER` (`parent_id`,`sort_order`),
  KEY `IDX_ADMIN_ROLE_TREE_LEVEL` (`tree_level`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Admin Role Table' AUTO_INCREMENT=9 ;

--
-- Dumping data for table `admin_role`
--

INSERT INTO `admin_role` (`role_id`, `parent_id`, `tree_level`, `sort_order`, `role_type`, `user_id`, `role_name`) VALUES
(1, 0, 1, 1, 'G', 0, 'Administrators'),
(6, 0, 1, 0, 'G', 0, 'siteAdmin'),
(7, 6, 2, 0, 'U', 2, 'Kate'),
(8, 1, 2, 0, 'U', 1, 'Rajan');

-- --------------------------------------------------------

--
-- Table structure for table `admin_rule`
--

CREATE TABLE IF NOT EXISTS `admin_rule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule ID',
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Role ID',
  `resource_id` varchar(255) NOT NULL COMMENT 'Resource ID',
  `privileges` varchar(20) DEFAULT NULL COMMENT 'Privileges',
  `assert_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Assert ID',
  `role_type` varchar(1) DEFAULT NULL COMMENT 'Role Type',
  `permission` varchar(10) DEFAULT NULL COMMENT 'Permission',
  PRIMARY KEY (`rule_id`),
  KEY `IDX_ADMIN_RULE_RESOURCE_ID_ROLE_ID` (`resource_id`,`role_id`),
  KEY `IDX_ADMIN_RULE_ROLE_ID_RESOURCE_ID` (`role_id`,`resource_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Admin Rule Table' AUTO_INCREMENT=404 ;

--
-- Dumping data for table `admin_rule`
--

INSERT INTO `admin_rule` (`rule_id`, `role_id`, `resource_id`, `privileges`, `assert_id`, `role_type`, `permission`) VALUES
(1, 1, 'all', '', 0, 'G', 'allow'),
(203, 6, 'all', NULL, 0, 'G', 'deny'),
(204, 6, 'admin', NULL, 0, 'G', 'deny'),
(205, 6, 'admin/dashboard', NULL, 0, 'G', 'allow'),
(206, 6, 'admin/system', NULL, 0, 'G', 'deny'),
(207, 6, 'admin/system/acl', NULL, 0, 'G', 'deny'),
(208, 6, 'admin/system/acl/roles', NULL, 0, 'G', 'deny'),
(209, 6, 'admin/system/acl/users', NULL, 0, 'G', 'deny'),
(210, 6, 'admin/system/store', NULL, 0, 'G', 'deny'),
(211, 6, 'admin/system/design', NULL, 0, 'G', 'deny'),
(212, 6, 'admin/system/config', NULL, 0, 'G', 'deny'),
(213, 6, 'admin/system/config/general', NULL, 0, 'G', 'deny'),
(214, 6, 'admin/system/config/web', NULL, 0, 'G', 'deny'),
(215, 6, 'admin/system/config/design', NULL, 0, 'G', 'deny'),
(216, 6, 'admin/system/config/system', NULL, 0, 'G', 'deny'),
(217, 6, 'admin/system/config/advanced', NULL, 0, 'G', 'deny'),
(218, 6, 'admin/system/config/trans_email', NULL, 0, 'G', 'deny'),
(219, 6, 'admin/system/config/dev', NULL, 0, 'G', 'deny'),
(220, 6, 'admin/system/config/currency', NULL, 0, 'G', 'deny'),
(221, 6, 'admin/system/config/sendfriend', NULL, 0, 'G', 'deny'),
(222, 6, 'admin/system/config/admin', NULL, 0, 'G', 'deny'),
(223, 6, 'admin/system/config/cms', NULL, 0, 'G', 'deny'),
(224, 6, 'admin/system/config/customer', NULL, 0, 'G', 'deny'),
(225, 6, 'admin/system/config/catalog', NULL, 0, 'G', 'deny'),
(226, 6, 'admin/system/config/payment', NULL, 0, 'G', 'deny'),
(227, 6, 'admin/system/config/payment_services', NULL, 0, 'G', 'deny'),
(228, 6, 'admin/system/config/sales', NULL, 0, 'G', 'deny'),
(229, 6, 'admin/system/config/sales_email', NULL, 0, 'G', 'deny'),
(230, 6, 'admin/system/config/sales_pdf', NULL, 0, 'G', 'deny'),
(231, 6, 'admin/system/config/cataloginventory', NULL, 0, 'G', 'deny'),
(232, 6, 'admin/system/config/shipping', NULL, 0, 'G', 'deny'),
(233, 6, 'admin/system/config/carriers', NULL, 0, 'G', 'deny'),
(234, 6, 'admin/system/config/promo', NULL, 0, 'G', 'deny'),
(235, 6, 'admin/system/config/checkout', NULL, 0, 'G', 'deny'),
(236, 6, 'admin/system/config/paypal', NULL, 0, 'G', 'deny'),
(237, 6, 'admin/system/config/google', NULL, 0, 'G', 'deny'),
(238, 6, 'admin/system/config/reports', NULL, 0, 'G', 'deny'),
(239, 6, 'admin/system/config/tax', NULL, 0, 'G', 'deny'),
(240, 6, 'admin/system/config/wishlist', NULL, 0, 'G', 'deny'),
(241, 6, 'admin/system/config/contacts', NULL, 0, 'G', 'deny'),
(242, 6, 'admin/system/config/sitemap', NULL, 0, 'G', 'deny'),
(243, 6, 'admin/system/config/rss', NULL, 0, 'G', 'deny'),
(244, 6, 'admin/system/config/api', NULL, 0, 'G', 'deny'),
(245, 6, 'admin/system/config/oauth', NULL, 0, 'G', 'deny'),
(246, 6, 'admin/system/config/newsletter', NULL, 0, 'G', 'deny'),
(247, 6, 'admin/system/config/downloadable', NULL, 0, 'G', 'deny'),
(248, 6, 'admin/system/config/persistent', NULL, 0, 'G', 'deny'),
(249, 6, 'admin/system/config/moneybookers', NULL, 0, 'G', 'deny'),
(250, 6, 'admin/system/currency', NULL, 0, 'G', 'deny'),
(251, 6, 'admin/system/currency/rates', NULL, 0, 'G', 'deny'),
(252, 6, 'admin/system/currency/symbols', NULL, 0, 'G', 'deny'),
(253, 6, 'admin/system/email_template', NULL, 0, 'G', 'deny'),
(254, 6, 'admin/system/variable', NULL, 0, 'G', 'deny'),
(255, 6, 'admin/system/myaccount', NULL, 0, 'G', 'deny'),
(256, 6, 'admin/system/tools', NULL, 0, 'G', 'deny'),
(257, 6, 'admin/system/tools/backup', NULL, 0, 'G', 'deny'),
(258, 6, 'admin/system/tools/backup/rollback', NULL, 0, 'G', 'deny'),
(259, 6, 'admin/system/tools/compiler', NULL, 0, 'G', 'deny'),
(260, 6, 'admin/system/convert', NULL, 0, 'G', 'deny'),
(261, 6, 'admin/system/convert/gui', NULL, 0, 'G', 'deny'),
(262, 6, 'admin/system/convert/profiles', NULL, 0, 'G', 'deny'),
(263, 6, 'admin/system/convert/import', NULL, 0, 'G', 'deny'),
(264, 6, 'admin/system/convert/export', NULL, 0, 'G', 'deny'),
(265, 6, 'admin/system/cache', NULL, 0, 'G', 'deny'),
(266, 6, 'admin/system/extensions', NULL, 0, 'G', 'deny'),
(267, 6, 'admin/system/extensions/local', NULL, 0, 'G', 'deny'),
(268, 6, 'admin/system/extensions/custom', NULL, 0, 'G', 'deny'),
(269, 6, 'admin/system/adminnotification', NULL, 0, 'G', 'deny'),
(270, 6, 'admin/system/adminnotification/show_toolbar', NULL, 0, 'G', 'deny'),
(271, 6, 'admin/system/adminnotification/show_list', NULL, 0, 'G', 'deny'),
(272, 6, 'admin/system/adminnotification/mark_as_read', NULL, 0, 'G', 'deny'),
(273, 6, 'admin/system/adminnotification/remove', NULL, 0, 'G', 'deny'),
(274, 6, 'admin/system/index', NULL, 0, 'G', 'deny'),
(275, 6, 'admin/system/order_statuses', NULL, 0, 'G', 'deny'),
(276, 6, 'admin/system/api', NULL, 0, 'G', 'deny'),
(277, 6, 'admin/system/api/users', NULL, 0, 'G', 'deny'),
(278, 6, 'admin/system/api/roles', NULL, 0, 'G', 'deny'),
(279, 6, 'admin/system/api/consumer', NULL, 0, 'G', 'deny'),
(280, 6, 'admin/system/api/consumer/edit', NULL, 0, 'G', 'deny'),
(281, 6, 'admin/system/api/consumer/delete', NULL, 0, 'G', 'deny'),
(282, 6, 'admin/system/api/authorizedTokens', NULL, 0, 'G', 'deny'),
(283, 6, 'admin/system/api/oauth_admin_token', NULL, 0, 'G', 'deny'),
(284, 6, 'admin/system/api/rest_roles', NULL, 0, 'G', 'deny'),
(285, 6, 'admin/system/api/rest_roles/add', NULL, 0, 'G', 'deny'),
(286, 6, 'admin/system/api/rest_roles/edit', NULL, 0, 'G', 'deny'),
(287, 6, 'admin/system/api/rest_roles/delete', NULL, 0, 'G', 'deny'),
(288, 6, 'admin/system/api/rest_attributes', NULL, 0, 'G', 'deny'),
(289, 6, 'admin/system/api/rest_attributes/edit', NULL, 0, 'G', 'deny'),
(290, 6, 'admin/global_search', NULL, 0, 'G', 'deny'),
(291, 6, 'admin/cms', NULL, 0, 'G', 'allow'),
(292, 6, 'admin/cms/block', NULL, 0, 'G', 'allow'),
(293, 6, 'admin/cms/page', NULL, 0, 'G', 'allow'),
(294, 6, 'admin/cms/page/save', NULL, 0, 'G', 'allow'),
(295, 6, 'admin/cms/page/delete', NULL, 0, 'G', 'allow'),
(296, 6, 'admin/cms/media_gallery', NULL, 0, 'G', 'allow'),
(297, 6, 'admin/cms/poll', NULL, 0, 'G', 'allow'),
(298, 6, 'admin/cms/widget_instance', NULL, 0, 'G', 'allow'),
(299, 6, 'admin/customer', NULL, 0, 'G', 'allow'),
(300, 6, 'admin/customer/group', NULL, 0, 'G', 'allow'),
(301, 6, 'admin/customer/manage', NULL, 0, 'G', 'allow'),
(302, 6, 'admin/customer/online', NULL, 0, 'G', 'allow'),
(303, 6, 'admin/catalog', NULL, 0, 'G', 'allow'),
(304, 6, 'admin/catalog/attributes', NULL, 0, 'G', 'allow'),
(305, 6, 'admin/catalog/attributes/attributes', NULL, 0, 'G', 'allow'),
(306, 6, 'admin/catalog/attributes/sets', NULL, 0, 'G', 'allow'),
(307, 6, 'admin/catalog/categories', NULL, 0, 'G', 'allow'),
(308, 6, 'admin/catalog/products', NULL, 0, 'G', 'allow'),
(309, 6, 'admin/catalog/update_attributes', NULL, 0, 'G', 'allow'),
(310, 6, 'admin/catalog/urlrewrite', NULL, 0, 'G', 'allow'),
(311, 6, 'admin/catalog/search', NULL, 0, 'G', 'allow'),
(312, 6, 'admin/catalog/reviews_ratings', NULL, 0, 'G', 'allow'),
(313, 6, 'admin/catalog/reviews_ratings/reviews', NULL, 0, 'G', 'allow'),
(314, 6, 'admin/catalog/reviews_ratings/reviews/all', NULL, 0, 'G', 'allow'),
(315, 6, 'admin/catalog/reviews_ratings/reviews/pending', NULL, 0, 'G', 'allow'),
(316, 6, 'admin/catalog/reviews_ratings/ratings', NULL, 0, 'G', 'allow'),
(317, 6, 'admin/catalog/tag', NULL, 0, 'G', 'allow'),
(318, 6, 'admin/catalog/tag/all', NULL, 0, 'G', 'allow'),
(319, 6, 'admin/catalog/tag/pending', NULL, 0, 'G', 'allow'),
(320, 6, 'admin/catalog/sitemap', NULL, 0, 'G', 'allow'),
(321, 6, 'admin/promo', NULL, 0, 'G', 'allow'),
(322, 6, 'admin/promo/catalog', NULL, 0, 'G', 'allow'),
(323, 6, 'admin/promo/quote', NULL, 0, 'G', 'allow'),
(324, 6, 'admin/sales', NULL, 0, 'G', 'allow'),
(325, 6, 'admin/sales/order', NULL, 0, 'G', 'allow'),
(326, 6, 'admin/sales/order/actions', NULL, 0, 'G', 'allow'),
(327, 6, 'admin/sales/order/actions/create', NULL, 0, 'G', 'allow'),
(328, 6, 'admin/sales/order/actions/view', NULL, 0, 'G', 'allow'),
(329, 6, 'admin/sales/order/actions/email', NULL, 0, 'G', 'allow'),
(330, 6, 'admin/sales/order/actions/reorder', NULL, 0, 'G', 'allow'),
(331, 6, 'admin/sales/order/actions/edit', NULL, 0, 'G', 'allow'),
(332, 6, 'admin/sales/order/actions/cancel', NULL, 0, 'G', 'allow'),
(333, 6, 'admin/sales/order/actions/review_payment', NULL, 0, 'G', 'allow'),
(334, 6, 'admin/sales/order/actions/capture', NULL, 0, 'G', 'allow'),
(335, 6, 'admin/sales/order/actions/invoice', NULL, 0, 'G', 'allow'),
(336, 6, 'admin/sales/order/actions/creditmemo', NULL, 0, 'G', 'allow'),
(337, 6, 'admin/sales/order/actions/hold', NULL, 0, 'G', 'allow'),
(338, 6, 'admin/sales/order/actions/unhold', NULL, 0, 'G', 'allow'),
(339, 6, 'admin/sales/order/actions/ship', NULL, 0, 'G', 'allow'),
(340, 6, 'admin/sales/order/actions/comment', NULL, 0, 'G', 'allow'),
(341, 6, 'admin/sales/order/actions/emails', NULL, 0, 'G', 'allow'),
(342, 6, 'admin/sales/invoice', NULL, 0, 'G', 'allow'),
(343, 6, 'admin/sales/shipment', NULL, 0, 'G', 'allow'),
(344, 6, 'admin/sales/creditmemo', NULL, 0, 'G', 'allow'),
(345, 6, 'admin/sales/transactions', NULL, 0, 'G', 'allow'),
(346, 6, 'admin/sales/transactions/fetch', NULL, 0, 'G', 'allow'),
(347, 6, 'admin/sales/recurring_profile', NULL, 0, 'G', 'allow'),
(348, 6, 'admin/sales/billing_agreement', NULL, 0, 'G', 'allow'),
(349, 6, 'admin/sales/billing_agreement/actions', NULL, 0, 'G', 'allow'),
(350, 6, 'admin/sales/billing_agreement/actions/view', NULL, 0, 'G', 'allow'),
(351, 6, 'admin/sales/billing_agreement/actions/manage', NULL, 0, 'G', 'allow'),
(352, 6, 'admin/sales/billing_agreement/actions/use', NULL, 0, 'G', 'allow'),
(353, 6, 'admin/sales/checkoutagreement', NULL, 0, 'G', 'allow'),
(354, 6, 'admin/sales/tax', NULL, 0, 'G', 'allow'),
(355, 6, 'admin/sales/tax/classes_customer', NULL, 0, 'G', 'allow'),
(356, 6, 'admin/sales/tax/classes_product', NULL, 0, 'G', 'allow'),
(357, 6, 'admin/sales/tax/import_export', NULL, 0, 'G', 'allow'),
(358, 6, 'admin/sales/tax/rates', NULL, 0, 'G', 'allow'),
(359, 6, 'admin/sales/tax/rules', NULL, 0, 'G', 'allow'),
(360, 6, 'admin/report', NULL, 0, 'G', 'allow'),
(361, 6, 'admin/report/salesroot', NULL, 0, 'G', 'allow'),
(362, 6, 'admin/report/salesroot/paypal_settlement_reports', NULL, 0, 'G', 'allow'),
(363, 6, 'admin/report/salesroot/paypal_settlement_reports/view', NULL, 0, 'G', 'allow'),
(364, 6, 'admin/report/salesroot/paypal_settlement_reports/fetch', NULL, 0, 'G', 'allow'),
(365, 6, 'admin/report/salesroot/sales', NULL, 0, 'G', 'allow'),
(366, 6, 'admin/report/salesroot/tax', NULL, 0, 'G', 'allow'),
(367, 6, 'admin/report/salesroot/shipping', NULL, 0, 'G', 'allow'),
(368, 6, 'admin/report/salesroot/invoiced', NULL, 0, 'G', 'allow'),
(369, 6, 'admin/report/salesroot/refunded', NULL, 0, 'G', 'allow'),
(370, 6, 'admin/report/salesroot/coupons', NULL, 0, 'G', 'allow'),
(371, 6, 'admin/report/shopcart', NULL, 0, 'G', 'allow'),
(372, 6, 'admin/report/shopcart/product', NULL, 0, 'G', 'allow'),
(373, 6, 'admin/report/shopcart/abandoned', NULL, 0, 'G', 'allow'),
(374, 6, 'admin/report/products', NULL, 0, 'G', 'allow'),
(375, 6, 'admin/report/products/bestsellers', NULL, 0, 'G', 'allow'),
(376, 6, 'admin/report/products/sold', NULL, 0, 'G', 'allow'),
(377, 6, 'admin/report/products/viewed', NULL, 0, 'G', 'allow'),
(378, 6, 'admin/report/products/lowstock', NULL, 0, 'G', 'allow'),
(379, 6, 'admin/report/products/downloads', NULL, 0, 'G', 'allow'),
(380, 6, 'admin/report/customers', NULL, 0, 'G', 'allow'),
(381, 6, 'admin/report/customers/accounts', NULL, 0, 'G', 'allow'),
(382, 6, 'admin/report/customers/totals', NULL, 0, 'G', 'allow'),
(383, 6, 'admin/report/customers/orders', NULL, 0, 'G', 'allow'),
(384, 6, 'admin/report/review', NULL, 0, 'G', 'allow'),
(385, 6, 'admin/report/review/customer', NULL, 0, 'G', 'allow'),
(386, 6, 'admin/report/review/product', NULL, 0, 'G', 'allow'),
(387, 6, 'admin/report/tags', NULL, 0, 'G', 'allow'),
(388, 6, 'admin/report/tags/customer', NULL, 0, 'G', 'allow'),
(389, 6, 'admin/report/tags/popular', NULL, 0, 'G', 'allow'),
(390, 6, 'admin/report/tags/product', NULL, 0, 'G', 'allow'),
(391, 6, 'admin/report/search', NULL, 0, 'G', 'allow'),
(392, 6, 'admin/report/statistics', NULL, 0, 'G', 'allow'),
(393, 6, 'admin/newsletter', NULL, 0, 'G', 'allow'),
(394, 6, 'admin/newsletter/problem', NULL, 0, 'G', 'allow'),
(395, 6, 'admin/newsletter/queue', NULL, 0, 'G', 'allow'),
(396, 6, 'admin/newsletter/subscriber', NULL, 0, 'G', 'allow'),
(397, 6, 'admin/newsletter/template', NULL, 0, 'G', 'allow'),
(398, 6, 'admin/page_cache', NULL, 0, 'G', 'deny'),
(399, 6, 'admin/xmlconnect', NULL, 0, 'G', 'deny'),
(400, 6, 'admin/xmlconnect/mobile', NULL, 0, 'G', 'deny'),
(401, 6, 'admin/xmlconnect/history', NULL, 0, 'G', 'deny'),
(402, 6, 'admin/xmlconnect/templates', NULL, 0, 'G', 'deny'),
(403, 6, 'admin/xmlconnect/queue', NULL, 0, 'G', 'deny');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

CREATE TABLE IF NOT EXISTS `admin_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'User ID',
  `firstname` varchar(32) DEFAULT NULL COMMENT 'User First Name',
  `lastname` varchar(32) DEFAULT NULL COMMENT 'User Last Name',
  `email` varchar(128) DEFAULT NULL COMMENT 'User Email',
  `username` varchar(40) DEFAULT NULL COMMENT 'User Login',
  `password` varchar(100) DEFAULT NULL COMMENT 'User Password',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'User Created Time',
  `modified` timestamp NULL DEFAULT NULL COMMENT 'User Modified Time',
  `logdate` timestamp NULL DEFAULT NULL COMMENT 'User Last Login Time',
  `lognum` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'User Login Number',
  `reload_acl_flag` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Reload ACL',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'User Is Active',
  `extra` text COMMENT 'User Extra Data',
  `rp_token` text COMMENT 'Reset Password Link Token',
  `rp_token_created_at` timestamp NULL DEFAULT NULL COMMENT 'Reset Password Link Token Creation Date',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UNQ_ADMIN_USER_USERNAME` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Admin User Table' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`user_id`, `firstname`, `lastname`, `email`, `username`, `password`, `created`, `modified`, `logdate`, `lognum`, `reload_acl_flag`, `is_active`, `extra`, `rp_token`, `rp_token_created_at`) VALUES
(1, 'Rajan', 'Lamichhane', 'rajanswr@yahoo.co.uk', 'admin', 'cf9dbee575cd2d796e79ea637950bbaf:2c', '2015-01-10 23:08:48', '2013-02-28 23:40:27', '2015-01-11 06:08:48', 361, 0, 1, 'a:1:{s:11:"configState";a:16:{s:12:"dev_restrict";s:1:"1";s:9:"dev_debug";s:1:"1";s:12:"dev_template";s:1:"0";s:20:"dev_translate_inline";s:1:"0";s:7:"dev_log";s:1:"0";s:6:"dev_js";s:1:"0";s:7:"dev_css";s:1:"0";s:7:"web_url";s:1:"0";s:7:"web_seo";s:1:"1";s:12:"web_unsecure";s:1:"1";s:10:"web_secure";s:1:"1";s:11:"web_default";s:1:"0";s:9:"web_polls";s:1:"0";s:10:"web_cookie";s:1:"0";s:11:"web_session";s:1:"0";s:24:"web_browser_capabilities";s:1:"0";}}', NULL, NULL),
(2, 'Kate', 'O''Callaghan', 'artrep.kate@gmail.com', 'kateadmin', '92e08149c835466b8bb58141ad411339:QO', '2015-01-28 13:41:52', '2013-02-28 23:38:58', '2015-01-28 20:41:52', 157, 0, 1, 'N;', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `api2_acl_attribute`
--

CREATE TABLE IF NOT EXISTS `api2_acl_attribute` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `user_type` varchar(20) NOT NULL COMMENT 'Type of user',
  `resource_id` varchar(255) NOT NULL COMMENT 'Resource ID',
  `operation` varchar(20) NOT NULL COMMENT 'Operation',
  `allowed_attributes` text COMMENT 'Allowed attributes',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_API2_ACL_ATTRIBUTE_USER_TYPE_RESOURCE_ID_OPERATION` (`user_type`,`resource_id`,`operation`),
  KEY `IDX_API2_ACL_ATTRIBUTE_USER_TYPE` (`user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api2 Filter ACL Attributes' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `api2_acl_attribute`
--

CREATE TABLE IF NOT EXISTS `api2_acl_attribute` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `user_type` varchar(20) NOT NULL COMMENT 'Type of user',
  `resource_id` varchar(255) NOT NULL COMMENT 'Resource ID',
  `operation` varchar(20) NOT NULL COMMENT 'Operation',
  `allowed_attributes` text COMMENT 'Allowed attributes',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_API2_ACL_ATTRIBUTE_USER_TYPE_RESOURCE_ID_OPERATION` (`user_type`,`resource_id`,`operation`),
  KEY `IDX_API2_ACL_ATTRIBUTE_USER_TYPE` (`user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api2 Filter ACL Attributes' AUTO_INCREMENT=1 ;
