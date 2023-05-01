-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 28, 2023 at 11:52 PM
-- Server version: 10.3.35-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brid_smm`
--

-- --------------------------------------------------------

--
-- Table structure for table `sp_accounts`
--

CREATE TABLE `sp_accounts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ids` varchar(255) DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  `social_network` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `login_type` int(11) DEFAULT NULL,
  `can_post` int(1) DEFAULT NULL,
  `pid` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `token` text DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `tmp` text DEFAULT NULL,
  `data` mediumtext DEFAULT NULL,
  `proxy` longtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `changed` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sp_blogs`
--

CREATE TABLE `sp_blogs` (
  `id` int(11) NOT NULL,
  `ids` varchar(32) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `created` int(11) DEFAULT NULL,
  `changed` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sp_captions`
--

CREATE TABLE `sp_captions` (
  `id` int(11) NOT NULL,
  `ids` varchar(255) NOT NULL,
  `team_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `changed` int(11) NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sp_coinpayments_history`
--

CREATE TABLE `sp_coinpayments_history` (
  `id` int(11) NOT NULL,
  `ids` varchar(32) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `plan_by` int(11) DEFAULT NULL,
  `txn_id` varchar(255) DEFAULT NULL,
  `coin_amount` float DEFAULT NULL,
  `amount` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sp_faqs`
--

CREATE TABLE `sp_faqs` (
  `id` int(11) NOT NULL,
  `ids` varchar(32) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `changed` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sp_files`
--

CREATE TABLE `sp_files` (
  `id` int(11) UNSIGNED NOT NULL,
  `ids` mediumtext DEFAULT NULL,
  `is_folder` int(1) NOT NULL DEFAULT 0,
  `pid` int(11) DEFAULT 0,
  `team_id` int(11) DEFAULT NULL,
  `name` mediumtext DEFAULT NULL,
  `file` mediumtext DEFAULT NULL,
  `type` mediumtext DEFAULT NULL,
  `extension` mediumtext DEFAULT NULL,
  `detect` text DEFAULT NULL,
  `size` float DEFAULT NULL,
  `is_image` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `note` mediumtext DEFAULT NULL,
  `created` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sp_files`
--

INSERT INTO `sp_files` (`id`, `ids`, `is_folder`, `pid`, `team_id`, `name`, `file`, `type`, `extension`, `detect`, `size`, `is_image`, `width`, `height`, `note`, `created`) VALUES
(36, '64498a6d234d9', 1, 0, 1, 'Hollywood SkinCare', NULL, NULL, NULL, 'folder', NULL, NULL, NULL, NULL, NULL, 1682541165);

-- --------------------------------------------------------

--
-- Table structure for table `sp_groups`
--

CREATE TABLE `sp_groups` (
  `id` int(11) NOT NULL,
  `ids` varchar(32) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  `changed` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sp_language`
--

CREATE TABLE `sp_language` (
  `id` int(11) NOT NULL,
  `ids` varchar(32) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `slug` varchar(32) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `custom` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sp_language`
--

INSERT INTO `sp_language` (`id`, `ids`, `code`, `slug`, `text`, `custom`) VALUES
(12377, '64486fdc2c516', 'en', 'b2cedd9be3840f131173bc5d005caff6', 'One-time payment status', 0),
(12378, '64486fdc2c7b6', 'en', '2faec1f9f8cc7f8f40d521c4dd574f49', 'Enable', 0),
(12379, '64486fdc2cafc', 'en', 'bcfaccebf745acfd5e75351095a5394a', 'Disable', 0),
(12380, '64486fdc2cec9', 'en', '53f732c156220b22ccaa8ecf1e1ded42', 'Cryptocurrency type', 0),
(12381, '64486fdc2d1b7', 'en', 'ed6445336472aef39084720adcf903b9', 'Public key', 0),
(12382, '64486fdc2d4ed', 'en', '6c5562c545345e1e93d50451b999407b', 'Client Secret Key', 0),
(12383, '64486fdc2d81d', 'en', 'a8da356056218e6076d878305b74df66', 'Your Merchant ID', 0),
(12384, '64486fdc2db9d', 'en', '930a99a25a4d963d6f80606a50c07974', 'IPN Secret Key', 0),
(12385, '64486fdc2ddbb', 'en', 'a3e3422d5d27f7112257e3e15aadf19f', 'IPN URL:', 0),
(12386, '64486fdc2e006', 'en', 'b8ea84de415efcc7d66199e98df3fddf', 'Coinpayments', 0),
(12387, '64486fdc2e2a0', 'en', '47455c84bf128378bd9df621bf778863', 'One-time payment', 0),
(12388, '64486fdc2e557', 'en', '0da6ebbcd452e676a5a90bab7c6d122b', 'You are using the monthly payment plan. Cancel it if you want to change the package or change your payment method.', 0),
(12389, '64486fdc2e7cc', 'en', 'a1ce481ba044399038d177d3970d5eb0', 'Expire date: %s', 0),
(12390, '64486fdc2ea6a', 'en', '545f6c2f382c04810103b3e5e6f7d841', 'Unlimited', 0),
(12391, '64486fdc2ed25', 'en', 'f683581d3e75f05f9d9215f9b4696cef', 'Upgrade', 0),
(12392, '64486fdc2efa2', 'en', 'f95da1c548338c3b25654b98a1b9779f', 'Payment successful', 0),
(12393, '64486fdc2f22d', 'en', '1560ce4f87edd55c645d5b8b9011e3d1', 'Congratulations, your payment has been successfully processed! We look forward to working with you more in the future. You can enjoy plan features now!', 0),
(12394, '64486fdc2f4fb', 'en', '8cf04a9734132302f96da8e113e80ce5', 'Home', 0),
(12395, '64486fdc2f76a', 'en', '2938c7f7e560ed972f8a4f68e80ff834', 'Dashboard', 0),
(12396, '64486fdc2fa04', 'en', '434bf4b0300473063485325d2a7dcfe1', 'Payment configuration', 0),
(12397, '64486fdc2fc6d', 'en', 'c9cc8cce247e49bae79f15173ce97354', 'Save', 0),
(12398, '64486fdc2feba', 'en', '0ba29c6a1afacf586b03a26162c72274', 'Environment', 0),
(12399, '64486fdc300db', 'en', '955ad3298db330b5ee880c2c9e6f23a0', 'Live', 0),
(12400, '64486fdc3030c', 'en', '2652eec977dcb2a5aea85f5bec235b05', 'Sandbox', 0),
(12401, '64486fdc305ee', 'en', 'd7a1f156f4418895bb6e668f81a649db', 'Email payment success', 0),
(12402, '64486fdc308d4', 'en', '93cba07454f06a4a960172bbd6e2a435', 'Yes', 0),
(12403, '64486fdc30b15', 'en', 'bafd7322c6e97d25b6299b5d6fe8920b', 'No', 0),
(12404, '64486fdc30ddb', 'en', 'd6d6ac6a3996036bc3fe3e0dc34d59b1', 'Email payment renewal reminders', 0),
(12405, '64486fdc310a5', 'en', '386c339d37e737a436499d423a77df0c', 'Currency', 0),
(12406, '64486fdc31368', 'en', '02c86eb2792f3262c21d030a87e19793', 'Symbol', 0),
(12407, '64486fdc316d4', 'en', '03022bb2a961a24476f30e2e062f629a', 'Simplify Your Social Media Management', 0),
(12408, '64486fdc31a5e', 'en', '063daf89e17bd502452d038e3743a302', 'Managing your social media accounts has never been easier. Our powerful tool allows you to create, schedule, and post content across all your social networks with just a few clicks. Say goodbye to the hassle of managing multiple social media accounts and hello. Start simplifying your social media management today!', 0),
(12409, '64486fdc31d9e', 'en', '1305a2b0c6c0eaf556d3ac2b18e25155', 'Payment failed', 0),
(12410, '64486fdc320ad', 'en', '77c8b920a71db70e3b5d35d924353f3a', 'We were unable to complete your payment due to an error with the payment processing system. Please update your payment details and try again.', 0),
(12411, '64486fdc323f7', 'en', 'd196ff62025837a85caf6584c8023890', 'Bill monthly', 0),
(12412, '64486fdc326a4', 'en', 'bbc23573560c078da85b4a0a2fd240ed', 'Bill yearly', 0),
(12413, '64486fdc329e3', 'en', '5290e2630e9d54a0fa82d0d3b69d2139', 'Coupon code', 0),
(12414, '64486fdc32cf2', 'en', 'd84a3540c1046bc3a66a5380fa832965', 'Enter coupon code', 0),
(12415, '64486fdc32f34', 'en', 'a4d3b161ce1309df1c4e25df28694b7b', 'Submit', 0),
(12416, '64486fdc331e8', 'en', 'ab116d52ec2aa15f6cc3c5ff66deb399', 'Payment details', 0),
(12417, '64486fdc334b5', 'en', '2194aaec8cc7086ab0e93f74547e5f53', 'Subtotal', 0),
(12418, '64486fdc336e0', 'en', '626a54d37d402d449d6d7541911e0952', 'Promotion', 0),
(12419, '64486fdc339e7', 'en', '20cb0934af124ed30421b21753b8e7b4', 'Billed Now', 0),
(12420, '64486fdc33e7b', 'en', 'f042c97f10c9cba6ce1f7ea73708bdf6', 'Annually plan discount', 0),
(12421, '64486fdc341ab', 'en', '0da8d9a75492046bea7f314521e07cae', 'Payment methods', 0),
(12422, '64486fdc34458', 'en', '47b198f1328297cd36ec62fb5cecd086', 'Have a problem on your request. Please contact us to get support', 0),
(12423, '64486fdc34692', 'en', '505a83f220c02df2f85c3810cd9ceb38', 'Success', 0),
(12424, '64486fdc3494c', 'en', '2ff126000ced5065e34359cd8c11009a', 'Have a problem on your request. Please try again later', 0),
(12425, '64486fdc34b47', 'en', '5d1b5953daf6c647f274c141d76545ae', 'Invalid promo code', 0),
(12426, '64486fdc34d9d', 'en', '18bbaa10af2650f97a1dd2a53d2a8f93', 'The coupon code has already expired.', 0),
(12427, '64486fdc34fbc', 'en', 'c453a4b8e8d98e82f35b67f433e3b4da', 'Payment', 0),
(12428, '64486fdc351d9', 'en', '6b489dbeaa7bedd0dfc18afbedb59995', 'Email Renewal reminders', 0),
(12429, '64486fdc354c9', 'en', '0ec54b1dd6b702d44d870fa159a61558', 'Recurring payment status', 0),
(12430, '64486fdc3567f', 'en', '76525f0f34b48475e5ca33f71d296f3b', 'Client ID', 0),
(12431, '64486fdc358b6', 'en', '56af8e50738a1e42ee8e59f205a1c18f', 'Payment sale completed, Billing subscription cancelled', 0),
(12432, '64486fdc35a93', 'en', 'f8fdcf706b2295f2972e81d2d6eae33e', 'Webhook ID', 0),
(12433, '64486fdc35d74', 'en', '063177afa76e5ace75cdd949e31537b3', 'Webhook URL:', 0),
(12434, '64486fdc36030', 'en', 'f2c79c6a576b2bfcd959b9e3b21dc91b', 'Required events:', 0),
(12435, '64486fdc362c7', 'en', '9b88c95a15e018c3f8038a7d0160145c', 'Paypal', 0),
(12436, '64486fdc364f3', 'en', '10b34207c4ef4df0cf0d0cf792e61bf9', 'Annually', 0),
(12437, '64486fdc367aa', 'en', '9030e39f00132d583da4122532e509e9', 'Monthly', 0),
(12438, '64486fdc369f8', 'en', 'd930dbf4a7092e01caddb358c8f20bac', 'Recurring payment', 0),
(12439, '64486fdc36c65', 'en', '5e36872c2e7cbb322d5aadbb33208a19', 'Paypal recurring', 0),
(12440, '64486fdc36f0a', 'en', '30ca9973e71cc47268616e139765f5df', 'Publishable key', 0),
(12441, '64486fdc371f4', 'en', '952bf87c967660b7bbd4e1eb08cefc92', 'Secret key', 0),
(12442, '64486fdc37451', 'en', '622b16530530c24e7a0a65bfd14f7b6c', 'invoice.payment_succeeded, customer.subscription.deleted', 0),
(12443, '64486fdc376ca', 'en', 'e7f9e382dc50889098cbe56f2554c77b', 'Credit card', 0),
(12444, '64486fdc3796e', 'en', 'ce7566d1d08cc094b74cf283cf9c56a5', 'Stripe', 0),
(12445, '64486fdc37c0a', 'en', '20cd8258e5c60576209b7882df90b892', 'Stripe recurring', 0),
(12446, '64486fdc38001', 'en', '13348442cc6a27032d2b4aa28b75a5d3', 'Search', 0),
(12447, '64486fdc38381', 'en', 'e0a8c840efac38c1accabb61088f3d7e', 'Please select a profile', 0),
(12448, '64486fdc3873b', 'en', '69f1f723fb6c23902af35d5b205ad357', 'Connect a Profile', 0),
(12449, '64486fdc38b13', 'en', 'bcae115a3c517d2aba3947f58ac0911e', 'Allow add profiles for', 0),
(12450, '64486fdc38e66', 'en', 'b777034289a8d6341d5f2a22d91170bf', 'You can only add up to %s profiles', 0),
(12451, '64486fdc39229', 'en', '651ed4710990f7dac47711fd8c4cc26a', 'Please select an item to delete', 0),
(12452, '64486fdc3963b', 'en', 'fd1db4ebc1768305bf1bb6b61964bf8c', 'Account manager', 0),
(12453, '64486fdc39b22', 'en', '87619531ed25365ff79edf99af594264', 'Sidebar type', 0),
(12454, '64486fdc39f11', 'en', 'd3d2e617335f08df83599665eef8a418', 'Close', 0),
(12455, '64486fdc3a2fa', 'en', 'c3bf447eabe632720a3aa1a7ce401274', 'Open', 0),
(12456, '64486fdc3a7da', 'en', 'eee0168be69b854c20621fc6f01cc3fc', 'Hover', 0),
(12457, '64486fdc3ac30', 'en', '45e035baf33a8e403766a606457f8b10', 'Theme color', 0),
(12458, '64486fdc3b01b', 'en', '16f880e1ef8a81fb20864823f68ba6c6', 'Full light', 0),
(12459, '64486fdc3b415', 'en', 'ca6802aee55c713d219a5295e90abc09', 'Sidebar dark', 0),
(12460, '64486fdc3b816', 'en', '8a0e340cf9a655e49154b9336eeff73c', 'Full dark', 0),
(12461, '64486fdc3bbb6', 'en', 'e78200a05c1bc4a94e7f7af1e3b31798', 'Sidebar icon color', 0),
(12462, '64486fdc3c003', 'en', '7a1920d61156abc05a60135aefe8bc67', 'Default', 0),
(12463, '64486fdc3c348', 'en', '0b3e5b731a0b9f0904f31b76626c423d', 'Custom color', 0),
(12464, '64486fdc3c922', 'en', '0f6a959cff32e1390fa9285a102f1ac3', 'Frontend themes', 0),
(12465, '64486fdc3cc13', 'en', 'cb456215c3333db0551bd0788bc258c7', 'Activated', 0),
(12466, '64486fdc3cd9a', 'en', 'a13367a8e2a3f3bf4f3409079e3fdf87', 'Activate', 0),
(12467, '64486fdc3d01f', 'en', 'a1c58e94227389415de133efdf78ea6e', 'Appearance', 0),
(12468, '64486fdc3d15a', 'en', 'f76aa877babf08bf899a249f0123aa1b', 'Google site key', 0),
(12469, '64486fdc3d3c1', 'en', 'c37ffd6d6fd7634a9ad85f473afa0b4e', 'Google secret key', 0),
(12470, '64486fdc3d4c1', 'en', 'ca81c5da8d3796beca28ff399b41ed46', 'Facebook app id', 0),
(12471, '64486fdc3d6a8', 'en', '2a8b40ee3d3d42640abd1981fc32182b', 'Facebook app secret', 0),
(12472, '64486fdc3d8ff', 'en', 'a678cb25405e4db8f96fcbb8a46cbef6', 'Facebook app version', 0),
(12473, '64486fdc3db0e', 'en', '6d558567d9a5010faa337a3f08119282', 'Google client id', 0),
(12474, '64486fdc3dd39', 'en', '9646e959eca5aaf316fc578d3bcbffc0', 'Google client secret', 0),
(12475, '64486fdc3df27', 'en', 'ee7dc61c9fb631b25c148dee40cdd04e', 'Twitter client id', 0),
(12476, '64486fdc3e157', 'en', 'eb154810e7eac3c8fe125a186f0930b1', 'Twitter client secret', 0),
(12477, '64486fdc3e32d', 'en', '632c9594449737188c71ee1c8534f893', 'Auth', 0),
(12478, '64486fdc3e41c', 'en', 'a06ed1d01726e0a0b87a748fcb0e99f7', 'Landing page', 0),
(12479, '64486fdc3e708', 'en', '728fea639f5ad2e6d40b760bdd4a29a8', 'Signup page', 0),
(12480, '64486fdc3ea03', 'en', '96ec30008a87dd0857e35a716b2cb56b', 'Activation email for new user', 0),
(12481, '64486fdc3ec63', 'en', 'cc3212989c1a24226261c5a3d30df454', 'Welcome email for new user', 0),
(12482, '64486fdc3ef86', 'en', 'be546fa8668ed1db33bfd3dfc9d543c3', 'User can change email', 0),
(12483, '64486fdc3f2c2', 'en', '56f4184f3a9749d1a14ff4696e46191d', 'User can change username', 0),
(12484, '64486fdc3f569', 'en', '08c0015aa7c04c2a3547090511342a40', 'Phone number field  for signup page', 0),
(12485, '64486fdc3f7f2', 'en', 'f105aba98c6795b88f0abb12e1cf4250', 'Google reCaptcha V2', 0),
(12486, '64486fdc3fab2', 'en', 'ec53a8c4f07baed5d8825072c89799be', 'Status', 0),
(12487, '64486fdc3fd87', 'en', '37c485c8d229d4b72128bc0e06b6064f', 'Facebook login', 0),
(12488, '64486fdc40112', 'en', '5d7b2175cb9defc3f4e640352cd35ca4', 'Callback URL:', 0),
(12489, '64486fdc40501', 'en', '9421f8ebedb29705c995fcf2a358ebee', 'Click this link to create Facebook app:', 0),
(12490, '64486fdc40709', 'en', 'a22a1a7df8bae4e34a39b839da4e97d4', 'Google login', 0),
(12491, '64486fdc408d5', 'en', 'bb9dcf525c88efc7115dd231e18da73b', 'Click this link to create Google app:', 0),
(12492, '64486fdc40b66', 'en', '42e23e6fc4bb37416ea65dac1506d627', 'Twitter login', 0),
(12493, '64486fdc40e38', 'en', '0bab7a02676e54f3e29c2478fd6b790f', 'Click this link to create Twitter app:', 0),
(12494, '64486fdc410b4', 'en', '63e68809cb958967be7eb29412787e68', 'Your account is not activated', 0),
(12495, '64486fdc412ca', 'en', '6e62bbfb3b7d4dd9bf020f9c6780bc08', 'Your account is banned', 0),
(12496, '64486fdc41558', 'en', '6d804006f175741340524bd6ee8b4bd8', 'You need to agree to our terms and conditions.', 0),
(12497, '64486fdc4185f', 'en', '09e5a5be1d140742773376eb6bd0ae66', 'Thank you for your registration! Confirm your email address now to activate your account.', 0),
(12498, '64486fdc41a8a', 'en', 'b8ad746ae730f16d3f108cb2d4a56368', 'Account does not exist.', 0),
(12499, '64486fdc41d86', 'en', '5ff230820162b5cc234c09c83f88a5f1', 'Recovery email sent!', 0),
(12500, '64486fdc41faf', 'en', '0caffe1d763c8cca6a61814abe33b776', 'Email is required', 0),
(12501, '64486fdc421a8', 'en', '47be05698f8dd87bb445ceefce6abd0d', 'Password is required', 0),
(12502, '64486fdc42474', 'en', 'f14e18ef93f7a70cb841b2330366f7ff', 'The account you entered does not match any account', 0),
(12503, '64486fdc426d9', 'en', '92e72935893c7830cdec6ce385be7fff', 'The is a problem on your account. Please try again later', 0),
(12504, '64486fdc428be', 'en', '9993039cea3e460750a2248fd8471415', 'Fullname', 0),
(12505, '64486fdc42b16', 'en', 'f6039d44b29456b20f8f373155ae4973', 'Username', 0),
(12506, '64486fdc42d90', 'en', 'ce8ae9da5b7cd6c3df2929543a9af92d', 'Email', 0),
(12507, '64486fdc42fea', 'en', 'dc647eb65e6711e155375218212b3964', 'Password', 0),
(12508, '64486fdc4326f', 'en', '4c231e0da3eaaa6a9752174f7f9cfb31', 'Confirm password', 0),
(12509, '64486fdc4354a', 'en', '236df51bb0e6416236e255b528346fca', 'Timezone', 0),
(12510, '64486fdc437e1', 'en', 'd65ea92980404b9cafdf0a9b522c8da2', 'The username already exists.', 0),
(12511, '64486fdc43a70', 'en', '9214e91adc36657ee6ce8c5671d4764f', 'The email already exists.', 0),
(12512, '64486fdc43d58', 'en', '2ed6a585528e99f1732d129ba7c4aaa1', 'User does not exist.', 0),
(12513, '64486fdc43f9d', 'en', 'abb932d3d34d4e80cd49d43e169f83e7', 'Your account is activated. Back to the login page to login and start using.', 0),
(12514, '64486fdc4422e', 'en', 'ad8afaf60ea8011cde22576de9fe786d', 'Your account is banned.', 0),
(12515, '64486fdc4453a', 'en', 'd5e5b8a34ee4eb4d305ff0b05e5b9b9c', 'The activation email has been resent. Please check your email inbox. If you don\'t see it, please try searching for it in your spam folder.', 0),
(12516, '64486fdc4481e', 'en', '109715467b74bd66639faa5673f707c1', 'Unknown error.', 0),
(12517, '64486fdc44b16', 'en', '3544848f820b9d94a3f3871a382cf138', 'New password', 0),
(12518, '64486fdc44d79', 'en', '6ab96a5df54aa6aae2bab9ea75ab76c9', 'Confirm new password', 0),
(12519, '64486fdc45087', 'en', 'ad6d68104e793b9408fda88f17c8d2f9', 'New password and confirm password does not match.', 0),
(12520, '64486fdc4535c', 'en', '686f3bd61d71c5b7c6f844e3f34b4a9c', 'Recovery key', 0),
(12521, '64486fdc455e9', 'en', '0b23eec3e2eff11c0f4330de7fa96efa', 'To be able to log in, you must give permission for the app to access your email.', 0),
(12522, '64486fdc45871', 'en', 'b9ab4b647cddd5ede0c15677848e9e59', 'Cannot found this team', 0),
(12523, '64486fdc45aef', 'en', '37149b84027f4130547c34229c5addd5', 'Cannot access this team', 0),
(12524, '64486fdc45d56', 'en', '121be05a55b52b405c302293d6d782cc', 'Unscuccessfull', 0),
(12525, '64486fdc45fc8', 'en', '45d048c35e3cfd449dc0a1b503cd103a', 'Captcha', 0),
(12526, '64486fdc46292', 'en', '051156014e3e00388f9f5eeb3943b90c', 'Wrong captcha try again please', 0),
(12527, '64486fdc46543', 'en', 'fcca6dc68255a4e03f3ee4a071700ea8', 'Invalid state', 0),
(12528, '64486fdc4681f', 'en', '2ea624d388b73c5ad7976bbb9d758a4f', 'Redirecting...', 0),
(12529, '64486fdc46d91', 'en', 'e240529b1c74e5cb9a8533fb7b74c0ea', 'Login & Auth', 0),
(12530, '64486fdc47109', 'en', '06933067aafd48425d67bcb01bba5cb6', 'Update', 0),
(12531, '64486fdc47446', 'en', 'b78a3223503896721cca1303f776159b', 'Title', 0),
(12532, '64486fdc47720', 'en', 'b5a7adde1af5c87d7fd797b6245c2a39', 'Description', 0),
(12533, '64486fdc479a1', 'en', '189f63f277cd73395561651753563065', 'Tags', 0),
(12534, '64486fdc4836b', 'en', 'b7c161bb87bb0308fb25e6f68d0a5632', 'Thumbnail', 0),
(12535, '64486fdc485d6', 'en', 'cda5132955c43b0ac7ae8adfa27cc35e', 'Select file', 0),
(12536, '64486fdc499f8', 'en', 'f15c1cae7882448b3fb0404682e17e61', 'Content', 0),
(12537, '64486fdc49f13', 'en', '0557fa923dcee4d0f86b1409f5c2167f', 'Back', 0),
(12538, '64486fdc4a3c4', 'en', 'ef61fb324d729c341ea8ab9901e23566', 'Add new', 0),
(12539, '64486fdc4b125', 'en', '0edd8b69106cd16594aad42e3f61ecf7', 'Are you sure to delete this items?', 0),
(12540, '64486fdc4b889', 'en', 'f2a6c498fb90ee345d997f888fce3b18', 'Delete', 0),
(12541, '64486fdc4bb01', 'en', '7dce122004969d56ae2e0245cb754d35', 'Edit', 0),
(12542, '64486fdc4bd3c', 'en', '205e90df3a7bb9ec1df5133336c9421c', 'Title is required', 0),
(12543, '64486fdc4c080', 'en', '359ab544faf5452066b1eb6765798687', 'Description is required', 0),
(12544, '64486fdc4c46b', 'en', '47d200bafe49f3b348d9e41f557ba380', 'Content is required', 0),
(12545, '64486fdc4c734', 'en', '0e14bfaec163534638152aa11ec70ad4', 'Image is required', 0),
(12546, '64486fdc4d202', 'en', 'be8df1f28c0abc85a0ed0c6860e5d832', 'Blog', 0),
(12547, '64486fdc4d692', 'en', '0651f2ec6af19a57f2fc5f5764252fbc', 'You\'re scheduling %s posts to %s social accounts', 0),
(12548, '64486fdc4d8f8', 'en', 'd5f274afe28a114aa7b0a98705e9308c', '%s posts with errors', 0),
(12549, '64486fdc4da48', 'en', '31fde7b05ac8952dacf4af8a704074ec', 'Preview', 0),
(12550, '64486fdc4dbf2', 'en', '631b3b59cfababc2e1ac07e1a877cbce', 'Post errors', 0),
(12551, '64486fdc4dea1', 'en', '9b35e31247cb6baab0e5c63c07ffc492', 'Save & Schedules', 0),
(12552, '64486fdc4e14e', 'en', '23ce0644d91939df873875e968ac4cb9', 'Select accounts', 0),
(12553, '64486fdc4e3a5', 'en', '4b3856e844745730d6d3064c7f7000e6', 'Media CSV file', 0),
(12554, '64486fdc4e62a', 'en', '44a4bee06b9cc453278c862cfee012f9', 'Advance options', 0),
(12555, '64486fdc4e783', 'en', '2fc806aa379d27db4deecfd01793fa06', 'URL Shortener', 0),
(12556, '64486fdc4eab3', 'en', '048eacec6edf123f86282ff498e85e8e', 'Interval per post (minute)', 0),
(12557, '64486fdc4f3b0', 'en', '9b5f4dfd4c3272e8cf23e8db83bb2d0e', 'If your posts are scheduled for an incorrect time or empty, the system will automatically set the first post with the current time and the next posts follow an interval delay per post', 0),
(12558, '64486fdc4f8af', 'en', 'b65dbc71ab9c59967ce19095aeafcac8', 'Bulk Template', 0),
(12559, '64486fdc5033d', 'en', 'b78d09ff06a502160dd03ef99978952d', 'Advanced features', 0),
(12560, '64486fdc50733', 'en', '21d6948b2c5a65af07235c1add9c33eb', 'Please select at least a profile', 0),
(12561, '64486fdc50993', 'en', '5b02c6deb1eeae37e76de1ec9b81d3c5', 'Accounts selected is inactive. Let re-login and try again', 0),
(12562, '64486fdc50c30', 'en', '49bcb98b09587b0b913347e8a18f0b9c', 'Please select bulk template csv file', 0),
(12563, '64486fdc51a20', 'en', '620072a08b8751bc8b31f0f636314369', 'Couldn\'t get file type', 0),
(12564, '64486fdc51dd5', 'en', 'ad1963579a217b5299d4c96f880d6b67', ' You\'re scheduling %s posts to %s social accounts.', 0),
(12565, '64486fdc5229f', 'en', '8257ce55a2743e4cb9e437984a3644b3', 'Bulk post', 0),
(12566, '64486fdc52505', 'en', '272ba7d164aa836995be6319a698be84', 'Caption', 0),
(12567, '64486fdc5360a', 'en', '455a72c195804422e61122b62d44dc4d', 'Enter caption title', 0),
(12568, '64486fdc545ab', 'en', 'e0626222614bdee31951d84c64e5e9ff', 'Select', 0),
(12569, '64486fdc54c81', 'en', '663f5d232df69836d2557c88dc06c483', 'Get Caption', 0),
(12570, '64486fdc55149', 'en', '0d4abcd9510b13d78a3025cdc129e58e', 'Save caption', 0),
(12571, '64486fdc560a8', 'en', '4a0afcb64de2bf3baea95f1c422157e7', 'Write a caption', 0),
(12572, '64486fdc564d4', 'en', 'bcd95899e1214ac1d156b3739f494306', 'Caption is required', 0),
(12573, '64486fdc56a0f', 'en', '8625e1de7be14c39b1d14dc03d822497', 'Tools', 0),
(12574, '64486fdc56bbe', 'en', '253108b0243084ab6407278d7904a607', 'Crons', 0),
(12575, '64486fdc56ca9', 'en', '96d008db67fc0b5551a926842bbb6a71', 'Notification', 0),
(12576, '64486fdc56d9d', 'en', '20eb3293dfad17f0f032c419cc0c527b', 'Your plan has expired, and as a result, all current features are disabled. However, it\'s easy to reconnect. Please upgrade or extend your plan.', 0),
(12577, '64486fdc56eda', 'en', '6a98a1d954831a10ac1bf17c61030823', 'There are no drafts', 0),
(12578, '64486fdc570d8', 'en', '6d4e72a3cb13f74e8458ea9bf78797c4', 'Compose a Post', 0),
(12579, '64486fdc571bb', 'en', 'a7df9a5f6ccf7538eb8525f02dc464da', 'Post successed', 0),
(12580, '64486fdc572c3', 'en', 'a3824eb0533064953073384a35c740e7', 'View post', 0),
(12581, '64486fdc573fd', 'en', '71a1c5f19c8e300d350f5f68c71e4559', 'Delete failed', 0),
(12582, '64486fdc574ca', 'en', 'db3af42ba64b595db6ab3ea999fe0bb1', 'Drafts', 0),
(12583, '64486fdc575b2', 'en', 'd08ccf52b4cdd08e41cfb99ec42e0b29', 'Permissions', 0),
(12584, '64486fdc576a1', 'en', '4d60bb451852ffc83760d6f9e3ad8629', 'Add Facebook groups', 0),
(12585, '64486fdc577c4', 'en', 'd94b42030b9785fd754d5c1754961269', 'Discard', 0),
(12586, '64486fdc5788d', 'en', '600e95f3ce0908869001d0ef9817d7d3', 'Add profile', 0),
(12587, '64486fdc57993', 'en', '0979eb439b3be4ee2ea654fe79ba2a98', 'If you don\'t see your profiles above, you might try to reconnec, re-accept all permissions, and ensure that you\'re logged in to the correct profile.', 0),
(12588, '64486fdc57b79', 'en', 'ff35721b3524604db5deacf738eaa49f', 'Re-connect with Facebook', 0),
(12589, '64486fdc57c8c', 'en', 'b6637dcd10d7684ff25faa88523af57c', 'No profile to add', 0),
(12590, '64486fdc57d55', 'en', 'f6f19ef7395310905371b14ab9b2a84a', 'Please select a profile to add', 0),
(12591, '64486fdc57e0c', 'en', 'c148c2bac6ade2b12e418ad086550305', 'Facebook groups', 0),
(12592, '64486fdc57f33', 'en', '8864b2982dc9ec3bc4a54c00e629008d', 'Add Facebook pages', 0),
(12593, '64486fdc5807c', 'en', 'c108b4dc8c451e1c1670add58909e6c6', 'Facebook pages', 0),
(12594, '64486fdc58146', 'en', '221e705c06e231636fdbccfdd14f4d5c', 'Your name', 0),
(12595, '64486fdc581df', 'en', '98b82c200a2e309b24cb481970f3fcc4', 'Like', 0),
(12596, '64486fdc582c8', 'en', '0be8406951cdfda82f00f79328cf4efc', 'Comment', 0),
(12597, '64486fdc58365', 'en', '5a95a425f74314a96f13a2f136992178', 'Share', 0),
(12598, '64486fdc58411', 'en', '218e60d2bb98cb838f8567650a444864', 'Planning and Scheduling', 0),
(12599, '64486fdc584bb', 'en', 'd85544fce402c7a2a96a48078edaf203', 'Facebook', 0),
(12600, '64486fdc58554', 'en', 'dfbd78add4c5b118fd6e2bd06f5a2689', 'Facebook API Configuration', 0),
(12601, '64486fdc58641', 'en', 'afe056c76ff2042bb7a0c53b64ff9c67', 'Facebook client id', 0),
(12602, '64486fdc586ea', 'en', '6afc1955cf1f83bff540cf67527945c1', 'Facebook client secret', 0),
(12603, '64486fdc5879d', 'en', '9d2c8d6e81c0e1f5f8458ed80fd3852a', 'Add Facebook profiles', 0),
(12604, '64486fdc58847', 'en', 'd066dfa61c55e264ac9468c95ccf38d2', 'Facebook profiles', 0),
(12605, '64486fdc588de', 'en', 'a97ea56b0e00b2379736ae60869ff66a', 'Question', 0),
(12606, '64486fdc5896e', 'en', '7d5a6969802bb5e1d931b510a8fdb3ba', 'Answers', 0),
(12607, '64486fdc58a70', 'en', '483a5da192f46e3cfe8391d3ef234fc4', 'FAQs', 0),
(12608, '64486fdc58b45', 'en', 'b0f2b97dc5d2b76b26e040408bb1d8af', 'Folder', 0),
(12609, '64486fdc58bfb', 'en', '3b563524fdb17b4a86590470d40bef74', 'Media', 0),
(12610, '64486fdc58cb6', 'en', 'ee2d3754b6e7f57898d9d8670f78ae71', 'Advanced options', 0),
(12611, '64486fdc58d4b', 'en', '4c41e0bd957698b58100a5c687d757d9', 'Select all', 0),
(12612, '64486fdc58e46', 'en', '86c1ed4ed6f23ddfbf0aa971aebff894', 'Deselect All ', 0),
(12613, '64486fdc58ee8', 'en', '0d0a9cfd8f8c6876dd0a4b27d18c388c', 'New folder', 0),
(12614, '64486fdc58fad', 'en', '91412465ea9169dfd901dd5e7c96dd99', 'Upload', 0),
(12615, '64486fdc59059', 'en', 'a2de334d2b9b7b8a0ef4f5e11a9f31b4', 'Drag & Drop files here', 0),
(12616, '64486fdc590eb', 'en', '3a2d5fe857d8f9541136a124c2edec6c', 'Or', 0),
(12617, '64486fdc591c4', 'en', '9430d800f68b6db309976b570a9315c5', 'Browser Files', 0),
(12618, '64486fdc5928f', 'en', 'cc27bdc4fdf6042a63931955907149ee', 'Drop files to upload', 0),
(12619, '64486fdc5932b', 'en', '7fb35d0b7aec2daf6ea95252b78d84a0', 'Upload by url', 0),
(12620, '64486fdc593bd', 'en', '6ac603758d7d2683d14abd0463fa11ab', 'Image editor', 0),
(12621, '64486fdc5947a', 'en', 'f21a875edc13513f2c31653491972dad', 'Adobe Express', 0),
(12622, '64486fdc59521', 'en', 'd7778d0c64b6ba21494c97f77a66885a', 'Filter', 0),
(12623, '64486fdc595e8', 'en', '48abd7fae8de549e4271afaf506bb800', 'Enter keyword', 0),
(12624, '64486fdc59713', 'en', '5ca219b54399500b176823f866ee1383', 'Media Type', 0),
(12625, '64486fdc597c4', 'en', '74b3df98d5d1417597328786482b6bad', 'All Media', 0),
(12626, '64486fdc5985c', 'en', 'be53a0541a6d36f6ecb879fa2c584b08', 'Image', 0),
(12627, '64486fdc598ee', 'en', '34e2d1989a1dbf75cd631596133ee5ee', 'Video', 0),
(12628, '64486fdc5999f', 'en', 'e4204641574e4827600356b4dcacd276', 'Pdf', 0),
(12629, '64486fdc59a41', 'en', '0945359809dad1fbf3dea1c95a0da951', 'Document', 0),
(12630, '64486fdc59ad1', 'en', 'b22f0418e8ac915eb66f829d262d14a2', 'Audio', 0),
(12631, '64486fdc59b5f', 'en', '963ab0bbea32f1f9d19afb00d08be14d', 'Zip', 0),
(12632, '64486fdc59bed', 'en', '6311ae17c1ee52b36e68aaf4ad066387', 'Other', 0),
(12633, '64486fdc59c7a', 'en', '4f0b453b6577ef60d9e8e57c30005b7b', 'Media info', 0),
(12634, '64486fdc59d0d', 'en', '019d1ca7d50cc54b995f60d456435e87', 'Used', 0),
(12635, '64486fdc59dc7', 'en', '96b0141273eabab320119c467cdcaf17', 'Total', 0),
(12636, '64486fdc59e60', 'en', 'fff0d600f8a0b5e19e88bfb821dd1157', 'Images', 0),
(12637, '64486fdc59ef2', 'en', '554cfab3938e21d9270bd6b75931f96f', 'Videos', 0),
(12638, '64486fdc59f83', 'en', 'ed04f9c371129ff58b711ee13f43b095', 'Audios', 0),
(12639, '64486fdc5a011', 'en', 'cc8d68c551c4a9a6d5313e07de4deafd', 'CSV', 0),
(12640, '64486fdc5a09d', 'en', 'bcd1b68617759b1dfcff0403a6b5a8d1', 'PDF', 0),
(12641, '64486fdc5a12b', 'en', 'f28128b38efbc6134dc40751ee21fd29', 'Documents', 0),
(12642, '64486fdc5a1e3', 'en', '52ef9633d88a7480b3a938ff9eaa2a25', 'Others', 0),
(12643, '64486fdc5a273', 'en', '84fff1928f5d74b84cc40d601b4d5bd5', 'Medias per page', 0),
(12644, '64486fdc5a303', 'en', 'e0d254ac9dfce5c2dd8700be5c71df04', 'Allow file extensions', 0),
(12645, '64486fdc5a390', 'en', 'b1ddf7237c424d8d5ecb66d0dc52ab9b', 'Allow upload file via url', 0),
(12646, '64486fdc5a41f', 'en', 'cfa4f36bb6dd35bf435e69bfffa88df5', 'Google API Key', 0),
(12647, '64486fdc5a4ad', 'en', '2a9fc9efe56971027f8c92eff8dc0c39', 'Google Client ID', 0),
(12648, '64486fdc5a55b', 'en', 'f92aa92725095d5531f54b4589d99264', 'Dropbox', 0),
(12649, '64486fdc5a5f4', 'en', '8115871db1fa2a0ce0d90f83ff9311a3', 'Dropbox API Key', 0),
(12650, '64486fdc5a683', 'en', 'f79cd76b16e526d536ec5f9e3a3dbe9d', 'OneDrive', 0),
(12651, '64486fdc5a70f', 'en', '3ad39fa721e4d05a13f8875ed4e24746', 'OneDrive API Key', 0),
(12652, '64486fdc5a79a', 'en', '3f25fcca7ac4d5b0859a9cff9fa44316', 'Click this link to create Adobe Express app:', 0),
(12653, '64486fdc5a826', 'en', '4dc446684297e51ff0f88e7636dd71a5', 'REDIRECT URI: ', 0),
(12654, '64486fdc5a8b0', 'en', 'f66bfca5e53021633e0da0ebce324afd', 'REDIRECT URI PATTERN: ', 0),
(12655, '64486fdc5a960', 'en', 'ab0a44b7763dbe3966e9c71b7f3cc558', 'Click this link to create Dropbox app:', 0),
(12656, '64486fdc5a9fa', 'en', 'd8f84280a333dd718a75e89baa79e899', 'Click this link to create OneDrive app:', 0),
(12657, '64486fdc5aa8a', 'en', '2a83723db914aecd9197953b58dd99ba', 'Drop here', 0),
(12658, '64486fdc5ab16', 'en', '0295aadb5d5fab97b66bb247c9cfb030', 'Drag media here to post', 0),
(12659, '64486fdc5aba3', 'en', 'f0f020a726d25d088a5d3b15037e7d9c', 'Select media', 0),
(12660, '64486fdc5ac30', 'en', '86f03349e5a9b0b36155770fefcb687a', 'File manager', 0),
(12661, '64486fdc5acbc', 'en', 'f92965e2c8a7afb3c1b9a5c09a263636', 'Done', 0),
(12662, '64486fdc5ad6f', 'en', '1fc32ac5c51f03d5fc8d169acb80803e', 'File picker', 0),
(12663, '64486fdc5ae03', 'en', 'e0daf39823ec1a1a7878c9718f063d5f', 'Google Drive', 0),
(12664, '64486fdc5ae90', 'en', '6622c14ce91b6b9683505626a5eebdd2', 'File type', 0),
(12665, '64486fdc5af1d', 'en', 'c03d53b70feba4ea842510abecd6c45e', 'Photo', 0),
(12666, '64486fdc5afaa', 'en', 'f62ef472ce6cd891d4dfd0dc0ed926f7', 'Image Editor', 0),
(12667, '64486fdc5b036', 'en', 'e566fe9aef1502d69ccdbe28e1957535', 'Enable/Disable', 0),
(12668, '64486fdc5b0d3', 'en', 'ad554e604fabcafe7e35f4826c907425', 'Max. storage size (MB)', 0),
(12669, '64486fdc5b199', 'en', '339f1fd6617fe2a634679fdabb5983f3', 'Max. file size (MB)', 0),
(12670, '64486fdc5b22c', 'en', '9450b20024fd4f65a197a18d05963d31', 'Url is required', 0),
(12671, '64486fdc5b2b9', 'en', '94cc5da10ed9467d9dee0964eb7c3679', 'Couldn\'t find the media', 0),
(12672, '64486fdc5b360', 'en', '9190ffabfd6590dab2f23dc60ab1ee8f', 'The filetype you are attempting to upload is not allowed', 0),
(12673, '64486fdc5b3f5', 'en', '9e8e01dde2a46cfe2812ea89bbd9b6a9', 'Folder name is required', 0),
(12674, '64486fdc5b483', 'en', '1d7fe6d6dfa93b56a491d0e6e72281e2', 'Create new folder successfull', 0),
(12675, '64486fdc5b539', 'en', 'c6b18d6f7392500bc6b952018216baff', 'Updated caption', 0),
(12676, '64486fdc5b5cd', 'en', 'd59048f21fd887ad520398ce677be586', 'Learn more', 0),
(12677, '64486fdc5b65a', 'en', '2b1f94ef23b79bf90eb891cae1df7a90', 'Book', 0),
(12678, '64486fdc5b6e5', 'en', '1363287ab67cfbd0b11942bbddb02ed4', 'Order online', 0),
(12679, '64486fdc5b770', 'en', '9f82518d468b9fee614fcc92f76bb163', 'Shop', 0),
(12680, '64486fdc5b7fd', 'en', 'd9776f0775997b2e698c6975420b5c5d', 'Sign up', 0),
(12681, '64486fdc5b88a', 'en', '7a8470bcc1cda344e4be28605c1d3e38', 'Enter your link', 0),
(12682, '64486fdc5b940', 'en', 'dbdcadfbe8ddbf1173f7ae95676341c7', 'Call To Action', 0),
(12683, '64486fdc5ba58', 'en', '4a6347a5088fb54bf62ab5fec070015b', 'Google Business Profile requires an image', 0),
(12684, '64486fdc5baf3', 'en', 'a39e00c977bae8554c6360de1a674240', 'Cannot find the image to upload', 0),
(12685, '64486fdc5bb82', 'en', 'aee9784c03b80d38d3271cde2b252b8d', 'Unknown error', 0),
(12686, '64486fdc5bc0f', 'en', 'a706eae689d70cff794bfd9ad20a5e0d', 'Google Business Profile', 0),
(12687, '64486fdc5bcad', 'en', '3708118127eeeb0b1c89deca62badbfa', 'Google Client Secret', 0),
(12688, '64486fdc5bd5d', 'en', '0b10a476e0582c89a6f88fff86906b53', 'Add Google Business Profiles', 0),
(12689, '64486fdc5bdf0', 'en', 'a11f5f8b0e4e4ef7ba66dbbd328e7332', 'Re-connect with Google', 0),
(12690, '64486fdc5be96', 'en', '78f7fc1f81cadd874bd09b54cdd52f8d', 'Google Business Profiles', 0),
(12691, '64486fdc5bf28', 'en', 'ce2c8aed9c2fa0cfbed56cbda4d8bf07', 'Empty', 0),
(12692, '64486fdc5bfff', 'en', 'f230ce7c467ab27a08261c4556e595ef', 'Group manager', 0),
(12693, '64486fdc5c0dd', 'en', 'dc430df904a27a331f563378b7358d4b', 'Please select an account', 0),
(12694, '64486fdc5c1ef', 'en', '9972ea48b5c9119ad6ed24d0381e3a96', 'Instagram doesn\'t allow posts with text type', 0),
(12695, '64486fdc5c2e7', 'en', '363c969ebde35c09236f5355c6dff165', 'Post type', 0),
(12696, '64486fdc5c389', 'en', '01c612ca6bb782557367f241c5526b66', 'Media/Carousel', 0),
(12697, '64486fdc5c41b', 'en', 'ada614bc804f285748ee00b6a413216e', 'Reels', 0),
(12698, '64486fdc5c4cf', 'en', 'dfba89a600b608b2b724efe1f06f599a', 'Story', 0),
(12699, '64486fdc5c563', 'en', 'f241ad671c684250ab8e40c3fedbd761', 'First comment', 0),
(12700, '64486fdc5c5f0', 'en', '61a572bb41a34ac1eef5036ef44980a8', 'Write a first comment', 0),
(12701, '64486fdc5c67b', 'en', 'fb1f7c32864aa1cb6baee5b8e67e8730', 'Close friends story', 0),
(12702, '64486fdc5c707', 'en', 'ce4d4eb3c9dcd55b5bae50b3f8bf41b2', 'The media is not ready for publishing, please wait for a moment', 0),
(12703, '64486fdc5c791', 'en', 'ad1119ba6663f0dfd5be8925143e07ba', 'Instagram API Official just support post with Photo type', 0),
(12704, '64486fdc5c81b', 'en', '1fe7b20534f652f587d919d6a72d88d6', 'Instagram Reels only supports posting videos of minimum 3 seconds and maximum 15 minutes', 0),
(12705, '64486fdc5c8c9', 'en', '6ae1a5918bb91964fb0266f5efe04dec', 'Instagram API Official not support post to story', 0),
(12706, '64486fdc5c959', 'en', '99242ea30796c4f42137115f9623459e', 'Instagram API Official not support post to IGTV', 0),
(12707, '64486fdc5c9e3', 'en', '757e22afbb4bc60c8573199ab8020e3b', 'Instagram requires an image or video', 0),
(12708, '64486fdc5ca6d', 'en', 'fea816b5dae10b4ff7154295bfaa0674', 'Instagram requires title for IGTV', 0),
(12709, '64486fdc5caf9', 'en', '55f015a0c5605702f913536afe70cfb0', 'Instagram', 0),
(12710, '64486fdc5cb84', 'en', 'b95ba8e459916c6b5025639889a01836', 'Instagram API Official Configuration', 0),
(12711, '64486fdc5cc0e', 'en', '1b283787d4ddfa10840c2c8c42a5b80d', 'Add Instagram profiles', 0),
(12712, '64486fdc5ccbd', 'en', 'cbe559511c4405158dc7f24bb7547277', 'Re-connect with Instagram', 0),
(12713, '64486fdc5cd4d', 'en', 'bb9b284af99dcb275e308733026e0edc', 'Instagram profiles', 0),
(12714, '64486fdc5cdd7', 'en', 'f40f0a146b015acb0b4c5f5e933d8055', 'Translate to', 0),
(12715, '64486fdc5ce63', 'en', '9480c755c5538ec0fb2678a1ed834506', 'Text direction', 0),
(12716, '64486fdc5ceec', 'en', '3e35661f311d49f66eccb1bc2ea4de46', 'LTR', 0),
(12717, '64486fdc5cf77', 'en', 'efe01da942ed68b700b911f5a1b131a7', 'RTL', 0),
(12718, '64486fdc5d002', 'en', '49ee3087348e8d44e1feda1917443987', 'Name', 0),
(12719, '64486fdc5d0be', 'en', '4994a8ffeba4ac3140beb89e8d41f174', 'Language', 0),
(12720, '64486fdc5d14e', 'en', '8843240ab3b8386dc4ace34b3b406f3d', 'Select language code', 0),
(12721, '64486fdc5d1d9', 'en', 'c5836008c1649301e29351a55db8f65c', 'Flag', 0),
(12722, '64486fdc5d265', 'en', '34bc53ba2816c9934f3ce024bb0f291e', 'Select language you want translate', 0),
(12723, '64486fdc5d2ee', 'en', '8a756d785da0c58a0fef97fe9c1b654a', 'Automatically translate languages using Google Translate. Do not select if you do want to translate manually', 0),
(12724, '64486fdc5d377', 'en', 'deccbe4e9083c3b5f7cd2632722765bb', 'Translate', 0),
(12725, '64486fdc5d400', 'en', '72d6d7a1885885bb55a565fd1070581a', 'Import', 0),
(12726, '64486fdc5d4b6', 'en', '9eadfdcdacef4352a2cd75c29dbb6fd0', 'Cannot found files json to upload', 0),
(12727, '64486fdc5d551', 'en', 'e325fb2bd63497b77c1c46ee6a4001a0', 'Import successfully', 0),
(12728, '64486fdc5d5dd', 'en', 'b5a15486ab3b0c1d231de03a783f79d4', 'Cannot found language you want delete', 0),
(12729, '64486fdc5d666', 'en', '9dffbf69ffba8bc38bc4e01abf4b1675', 'Text', 0),
(12730, '64486fdc5d6ef', 'en', 'ff0f4960555ff95b5cdacd4468cea37f', 'Name is required', 0),
(12731, '64486fdc5d77a', 'en', '898832632b77a785a9a95445ff3c5857', 'Status is required', 0),
(12732, '64486fdc5d822', 'en', 'f5c6a8948ffb0b785129ec80525b8ca2', 'Code is required', 0),
(12733, '64486fdc5d8b7', 'en', '8982e78bc1bf80b6c5e4ff785af304aa', 'Text direction is required', 0),
(12734, '64486fdc5d942', 'en', '193e8eb4baecfd1e987563739f5e7767', 'Icon is required', 0),
(12735, '64486fdc5d9cc', 'en', 'fe8aa518ed5b1eea463f25f1275ca0f8', 'This language already exists', 0),
(12736, '64486fdc5da56', 'en', '6c47c0f5ba55c5e7382e97a2d5c5b01f', 'Language item does not exist', 0),
(12737, '64486fdc5dade', 'en', '4f60870033105ab53eb86cab1d1fb3c5', 'Upload csv file failed.', 0),
(12738, '64486fdc5db68', 'en', 'bf20dad9ee408d0d2876fb2e8c00f53f', 'Language package is invalid', 0),
(12739, '64486fdc5dc11', 'en', 'b952116ada894e2d6b6e5e34906e9b65', 'Mail template', 0),
(12740, '64486fdc5dcdb', 'en', '4d3d769b812b6faa6b76e1a8abaece2d', 'Active', 0),
(12741, '64486fdc5dd76', 'en', '13a44cb3c08c1c40a3c5b62152538ee8', 'Email template', 0),
(12742, '64486fdc5de04', 'en', '98151e30f15858fd6acf3ab518671484', 'List all your users', 0),
(12743, '64486fdc5de8e', 'en', '5bfc97892e5157a10fae07328873eddd', 'Email contents', 0),
(12744, '64486fdc5df16', 'en', 'd6941718cee1e83f3f01dabbc00f1212', 'Report your users', 0),
(12745, '64486fdc5df9f', 'en', '73be97858912ef87f7a91b8a1451e9f9', 'Configure mail server', 0),
(12746, '64486fdc5e053', 'en', '4becb5e7db4c3e6323921fd8b0094ab9', 'Manage user roles', 0),
(12747, '64486fdc5e0e2', 'en', '2e97c522fea3ff212e662a50235bfdf5', 'SMTP Server', 0),
(12748, '64486fdc5e16e', 'en', 'bf4f9ce507b4480bcd90f2b0bd97cc98', 'SMTP Username', 0),
(12749, '64486fdc5e1f6', 'en', '13dfab74d4f99be29bd6c7142135b34e', 'SMTP Password', 0),
(12750, '64486fdc5e281', 'en', '63ede2e53d7a100acb8f97a618bb70c8', 'SMTP Port', 0),
(12751, '64486fdc5e30b', 'en', '336fff487168a9f8f056c92c41a7c813', 'SMTP Encryption', 0),
(12752, '64486fdc5e396', 'en', 'b50339a10e1de285ac99d4c3990b8693', 'NONE', 0),
(12753, '64486fdc5e461', 'en', 'ea52c36203c5f99c3ce2442d531b1a22', 'SSL', 0),
(12754, '64486fdc5e4f7', 'en', '58796f93f68f4a82447faac8751ed9bc', 'TSL', 0),
(12755, '64486fdc5e583', 'en', 'ec211f7c20af43e742bf2570c3cb84f9', 'Add', 0),
(12756, '64486fdc5e60e', 'en', '0d69222bafbd366586a556f38faa8a3d', 'Activation email', 0),
(12757, '64486fdc5e698', 'en', 'cd398a41e889e7c964b7e15396b51dd0', 'Welcome email', 0),
(12758, '64486fdc5e723', 'en', 'b0361b6542e852f928829a523c6fa93e', 'Forgot password email', 0),
(12759, '64486fdc5e84f', 'en', '5c11b08b55e3f9e369b188c39f56c189', 'Renewal reminders email', 0),
(12760, '64486fdc5e924', 'en', '5bd95453a87805acf9a711d9e43e4a2b', 'Paypent success email', 0),
(12761, '64486fdc5e9c0', 'en', '3fdf18d831cf07de07a47df91553df5a', 'Activation Email', 0),
(12762, '64486fdc5ea4f', 'en', 'c7892ebbb139886662c6f2fc8c450710', 'Subject', 0),
(12763, '64486fdc5eadc', 'en', '96a074a2fe00ee5a5e18b61cc4b5c8b8', 'Mail Protocol', 0),
(12764, '64486fdc5eb67', 'en', '4dfbb099eafd3c82e033bf92946d3ce6', 'Mail', 0),
(12765, '64486fdc5ec2a', 'en', 'c2239a92bde29f0a9f9173193cc2fe00', 'SMTP', 0),
(12766, '64486fdc5ecbb', 'en', '97c6cd2205e0c00a18bc7eec87dfed63', 'Sender information', 0),
(12767, '64486fdc5ed47', 'en', '31df4171f2ebec0b6f84d0cc0b91722a', 'Sender email', 0),
(12768, '64486fdc5edd3', 'en', '90ed58883831551ef960da4f7cde1240', 'Sender name', 0),
(12769, '64486fdc5ee5e', 'en', '9aa1b03934893d7134a660af4204f2a9', 'Server', 0),
(12770, '64486fdc5eee7', 'en', '60aaf44d4b562252c04db7f98497e9aa', 'Port', 0),
(12771, '64486fdc5ef93', 'en', 'd7f2615c71a1567cc13cf3a7f7de0aea', 'Encryption', 0),
(12772, '64486fdc5f02a', 'en', '06df33001c1d7187fdd81ea1f5b277aa', 'Actions', 0),
(12773, '64486fdc5f0b5', 'en', 'f379cc42ad476900e178e1c4191d4af2', 'Thank you for using our service', 0),
(12774, '64486fdc5f13f', 'en', 'e4045598261988d9988c594243a9434d', 'Terms of service', 0),
(12775, '64486fdc5f1c9', 'en', '56c34c6410dd45c5cec44149ad0ce037', 'Privacy policy', 0),
(12776, '64486fdc5f253', 'en', '9e0c686234b0b77db6bf103d2585860c', 'Cannot found email template', 0),
(12777, '64486fdc5f2dd', 'en', '278c491bdd8a53618c149c4ac790da34', 'Template', 0),
(12778, '64486fdc5f387', 'en', 'be8d1f91bb457a932b1a4af0fcbd2373', 'Set field HTML SELECTOR is beamer-notification at here:', 0),
(12779, '64486fdc5f41b', 'en', 'e7cf0c042bb35c701919d18e70bebd26', 'Beamer product id', 0),
(12780, '64486fdc5f4a9', 'en', '0fb9ca28c692803b0d4aec9c579fe563', 'Poupup ID', 0),
(12781, '64486fdc5f534', 'en', '51c0a469b84b0541539b936dda1d4221', 'Display again (minute)', 0),
(12782, '64486fdc5f5bc', 'en', 'd380bc4996db846896ea499b9bd495dd', 'Get Beamer product id at here:', 0),
(12783, '64486fdc5f644', 'en', '7a262cb0d3d917313c8ba12f996fe83c', 'Important:', 0),
(12784, '64486fdc5f6cd', 'en', '0523b13262b12c215d8009938f5c14f1', 'OpenAI', 0),
(12785, '64486fdc5f77a', 'en', 'a207cf4af484ed122e872dc428587439', 'Open AI API keys', 0),
(12786, '64486fdc5f80c', 'en', '31ec649e1f4372cd5868caee902d691c', 'Get OpenAI access token at here:', 0),
(12787, '64486fdc5f896', 'en', '0f78b20318b5aef4dca6dbae5051960a', 'Suggestion', 0),
(12788, '64486fdc5f91f', 'en', '852ca2276ceeee9d6003a4280698a767', 'Max Result Length', 0),
(12789, '64486fdc5f9a9', 'en', '30abd1d6465ebf355e7d7cf0ce36f3ac', 'Add hashtags', 0),
(12790, '64486fdc5fa33', 'en', '32b919d18cfaca89383f6000dcc9c031', 'Generate', 0),
(12791, '64486fdc5fabc', 'en', '98f770b0af18ca763421bac22b4b6805', 'Features', 0),
(12792, '64486fdc5fb73', 'en', '90c4d1e4d8761516d78cac3fd5544cb6', 'Generate Content', 0),
(12793, '64486fdc5fc09', 'en', '69395514475bf56538ca9a1a1a48ac61', 'Generate Image', 0),
(12794, '64486fdc5fc95', 'en', 'afa004c717d8b1358f5f300e8558f29e', 'Limit tokens', 0),
(12795, '64486fdc5fd21', 'en', '6f6cb72d544962fa333e2e34ce64f719', 'Size', 0),
(12796, '64486fdc5fdaa', 'en', '1c55d0da43dfd288a328815688485d65', 'OpenAI Generate Content', 0),
(12797, '64486fdc5fe32', 'en', '4dda4931304a29c8e4d14679f6580884', 'OpenAI Generate Image', 0),
(12798, '64486fdc5feba', 'en', 'a282ec5ea96ccdf83ca8aebb89ab7abf', 'You\'ve used the reaching of the limit of %s OpenAI tokens', 0),
(12799, '64486fdc5ff69', 'en', '693e6e08de0f9ebd58c3a89f1f8a0a64', 'OpenAI connection timeout', 0),
(12800, '64486fdc5fff9', 'en', '40e84c746b734612d78aa872e34c1534', 'OpenAI just support size 256x256, 512x512, 1024x1024', 0),
(12801, '64486fdc60085', 'en', 'ffb492aeee71c81c73a82a23712e06ca', 'Redirect HTTP to HTTPS automatically', 0),
(12802, '64486fdc60110', 'en', 'b60074e5eaca77bd43539173de484a38', 'This feature may cause the website to stop functioning. Therefore, make sure that SSL has been installed on this domain.', 0),
(12803, '64486fdc6019a', 'en', 'ffb40036ab0583218561de7c28c6bd9b', 'GDPR Cookie Consent', 0),
(12804, '64486fdc60224', 'en', '9d282b2b887e9528cc04a9d72354e12e', 'Embed code', 0),
(12805, '64486fdc602ae', 'en', '985a4b720f9b50ee8ed90a41488d2bb7', 'Terms of Use', 0),
(12806, '64486fdc6037d', 'en', 'fa2ead697d9998cbc65c81384e6533d5', 'Privacy Policy', 0),
(12807, '64486fdc60416', 'en', 'b718adec73e04ce3ec720dd11a06a308', 'ID', 0),
(12808, '64486fdc604a1', 'en', '8f9bfe9d1345237cb3b2b205864da075', 'User', 0),
(12809, '64486fdc6052c', 'en', '0b6cbdf7ad2928078f1600a3e8979485', 'Plan', 0),
(12810, '64486fdc605b4', 'en', 'a1fa27779242b4902f7ae3bdd5c6d508', 'Type', 0),
(12811, '64486fdc6063e', 'en', '88427ec035734b45aae9f7d8859a5008', 'Transaction ID', 0),
(12812, '64486fdc606c8', 'en', 'b2f40690858b404ed10e62bdf422c704', 'Amount', 0),
(12813, '64486fdc6078d', 'en', '53e5aa2c97fef1555d2511de8218c544', 'By', 0),
(12814, '64486fdc6081c', 'en', '0eceeb45861f9585dd7a97a3e36f85c6', 'Created', 0),
(12815, '64486fdc608a5', 'en', 'a7a7b26872b3e2d00de7bb7b1452b5a8', 'Memberships', 0),
(12816, '64486fdc6092f', 'en', 'daef64964ee3b9b904f5d467586e217f', 'Payments', 0),
(12817, '64486fdc609b8', 'en', 'a8d01e95537caae4494cb3c9f2fe6772', 'Pinterest API Configuration', 0),
(12818, '64486fdc60b5d', 'en', 'e01cb070f275f48072e8f6f4ffab81f2', 'Accept login to Pinterest via', 0),
(12819, '64486fdc60cbe', 'en', '99796236631d7beba8aa0cc6a60a195b', 'Environment for Pinterest API Official', 0),
(12820, '64486fdc60d64', 'en', '4530378dd1e68e136e52255661eee568', 'Pinterest app id', 0),
(12821, '64486fdc61067', 'en', 'a3ab3462767cba1f4c1570f58f33a54e', 'Pinterest app secret key', 0),
(12822, '64486fdc611c3', 'en', 'c9df9fed610efb4d343fd465c785bd2e', 'Click this link to create Pinterest app:', 0),
(12823, '64486fdc61268', 'en', '0008feba81a131902ece95d59f1b8f21', 'Official', 0),
(12824, '64486fdc6132f', 'en', 'e62c4f09277ddca74df752da49b4246b', 'Unofficial', 0),
(12825, '64486fdc613c1', 'en', '0fae8be0e39b47a04100683421d9e645', 'Pinterest username or email', 0),
(12826, '64486fdc6144d', 'en', '05a38a7d483cc1a947e9bd8919db955e', 'Pinterest password', 0),
(12827, '64486fdc614da', 'en', '567a4986944ba81b10b549dbed9e9467', 'Pinterest OAuth', 0),
(12828, '64486fdc61564', 'en', 'f3ef87de01637b1b8b484c43923da6b9', 'Connect with Pinterest', 0),
(12829, '64486fdc615f0', 'en', 'b79926ca2c8925816c34cc5b73b5536d', 'Add Pinterest boards', 0),
(12830, '64486fdc6169a', 'en', '808c07b081aea20f042a16aa7ccd3174', 'Re-connect with Pinterest', 0),
(12831, '64486fdc61736', 'en', '2acd20bb3d30d93f80c9e079f615d84d', 'No boards were found in your account', 0),
(12832, '64486fdc617c3', 'en', 'b494ce60923c04e8e4c91b0d47177d95', 'Login required', 0),
(12833, '64486fdc6184e', 'en', '636c47a2cb2525e79b6758a9c6e413f7', 'Pinterest boards', 0),
(12834, '64486fdc618d8', 'en', '94a300b58d8c6ee1a4a557a6677332a7', 'Upload by', 0),
(12835, '64486fdc61963', 'en', '248336101b461380a4b2391a7625493d', 'Saved', 0),
(12836, '64486fdc619ed', 'en', '6b0f7393212e82a5f1c7e39690776f34', 'Enter title', 0),
(12837, '64486fdc61a98', 'en', '97e7c9a7d06eac006a28bf05467fcc8b', 'Link', 0),
(12838, '64486fdc61b30', 'en', 'd6d644f5425c6e3d35480b0f462d7858', 'Enter link', 0),
(12839, '64486fdc61bbd', 'en', 'e6e9d8c827b3bebed5cc6ee7695744a5', 'Pinterest does not support posting as text', 0),
(12840, '64486fdc61c48', 'en', '97b9d3875f1f12b9ae1842e360046918', 'Pinterest requires an image', 0),
(12841, '64486fdc61cd4', 'en', 'cec0cbcd3f58d57ff361016c6234b67e', 'Linkedin requires an image', 0),
(12842, '64486fdc61d5f', 'en', 'ecfa50e88a7665c9faeb7e7738d5851c', 'Image does not exist', 0),
(12843, '64486fdc61deb', 'en', '86709a608bd914b28221164e6680ebf7', 'Pinterest', 0),
(12844, '64486fdc61e9b', 'en', '15422d54ec0d47000dc86a9820a5237e', 'Featured', 0),
(12845, '64486fdc61f2f', 'en', 'a5a4f81e3b584d845e2c3378d10b5403', 'Plan name', 0),
(12846, '64486fdc61fbb', 'en', '0a2b642119d8ebe0eec3630c6ce63761', 'Plan description', 0),
(12847, '64486fdc62047', 'en', '474d0324f4a5866c86779e939f9c9303', 'Price monthly', 0),
(12848, '64486fdc620d2', 'en', 'be973957f3b826e4cb99dd686dda5ccc', 'Price annually', 0),
(12849, '64486fdc6215e', 'en', '2ebd69a77e20dfa7b449a27cb4238b19', 'Trial day', 0),
(12850, '64486fdc621e8', 'en', '52f5e0bc3859bc5f5e25130b6c7e8881', 'Position', 0),
(12851, '64486fdc6229a', 'en', '3d3f5d2578bd370002e9ca9e8be60eb5', 'The number of accounts is calculated by', 0),
(12852, '64486fdc6232c', 'en', '5213245f990f781b2df3b7ae92a39300', 'Each social network', 0),
(12853, '64486fdc623b6', 'en', '4a809ff0bda39d15e53e37cefd9dfb56', 'Entire social network', 0),
(12854, '64486fdc62441', 'en', '7b1d92d0b605bb1ea643accd09804009', 'Number accounts', 0),
(12855, '64486fdc624cb', 'en', '7f1f5704865feae4a903aa65afe2bb3c', 'Save and update subscribers', 0),
(12856, '64486fdc62556', 'en', '2544805b7176118176513c441b7b64a2', 'Plan info', 0),
(12857, '64486fdc625e0', 'en', '92aa93546664cea38b386e0a5a561e30', 'Set -1 is unlimited', 0),
(12858, '64486fdc626a0', 'en', '6956cc1de059bbd65d8454842d240841', 'Plans', 0),
(12859, '64486fdc62733', 'en', 'ae1681a8416d24803212fe86b18685c1', 'Purchase code', 0),
(12860, '64486fdc627bf', 'en', '7c46f1ad1d928b4ac4b2541f19d30efe', 'Enter purchase code', 0),
(12861, '64486fdc62849', 'en', '3b0649c72650c313a357338dcdfb64ec', 'Note', 0),
(12862, '64486fdc628d3', 'en', '35f84f3bf51e137eb333c28ea52887a8', 'Just can install plugins or themes', 0),
(12863, '64486fdc6295d', 'en', '817676a1a16e3f0e5e51bdd08195d40b', 'Cannot use for reinstall main script', 0),
(12864, '64486fdc629e9', 'en', '6bc39f323553744f088fee9796846e60', 'Make sure your server does not block the permissions to install', 0),
(12865, '64486fdc62aa3', 'en', '608cf8320470cd2f7580aa6b04a7ce10', 'This modules or themes is already installed', 0),
(12866, '64486fdc62b33', 'en', 'aba8f82a608b23c62e64a818277a1ba3', 'There seems to be a problem with your request. Please ensure that your server has enabled sufficient permissions to allow for the installation', 0),
(12867, '64486fdc62bbe', 'en', '43be5a4f812f6fcc16a23b35ca14c148', 'Please enable PHP ZIP Extension on your server to can install', 0),
(12868, '64486fdc62c49', 'en', 'd2e43cbe7328d082c658443a317b839f', 'There was a problem during installation', 0),
(12869, '64486fdc62cd3', 'en', '502ecd5fb5e98b24cfcd3b417ec83316', 'This product does not exist. Kindly contact us for further assistance', 0),
(12870, '64486fdc62d5d', 'en', 'bb38096ab39160dc20d44f3ea6b44507', 'Plugins', 0),
(12871, '64486fdc62df3', 'en', '1b1a4d987a03dea5b0812ab6122a5a9e', 'Report posts', 0),
(12872, '64486fdc62e9a', 'en', '87edbfeaa967c32f9bcf81469241f575', 'All Report', 0),
(12873, '64486fdc62f27', 'en', '81d4b5ce6f010c44b338c43ef9956609', 'Allow planning and scheduling for', 0),
(12874, '64486fdc62fb2', 'en', '8524de963f07201e5c086830d370797f', 'Loading...', 0),
(12875, '64486fdc6303e', 'en', 'a6c3f75313c0227d7828d5c0ece9fa7d', 'Succeed', 0),
(12876, '64486fdc630c7', 'en', 'd7c8c85bf79bbe1b7188497c32c3b0ca', 'Failed', 0),
(12877, '64486fdc63151', 'en', 'cdaf4ce76b30132399e3c5bdc2af86fe', 'Report post by status', 0),
(12878, '64486fdc63229', 'en', '10e753337b911de5aaf40433c9383feb', 'Report post by type', 0),
(12879, '64486fdc632d7', 'en', '656bb605e565355e3750f4bcac900631', 'Total post', 0),
(12880, '64486fdc6336b', 'en', '0d6ba45a631035f8070d14f978dab37d', 'Recent publications', 0),
(12881, '64486fdc633f7', 'en', '192a387b5c3202b2f17ae69769728891', 'Post succeed', 0),
(12882, '64486fdc63484', 'en', '87e9884dc03eb38fdae0c583570ef451', 'Post failed', 0),
(12883, '64486fdc6350f', 'en', 'adaaee4b22041c27198d410c68d952c9', 'Percent', 0),
(12884, '64486fdc6359a', 'en', '85a456b4ad86d5c37c3f2064f56d9cda', 'Repost frequency (day)', 0),
(12885, '64486fdc63658', 'en', '9acdd22bfbf262a98f0e7be933dd9d2c', 'Repost until', 0),
(12886, '64486fdc636e9', 'en', '42e66dfd1037a3eeeb668c8f9e7ed27e', 'No, Cancel', 0),
(12887, '64486fdc63773', 'en', '6fe76ae3544b6d9b64d89124506b1304', 'New post', 0),
(12888, '64486fdc637fe', 'en', '6b086b68213c351102673d243fe4c64e', 'When to post', 0),
(12889, '64486fdc63888', 'en', 'fd83e0ccb3e6312a62f888dd496dd0a5', 'Immediately', 0),
(12890, '64486fdc63932', 'en', 'e77b3d18128556abdecb3cfff643f2de', 'Schedule & Repost', 0),
(12891, '64486fdc639e1', 'en', '45faae657667884c16cc568dc8bd26f5', 'Specific Days & Times', 0),
(12892, '64486fdc63a7e', 'en', 'f03ab16cd58372c77ba45a3d9a5a1cb9', 'Draft', 0),
(12893, '64486fdc63b0a', 'en', '00d9a10351c5eb873ded844bf739a1b7', 'Time post', 0),
(12894, '64486fdc63b9c', 'en', 'b62ca519bd5307ebd4e5d1a213d5aa72', 'Add more scheduled times', 0),
(12895, '64486fdc63c2a', 'en', '9f12e1bfb98bb9e5b05b12f758333056', 'Send now', 0),
(12896, '64486fdc63cb5', 'en', '25f7347236b51a5eae4ba01a7862cb55', 'Schedule', 0),
(12897, '64486fdc63d40', 'en', 'ca87ba2b0086c314ad5b69849bbab670', 'Save as Draft', 0),
(12898, '64486fdc63df5', 'en', '70d9be9b139893aa6c69b5e77e614311', 'Confirm', 0),
(12899, '64486fdc63e87', 'en', '010e689d0b21f5b76baa8f6a2f8ca1a2', 'Yes, I\'m sure', 0),
(12900, '64486fdc63f12', 'en', '4ab788ca8db4938238ac1aef9074a8b0', 'Network Preview', 0),
(12901, '64486fdc63f9e', 'en', '03eb9ee7d116e05ffede92fe31ae1afc', '%d profiles will be excluded from your publication in next step due to errors', 0),
(12902, '64486fdc64028', 'en', 'c3f71ac2d0b2c051eda5fb14b5c908b5', 'Missing content on the following social networks: %s', 0),
(12903, '64486fdc640b3', 'en', 'beea9e3aad70e5bc9721a56144541463', 'This profile not exist', 0),
(12904, '64486fdc6413c', 'en', 'd88d4985db7fc7c5125aada7271b8cf5', 'Can\'t update this post', 0),
(12905, '64486fdc641ec', 'en', 'b8dcb473f33eb19a4701c36ac9cd85c0', 'Can\'t post to this social network', 0),
(12906, '64486fdc6427d', 'en', '1cea23ad1aa140ed905864953d2cc83f', 'Content is being published on %d profiles', 0),
(12907, '64486fdc64308', 'en', 'f1de3b022dee9f99323c8ef89ef0779b', 'Content is being published on %d profiles and %d profiles unpublished', 0),
(12908, '64486fdc64393', 'en', 'df6d709b7e4ba811e90028cc4ff6c47b', 'Content successfully scheduled', 0),
(12909, '64486fdc6441d', 'en', '5feb207e74b4c1506e45b48d7a5c2a8e', 'Please select at least one media', 0),
(12910, '64486fdc644a7', 'en', '9484de11f40466685de198ad036d08f3', 'Repost frequency', 0);
INSERT INTO `sp_language` (`id`, `ids`, `code`, `slug`, `text`, `custom`) VALUES
(12911, '64486fdc64532', 'en', 'cdbc7a773338998af05e797d34e421a7', 'Interval per post', 0),
(12912, '64486fdc645e2', 'en', 'cf85caf9554115bf35a613c58f3e38d8', 'Please select at least a time post', 0),
(12913, '64486fdc6466f', 'en', '4af6969e0eaffe35e510940b2d57613e', 'Time post must be greater than current time', 0),
(12914, '64486fdc646f9', 'en', '152bac8d22386bbdaa233468d6a34ff7', 'Time post must be smaller than repost until', 0),
(12915, '64486fdc64783', 'en', 'd9ad794fc993784fa7442cce33384535', 'Unknow error', 0),
(12916, '64486fdc6480f', 'en', 'bcba235aa0401fd10464df6afbfaab77', 'Composer', 0),
(12917, '64486fdc64899', 'en', '08bd40c7543007ad06e4fce31618f6ec', 'Account', 0),
(12918, '64486fdc64925', 'en', '0b39c5aca15b84b1ad53a94d6b3feb78', 'Change password', 0),
(12919, '64486fdc649e2', 'en', '780c462e85ba4399a5d42e88f69a15ca', 'Billing', 0),
(12920, '64486fdc64a71', 'en', 'f4f70727dc34561dfde1a3c529b6205c', 'Settings', 0),
(12921, '64486fdc64afd', 'en', '0323de4f66a1700e2173e9bcdce02715', 'Logout', 0),
(12922, '64486fdc64b87', 'en', 'ff4cff2ee8654c497934bfd04ef2c007', 'Back to admin', 0),
(12923, '64486fdc64c12', 'en', '466eadd40b3c10580e3ab4e8061161ce', 'Invoice', 0),
(12924, '64486fdc64c9d', 'en', 'ba160acb58001c904c57507da3689265', 'ORDER #', 0),
(12925, '64486fdc64d35', 'en', 'bbc97736d6f6e2201e44a20c8a5bf601', 'Here is a summary of your recent order. If you have any questions or concerns about your order, please contact us.', 0),
(12926, '64486fdc64ddc', 'en', '7d74f3b92b19da5e606d737d339a9679', 'Item', 0),
(12927, '64486fdc64e69', 'en', '3601146c4e948c32b6424d2c0a7f0118', 'Price', 0),
(12928, '64486fdc64ef4', 'en', '104d9898c04874d0fbac36e125fa1369', 'Discount', 0),
(12929, '64486fdc64f81', 'en', '531f75b36ab7c3c1d0bf547359f028d5', 'Billing info', 0),
(12930, '64486fdc6500b', 'en', 'dda8497ceb669f611d671eb2b204306f', 'Fullname: ', 0),
(12931, '64486fdc651f2', 'en', 'c639760479f3642487efb608ad7263f8', 'Tax number: ', 0),
(12932, '64486fdc652cd', 'en', 'e44246fe77fb0211ddb17d26f81dd52b', 'Address: ', 0),
(12933, '64486fdc65363', 'en', 'd5cfd0f69cd548e5d3b9edde5ff1b48f', 'Payment info', 0),
(12934, '64486fdc653f1', 'en', 'dc67ef20ee7ca7f193abe3a757bea98c', 'Payment method: ', 0),
(12935, '64486fdc6547c', 'en', '41683156a02a5458061f1ceff3a7b7e4', 'Transaction ID: ', 0),
(12936, '64486fdc6552a', 'en', '7ae482f677dd1f904dc2f0929c219052', 'Date: ', 0),
(12937, '64486fdc655c6', 'en', 'f403ac95a07ddae169d88c4833ace3ce', 'Thank you for your order!', 0),
(12938, '64486fdc65653', 'en', 'd9c2d86a66aa5a45326c3757f3a272cc', 'Current password', 0),
(12939, '64486fdc656df', 'en', 'b6f4a2ec6356bbd56d49f2096bf9d3d3', 'Owner', 0),
(12940, '64486fdc65770', 'en', '640f715f1698a4027857d334c50860b6', 'Tax number/ID', 0),
(12941, '64486fdc657fc', 'en', 'dd7bf230fde8d4836917806aff6a6b27', 'Address', 0),
(12942, '64486fdc65887', 'en', '32036005d1f6ed59803ba3e13c80993e', 'Avatar', 0),
(12943, '64486fdc65946', 'en', '21f9f9af7aa49d0417223d9cec3be3e2', 'Plan Details', 0),
(12944, '64486fdc659db', 'en', '8793da1848462d21abf5e5b1c9d55e30', 'Your account may have expired, but our service is still here for you.', 0),
(12945, '64486fdc65a68', 'en', 'a7a1f673fc8bee25d035ed3bc061ad19', 'No plan found', 0),
(12946, '64486fdc65af2', 'en', '4eda9aa153b6d0ac4ce5e7c98e9bd0e6', 'Are you sure want cancel your subscription?', 0),
(12947, '64486fdc65b7b', 'en', '67cebfb85c019055659c9e591a0737f0', 'Cancel automatic payments', 0),
(12948, '64486fdc65c06', 'en', '5d24e361d3da6824ecda5af6b7d1dce2', 'Upgrade your plan', 0),
(12949, '64486fdc65c8f', 'en', 'fce9a6a1bd2a2050eb86d33103f46fd3', 'Invoices', 0),
(12950, '64486fdc65d63', 'en', '44749712dbec183e983dcd78a7736c41', 'Date', 0),
(12951, '64486fdc65e64', 'en', '801ab24683a4a8c433c6eb40c48bcd9d', 'Download', 0),
(12952, '64486fdc65f48', 'en', 'e5ed8c8ed8256d194bf02d918fcdc4dc', 'New password cannot be the same as your old password', 0),
(12953, '64486fdc65fe8', 'en', '5dae60ebb8d3b1fc0a2e32ac719f30cb', 'Old password does not match', 0),
(12954, '64486fdc66076', 'en', '06b867fd81c559719687d121a4d456bf', 'New password and confirm password does not match', 0),
(12955, '64486fdc66136', 'en', 'cce99c598cfdb9773ab041d54c3d973a', 'Profile', 0),
(12956, '64486fdc661ca', 'en', 'f56ec2ab97d604832d90f6394e3f341f', 'Proxy', 0),
(12957, '64486fdc66254', 'en', '989d8d054c7fc7bba243a4647aacc045', 'Proxy format username:password@ip:port OR ip:port', 0),
(12958, '64486fdc6630a', 'en', '74bffb62b79cdb5176fe3e9aee45ad93', 'Are you sure to remove assign this accounts?', 0),
(12959, '64486fdc663a0', 'en', 'b702d617ea6183d3f4162718c0c30a11', 'Assign proxy', 0),
(12960, '64486fdc6642c', 'en', 'eb5aeb11786190726eadd8a26bd6d874', 'Select proxy', 0),
(12961, '64486fdc664d9', 'en', '185b7133db22230701a857c059360cc2', 'Assign', 0),
(12962, '64486fdc6656c', 'en', 'bf219bed244d507d5a4d9b1cea4818e7', 'Remove assign', 0),
(12963, '64486fdc665fa', 'en', 'bd49dc941881322afda35e9b2831739d', 'Import proxy', 0),
(12964, '64486fdc66696', 'en', '3921ef8cb65da9288b8775accc9f21eb', 'Import proxies', 0),
(12965, '64486fdc6673f', 'en', 'bcb3fb8c93639022a1a0a816c1c9f9b6', 'Upload CSV', 0),
(12966, '64486fdc667cd', 'en', '3a38ae21768e30d02c4b0b358dd2386b', 'Example template', 0),
(12967, '64486fdc66859', 'en', '1973a60423a3d3af6c91370f9d58c549', 'Using system proxy', 0),
(12968, '64486fdc6690b', 'en', '098dcd430839787b4d1db63e6ca39aec', 'Proxy format is incorrect', 0),
(12969, '64486fdc6699a', 'en', '70eea8031965da74ff0f349ffcd4e98f', 'This proxy already exists', 0),
(12970, '64486fdc66a24', 'en', '3eeaaaf1e50e2f4e821ee9ffb19b9275', 'Please select a proxy to can assign proxy', 0),
(12971, '64486fdc66adc', 'en', 'f10188a1764a509aeecd12770afc9f68', 'Please select an account to can assign proxy', 0),
(12972, '64486fdc66ba1', 'en', 'cc496651f269daaba73b0dea2895d106', 'Cannot find account to assign proxy', 0),
(12973, '64486fdc66c2f', 'en', 'bd703fc9430737d460290e82a7a691cf', 'This proxy does not exist', 0),
(12974, '64486fdc66cee', 'en', 'ca9bdf4772fbd57247f9557f8b708a18', 'Cannot found files csv to upload', 0),
(12975, '64486fdc66d7e', 'en', '7a3d736818ad840fd32b237b4183cc32', 'Account info', 0),
(12976, '64486fdc66e08', 'en', 'ae1dd217044633af0b0914767739da6d', 'Proxy assigned', 0),
(12977, '64486fdc66eb0', 'en', '88ad096f6e3ae622fe06d2f7b52c9070', 'Proxy location', 0),
(12978, '64486fdc66f44', 'en', 'ce5bf551379459c1c61d2a204061c455', 'Location', 0),
(12979, '64486fdc6706e', 'en', '53793c77677a52b4af7cba0388ada88c', 'Proxies', 0),
(12980, '64486fdc67161', 'en', '80d2677cf518f4d04320042f4ea6c146', 'Limit', 0),
(12981, '64486fdc671ff', 'en', 'a9107c8b9036e0c4159e0221a1539095', 'Select plans', 0),
(12982, '64486fdc672ab', 'en', 'bd9ef40ca1ac900defc57dd468d8b8e8', 'Please select at least one plan', 0),
(12983, '64486fdc6733c', 'en', 'ab670a38d997f385d053216283c4a5e4', 'User info', 0),
(12984, '64486fdc673c6', 'en', 'b55977a4ddacf14a79035dd060a145e5', 'System Proxy', 0),
(12985, '64486fdc67472', 'en', '04e409f3420959e838ba159675e704aa', 'Proxy system', 0),
(12986, '64486fdc67510', 'en', '722ad2d05ecf4868b00c5484b82fd808', 'Queue', 0),
(12987, '64486fdc675ab', 'en', '9b9d8a976b42e0bd66381797644943d5', 'Published', 0),
(12988, '64486fdc67650', 'en', '0774e163cd7df482edd2abd498189f8b', 'Unpublished', 0),
(12989, '64486fdc676e8', 'en', '611daa739e5ea2991965ff51878f9697', 'Schedules of', 0),
(12990, '64486fdc67774', 'en', '123f78413847556274afd31351529df9', 'All schedules', 0),
(12991, '64486fdc677fe', 'en', 'f2fb0b80c2c7e171cd27b2b79806772a', 'Delete schedules', 0),
(12992, '64486fdc678b1', 'en', '38160901da7224d77a2c0a7948fea16c', 'Social network', 0),
(12993, '64486fdc67940', 'en', 'b1c94ca2fbc3e78fc30069c8d0f01680', 'All', 0),
(12994, '64486fdc679c9', 'en', 'ccdb7bf9d93e5652b57cabcc8c41e061', 'Schedules', 0),
(12995, '64486fdc67a71', 'en', '0db377921f4ce762c62526131097968f', 'General', 0),
(12996, '64486fdc67b03', 'en', 'b8cd1b001bba1827a8abc8d9ee18752c', 'Website info', 0),
(12997, '64486fdc67b8d', 'en', '5ffade01fdaefb1ab262934f65ba66c1', 'Website title', 0),
(12998, '64486fdc67c3b', 'en', '8e517fe6f026cc2a6993b1f8b95174c2', 'Website description', 0),
(12999, '64486fdc67cd3', 'en', '9345b40520c58723bc8fadd985130eba', 'Website keyword', 0),
(13000, '64486fdc67d60', 'en', '6e267fa5f7cb01057142356033e8805f', 'Website favicon', 0),
(13001, '64486fdc67df8', 'en', 'bd54f6e055abdd064f322cc5d56bb052', 'Website logo mark', 0),
(13002, '64486fdc67e93', 'en', '56e229a9dc573da173ea045806fc806e', 'Website logo color', 0),
(13003, '64486fdc67f26', 'en', 'dba83be09b321d0727317fa899e95257', 'Website logo light', 0),
(13004, '64486fdc67fb2', 'en', '9446596f724fadcb1af92ed0b5e687b5', 'Website logo black', 0),
(13005, '64486fdc68063', 'en', '42fb2496ad0f063554e545e29986f5a9', 'Date and Time Formats', 0),
(13006, '64486fdc680f2', 'en', 'a1af5f0718bfae275ce162362d0e43c5', 'Datetime', 0),
(13007, '64486fdc6817b', 'en', '64d2cc43035360eddf790efbef5ddb30', 'Open menu', 0),
(13008, '64486fdc68238', 'en', '3beea20215279207bdb9ee601afbbe42', 'Frontend template you selected is not exist', 0),
(13009, '64486fdc6833a', 'en', '9f5c0d1c45be3f8cfaa9353a0b627fa5', 'Bitly', 0),
(13010, '64486fdc68460', 'en', 'b588c5ddfbfe3417125f9e28ac59cae1', 'Connect your social media with your Bit.ly account', 0),
(13011, '64486fdc68561', 'en', '49ab28040dfa07f53544970c6d147e1e', 'Connect', 0),
(13012, '64486fdc6863b', 'en', '889f6c28879818b3e6ac46c31ee848fb', 'Disconnect your Bit.ly account', 0),
(13013, '64486fdc686d8', 'en', '42ae25231906c83927831e0ef7c317ac', 'Disconnect', 0),
(13014, '64486fdc68766', 'en', 'eae4c6c8dce6a00ff9af3ac60e98e0d6', 'Client id', 0),
(13015, '64486fdc68818', 'en', '1b4739e491387ef5d8a546854308e5fe', 'Client secret', 0),
(13016, '64486fdc688aa', 'en', 'a382432e4949a0efb584f5667f371e42', 'Click this link to create Bitly app:', 0),
(13017, '64486fdc68940', 'en', '59188a4ba49678f63938344f7debf53a', 'Shortlink', 0),
(13018, '64486fdc689e2', 'en', '0f2d5a209d1b447c2408eb16c6d8bac5', 'Social network settings', 0),
(13019, '64486fdc68a7c', 'en', '970cfba66b8380fb97b742e4571356c6', 'Youtube', 0),
(13020, '64486fdc68b0a', 'en', '11e08ae7ce6a1c0d968832fff730ec39', 'Tiktok', 0),
(13021, '64486fdc68b92', 'en', '2491bc9c7d8731e1ae33124093bc7026', 'Twitter', 0),
(13022, '64486fdc68c49', 'en', 'bf2e46a30059973d25f67373b2983a79', 'Social pages', 0),
(13023, '64486fdc68cd8', 'en', '9bf79c7f10eadd0b612b8c354ad19bdc', 'Subscription ID', 0),
(13024, '64486fdc68d63', 'en', 'd37c2bf1bd3143847fca087b354f920e', 'Customer ID', 0),
(13025, '64486fdc68e13', 'en', '4ca2c509994c2776d0880357b4e8e5be', 'Subscriptions', 0),
(13026, '64486fdc68ea3', 'en', 'a270e6a714e23a2ace11e3dfac5f4290', 'Enter access token', 0),
(13027, '64486fdc68f2e', 'en', '51d665f981cf2f810c61f1e275de6457', 'Get Telegram access token', 0),
(13028, '64486fdc68fdb', 'en', 'a8af80f4aa24c1cf66b61a85defee0ad', 'Create Telegram bot', 0),
(13029, '64486fdc6906d', 'en', 'bfdc6bbcb377a5c14b5ef737e3192449', 'How to get access token', 0),
(13030, '64486fdc690fa', 'en', '11856ee3136d381b3ef3cab4073bc9ef', 'Click button Create Telegram bot', 0),
(13031, '64486fdc69195', 'en', '994164c1a4d6a5bda3c0914dc01801f6', 'Give the Telegram bot a friendly name.', 0),
(13032, '64486fdc6922e', 'en', '4f92ae90238b7d99efd653e880e31dae', 'Give the Telegram bot a unique username.', 0),
(13033, '64486fdc692b9', 'en', '56a3dd39a566b62fc4c00d8c3960eb66', 'Copy the Telegram bot\'s access token.', 0),
(13034, '64486fdc69340', 'en', '61bcfe8eaf50f539750458b0037188c9', 'Enter the Telegram bot\'s access token', 0),
(13035, '64486fdc693f4', 'en', '64c75d2fdb655c89839cce03554bc9d3', 'Add Telegram channels', 0),
(13036, '64486fdc69483', 'en', '4d1c8263ba1036754f8db14a98f9f006', 'Reload', 0),
(13037, '64486fdc6950d', 'en', 'f5e3358beb7c0766e70d9ab3b0a8f293', 'How to add channels', 0),
(13038, '64486fdc695b4', 'en', '54085497d1483a2fc999296e0d58634b', 'Add bot is an admin on your channels', 0),
(13039, '64486fdc69645', 'en', '1fe804d7773032be98c1cee84318e5bf', 'Send a message to channels as you want add', 0),
(13040, '64486fdc696d0', 'en', '53b6ae0f0645fc40f98d9d1fae63f2d8', 'Click button reload', 0),
(13041, '64486fdc69769', 'en', '6e0993fb522c3e2e7172ded7cf4de602', 'Re-connect with Telegram', 0),
(13042, '64486fdc6980a', 'en', '1edca48aa6dc85927ed84afbedccf719', 'Please enter access token', 0),
(13043, '64486fdc69896', 'en', 'e06d1ba70f1331e9f9a113cc2f887d3f', 'Unauthorized', 0),
(13044, '64486fdc69921', 'en', 'ad3aa7e68dc04466fb5f15c32109da13', 'Telegram channels', 0),
(13045, '64486fdc699c8', 'en', 'b95693b3344d6bd0c4370db22274dac2', 'Add Telegram groups', 0),
(13046, '64486fdc69a56', 'en', 'da6612098afcf6e303180b4b1f11a1f5', 'How to add groups', 0),
(13047, '64486fdc69ae0', 'en', '44b41205af07053f45187cbef9b96902', 'Add bot is an admin on your groups', 0),
(13048, '64486fdc69b8a', 'en', '6f7bcf884272a8575a90b25212b738d0', 'Send a message to groups as you want add', 0),
(13049, '64486fdc69c1c', 'en', '1e97cbf69ba21f2af84f5894aad8adb7', 'Telegram groups', 0),
(13050, '64486fdc69ca7', 'en', '68e8ef8956d3f6e950446058c2629fde', 'Telegram just support posting as image or video', 0),
(13051, '64486fdc69d47', 'en', '0e8d231c1fffcb07916c663b87dae63d', 'Cannot find the media to upload', 0),
(13052, '64486fdc69de2', 'en', 'c915683f3ec888b8edcc7b06bd1428ec', 'Telegram', 0),
(13053, '64486fdc69e6f', 'en', '94b05263e503d408eb1d9eb8acbc2889', '@username', 0),
(13054, '64486fdc69f24', 'en', 'eae4440c41c07d769d83502d7f682e91', 'Twiiter just accept maximum post length is 280 characters.', 0),
(13055, '64486fdc69fd5', 'en', 'e436f93debe5698cbb28faacf93ed496', 'Twitter consumer id', 0),
(13056, '64486fdc6a062', 'en', 'e5a4be39c3935ec602c2b7d390a4bffb', 'Twitter consumer secret', 0),
(13057, '64486fdc6a0ec', 'en', '6822418f34fcba5eedad0bcb791f60e2', 'Twitter API Configuration', 0),
(13058, '64486fdc6a194', 'en', '560b24a5e09ce4b2691b9aca7fa85e12', 'Use your Twitter app', 0),
(13059, '64486fdc6a223', 'en', '95215c048b7ee442a33f2cfe3e78df6a', 'Add Twitter profiles', 0),
(13060, '64486fdc6a2ad', 'en', '5114ac4fb8276738627b73f4ff4c86d9', 'Re-connect with Twitter', 0),
(13061, '64486fdc6a356', 'en', '2c125cc795a12c2900fef2325c00c346', 'Twitter profiles', 0),
(13062, '64486fdc6a3e9', 'en', '2164e4bc26e989a6d1a7b4db6ff67da9', 'Role name', 0),
(13063, '64486fdc6a473', 'en', 'bbbabdbe1b262f75d99d62880b953be1', 'Role', 0),
(13064, '64486fdc6a50c', 'en', 'e3afed0047b08059d0fada10f400c1e5', 'Admin', 0),
(13065, '64486fdc6a5ad', 'en', '3cab03c00dbd11bc3569afa0748013f0', 'Inactive', 0),
(13066, '64486fdc6a63b', 'en', 'a6f2b2df29609876b609c318bdbdf9a1', 'Banned', 0),
(13067, '64486fdc6a6d1', 'en', '8c1279db4db86553e4b9682f78cf500e', 'Expiration date', 0),
(13068, '64486fdc6a786', 'en', 'f3609ac4a71c03b88a3f000f80e01d65', 'Group role', 0),
(13069, '64486fdc6a814', 'en', '6adf97f83acf6453d4a6a4b1070f3754', 'None', 0),
(13070, '64486fdc6a8a0', 'en', '41d4cd2187081b16c3937161112a77ba', 'Select plan', 0),
(13071, '64486fdc6a946', 'en', '6ecb1ef5c36a98a241406100bf07ca5a', 'dd/mm/yyyy', 0),
(13072, '64486fdc6a9da', 'en', '02298c1dbd7fb5978e504dc9e4626205', 'Set 0 is unlimited', 0),
(13073, '64486fdc6aa66', 'en', 'f923f903857a5387d3db70494e074632', 'List users', 0),
(13074, '64486fdc6ab0a', 'en', 'f4040f71a7d553f2519487070892b115', 'User roles', 0),
(13075, '64486fdc6ab9d', 'en', '5d720aee27e4d9612eafaf0c6a9061c9', 'User report', 0),
(13076, '64486fdc6ac28', 'en', 'a725ecc54ce14749117fafa6d8ddf46c', '%s permissions', 0),
(13077, '64486fdc6acb6', 'en', 'a5cd3ed116608dac017f14c046ea56bf', 'Roles', 0),
(13078, '64486fdc6ad5a', 'en', '305ff8d96466521d9c84d21041d62971', 'Active user', 0),
(13079, '64486fdc6adea', 'en', '2a5e64419d8ac3898a8e54b0c0468b76', 'Number of active users', 0),
(13080, '64486fdc6ae7a', 'en', '0bcef9c45bd8a48eda1b26eb0c61c869', '%', 0),
(13081, '64486fdc6af24', 'en', '2cc7ee7e390eac945e7baaae2d10a9a2', 'Inactive user', 0),
(13082, '64486fdc6afb6', 'en', '486ce1d3f7f8834d9221ad6b84177a2b', 'Number of inactive users', 0),
(13083, '64486fdc6b047', 'en', '493dbec7c424e581a983acf3420ea7cd', 'Banned user', 0),
(13084, '64486fdc6b0e6', 'en', 'ef9d9a66fa63b2dbd89801ef97a4b22c', 'Number of banned users', 0),
(13085, '64486fdc6b179', 'en', '5cbb4a6c74b160bdd49ede71ba78718e', 'Register history', 0),
(13086, '64486fdc6b20a', 'en', '1dd1c5fb7f25cd41b291d43a89e3aefd', 'Today', 0),
(13087, '64486fdc6b295', 'en', 'f9aae5fda8d810a29f12d1e61b4ab25f', 'Users', 0),
(13088, '64486fdc6b343', 'en', '70a6facb9d63f6ba070900c4c13df22e', 'This week', 0),
(13089, '64486fdc6b3d2', 'en', '96165d6df5c2fc0a2d2049848c130c1c', 'This month', 0),
(13090, '64486fdc6b45c', 'en', 'c35890fced542f7e539ca68fa7f17d2f', 'This year', 0),
(13091, '64486fdc6b503', 'en', '1d809e8ddb843eb661678104527b37ec', 'Recently registered', 0),
(13092, '64486fdc6b5d6', 'en', 'a1413ed049a4bed0e649c409b4462b49', 'Login type', 0),
(13093, '64486fdc6b66a', 'en', '2557491405dd96ce43f55a3133cfd1fe', 'Last 30 days', 0),
(13094, '64486fdc6b719', 'en', '8dddc604d2c7ecd03f89d3c458335f3f', 'New register', 0),
(13095, '64486fdc6b7a8', 'en', 'fd1dd0c603be8170f9eae0be9f2f6afb', 'Direct', 0),
(13096, '64486fdc6b833', 'en', '8b36e9207c24c76e6719268e49201d94', 'Google', 0),
(13097, '64486fdc6b8d8', 'en', '9f8e9d6823435a1dd2cb18f184c21821', 'Export users', 0),
(13098, '64486fdc6b96b', 'en', '0095a9fa74d1713e43e370a7d7846224', 'Export', 0),
(13099, '64486fdc6b9fb', 'en', '4059b0251f66a18cb56f544728796875', 'Info', 0),
(13100, '64486fdc6ba94', 'en', '209802fb858e2c83205027dbbb5d9e6c', 'Package', 0),
(13101, '64486fdc6bb35', 'en', '820dbd2b8f606aff866c0bbfb6b737c1', 'Changed', 0),
(13102, '64486fdc6bbc3', 'en', '8d5e7e72f12067991186cdf3cb7d5d9d', 'Premium', 0),
(13103, '64486fdc6bc4f', 'en', '46e625ccf9147f4048a5a28f4a3892c0', '31-01-2022', 0),
(13104, '64486fdc6bcf4', 'en', 'bad8e21abb5ba56fd3e85ce8bb4da67c', '03/05/2021 1:28 AM', 0),
(13105, '64486fdc6bd82', 'en', '1793f215a9796edd986bdaf1271b33bc', 'Preview as user', 0),
(13106, '64486fdc6be0a', 'en', '51ec703ad6d0c70405759287c2f6f409', 'This email already exists', 0),
(13107, '64486fdc6beb3', 'en', 'e2162885d59741bd35e43e69ce82037c', 'This username already exists', 0),
(13108, '64486fdc6bf45', 'en', 'c031b1ac59b11061818f51af8b291e50', 'Your password and confirmation password do not match', 0),
(13109, '64486fdc6c010', 'en', '47f8d7224c7db26024c80d3794e358f6', 'Please select a plan', 0),
(13110, '64486fdc6c0c1', 'en', '4649093d4d10aa95a212636f146c47fd', 'This account does not exist', 0),
(13111, '64486fdc6c154', 'en', 'f7db455c1f8c044c06d6df622a291c21', 'This account does not belong to any team', 0),
(13112, '64486fdc6c1e0', 'en', 'd1bcf746b412a77200967b9aa1d585c0', 'Stackmin', 0),
(13113, '64486fdc6c29c', 'en', '1d8cd2bfc6943dcf70236f7d351572a0', 'Terms & Conditions', 0),
(13114, '64486fdc6c331', 'en', 'a83195ae7ba6504b1d241ed8931ba550', 'The following information is important as it provides an overview of our terms of services, which we recommend you review.', 0),
(13115, '64486fdc6c3c4', 'en', '83218ac34c1834c26781fe4bde918ee4', 'Welcome', 0),
(13116, '64486fdc6c465', 'en', '294d17aae3165aaf965ba1c4970742b6', 'Let\'s get your account set up', 0),
(13117, '64486fdc6c4fd', 'en', '4da3ef41638d305c5b3990cd9c6217c7', 'Enter username', 0),
(13118, '64486fdc6c5df', 'en', 'c3d8baf1b9da3d6922aea0057717a0b7', 'Enter email', 0),
(13119, '64486fdc6c6a2', 'en', '887f7db126221fe60d18c895d41dc8f6', 'Confirm Password', 0),
(13120, '64486fdc6c736', 'en', '44c68bed631ff6e62aecc4a4d32176e6', 'Select timezone', 0),
(13121, '64486fdc6c7c3', 'en', 'c43633d0b74dc644aff1ab3475cb41a9', 'Accept Terms & Conditions', 0),
(13122, '64486fdc6c84d', 'en', '21bdc5689c12595ae14298354d5550d5', 'Already have an account?', 0),
(13123, '64486fdc6c8d8', 'en', '99dea78007133396a7b8ed70578ac6ae', 'Login', 0),
(13124, '64486fdc6c961', 'en', '36ccbbdbe43bc3038fe268a875ee25e0', 'Oops - Page not found!', 0),
(13125, '64486fdc6c9ea', 'en', '49eb46b1c384d3c46f404b548e804cf4', 'We think you just went to a page none-existing', 0),
(13126, '64486fdc6cb3b', 'en', '1fcf49bc86614ff502b9ced185d17751', 'Go to Homepage', 0),
(13127, '64486fdc6cbdd', 'en', '62be3f669d055ce44037d2a093f58595', 'Resend activation email', 0),
(13128, '64486fdc6cc6d', 'en', '75dfc57f3805ffbd3291863b7a571953', 'Enter the email you registered to receive the activation email', 0),
(13129, '64486fdc6ccf9', 'en', 'db8e6b7258a91f0c2fcb48bc2f7131f0', 'Reset Your Password', 0),
(13130, '64486fdc6cd84', 'en', '7bb9ad54ddb8de09bc1237e88b9df03d', 'Nearly there, just enter your new password.', 0),
(13131, '64486fdc6ce35', 'en', '6d1aca006f702e5d9c7f42267736612b', 'The information below provides details about our privacy policy and we ask that you take the time to read it.', 0),
(13132, '64486fdc6ced0', 'en', '0c05ef65a0331ec895b582844ee44e22', 'Add up to %d social accounts', 0),
(13133, '64486fdc6cf5f', 'en', 'a2589be9c58a4a1ab3e4b74b6277ecab', '%d accounts on each platform', 0),
(13134, '64486fdc6cfe8', 'en', 'f630065408022c49a34ec50008d83201', '%d Social Accounts', 0),
(13135, '64486fdc6d071', 'en', 'fdc71911b8f3fb9c7be5304416e52a90', 'Max. storage size: %sMB', 0),
(13136, '64486fdc6d0fa', 'en', '3795eec1e5ceb372d5a306a1079187d2', 'Max. file size: %sMB', 0),
(13137, '64486fdc6d184', 'en', 'ee0d8fda371736eacf8ceefb5f54ec9f', 'Choose your plan', 0),
(13138, '64486fdc6d22c', 'en', 'c4903c05b2ffab5f5889945dc7cb50c7', 'We offer competitive rates and pricing plans to help you find one that fits the needs and budget of your business.', 0),
(13139, '64486fdc6d2c2', 'en', 'df430c1374f6394e4da8223343b7d006', 'Most popular', 0),
(13140, '64486fdc6d34e', 'en', 'fc2b9c465fcf3af8429152be64288754', '/ month', 0),
(13141, '64486fdc6d3d7', 'en', '69a5af00de2c5efab02c93a5676e70a4', 'No support', 0),
(13142, '64486fdc6d463', 'en', 'c1f52fba179ff982b10e3881670b61ef', 'Buy Now', 0),
(13143, '64486fdc6d4ed', 'en', 'd913a8dce67e7616c9f6633f7d0457d8', 'Our Happy Clients', 0),
(13144, '64486fdc6d576', 'en', 'ebf8d62feb8188b20a6f1b656ac537b1', 'Our customers love us!', 0),
(13145, '64486fdc6d627', 'en', '36c04515577b0e9fd08dde32c0b4ca97', 'Easy scheduling, simple time saving and lots of features rich', 0),
(13146, '64486fdc6d6b8', 'en', 'd4c25034f4412ffa82b3388b8eddd773', '- Ara A.', 0),
(13147, '64486fdc6d749', 'en', 'b9f331929adaa36ab1da1ef96db366fb', 'CEO & Founder, General Motors', 0),
(13148, '64486fdc6d7d5', 'en', '72175b7d12b99c58e6e963c1048bab05', 'Very well organized tool with stunning high quality design. Thank you so much!', 0),
(13149, '64486fdc6d881', 'en', 'a2affc90760bca4736b33f79ee954dcd', '- Nev W.D95.', 0),
(13150, '64486fdc6d916', 'en', '1616ba1f471a78cf0f2f7fc7951573bc', 'Product Designer', 0),
(13151, '64486fdc6d9a2', 'en', '4e8ec0734a0d07224b03866b2074f82f', 'This tool has made sharing our story and building our brand on social media so much easier.', 0),
(13152, '64486fdc6da51', 'en', 'b559a3f9a873fb77a100353248c72a0d', '- Scarlett D.', 0),
(13153, '64486fdc6dadd', 'en', 'b84b9a8af6ff4cc07659d45cb2396388', 'SEO leader', 0),
(13154, '64486fdc6db67', 'en', 'be2dec5b6d65345364d5812ffb45a372', 'This platform is a wonderful tool. The service team is serious, professional and quickly.', 0),
(13155, '64486fdc6dbf1', 'en', '3bfbad4ad7143671840287a7bb97dc67', '- Emily M.', 0),
(13156, '64486fdc6dca3', 'en', '8b69d2c8faf9005f38680709b1ceea35', 'Marketing Manager', 0),
(13157, '64486fdc6dd3e', 'en', 'ebdf0f490b617d7efa3025d3625cec85', 'Welcome back', 0),
(13158, '64486fdc6dde6', 'en', '702aa2223b154567629df05ef5f26bef', 'Sign in to your Account', 0),
(13159, '64486fdc6de76', 'en', '4ed69a21c6fa416095d9427a8208aebb', 'Enter username or email', 0),
(13160, '64486fdc6df01', 'en', 'e857817b07c27f3c57caa6c40f7499d4', 'Remember Me', 0),
(13161, '64486fdc6df8c', 'en', '01a569ddc6cf67ddec2a683f0a5f5956', 'Forgot your password?', 0),
(13162, '64486fdc6e013', 'en', 'a5f61298da21626d0f490ebd06ecd811', 'Don\'t have an account?', 0),
(13163, '64486fdc6e0a1', 'en', 'd67850bd126f070221dcfd5fa6317043', 'Sign Up', 0),
(13164, '64486fdc6e12d', 'en', '9e09f7378eb0ed677fbeeb60d63f74f6', 'Or Log in with', 0),
(13165, '64486fdc6e1d6', 'en', '2e8243aa68e5b604be13c4d9b98c7467', 'Login with Google', 0),
(13166, '64486fdc6e267', 'en', 'c936c0db0aa270c7aff9662323caff3c', 'Login with Facebook', 0),
(13167, '64486fdc6e2f3', 'en', '87c32c93590347aea0c93780841cd257', 'Login with Twitter', 0),
(13168, '64486fdc6e37d', 'en', 'e22ac25b066b201473de7aa700ef5d92', 'Pricing', 0),
(13169, '64486fdc6e405', 'en', 'd6b9ea32b921a9f56de32062ba4b94f3', 'Blogs', 0),
(13170, '64486fdc6e48f', 'en', '3a0c89d4f36e3f5ba1932526861f2fce', 'Helping you execute a comprehensive marketing plan, manage your brands by scheduling your posts to optimize performance on many social media platforms', 0),
(13171, '64486fdc6e518', 'en', '7298e4abc5483d6bfd7a0ec46ba8bdd6', 'Quick links', 0),
(13172, '64486fdc6e5be', 'en', '80919be0413cba91ea1c240ca12ee13a', 'Signup', 0),
(13173, '64486fdc6e650', 'en', '831d44552f2142638681102ef1ec0bf1', 'Useful Links', 0),
(13174, '64486fdc6e6dc', 'en', '2bb6c7aa78cdcfbe5e883cbdbab676a7', 'Socials', 0),
(13175, '64486fdc6e766', 'en', '0f6d0610f267e1ef5741f59b70162560', '© Copyright 2023. All Rights Reserved', 0),
(13176, '64486fdc6e7f0', 'en', '514cf7ff46d4ee73104d1ac4d92fd043', 'Cookies & Privacy', 0),
(13177, '64486fdc6e879', 'en', 'c823b2e4d166d2f55b3516daac49dd25', 'We use cookies to ensure that we give you the best experience on our website. By clicking Accept or continuing to use our site, you consent to our use of cookies and our privacy policy. For more information, please read our privacy policy.', 0),
(13178, '64486fdc6e903', 'en', '43e99e83e1af8b98aaf4200599d6b6a1', 'Accept cookies', 0),
(13179, '64486fdc6e9af', 'en', '7f528898e51b988dd770518511aff6dd', 'Customize cookies', 0),
(13180, '64486fdc6ea43', 'en', 'ab066b3292d8ab61ef3b5c77169cdd19', 'More information', 0),
(13181, '64486fdc6eacd', 'en', 'e77b818ce16f25eee3b0856b76a1b164', 'The Best Solution', 0),
(13182, '64486fdc6eb56', 'en', '36c50a61062198424098cc2281636e34', '#1 Marketing Platform for Social Network', 0),
(13183, '64486fdc6ebde', 'en', '059c19b1a3f408b89ea254ba48e02384', 'START A FREE TRIAL', 0),
(13184, '64486fdc6ec68', 'en', 'fc46f6383e012278263fd788d9b198ad', 'Discover more', 0),
(13185, '64486fdc6ecf2', 'en', '411d4ef7988d1a4d0621c435f61aa0d5', 'All-in-one social media posting and scheduling tool', 0),
(13186, '64486fdc6ed9e', 'en', '628577157a842535e9331c8c7f06564d', 'The Best Features', 0),
(13187, '64486fdc6ee2e', 'en', '777dfe12677ee343905c520f3a6093ae', 'Schedule posts', 0),
(13188, '64486fdc6eeb9', 'en', 'f24a116be7893bed04cd0293825d3854', 'Select your date, time or whenever you want to publish on each your social accounts. A few clicks to complete and enjoy', 0),
(13189, '64486fdc6ef42', 'en', '1c673827f58ce9caf3692e421991baf2', 'Analytics performance', 0),
(13190, '64486fdc6efcc', 'en', '1bc20a6b055d810db90d16f4be720ae3', 'You can see all your posts how it work and increase does. It will help you control your audiences and getting more target', 0),
(13191, '64486fdc6f055', 'en', 'bc1245b2f0faffe8a704227745168e52', 'Bulk post scheduling makes daily posting effortless, you will know exactly how many and when posts will publish on your social media', 0),
(13192, '64486fdc6f0de', 'en', '35a599f0a73067e8b33642b0fa08f63a', 'No downloads', 0),
(13193, '64486fdc6f187', 'en', '191b476862fc32fc11776ab0b4655577', 'You can use our service straight from the web on all browsers. You don\'t need to download or install anything to enjoy our service', 0),
(13194, '64486fdc6f21a', 'en', '6eb362a11a6a4a90a2990e0ca45c2a9e', 'The Bright Features', 0),
(13195, '64486fdc6f2a9', 'en', '7b4e33b400263c87511d4c00468d70f0', 'Increase your online business with our plaftform', 0),
(13196, '64486fdc6f335', 'en', 'd6a008fe8c5c68e4341f9d4efa34a2f7', 'Social Media definitely has the power to reach millions of people all around the globe. We all looking for a way to have a bigger impact on social media and specially in less time.', 0),
(13197, '64486fdc6f3bf', 'en', '907eb04f678d74187307f6fb5c6d5c9c', 'Coordinate creative campaigns to drive engagement on social.', 0),
(13198, '64486fdc6f449', 'en', 'f1c3d6ad483775b65373011b29354fb8', 'Get in-depth insights to grow your reach, engagement, and sales.', 0),
(13199, '64486fdc6f4d1', 'en', '25c964a70c6afa8e90d9abab0f6083c5', 'Engage & build a community that loves your brand.', 0),
(13200, '64486fdc6f581', 'en', '2bbb3be676413332df337573f5fbf730', 'Monitor engagement across all your social channels.', 0),
(13201, '64486fdc6f610', 'en', 'e0c4332e8c13be976552a059f106354f', 'Get Started', 0),
(13202, '64486fdc6f69a', 'en', 'f36745467bcac6f7e5b9fec3c2c02497', 'Start your free trial - No contract - No credit card', 0),
(13203, '64486fdc6f723', 'en', 'b9b68dceb6a2b28dc352924fde795a20', 'What are you waiting for? Let us help you succeed', 0),
(13204, '64486fdc6f7ac', 'en', 'f11b368cddfe37c47af9b9d91c6ba4f0', 'Full name', 0),
(13205, '64486fdc6f835', 'en', '5f5a437935e0f86107dd9339a2fa3f65', 'Try for free', 0),
(13206, '64486fdc6f8be', 'en', '34df5e4d91feba83174247ae1c412577', 'Why Choose Us', 0),
(13207, '64486fdc6f969', 'en', 'f311e14ff1b91f5693153c94826baa37', 'A complete solution for your social marketing & save your time', 0),
(13208, '64486fdc6f9f9', 'en', '465f6bf1f6699e5748b42ed64241ad25', 'With an intuitive interface and a lot of extra features to help you create articles that are interesting and easier.', 0),
(13209, '64486fdc6fa82', 'en', 'ca7781605eb720a38f0761cc27aad5e7', 'Fully integrated with the best image uploading and editing current files', 0),
(13210, '64486fdc6fb0c', 'en', 'ee20bb60493f049175fc10c35acd2272', 'Watermark', 0),
(13211, '64486fdc6fb9a', 'en', 'bb78ef11ae67d8357867c8040799f3a5', 'Easily add watermark to your images with intuitive interface', 0),
(13212, '64486fdc6fc27', 'en', '8badcac1b268560c6983cc8bb3e164bc', 'Managing all of your accounts in groups saves you time.', 0),
(13213, '64486fdc6fcb0', 'en', '77d35a05a8e8301e20e20c74e689c772', 'View Other Features', 0),
(13214, '64486fdc6fd66', 'en', 'f3270361f5db56a4f2277d17a957b0d8', 'Contact us to discuss the goals for your brand', 0),
(13215, '64486fdc6fdf7', 'en', '08d6d749b0e20e3e9dcf98cf84891905', 'Our clients praise us for our great results, personable service and expert knowledge. </br>Here are what just a few of them had to say.', 0),
(13216, '64486fdc6fe82', 'en', '6a1a6f02f834d83922ae3edfc0d44173', 'FAQS', 0),
(13217, '64486fdc6ff0b', 'en', '5405d8a903c83e89cb649f1b518ef1be', 'Frequently Asked Questions', 0),
(13218, '64486fdc6ff96', 'en', 'bea8f626f1f03ba2034fd1b8b95be6dd', 'Getting more information about our platform that will help you get all benefits from us. These all questions are asked for the first time', 0),
(13219, '64486fdc70020', 'en', '2408adb7a6613ab65643508fc1e88fd3', 'View Other FAQs', 0),
(13220, '64486fdc700a8', 'en', '5a4113ab73e6130652aae1cdd571f81a', 'Our Latest blog', 0),
(13221, '64486fdc70156', 'en', 'b2aca8602830ec5c7301085d55dcc024', 'Latest news and guides', 0),
(13222, '64486fdc701e6', 'en', 'c3f45eff3a34e8d7327b22c7ff76d532', 'We will help you that planning and scheduling your posts to analyze and optimize performance on many social media platforms.', 0),
(13223, '64486fdc70271', 'en', '9ec54ec336b65da6179cf750de33ecd7', 'Forgot Password', 0),
(13224, '64486fdc702fb', 'en', 'c9b8bdd10fe20ae3b93cc16da8665127', 'To continue first verify it\'s you', 0),
(13225, '64486fdc70385', 'en', '3ced0c9fcf81f4b8a38804b0256acbbd', 'With our service will help you save time and optimize profile management on social networks. Visually Plan, Schedule post and automation on social networks.', 0),
(13226, '64486fdc70411', 'en', '65a0917f3be9cb7d160b86aa4600cfda', 'Bulk post scheduling makes daily posting effortless, you will know exactly how many and when posts will publish on your social media.', 0),
(13227, '64486fdc704a0', 'en', '3f32aa23bccb10ab09157653d3c5cf0b', 'General Features', 0),
(13228, '64486fdc7054f', 'en', '534ca52553f3bb57ecc90a57f8415ffa', 'Integrate scheduling easily', 0),
(13229, '64486fdc705de', 'en', 'c383781681cc3f27325ca2296d6f8ebf', 'Save time and streamline your social media management by importing and scheduling multiple posts across various profiles and networks simultaneously. Plan ahead by queuing up posts in advance.', 0),
(13230, '64486fdc70668', 'en', '5246b04bdf01152535a57dae331f4260', 'Optimize results', 0),
(13231, '64486fdc706f2', 'en', 'd7c6ddbd5c77a024fd42c0b0df7b5cdc', 'Streamline your content publishing process and improve your outcomes by leveraging scheduling and monitoring tools that automatically publish content during the times most likely to engage your audience.', 0),
(13232, '64486fdc7077d', 'en', '2e681c460c32a22cc77cf80593a560a8', 'Image and Video Library', 0),
(13233, '64486fdc70808', 'en', '65a89abb4ad336a51560c03fe6508fe4', 'Add videos and images from platforms like Google Drive, Dropbox, One Drive and Adobe Express to your creative process in order to create visually engaging social media posts.', 0),
(13234, '64486fdc70892', 'en', 'dad7126a6c6f059960abce6a3246a580', 'Additional account settings', 0),
(13235, '64486fdc70969', 'en', '5cd2a4ff4bde651315cb6c4e3ec20799', 'Under the New Post tab in Settings, you\'ll find an option for Social Accounts. This is separate from the tab, where you\'ll find a lot of preferences related to how each account operates on its platform.', 0),
(13236, '64486fdc709ff', 'en', '929b311110fa64905f451e2df4484f6d', 'Preview Post', 0),
(13237, '64486fdc70a8b', 'en', 'adfb1fd7bb89f4737dce9e085d754d3b', 'View the post before it is published on your social accounts. It is safer to preview your post and verify how your post looks on social platforms. You can edit or change the post as per your need after previewing.', 0),
(13238, '64486fdc70b16', 'en', '7a88d0816ae22415bc9169dfd9d13753', 'Extra Features', 0),
(13239, '64486fdc70ba0', 'en', '9f692bb873807c0137cf61a042826d39', 'Various Options for Media, Links and Text', 0),
(13240, '64486fdc70c2b', 'en', '815dc755a4de6328cf8128750f8f8d08', 'There are several types of posts that can be created on Stackposts such as Images, Videos, Links and text.', 0),
(13241, '64486fdc70d26', 'en', 'ece18e1d9817b4f7ace6f26898b08431', 'Save and edit drafts', 0),
(13242, '64486fdc70de3', 'en', '2a1a04c626bd3237d5a8249afe4b2a8d', 'Keep your content ideas safe by saving drafts from the Composer whenever you want, enabling you to perfect and publish them later.', 0),
(13243, '64486fdc70e87', 'en', '0c44cee2038a3602c1b84313cfbc3226', 'Save & Get Captions', 0),
(13244, '64486fdc70f19', 'en', '7d2c588478c98ed7e9660b22508999aa', 'Save your content with Captions Feature that you plan to use repetitively in your social media posts that you regularly use are particularly good to be saved as captions. Sometimes, you can organize your hashtags, and links and then get them when you compose a new post.', 0),
(13245, '64486fdc70fa4', 'en', '78369106789efa046c353c045f5bc6de', 'Photo Editor', 0),
(13246, '64486fdc7102e', 'en', '9ea25649d30e82f628de6ef4e58e12ef', 'Produce attention-grabbing, remarkable, shareable, and stunning images with Image Editor which is integrated with Adobe Express. Upon initial image selection, you can edit and enhance your photo before publishing it to your selected network. Additionally, use the intelligent cropping tools to ensure optimal sizing based on network preference.', 0),
(13247, '64486fdc710de', 'en', '9d5dbfc6b7e2e7c1462e98d1010771c6', 'Shortening URLs becomes essential when you have to share long and complicated web links on social media platforms that have character limitations.', 0),
(13248, '64486fdc7116e', 'en', '8b848d3126447e38f30be575afbaaeba', 'It can be used to generate high-quality content for social media posts with captions.', 0),
(13249, '64486fdc711f8', 'en', 'b6d2dd18a545b11b81eb20f7511a9c8e', 'More Features', 0),
(13250, '64486fdc71282', 'en', '6eeea7b1c038feb51988f50afa28eab7', 'Get more benefits', 0),
(13251, '64486fdc7130c', 'en', '44c5fb10c845e96a38e0660ec1cd442c', 'You are all looking for a way to have a bigger impact on social media and especially in less time. We help you get better features in one platform.', 0),
(13252, '64486fdc71396', 'en', '1ab67f5e7ec1634687355a5eb6bda98c', 'Image Editor support', 0),
(13253, '64486fdc7141f', 'en', '091c195b07f09674b5208c967a0f019a', 'Cloud import: Google Drive, Dropbox, One Drive', 0),
(13254, '64486fdc714cd', 'en', '0a81414a79e9f53830aea176c499804f', 'File type: Photo, Video, PDF', 0),
(13255, '64486fdc7155c', 'en', '93cd073b76a25f1a2016c82ac74016d1', 'Login & Signup with Facebook, Google, Twitter', 0),
(13256, '64486fdc715e8', 'en', '26281e11ede049523f09994700358bdc', 'The latest articles from our content team will help you update news and reports instantly.', 0),
(13257, '64486fdc71670', 'en', 'e221d5bda5191d3c838655960b0149a8', 'Share:', 0),
(13258, '64486fdc716f8', 'en', '1442ecba6ac5cec2f358204a6b00924a', 'Recent Post', 0),
(13259, '64486fdc71786', 'en', '9c6bea81acbb783ec5e96ed1e224dbff', 'Fairground St. North Bergen, NJ', 0),
(13260, '64486fdc71811', 'en', '281da33d7ab58c4125ea8fc92bf965f8', '+91 123 456 7890', 0),
(13261, '64486fdc718bd', 'en', 'c91cc1f61600d3035c189c60f30fee2f', 'letstalk@example.com', 0),
(13262, '64486fdc7194d', 'en', '5320722a805b8641157aa327a1bdf171', 'Fast, Efficient and Productive', 0),
(13263, '64486fdc719d8', 'en', 'cae480da29efbbe99296c99f17395440', 'Activation successful', 0),
(13264, '64486fdc71a64', 'en', 'd0adce40bd8e821a11126aac2f65d139', 'Thank you for choosing us. Sign in and get started.', 0),
(13265, '64486fdc71aee', 'en', '997c5ccdc91b4acbbb6838d3a65323d3', 'Activation unsuccessful', 0),
(13266, '64486fdc71b75', 'en', '15cade843fae2cc59c730b5405c3f8ba', 'Incorrect or invalid activation code', 0),
(13267, '64486fdc71bfd', 'en', 'ce9039a6db6e27c931ae75f5c0bf0849', 'Stackgo', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sp_language_category`
--

CREATE TABLE `sp_language_category` (
  `id` int(11) NOT NULL,
  `ids` varchar(32) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `dir` varchar(3) NOT NULL,
  `is_default` int(1) DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sp_language_category`
--

INSERT INTO `sp_language_category` (`id`, `ids`, `name`, `code`, `icon`, `dir`, `is_default`, `status`) VALUES
(9, '64486fdc1c92e', 'English', 'en', 'flag-icon flag-icon-us', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sp_options`
--

CREATE TABLE `sp_options` (
  `id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `value` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sp_options`
--

INSERT INTO `sp_options` (`id`, `name`, `value`) VALUES
(157, 'sidebar_icon_color', '0'),
(158, 'frontend_template', 'Stackgo'),
(159, 'facebook_client_id', ''),
(160, 'facebook_client_secret', ''),
(161, 'facebook_app_version', 'v16.0'),
(162, 'instagram_client_id', ''),
(163, 'instagram_client_secret', ''),
(164, 'instagram_app_version', 'v16.0'),
(165, 'instagram_official_status', '0'),
(166, 'twitter_consumer_key', ''),
(167, 'twitter_consumer_secret', ''),
(168, 'base_url', 'https://sm.bridemoon.net'),
(169, 'beamer_status', '0'),
(170, 'landing_page_status', '1'),
(171, 'website_keyword', 'social network, marketing, brands, businesses, agencies, individuals'),
(172, 'website_description', 'Let start to manage your social media so that you have more time for your business.'),
(173, 'website_title', '#1 Social Media Management & Analysis Platform'),
(174, 'website_favicon', '/assets/img/favicon.svg'),
(175, 'website_logo_light', '/assets/img/logo-light.svg'),
(176, 'signup_status', '1'),
(177, 'website_logo_color', '/assets/img/logo-color.svg'),
(178, 'social_page_facebook', ''),
(179, 'social_page_twitter', ''),
(180, 'social_page_pinterest', ''),
(181, 'social_page_youtube', ''),
(182, 'social_page_instagram', ''),
(183, 'gdpr_status', '1'),
(184, 'payment_symbol', '$'),
(185, 'google_recaptcha_status', '0'),
(186, 'google_login_status', '0'),
(187, 'facebook_login_status', '0'),
(188, 'twitter_login_status', '0'),
(189, 'format_date', 'd/m/Y'),
(190, 'shortlink_bitly_status', ''),
(191, 'theme_color', 'light'),
(192, 'format_datetime', 'd/m/Y g:i A'),
(193, 'sidebar_type', 'sidebar-small'),
(194, 'website_logo_mark', '/assets/img/logo.svg'),
(195, 'poupup_nofification_backend_status', '0'),
(196, 'embed_code_status', '1'),
(197, 'embed_code', ''),
(198, 'license_22051913', ''),
(199, 'pinterest_app_id', ''),
(200, 'pinterest_app_secret', ''),
(201, 'license_21965688', ''),
(202, 'license_43015299', ''),
(203, 'gmb_client_id', ''),
(204, 'gmb_api_secret', ''),
(205, 'gmb_api_key', ''),
(206, 'coinpayments_status', '0'),
(207, 'coinpayments_public_coin', 'BTC'),
(208, 'coinpayments_public_key', ''),
(209, 'coinpayments_private_key', ''),
(210, 'coinpayments_merchant_id', ''),
(211, 'coinpayments_ipn_secrect', ''),
(212, 'payment_environment', '0'),
(213, 'email_payment_success', '0'),
(214, 'email_payment_renewal_reminders', '0'),
(215, 'payment_currency', 'USD'),
(216, 'paypal_one_time_status', '0'),
(217, 'paypal_recurring_status', '0'),
(218, 'paypal_client_id', ''),
(219, 'paypal_client_secret_key', ''),
(220, 'paypal_webhook_id', ''),
(221, 'stripe_one_time_status', '0'),
(222, 'stripe_recurring_status', '0'),
(223, 'stripe_publishable_key', ''),
(224, 'stripe_secret_key', ''),
(225, 'stripe_webhook_id', ''),
(226, 'site_icon_color', '#006dff'),
(227, 'activation_email_status', '0'),
(228, 'welcome_email_status', '0'),
(229, 'accept_change_email', '1'),
(230, 'accept_change_username', '1'),
(231, 'signup_phone_number', '0'),
(232, 'google_recaptcha_site_key', ''),
(233, 'google_recaptcha_secret_key', ''),
(234, 'facebook_login_app_id', ''),
(235, 'facebook_login_app_secret', ''),
(236, 'facebook_login_app_version', 'v16.0'),
(237, 'google_login_client_id', ''),
(238, 'google_login_client_secret', ''),
(239, 'twitter_login_client_id', ''),
(240, 'twitter_login_client_secret', ''),
(241, 'fm_medias_per_page', '36'),
(242, 'fm_allow_extensions', 'jpeg,gif,png,jpg,mp4,csv,pdf,mp3'),
(243, 'fm_allow_upload_via_url', '1'),
(244, 'fm_adobe_status', '0'),
(245, 'fm_adobe_client_id', ''),
(246, 'fm_google_drive_status', '0'),
(247, 'fm_google_api_key', ''),
(248, 'fm_google_client_id', ''),
(249, 'fm_google_dropbox_status', '0'),
(250, 'fm_dropbox_api_key', ''),
(251, 'fm_google_onedrive_status', '0'),
(252, 'fm_onedrive_api_key', ''),
(253, 'beamer_product_id', ''),
(254, 'poupup_nofification_id_backend', '64486f5266f27'),
(255, 'poupup_nofification_repeat_backend', '60'),
(256, 'poupup_nofification_backend', ''),
(257, 'poupup_nofification_frontend_status', '0'),
(258, 'poupup_nofification_id_frontend', '64486f5268817'),
(259, 'poupup_nofification_repeat_frontend', '60'),
(260, 'poupup_nofification_frontend', ''),
(261, 'openai_status', '0'),
(262, 'openai_api_key', ''),
(263, 'http_to_https_status', '0'),
(264, 'terms_of_use', ''),
(265, 'privacy_policy', ''),
(266, 'website_logo_black', '/assets/img/logo-black.svg'),
(267, 'shortlink_bitly_client_id', ''),
(268, 'shortlink_bitly_client_secret', ''),
(269, 'social_page_tiktok', ''),
(270, 'mail_template', 'Dora'),
(271, 'activation_email_subject', 'Olá {fullname}! Ative sua Conta'),
(272, 'activation_email_content', '&lt;p&gt;Seja bem vindo ao {website_name}!&amp;nbsp;&lt;br&gt;&lt;br&gt;Ol&amp;aacute; {fullname}, &lt;br&gt;&lt;br&gt;Obrigado por se cadastrar! Estamos felizes em t&amp;ecirc;-lo como membro da plataforma e estamos prontos para voc&amp;ecirc; come&amp;ccedil;ar a explorar nossos servi&amp;ccedil;os.&lt;br&gt;Tudo o que voc&amp;ecirc; precisa fazer &amp;eacute; ativar sua conta:&lt;br&gt;&lt;a href=&quot;/{activation_link}&quot; target=&quot;_blank&quot; rel=&quot;noopener&quot;&gt;{Link de Ativa&amp;ccedil;&amp;atilde;o}&lt;/a&gt; &lt;br&gt;&lt;br&gt;Obrigado e receba nossos cumprimentos!&lt;/p&gt;'),
(273, 'welcome_email_subject', 'Olá {fullname}! Instruções para Usar a Plataforma'),
(274, 'welcome_email_content', '&lt;p&gt;Ol&amp;aacute; {fullname}! &lt;br&gt;&lt;br&gt;Parab&amp;eacute;ns!&lt;br&gt;&lt;br&gt;Voc&amp;ecirc; se cadastrou com sucesso em nossa plataforma.&lt;br&gt;Voc&amp;ecirc; tem um pacote de teste, come&amp;ccedil;ando hoje.&lt;br&gt;Esperamos que voc&amp;ecirc; goste deste pacote! N&amp;oacute;s gostariamos de receber seu feedback,&lt;/p&gt;\r\n&lt;p&gt;???? &lt;a title=&quot;Acessar Plataforma&quot; href=&quot;/&quot;&gt;{Acesse Agora a Plataforma}&lt;/a&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;br&gt;Obrigado e receba nossos cumprimentos!&lt;/p&gt;'),
(275, 'forgot_password_email_subject', 'Olá {fullname}! Recupere sua Senha'),
(276, 'email_forgot_password_content', 'Hi {fullname}! <br/><br/>Somebody (hopefully you) requested a new password for your account. <br/>No changes have been made to your account yet. <br/><br/>You can reset your password by click this link: <br/><a href=\'{recovery_password_link}\' target=\'_blank\'>{recovery_password_link}</a>. <br/><br/>If you did not request a password reset, no further action is required. <br/><br/>Thanks and Best Regards!'),
(277, 'renewal_reminders_email_subject', 'Hi {fullname}, Here\'s a little Reminder your Membership is expiring soon...'),
(278, 'renewal_reminders_email_content', 'Dear {fullname}, <br/><br/>Your membership with your current package will expire in {days_left} days. <br/><br/>We hope that you will take the time to renew your membership and remain part of our community. It couldn\'t be easier - just click here to renew: {pricing_page} <br/><br/>Thanks and Best Regards!'),
(279, 'payment_success_email_subject', 'Hi {fullname}, Thank you for your payment'),
(280, 'payment_success_email_content', 'Hi {fullname}, <br/><br/>You just completed the payment successfully on our service. <br/>Thank you for being awesome, we hope you enjoy your package. <br/><br/>Thanks and Best Regards!'),
(281, 'sender_protocol', '1'),
(282, 'sender_email', 'example@gmail.com'),
(283, 'sender_name', 'Stackposts'),
(284, 'license', ''),
(285, 'forgot_password_email_content', '&lt;p&gt;Ol&amp;aacute; {fullname}! &lt;br&gt;&lt;br&gt;Algu&amp;eacute;m (espero que voc&amp;ecirc;) solicitou uma nova senha para sua conta.&lt;br&gt;Nenhuma altera&amp;ccedil;&amp;atilde;o foi feita em sua conta ainda.&lt;/p&gt;\r\n&lt;p&gt;&lt;br&gt;Voc&amp;ecirc; pode mudar sua senha acessando este link:&amp;nbsp;&lt;br&gt;&lt;a href=&quot;/{recovery_password_link}&quot; target=&quot;_blank&quot; rel=&quot;noopener&quot;&gt;{Recuperar Senha Agora}&lt;/a&gt;. &lt;br&gt;&lt;br&gt;Se voc&amp;ecirc; n&amp;atilde;o solicitou uma redefini&amp;ccedil;&amp;atilde;o de senha, nenhuma outra a&amp;ccedil;&amp;atilde;o ser&amp;aacute; necess&amp;aacute;ria.&lt;br&gt;&lt;br&gt;Obrigado,&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Social Bomber&lt;/strong&gt;&lt;/p&gt;'),
(286, 'facebook_group_permissions', 'publish_to_groups'),
(287, 'facebook_page_permissions', 'pages_read_engagement,pages_manage_posts,pages_show_list'),
(288, 'facebook_profile_status', '0'),
(289, 'facebook_profile_permissions', ''),
(290, 'instagram_permissions', 'instagram_basic,instagram_content_publish,pages_read_engagement'),
(291, 'pinterest_official', '1'),
(292, 'pinterest_unofficial', '1'),
(293, 'pinterest_environment', '0');

-- --------------------------------------------------------

--
-- Table structure for table `sp_payment_history`
--

CREATE TABLE `sp_payment_history` (
  `id` int(11) NOT NULL,
  `ids` varchar(32) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `plan` int(11) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `by` int(1) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `created` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sp_payment_subscriptions`
--

CREATE TABLE `sp_payment_subscriptions` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `plan` int(11) DEFAULT NULL,
  `by` int(1) DEFAULT NULL,
  `type` text DEFAULT NULL,
  `subscription_id` text DEFAULT NULL,
  `customer_id` text DEFAULT NULL,
  `created` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sp_plans`
--

CREATE TABLE `sp_plans` (
  `id` int(11) UNSIGNED NOT NULL,
  `ids` varchar(32) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `price_monthly` float DEFAULT NULL,
  `price_annually` float DEFAULT NULL,
  `plan_type` int(1) DEFAULT NULL,
  `number_accounts` int(11) DEFAULT NULL,
  `trial_day` float DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `permissions` mediumtext DEFAULT NULL,
  `data` mediumtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sp_plans`
--

INSERT INTO `sp_plans` (`id`, `ids`, `name`, `description`, `type`, `price_monthly`, `price_annually`, `plan_type`, `number_accounts`, `trial_day`, `featured`, `position`, `permissions`, `data`, `status`) VALUES
(1, 'de39a2bd850', 'Free & Trial', 'Try us out today', 1, 0, 0, 1, 100, -1, 0, 0, '{\"dashboard\":\"1\",\"post\":\"1\",\"facebook_post\":\"1\",\"google_business_profile_post\":\"1\",\"instagram_post\":\"1\",\"linkedin_post\":\"1\",\"ok_post\":\"1\",\"pinterest_post\":\"1\",\"reddit_post\":\"1\",\"telegram_post\":\"1\",\"tumblr_post\":\"1\",\"twitter_post\":\"1\",\"vk_post\":\"1\",\"youtube_post\":\"1\",\"bulk_post\":\"1\",\"rss_post\":\"1\",\"analytics\":\"1\",\"facebook_analytics\":\"1\",\"instagram_analytics\":\"1\",\"twitter_analytics\":\"1\",\"whatsapp\":\"1\",\"whatsapp_profile\":\"1\",\"whatsapp_bulk\":\"1\",\"whatsapp_autoresponder\":\"1\",\"whatsapp_chatbot\":\"1\",\"whatsapp_export_participants\":\"1\",\"whatsapp_contact\":\"1\",\"whatsapp_api\":\"1\",\"whatsapp_button_template\":\"1\",\"whatsapp_list_message_template\":\"1\",\"whatsapp_send_media\":\"1\",\"whatsapp_autoresponser_delay\":\"1\",\"whatsapp_chatbot_item_limit\":\"200\",\"whatsapp_bulk_schedule_by_times\":\"1\",\"whatsapp_bulk_max_run\":\"1000\",\"whatsapp_bulk_max_contact_group\":\"1000\",\"whatsapp_bulk_max_phone_numbers\":\"600000\",\"whatsapp_message_per_month\":\"1000000\",\"drafts\":\"1\",\"schedules\":\"1\",\"account_manager\":\"1\",\"whatsapp_profiles\":\"1\",\"facebook_profiles\":\"1\",\"facebook_groups\":\"1\",\"facebook_pages\":\"1\",\"instagram_profiles\":\"1\",\"twitter_profiles\":\"1\",\"youtube_profiles\":\"1\",\"google_business_profiles\":\"1\",\"linkedin_profiles\":\"1\",\"linkedin_pages\":\"1\",\"pinterest_boards\":\"1\",\"pinterest_profiles\":\"1\",\"reddit_profiles\":\"1\",\"tumblr_blogs\":\"1\",\"telegram_channels\":\"1\",\"telegram_groups\":\"1\",\"ok_groups\":\"1\",\"vk_profiles\":\"1\",\"vk_pages\":\"1\",\"vk_groups\":\"1\",\"file_manager\":\"1\",\"file_manager_google_drive\":\"1\",\"file_manager_dropbox\":\"1\",\"file_manager_onedrive\":\"1\",\"file_manager_photo\":\"1\",\"file_manager_video\":\"1\",\"file_manager_other_type\":\"1\",\"file_manager_image_editor\":\"1\",\"max_storage_size\":\"10000\",\"max_file_size\":\"100\",\"tools\":\"1\",\"watermark\":\"1\",\"group_manager\":\"1\",\"caption\":\"1\",\"teams\":\"1\",\"proxies\":\"1\",\"shortlink\":\"1\",\"openai\":\"1\",\"openai_content\":\"1\",\"openai_image\":\"1\",\"openai_limit_tokens\":\"1000000\",\"plan_type\":1,\"number_accounts\":\"100\"}', NULL, 1),
(2, 'de39a2bd851', 'Standard', 'Affordable and accessible', 2, 29, 19, 2, 3, 0, 0, 5, '{\"dashboard\":\"1\",\"post\":\"1\",\"facebook_post\":\"1\",\"instagram_post\":\"1\",\"linkedin_post\":\"1\",\"ok_post\":\"1\",\"pinterest_post\":\"1\",\"reddit_post\":\"1\",\"telegram_post\":\"1\",\"tumblr_post\":\"1\",\"twitter_post\":\"1\",\"vk_post\":\"1\",\"youtube_post\":\"1\",\"bulk_post\":\"1\",\"rss_post\":\"1\",\"analytics\":\"1\",\"facebook_analytics\":\"1\",\"instagram_analytics\":\"1\",\"twitter_analytics\":\"1\",\"whatsapp\":\"1\",\"whatsapp_profile\":\"1\",\"whatsapp_bulk\":\"1\",\"whatsapp_autoresponder\":\"1\",\"whatsapp_chatbot\":\"1\",\"whatsapp_export_participants\":\"1\",\"whatsapp_contact\":\"1\",\"whatsapp_api\":\"1\",\"whatsapp_button_template\":\"1\",\"whatsapp_list_message_template\":\"1\",\"whatsapp_send_media\":\"1\",\"whatsapp_autoresponser_delay\":\"1\",\"whatsapp_chatbot_item_limit\":\"50\",\"whatsapp_bulk_schedule_by_times\":\"1\",\"whatsapp_bulk_max_run\":\"10\",\"whatsapp_bulk_max_contact_group\":\"50\",\"whatsapp_bulk_max_phone_numbers\":\"5000\",\"whatsapp_message_per_month\":\"50000\",\"drafts\":\"1\",\"schedules\":\"1\",\"account_manager\":\"1\",\"whatsapp_profiles\":\"1\",\"facebook_profiles\":\"1\",\"facebook_groups\":\"1\",\"facebook_pages\":\"1\",\"instagram_profiles\":\"1\",\"twitter_profiles\":\"1\",\"youtube_profiles\":\"1\",\"google_business_profiles\":\"1\",\"linkedin_profiles\":\"1\",\"linkedin_pages\":\"1\",\"pinterest_boards\":\"1\",\"pinterest_profiles\":\"1\",\"reddit_profiles\":\"1\",\"tumblr_blogs\":\"1\",\"telegram_channels\":\"1\",\"telegram_groups\":\"1\",\"ok_groups\":\"1\",\"vk_profiles\":\"1\",\"vk_pages\":\"1\",\"vk_groups\":\"1\",\"file_manager\":\"1\",\"file_manager_google_drive\":\"1\",\"file_manager_dropbox\":\"1\",\"file_manager_onedrive\":\"1\",\"file_manager_photo\":\"1\",\"file_manager_video\":\"1\",\"file_manager_other_type\":\"1\",\"file_manager_image_editor\":\"1\",\"max_storage_size\":\"100\",\"max_file_size\":\"2\",\"tools\":\"1\",\"watermark\":\"1\",\"group_manager\":\"1\",\"caption\":\"1\",\"teams\":\"1\",\"proxies\":\"1\",\"shortlink\":\"1\",\"openai\":\"1\",\"openai_content\":\"1\",\"openai_image\":\"1\",\"openai_limit_tokens\":\"1000\",\"plan_type\":2,\"number_accounts\":\"3\"}', NULL, 1),
(3, 'de39a2bd852', 'Premium', 'Elevate your experience', 2, 39, 29, 1, 6, 0, 1, 10, '{\"dashboard\":\"1\",\"post\":\"1\",\"facebook_post\":\"1\",\"google_business_profile_post\":\"1\",\"instagram_post\":\"1\",\"linkedin_post\":\"1\",\"ok_post\":\"1\",\"pinterest_post\":\"1\",\"reddit_post\":\"1\",\"telegram_post\":\"1\",\"tumblr_post\":\"1\",\"twitter_post\":\"1\",\"vk_post\":\"1\",\"youtube_post\":\"1\",\"bulk_post\":\"1\",\"rss_post\":\"1\",\"analytics\":\"1\",\"facebook_analytics\":\"1\",\"instagram_analytics\":\"1\",\"twitter_analytics\":\"1\",\"whatsapp\":\"1\",\"whatsapp_profile\":\"1\",\"whatsapp_bulk\":\"1\",\"whatsapp_autoresponder\":\"1\",\"whatsapp_chatbot\":\"1\",\"whatsapp_export_participants\":\"1\",\"whatsapp_contact\":\"1\",\"whatsapp_api\":\"1\",\"whatsapp_button_template\":\"1\",\"whatsapp_list_message_template\":\"1\",\"whatsapp_send_media\":\"1\",\"whatsapp_autoresponser_delay\":\"1\",\"whatsapp_chatbot_item_limit\":\"20\",\"whatsapp_bulk_schedule_by_times\":\"1\",\"whatsapp_bulk_max_run\":\"5\",\"whatsapp_bulk_max_contact_group\":\"5\",\"whatsapp_bulk_max_phone_numbers\":\"5000\",\"whatsapp_message_per_month\":\"10000\",\"drafts\":\"1\",\"schedules\":\"1\",\"account_manager\":\"1\",\"whatsapp_profiles\":\"1\",\"facebook_profiles\":\"1\",\"facebook_groups\":\"1\",\"facebook_pages\":\"1\",\"instagram_profiles\":\"1\",\"twitter_profiles\":\"1\",\"youtube_profiles\":\"1\",\"google_business_profiles\":\"1\",\"linkedin_profiles\":\"1\",\"linkedin_pages\":\"1\",\"pinterest_boards\":\"1\",\"pinterest_profiles\":\"1\",\"reddit_profiles\":\"1\",\"tumblr_blogs\":\"1\",\"telegram_channels\":\"1\",\"telegram_groups\":\"1\",\"ok_groups\":\"1\",\"vk_profiles\":\"1\",\"vk_pages\":\"1\",\"vk_groups\":\"1\",\"file_manager\":\"1\",\"file_manager_google_drive\":\"1\",\"file_manager_dropbox\":\"1\",\"file_manager_onedrive\":\"1\",\"file_manager_photo\":\"1\",\"file_manager_video\":\"1\",\"file_manager_other_type\":\"1\",\"file_manager_image_editor\":\"1\",\"max_storage_size\":\"500\",\"max_file_size\":\"5\",\"tools\":\"1\",\"watermark\":\"1\",\"group_manager\":\"1\",\"caption\":\"1\",\"teams\":\"1\",\"proxies\":\"1\",\"shortlink\":\"1\",\"openai\":\"1\",\"openai_content\":\"1\",\"openai_image\":\"1\",\"openai_limit_tokens\":\"10000\",\"plan_type\":1,\"number_accounts\":\"6\"}', NULL, 1),
(4, 'de39a2bd853', 'Entrepreneur', 'Your path to success', 2, 69, 59, 1, 10, 0, 0, 15, '{\"dashboard\":\"1\",\"post\":\"1\",\"facebook_post\":\"1\",\"google_business_profile_post\":\"1\",\"instagram_post\":\"1\",\"linkedin_post\":\"1\",\"ok_post\":\"1\",\"pinterest_post\":\"1\",\"reddit_post\":\"1\",\"telegram_post\":\"1\",\"tumblr_post\":\"1\",\"twitter_post\":\"1\",\"vk_post\":\"1\",\"youtube_post\":\"1\",\"bulk_post\":\"1\",\"rss_post\":\"1\",\"analytics\":\"1\",\"facebook_analytics\":\"1\",\"instagram_analytics\":\"1\",\"twitter_analytics\":\"1\",\"whatsapp\":\"1\",\"whatsapp_profile\":\"1\",\"whatsapp_bulk\":\"1\",\"whatsapp_autoresponder\":\"1\",\"whatsapp_chatbot\":\"1\",\"whatsapp_export_participants\":\"1\",\"whatsapp_contact\":\"1\",\"whatsapp_api\":\"1\",\"whatsapp_button_template\":\"1\",\"whatsapp_list_message_template\":\"1\",\"whatsapp_send_media\":\"1\",\"whatsapp_autoresponser_delay\":\"1\",\"whatsapp_chatbot_item_limit\":\"50\",\"whatsapp_bulk_schedule_by_times\":\"1\",\"whatsapp_bulk_max_run\":\"100\",\"whatsapp_bulk_max_contact_group\":\"100\",\"whatsapp_bulk_max_phone_numbers\":\"50000\",\"whatsapp_message_per_month\":\"100000\",\"drafts\":\"1\",\"schedules\":\"1\",\"account_manager\":\"1\",\"whatsapp_profiles\":\"1\",\"facebook_profiles\":\"1\",\"facebook_groups\":\"1\",\"facebook_pages\":\"1\",\"instagram_profiles\":\"1\",\"twitter_profiles\":\"1\",\"youtube_profiles\":\"1\",\"google_business_profiles\":\"1\",\"linkedin_profiles\":\"1\",\"linkedin_pages\":\"1\",\"pinterest_boards\":\"1\",\"pinterest_profiles\":\"1\",\"reddit_profiles\":\"1\",\"tumblr_blogs\":\"1\",\"telegram_channels\":\"1\",\"telegram_groups\":\"1\",\"ok_groups\":\"1\",\"vk_profiles\":\"1\",\"vk_pages\":\"1\",\"vk_groups\":\"1\",\"file_manager\":\"1\",\"file_manager_google_drive\":\"1\",\"file_manager_dropbox\":\"1\",\"file_manager_onedrive\":\"1\",\"file_manager_photo\":\"1\",\"file_manager_video\":\"1\",\"file_manager_other_type\":\"1\",\"file_manager_image_editor\":\"1\",\"max_storage_size\":\"1000\",\"max_file_size\":\"10\",\"tools\":\"1\",\"watermark\":\"1\",\"group_manager\":\"1\",\"caption\":\"1\",\"teams\":\"1\",\"proxies\":\"1\",\"shortlink\":\"1\",\"openai\":\"1\",\"openai_content\":\"1\",\"openai_image\":\"1\",\"openai_limit_tokens\":\"50000\",\"plan_type\":1,\"number_accounts\":\"10\"}', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sp_posts`
--

CREATE TABLE `sp_posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ids` varchar(32) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `social_network` varchar(100) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `function` varchar(50) NOT NULL,
  `api_type` int(1) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  `time_post` int(11) DEFAULT NULL,
  `delay` int(11) DEFAULT NULL,
  `repost_frequency` int(11) DEFAULT NULL,
  `repost_until` int(11) DEFAULT NULL,
  `result` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `changed` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sp_proxies`
--

CREATE TABLE `sp_proxies` (
  `id` int(11) UNSIGNED NOT NULL,
  `ids` varchar(32) DEFAULT NULL,
  `team_id` int(11) DEFAULT 0,
  `is_system` int(11) DEFAULT NULL,
  `proxy` varchar(255) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `limit` float DEFAULT NULL,
  `plans` varchar(255) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `changed` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sp_purchases`
--

CREATE TABLE `sp_purchases` (
  `id` int(11) NOT NULL,
  `ids` varchar(32) DEFAULT NULL,
  `item_id` varchar(32) DEFAULT NULL,
  `is_main` int(11) DEFAULT NULL,
  `purchase_code` varchar(64) DEFAULT NULL,
  `version` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sp_purchases`
--

INSERT INTO `sp_purchases` (`id`, `ids`, `item_id`, `is_main`, `purchase_code`, `version`) VALUES
(3, '6448678fdc7c1', '21747459', 1, 'xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx', '8.0.1'),
(4, '64486ee513904', '22051913', 0, 'xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx', '5.0.0'),
(5, '64486f034b5ef', '21965688', 0, 'xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx', '5.0.0'),
(6, '64486f170ecad', '43015299', 0, 'xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx', '5.0.0');

-- --------------------------------------------------------

--
-- Table structure for table `sp_smtp`
--

CREATE TABLE `sp_smtp` (
  `id` int(11) NOT NULL,
  `ids` varchar(32) DEFAULT NULL,
  `server` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `encryption` varchar(32) DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sp_team`
--

CREATE TABLE `sp_team` (
  `id` int(11) NOT NULL,
  `ids` mediumtext DEFAULT NULL,
  `owner` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `permissions` longtext DEFAULT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sp_team`
--

INSERT INTO `sp_team` (`id`, `ids`, `owner`, `pid`, `permissions`, `data`) VALUES
(1, '6448678fb7c59', 1, 1, '{\"dashboard\":\"1\",\"post\":\"1\",\"facebook_post\":\"1\",\"google_business_profile_post\":\"1\",\"instagram_post\":\"1\",\"linkedin_post\":\"1\",\"ok_post\":\"1\",\"pinterest_post\":\"1\",\"reddit_post\":\"1\",\"telegram_post\":\"1\",\"tumblr_post\":\"1\",\"twitter_post\":\"1\",\"vk_post\":\"1\",\"youtube_post\":\"1\",\"bulk_post\":\"1\",\"rss_post\":\"1\",\"analytics\":\"1\",\"facebook_analytics\":\"1\",\"instagram_analytics\":\"1\",\"twitter_analytics\":\"1\",\"whatsapp\":\"1\",\"whatsapp_profile\":\"1\",\"whatsapp_bulk\":\"1\",\"whatsapp_autoresponder\":\"1\",\"whatsapp_chatbot\":\"1\",\"whatsapp_export_participants\":\"1\",\"whatsapp_contact\":\"1\",\"whatsapp_api\":\"1\",\"whatsapp_button_template\":\"1\",\"whatsapp_list_message_template\":\"1\",\"whatsapp_send_media\":\"1\",\"whatsapp_autoresponser_delay\":\"1\",\"whatsapp_chatbot_item_limit\":\"200\",\"whatsapp_bulk_schedule_by_times\":\"1\",\"whatsapp_bulk_max_run\":\"1000\",\"whatsapp_bulk_max_contact_group\":\"1000\",\"whatsapp_bulk_max_phone_numbers\":\"600000\",\"whatsapp_message_per_month\":\"1000000\",\"drafts\":\"1\",\"schedules\":\"1\",\"account_manager\":\"1\",\"whatsapp_profiles\":\"1\",\"facebook_profiles\":\"1\",\"facebook_groups\":\"1\",\"facebook_pages\":\"1\",\"instagram_profiles\":\"1\",\"twitter_profiles\":\"1\",\"youtube_profiles\":\"1\",\"google_business_profiles\":\"1\",\"linkedin_profiles\":\"1\",\"linkedin_pages\":\"1\",\"pinterest_profiles\":\"1\",\"pinterest_boards\":\"1\",\"reddit_profiles\":\"1\",\"tumblr_blogs\":\"1\",\"telegram_channels\":\"1\",\"telegram_groups\":\"1\",\"ok_groups\":\"1\",\"vk_profiles\":\"1\",\"vk_pages\":\"1\",\"vk_groups\":\"1\",\"file_manager\":\"1\",\"file_manager_google_drive\":\"1\",\"file_manager_dropbox\":\"1\",\"file_manager_onedrive\":\"1\",\"file_manager_photo\":\"1\",\"file_manager_video\":\"1\",\"file_manager_other_type\":\"1\",\"file_manager_image_editor\":\"1\",\"max_storage_size\":\"10000\",\"max_file_size\":\"100\",\"tools\":\"1\",\"watermark\":\"1\",\"group_manager\":\"1\",\"caption\":\"1\",\"teams\":\"1\",\"proxies\":\"1\",\"shortlink\":\"1\",\"openai\":\"1\",\"openai_content\":\"1\",\"openai_image\":\"1\",\"openai_limit_tokens\":\"1000000\",\"number_accounts\":\"100\"}', '{\"facebook_post_success_count\":0,\"facebook_post_error_count\":0,\"facebook_post_media_count\":0,\"facebook_post_link_count\":0,\"facebook_post_text_count\":0,\"instagram_post_success_count\":0,\"instagram_post_error_count\":0,\"instagram_post_media_count\":0,\"instagram_post_link_count\":0,\"instagram_post_text_count\":0,\"twitter_post_success_count\":0,\"twitter_post_error_count\":0,\"twitter_post_media_count\":0,\"twitter_post_link_count\":0,\"twitter_post_text_count\":0,\"youtube_post_success_count\":0,\"youtube_post_error_count\":0,\"youtube_post_media_count\":0,\"youtube_post_link_count\":0,\"youtube_post_text_count\":0,\"google_business_profile_post_success_count\":0,\"google_business_profile_post_error_count\":0,\"google_business_profile_post_media_count\":0,\"google_business_profile_post_link_count\":0,\"google_business_profile_post_text_count\":0,\"linkedin_post_success_count\":0,\"linkedin_post_error_count\":0,\"linkedin_post_media_count\":0,\"linkedin_post_link_count\":0,\"linkedin_post_text_count\":0,\"pinterest_post_success_count\":0,\"pinterest_post_error_count\":0,\"pinterest_post_media_count\":0,\"pinterest_post_link_count\":0,\"pinterest_post_text_count\":0,\"reddit_post_success_count\":0,\"reddit_post_error_count\":0,\"reddit_post_media_count\":0,\"reddit_post_link_count\":0,\"reddit_post_text_count\":0,\"tumblr_post_success_count\":0,\"tumblr_post_error_count\":0,\"tumblr_post_media_count\":0,\"tumblr_post_link_count\":0,\"tumblr_post_text_count\":0,\"telegram_post_success_count\":0,\"telegram_post_error_count\":0,\"telegram_post_media_count\":0,\"telegram_post_link_count\":0,\"telegram_post_text_count\":0,\"vk_post_success_count\":0,\"vk_post_error_count\":0,\"vk_post_media_count\":0,\"vk_post_link_count\":0,\"vk_post_text_count\":0,\"ok_post_success_count\":0,\"ok_post_error_count\":0,\"ok_post_media_count\":0,\"ok_post_link_count\":0,\"ok_post_text_count\":0,\"shortlink_status\":0,\"bulk_delay\":60,\"bitly_access_token\":\"\",\"openai_usage_tokens\":258,\"watermark_mask\":\"\",\"watermark_size\":30,\"watermark_opacity\":70,\"watermark_position\":\"lb\",\"telegram_post_count\":0,\"twitter_consumer_key\":\"\",\"twitter_consumer_secret\":\"\",\"twitter_status\":0,\"watermark_status\":1}');

-- --------------------------------------------------------

--
-- Table structure for table `sp_team_member`
--

CREATE TABLE `sp_team_member` (
  `id` int(11) NOT NULL,
  `ids` mediumtext DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `permissions` longtext DEFAULT NULL,
  `pending` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sp_users`
--

CREATE TABLE `sp_users` (
  `id` int(11) NOT NULL,
  `ids` mediumtext DEFAULT NULL,
  `pid` text DEFAULT NULL,
  `is_admin` int(1) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `plan` int(11) DEFAULT NULL,
  `expiration_date` int(11) DEFAULT NULL,
  `timezone` mediumtext DEFAULT NULL,
  `language` varchar(30) DEFAULT NULL,
  `login_type` mediumtext DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `data` mediumtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `last_login` int(11) DEFAULT NULL,
  `recovery_key` varchar(32) DEFAULT NULL,
  `changed` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sp_users`
--

INSERT INTO `sp_users` (`id`, `ids`, `pid`, `is_admin`, `role`, `fullname`, `username`, `email`, `password`, `plan`, `expiration_date`, `timezone`, `language`, `login_type`, `avatar`, `data`, `status`, `last_login`, `recovery_key`, `changed`, `created`) VALUES
(1, '6448678fb7c2f', NULL, 1, 1, 'admin', 'admin', 'admin@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', 1, 2145916800, 'America/Sao_Paulo', 'en', 'direct', 'https://ui-avatars.com/api/?name=Hi&background=0674ec&color=fff', '{\"is_subscription\":0,\"bill_owner\":\"\",\"bill_tax_number\":\"\",\"bill_address\":\"\"}', 2, 1682725291, NULL, 1681286037, 1681286037);

-- --------------------------------------------------------

--
-- Table structure for table `sp_user_roles`
--

CREATE TABLE `sp_user_roles` (
  `id` int(11) NOT NULL,
  `ids` varchar(32) NOT NULL,
  `name` varchar(255) NOT NULL,
  `permissions` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sp_accounts`
--
ALTER TABLE `sp_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_blogs`
--
ALTER TABLE `sp_blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_captions`
--
ALTER TABLE `sp_captions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_coinpayments_history`
--
ALTER TABLE `sp_coinpayments_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_faqs`
--
ALTER TABLE `sp_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_files`
--
ALTER TABLE `sp_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_groups`
--
ALTER TABLE `sp_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_language`
--
ALTER TABLE `sp_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_language_category`
--
ALTER TABLE `sp_language_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_options`
--
ALTER TABLE `sp_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_payment_history`
--
ALTER TABLE `sp_payment_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_payment_subscriptions`
--
ALTER TABLE `sp_payment_subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_plans`
--
ALTER TABLE `sp_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_posts`
--
ALTER TABLE `sp_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_proxies`
--
ALTER TABLE `sp_proxies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_purchases`
--
ALTER TABLE `sp_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_smtp`
--
ALTER TABLE `sp_smtp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_team`
--
ALTER TABLE `sp_team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_team_member`
--
ALTER TABLE `sp_team_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_users`
--
ALTER TABLE `sp_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_user_roles`
--
ALTER TABLE `sp_user_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sp_accounts`
--
ALTER TABLE `sp_accounts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `sp_blogs`
--
ALTER TABLE `sp_blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sp_captions`
--
ALTER TABLE `sp_captions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sp_coinpayments_history`
--
ALTER TABLE `sp_coinpayments_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sp_faqs`
--
ALTER TABLE `sp_faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sp_files`
--
ALTER TABLE `sp_files`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `sp_groups`
--
ALTER TABLE `sp_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sp_language`
--
ALTER TABLE `sp_language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13268;

--
-- AUTO_INCREMENT for table `sp_language_category`
--
ALTER TABLE `sp_language_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sp_options`
--
ALTER TABLE `sp_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=294;

--
-- AUTO_INCREMENT for table `sp_payment_history`
--
ALTER TABLE `sp_payment_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `sp_payment_subscriptions`
--
ALTER TABLE `sp_payment_subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sp_plans`
--
ALTER TABLE `sp_plans`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `sp_posts`
--
ALTER TABLE `sp_posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `sp_proxies`
--
ALTER TABLE `sp_proxies`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sp_purchases`
--
ALTER TABLE `sp_purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sp_smtp`
--
ALTER TABLE `sp_smtp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sp_team`
--
ALTER TABLE `sp_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sp_team_member`
--
ALTER TABLE `sp_team_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sp_users`
--
ALTER TABLE `sp_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sp_user_roles`
--
ALTER TABLE `sp_user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
