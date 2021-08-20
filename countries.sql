-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 20, 2021 at 07:09 AM
-- Server version: 5.7.31
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `falcom`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','block') COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nice_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_name_ar`, `country_name`, `status`, `iso3`, `nice_name`, `num_code`, `phone_code`, `iso`, `created_at`, `updated_at`) VALUES
(1, 'افغانستان', 'AFGHANISTAN', 'active', 'AFG', 'Afghanistan', '4', '93', 'AF', NULL, NULL),
(3, 'البانيا', 'ALBANIA', 'active', 'ALB', 'Albania', '8', '355', 'AL', NULL, NULL),
(4, 'الجزائر', 'ALGERIA', 'active', 'DZA', 'Algeria', '12', '213', 'DZ', NULL, NULL),
(5, 'ساموا الامريكية', 'AMERICAN SAMOA', 'active', 'ASM', 'American Samoa', '16', '1684', 'AS', NULL, NULL),
(6, 'اندورا', 'ANDORRA', 'active', 'AND', 'Andorra', '20', '376', 'AD', NULL, NULL),
(7, 'انغولا', 'ANGOLA', 'active', 'AGO', 'Angola', '24', '244', 'AO', NULL, NULL),
(8, 'أنغيليا', 'ANGUILLA', 'active', 'AIA', 'Anguilla', '660', '1264', 'AI', NULL, NULL),
(9, 'القارة القطبية الجنوبية', 'ANTARCTICA', 'active', ' ', 'Antarctica', ' ', '0', 'AQ', NULL, NULL),
(10, 'أنتيغوا وبربودا', 'ANTIGUA AND BARBUDA', 'active', 'ATG', 'Antigua and Barbuda', '28', '1268', 'AG', NULL, NULL),
(11, 'ارجنتين', 'ARGENTINA', 'active', 'ARG', 'Argentina', '32', '54', 'AR', NULL, NULL),
(12, 'ارمينيا', 'ARMENIA', 'active', 'ARM', 'Armenia', '51', '374', 'AM', NULL, NULL),
(13, 'اروبا', 'ARUBA', 'active', 'ABW', 'Aruba', '533', '297', 'AW', NULL, NULL),
(14, 'استراليا', 'AUSTRALIA', 'active', 'AUS', 'Australia', '36', '61', 'AU', NULL, NULL),
(15, 'النمسا', 'AUSTRIA', 'active', 'AUT', 'Austria', '40', '43', 'AT', NULL, NULL),
(16, 'أذربيجان', 'AZERBAIJAN', 'active', 'AZE', 'Azerbaijan', '31', '994', 'AZ', NULL, NULL),
(17, 'جزر الباهاما', 'BAHAMAS', 'active', 'BHS', 'Bahamas', '44', '1242', 'BS', NULL, NULL),
(18, 'البحرين', 'BAHRAIN', 'active', 'BHR', 'Bahrain', '48', '973', 'BH', NULL, NULL),
(19, 'بتغلادش', 'BANGLADESH', 'active', 'BGD', 'Bangladesh', '50', '880', 'BD', NULL, NULL),
(20, 'باربادوس', 'BARBADOS', 'active', 'BRB', 'Barbados', '52', '1246', 'BB', NULL, NULL),
(21, 'روسيا البيضاء', 'BELARUS', 'active', 'BLR', 'Belarus', '112', '375', 'BY', NULL, NULL),
(22, 'بلجيكا', 'BELGIUM', 'active', 'BEL', 'Belgium', '56', '32', 'BE', NULL, NULL),
(23, 'بليز', 'BELIZE', 'active', 'BLZ', 'Belize', '84', '501', 'BZ', NULL, NULL),
(24, 'جمهورية بنين', 'BENIN', 'active', 'BEN', 'Benin', '204', '229', 'BJ', NULL, NULL),
(25, 'برمودا', 'BERMUDA', 'active', 'BMU', 'Bermuda', '60', '1441', 'BM', NULL, NULL),
(26, 'بوتان', 'BHUTAN', 'active', 'BTN', 'Bhutan', '64', '975', 'BT', NULL, NULL),
(27, 'بوليفيا', 'BOLIVIA', 'active', 'BOL', 'Bolivia', '68', '591', 'BO', NULL, NULL),
(28, 'البوسنة والهرسك', 'BOSNIA AND HERZEGOVINA', 'active', 'BIH', 'Bosnia and Herzegovina', '70', '387', 'BA', NULL, NULL),
(29, 'بوتسوانا', 'BOTSWANA', 'active', 'BWA', 'Botswana', '72', '267', 'BW', NULL, NULL),
(30, 'جزيرة بوفيت', 'BOUVET ISLAND', 'active', ' ', 'Bouvet Island', ' ', '0', 'BV', NULL, NULL),
(31, 'البرازيل', 'BRAZIL', 'active', 'BRA', 'Brazil', '76', '55', 'BR', NULL, NULL),
(32, 'إقليم المحيط البريطاني الهندي', 'BRITISH INDIAN OCEAN TERRITORY', 'active', ' ', 'British Indian Ocean Territory', ' ', '246', 'IO', NULL, NULL),
(33, 'بروناي دار السلام', 'BRUNEI DARUSSALAM', 'active', 'BRN', 'Brunei Darussalam', '96', '673', 'BN', NULL, NULL),
(34, 'بلغاريا', 'BULGARIA', 'active', 'BGR', 'Bulgaria', '100', '359', 'BG', NULL, NULL),
(35, 'بوركينا فاسو', 'BURKINA FASO', 'active', 'BFA', 'Burkina Faso', '854', '226', 'BF', NULL, NULL),
(36, 'بوروندي', 'BURUNDI', 'active', 'BDI', 'Burundi', '108', '257', 'BI', NULL, NULL),
(37, 'كمبوديا', 'CAMBODIA', 'active', 'KHM', 'Cambodia', '116', '855', 'KH', NULL, NULL),
(38, 'الكاميرون', 'CAMEROON', 'active', 'CMR', 'Cameroon', '120', '237', 'CM', NULL, NULL),
(39, 'كندا', 'CANADA', 'active', 'CAN', 'Canada', '124', '1', 'CA', NULL, NULL),
(40, 'كيب فيردي', 'CAPE VERDE', 'active', 'CPV', 'Cape Verde', '132', '238', 'CV', NULL, NULL),
(41, 'جزر كايمان', 'CAYMAN ISLANDS', 'active', 'CYM', 'Cayman Islands', '136', '1345', 'KY', NULL, NULL),
(42, 'جمهورية افريقيا الوسطى', 'CENTRAL AFRICAN REPUBLIC', 'active', 'CAF', 'Central African Republic', '140', '236', 'CF', NULL, NULL),
(43, 'تشاد', 'CHAD', 'active', 'TCD', 'Chad', '148', '235', 'TD', NULL, NULL),
(44, 'تشيلي', 'CHILE', 'active', 'CHL', 'Chile', '152', '56', 'CL', NULL, NULL),
(45, 'الصين', 'CHINA', 'active', 'CHN', 'China', '156', '86', 'CN', NULL, NULL),
(46, 'جزيرة عيد الميلاد', 'CHRISTMAS ISLAND', 'active', ' ', 'Christmas Island', ' ', '61', 'CX', NULL, NULL),
(47, 'جزر كوكوس', 'COCOS ISLANDS', 'active', ' ', 'Cocos Islands', ' ', '672', 'CC', NULL, NULL),
(48, 'كولومبيا', 'COLOMBIA', 'active', 'COL', 'Colombia', '170', '57', 'CO', NULL, NULL),
(49, 'جزر القمر', 'COMOROS', 'active', 'COM', 'Comoros', '174', '269', 'KM', NULL, NULL),
(50, 'الكونغو', 'CONGO', 'active', 'COG', 'Congo', '178', '242', 'CG', NULL, NULL),
(51, 'جمهورية الكونغو الديمقراطية', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'active', 'COD', 'Congo, the Democratic Republic of the', '180', '242', 'CD', NULL, NULL),
(52, 'جزر كوك', 'COOK ISLANDS', 'active', 'COK', 'Cook Islands', '184', '682', 'CK', NULL, NULL),
(53, 'كوستا ريكا', 'COSTA RICA', 'active', 'CRI', 'Costa Rica', '188', '506', 'CR', NULL, NULL),
(54, 'كوت ديفوار', 'COTE D\'IVOIRE', 'active', 'CIV', 'Cote D\'Ivoire', '384', '225', 'CI', NULL, NULL),
(55, 'كرواتيا', 'CROATIA', 'active', 'HRV', 'Croatia', '191', '385', 'HR', NULL, NULL),
(56, 'كوبا', 'CUBA', 'active', 'CUB', 'Cuba', '192', '53', 'CU', NULL, NULL),
(57, 'قبرص', 'CYPRUS', 'active', 'CYP', 'Cyprus', '196', '357', 'CY', NULL, NULL),
(58, 'جمهورية التشيك', 'CZECH REPUBLIC', 'active', 'CZE', 'Czech Republic', '203', '420', 'CZ', NULL, NULL),
(59, 'الدانمارك', 'DENMARK', 'active', 'DNK', 'Denmark', '208', '45', 'DK', NULL, NULL),
(60, 'جيبوتي', 'DJIBOUTI', 'active', 'DJI', 'Djibouti', '262', '253', 'DJ', NULL, NULL),
(61, 'الدومنيكان', 'DOMINICA', 'active', 'DMA', 'Dominica', '212', '1767', 'DM', NULL, NULL),
(62, 'جمهورية الدومنيكان', 'DOMINICAN REPUBLIC', 'active', 'DOM', 'Dominican Republic', '214', '1809', 'DO', NULL, NULL),
(63, 'الإكوادور', 'ECUADOR', 'active', 'ECU', 'Ecuador', '218', '593', 'EC', NULL, NULL),
(64, 'مصر', 'EGYPT', 'active', 'EGY', 'Egypt', '818', '20', 'EG', NULL, NULL),
(65, 'السلفادور', 'EL SALVADOR', 'active', 'SLV', 'El Salvador', '222', '503', 'SV', NULL, NULL),
(66, 'غينيا الإستوائية', 'EQUATORIAL GUINEA', 'active', 'GNQ', 'Equatorial Guinea', '226', '240', 'GQ', NULL, NULL),
(67, 'إريتريا', 'ERITREA', 'active', 'ERI', 'Eritrea', '232', '291', 'ER', NULL, NULL),
(68, 'إستونيا', 'ESTONIA', 'active', 'EST', 'Estonia', '233', '372', 'EE', NULL, NULL),
(69, 'أثيوبيا', 'ETHIOPIA', 'active', 'ETH', 'Ethiopia', '231', '251', 'ET', NULL, NULL),
(70, 'جزر فوكلاند', 'FALKLAND ISLANDS', 'active', 'FLK', 'Falkland Islands', '238', '500', 'FK', NULL, NULL),
(71, 'جزر فاروس', 'FAROE ISLANDS', 'active', 'FRO', 'Faroe Islands', '234', '298', 'FO', NULL, NULL),
(72, 'فيجي', 'FIJI', 'active', 'FJI', 'Fiji', '242', '679', 'FJ', NULL, NULL),
(73, 'فنلندا', 'FINLAND', 'active', 'FIN', 'Finland', '246', '358', 'FI', NULL, NULL),
(74, 'فرنسا', 'FRANCE', 'active', 'FRA', 'France', '250', '33', 'FR', NULL, NULL),
(75, 'غيانا الفرنسية', 'FRENCH GUIANA', 'active', 'GUF', 'French Guiana', '254', '594', 'GF', NULL, NULL),
(76, 'بولينيزيا الفرنسية', 'FRENCH POLYNESIA', 'active', 'PYF', 'French Polynesia', '258', '689', 'PF', NULL, NULL),
(77, 'المناطق الجنوبية لفرنسا', 'FRENCH SOUTHERN TERRITORIES', 'active', ' ', 'French Southern Territories', ' ', '0', 'TF', NULL, NULL),
(78, 'الجابون', 'GABON', 'active', 'GAB', 'Gabon', '266', '241', 'GA', NULL, NULL),
(79, 'غامبيا', 'GAMBIA', 'active', 'GMB', 'Gambia', '270', '220', 'GM', NULL, NULL),
(80, 'جورجيا', 'GEORGIA', 'active', 'GEO', 'Georgia', '268', '995', 'GE', NULL, NULL),
(81, 'المانيا', 'GERMANY', 'active', 'DEU', 'Germany', '276', '49', 'DE', NULL, NULL),
(82, 'غانا', 'GHANA', 'active', 'GHA', 'Ghana', '288', '233', 'GH', NULL, NULL),
(83, 'جبل طارق', 'GIBRALTAR', 'active', 'GIB', 'Gibraltar', '292', '350', 'GI', NULL, NULL),
(84, 'اليونان', 'GREECE', 'active', 'GRC', 'Greece', '300', '30', 'GR', NULL, NULL),
(85, 'الأرض الخضراء', 'GREENLAND', 'active', 'GRL', 'Greenland', '304', '299', 'GL', NULL, NULL),
(86, 'غرينادا', 'GRENADA', 'active', 'GRD', 'Grenada', '308', '1473', 'GD', NULL, NULL),
(87, 'جوادلوب', 'GUADELOUPE', 'active', 'GLP', 'Guadeloupe', '312', '590', 'GP', NULL, NULL),
(88, 'جوام', 'GUAM', 'active', 'GUM', 'Guam', '316', '1671', 'GU', NULL, NULL),
(89, 'غواتيمالا', 'GUATEMALA', 'active', 'GTM', 'Guatemala', '320', '502', 'GT', NULL, NULL),
(90, 'غينيا', 'GUINEA', 'active', 'GIN', 'Guinea', '324', '224', 'GN', NULL, NULL),
(91, 'غينيا بيساو', 'GUINEA-BISSAU', 'active', 'GNB', 'Guinea-Bissau', '624', '245', 'GW', NULL, NULL),
(92, 'غيانا', 'GUYANA', 'active', 'GUY', 'Guyana', '328', '592', 'GY', NULL, NULL),
(93, 'هايتي', 'HAITI', 'active', 'HTI', 'Haiti', '332', '509', 'HT', NULL, NULL),
(94, 'قلب الجزيرة وجزر ماكدونالز', 'HEARD ISLAND AND MCDONALD ISLANDS', 'active', ' ', 'Heard Island and Mcdonald Islands', ' ', '0', 'HM', NULL, NULL),
(95, 'الكرسي الرسولي (دولة الفاتيكان)', 'HOLY SEE (VATICAN CITY STATE)', 'active', 'VAT', 'Holy See (Vatican City State)', '336', '39', 'VA', NULL, NULL),
(96, 'هندوراس', 'HONDURAS', 'active', 'HND', 'Honduras', '340', '504', 'HN', NULL, NULL),
(97, 'هونج كونج', 'HONG KONG', 'active', 'HKG', 'Hong Kong', '344', '852', 'HK', NULL, NULL),
(98, 'هنغاريا', 'HUNGARY', 'active', 'HUN', 'Hungary', '348', '36', 'HU', NULL, NULL),
(99, 'أيسلندا', 'ICELAND', 'active', 'ISL', 'Iceland', '352', '354', 'IS', NULL, NULL),
(100, 'الهند', 'INDIA', 'active', 'IND', 'India', '356', '91', 'IN', NULL, NULL),
(101, 'اندونيسيا', 'INDONESIA', 'active', 'IDN', 'Indonesia', '360', '62', 'ID', NULL, NULL),
(102, 'ايران', 'IRAN, ISLAMIC REPUBLIC OF', 'active', 'IRN', 'Iran, Islamic Republic of', '364', '98', 'IR', NULL, NULL),
(103, 'العراق', 'IRAQ', 'active', 'IRQ', 'Iraq', '368', '964', 'IQ', NULL, NULL),
(104, 'ايرلندا', 'IRELAND', 'active', 'IRL', 'Ireland', '372', '353', 'IE', NULL, NULL),
(105, 'اسرائيل', 'ISRAEL', 'active', 'ISR', 'Israel', '376', '972', 'IL', NULL, NULL),
(106, 'ايطاليا', 'ITALY', 'active', 'ITA', 'Italy', '380', '39', 'IT', NULL, NULL),
(107, 'جمايكا', 'JAMAICA', 'active', 'JAM', 'Jamaica', '388', '1876', 'JM', NULL, NULL),
(108, 'اليابان', 'JAPAN', 'active', 'JPN', 'Japan', '392', '81', 'JP', NULL, NULL),
(109, 'الاردن', 'JORDAN', 'active', 'JOR', 'Jordan', '400', '962', 'JO', NULL, NULL),
(110, 'كازاخستان', 'KAZAKHSTAN', 'active', 'KAZ', 'Kazakhstan', '398', '7', 'KZ', NULL, NULL),
(111, 'كينيا', 'KENYA', 'active', 'KEN', 'Kenya', '404', '254', 'KE', NULL, NULL),
(112, 'كيريباس', 'KIRIBATI', 'active', 'KIR', 'Kiribati', '296', '686', 'KI', NULL, NULL),
(113, 'كوريا الديمقراطية', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'active', 'PRK', 'Korea, Democratic People\'s Republic of', '408', '850', 'KP', NULL, NULL),
(114, 'جمهورية كوريا', 'KOREA, REPUBLIC OF', 'active', 'KOR', 'Korea, Republic of', '410', '82', 'KR', NULL, NULL),
(115, 'الكويت', 'KUWAIT', 'active', 'KWT', 'Kuwait', '414', '965', 'KW', NULL, NULL),
(116, 'قرغيزستان', 'KYRGYZSTAN', 'active', 'KGZ', 'Kyrgyzstan', '417', '996', 'KG', NULL, NULL),
(117, 'جمهورية لاو الديمقراطية الشعبية', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'active', 'LAO', 'Lao People\'s Democratic Republic', '418', '856', 'LA', NULL, NULL),
(118, 'لاتفيا', 'LATVIA', 'active', 'LVA', 'Latvia', '428', '371', 'LV', NULL, NULL),
(119, 'لبنان', 'LEBANON', 'active', 'LBN', 'Lebanon', '422', '961', 'LB', NULL, NULL),
(120, 'في ليسوتو', 'LESOTHO', 'active', 'LSO', 'Lesotho', '426', '266', 'LS', NULL, NULL),
(121, 'ليبيريا', 'LIBERIA', 'active', 'LBR', 'Liberia', '430', '231', 'LR', NULL, NULL),
(122, 'ليبيا', 'LIBYAN ARAB JAMAHIRIYA', 'active', 'LBY', 'Libyan Arab Jamahiriya', '434', '218', 'LY', NULL, NULL),
(123, 'ليختنشتاين', 'LIECHTENSTEIN', 'active', 'LIE', 'Liechtenstein', '438', '423', 'LI', NULL, NULL),
(124, 'ليثوانيا', 'LITHUANIA', 'active', 'LTU', 'Lithuania', '440', '370', 'LT', NULL, NULL),
(125, 'اللوكسمبورغ', 'LUXEMBOURG', 'active', 'LUX', 'Luxembourg', '442', '352', 'LU', NULL, NULL),
(126, 'ماكاو', 'MACAO', 'active', 'MAC', 'Macao', '446', '853', 'MO', NULL, NULL),
(127, 'جمهورية مقدونيا اليوغوسلافية السابقة', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'active', 'MKD', 'Macedonia, the Former Yugoslav Republic of', '807', '389', 'MK', NULL, NULL),
(128, 'مدغشقر', 'MADAGASCAR', 'active', 'MDG', 'Madagascar', '450', '261', 'MG', NULL, NULL),
(129, 'ملاوي', 'MALAWI', 'active', 'MWI', 'Malawi', '454', '265', 'MW', NULL, NULL),
(130, 'ماليزيا', 'MALAYSIA', 'active', 'MYS', 'Malaysia', '458', '60', 'MY', NULL, NULL),
(131, 'المالديف', 'MALDIVES', 'active', 'MDV', 'Maldives', '462', '960', 'MV', NULL, NULL),
(132, 'مالي', 'MALI', 'active', 'MLI', 'Mali', '466', '223', 'ML', NULL, NULL),
(133, 'مالطا', 'MALTA', 'active', 'MLT', 'Malta', '470', '356', 'MT', NULL, NULL),
(134, 'جزر مارشال', 'MARSHALL ISLANDS', 'active', 'MHL', 'Marshall Islands', '584', '692', 'MH', NULL, NULL),
(135, 'مارتينيك', 'MARTINIQUE', 'active', 'MTQ', 'Martinique', '474', '596', 'MQ', NULL, NULL),
(136, 'موريتانيا', 'MAURITANIA', 'active', 'MRT', 'Mauritania', '478', '222', 'MR', NULL, NULL),
(137, 'موريشيوس', 'MAURITIUS', 'active', 'MUS', 'Mauritius', '480', '230', 'MU', NULL, NULL),
(138, 'مايوت', 'MAYOTTE', 'active', ' ', 'Mayotte', ' ', '269', 'YT', NULL, NULL),
(139, 'المكسيك', 'MEXICO', 'active', 'MEX', 'Mexico', '484', '52', 'MX', NULL, NULL),
(140, 'ولايات ميكرونيزيا المتحدة', 'MICRONESIA, FEDERATED STATES OF', 'active', 'FSM', 'Micronesia, Federated States of', '583', '691', 'FM', NULL, NULL),
(141, 'جمهورية مولدوفا', 'MOLDOVA, REPUBLIC OF', 'active', 'MDA', 'Moldova, Republic of', '498', '373', 'MD', NULL, NULL),
(142, 'موناكو', 'MONACO', 'active', 'MCO', 'Monaco', '492', '377', 'MC', NULL, NULL),
(143, 'منغوليا', 'MONGOLIA', 'active', 'MNG', 'Mongolia', '496', '976', 'MN', NULL, NULL),
(144, 'مونتسيرات', 'MONTSERRAT', 'active', 'MSR', 'Montserrat', '500', '1664', 'MS', NULL, NULL),
(145, 'المغرب', 'MOROCCO', 'active', 'MAR', 'Morocco', '504', '212', 'MA', NULL, NULL),
(146, 'موزمبيق', 'MOZAMBIQUE', 'active', 'MOZ', 'Mozambique', '508', '258', 'MZ', NULL, NULL),
(147, 'ميانمار', 'MYANMAR', 'active', 'MMR', 'Myanmar', '104', '95', 'MM', NULL, NULL),
(148, 'ناميبيا', 'NAMIBIA', 'active', 'NAM', 'Namibia', '516', '264', 'NA', NULL, NULL),
(149, 'ناورو', 'NAURU', 'active', 'NRU', 'Nauru', '520', '674', 'NR', NULL, NULL),
(150, 'نيبال', 'NEPAL', 'active', 'NPL', 'Nepal', '524', '977', 'NP', NULL, NULL),
(151, 'هولندا', 'NETHERLANDS', 'active', 'NLD', 'Netherlands', '528', '31', 'NL', NULL, NULL),
(152, 'جزر الأنتيل الهولندية', 'NETHERLANDS ANTILLES', 'active', 'ANT', 'Netherlands Antilles', '530', '599', 'AN', NULL, NULL),
(153, 'كاليدونيا الجديدة', 'NEW CALEDONIA', 'active', 'NCL', 'New Caledonia', '540', '687', 'NC', NULL, NULL),
(154, 'نيوزيلاندا', 'NEW ZEALAND', 'active', 'NZL', 'New Zealand', '554', '64', 'NZ', NULL, NULL),
(155, 'نيكاراغوا', 'NICARAGUA', 'active', 'NIC', 'Nicaragua', '558', '505', 'NI', NULL, NULL),
(156, 'النيجر', 'NIGER', 'active', 'NER', 'Niger', '562', '227', 'NE', NULL, NULL),
(157, 'نيجيريا', 'NIGERIA', 'active', 'NGA', 'Nigeria', '566', '234', 'NG', NULL, NULL),
(158, 'نيوي', 'NIUE', 'active', 'NIU', 'Niue', '570', '683', 'NU', NULL, NULL),
(159, 'جزيرة نورفولك', 'NORFOLK ISLAND', 'active', 'NFK', 'Norfolk Island', '574', '672', 'NF', NULL, NULL),
(160, 'جزر مريانا الشمالية', 'NORTHERN MARIANA ISLANDS', 'active', 'MNP', 'Northern Mariana Islands', '580', '1670', 'MP', NULL, NULL),
(161, 'النرويج', 'NORWAY', 'active', 'NOR', 'Norway', '578', '47', 'NO', NULL, NULL),
(162, 'سلطنة عمان', 'OMAN', 'active', 'OMN', 'Oman', '512', '968', 'OM', NULL, NULL),
(163, 'باكستان', 'PAKISTAN', 'active', 'PAK', 'Pakistan', '586', '92', 'PK', NULL, NULL),
(164, 'البالاوية', 'PALAU', 'active', 'PLW', 'Palau', '585', '680', 'PW', NULL, NULL),
(165, 'الأراضي الفلسطينية المحتلة', 'PALESTINIAN TERRITORY, OCCUPIED', 'active', ' ', 'Palestinian Territory, Occupied', ' ', '970', 'PS', NULL, NULL),
(166, 'بنما', 'PANAMA', 'active', 'PAN', 'Panama', '591', '507', 'PA', NULL, NULL),
(167, 'بابوا غينيا الجديدة', 'PAPUA NEW GUINEA', 'active', 'PNG', 'Papua New Guinea', '598', '675', 'PG', NULL, NULL),
(168, 'باراغواي', 'PARAGUAY', 'active', 'PRY', 'Paraguay', '600', '595', 'PY', NULL, NULL),
(169, 'بيرو', 'PERU', 'active', 'PER', 'Peru', '604', '51', 'PE', NULL, NULL),
(170, 'الفلبين', 'PHILIPPINES', 'active', 'PHL', 'Philippines', '608', '63', 'PH', NULL, NULL),
(171, 'بيتكيرن', 'PITCAIRN', 'active', 'PCN', 'Pitcairn', '612', '0', 'PN', NULL, NULL),
(172, 'بولندا', 'POLAND', 'active', 'POL', 'Poland', '616', '48', 'PL', NULL, NULL),
(173, 'البرتغال', 'PORTUGAL', 'active', 'PRT', 'Portugal', '620', '351', 'PT', NULL, NULL),
(174, 'بورتو ريكو', 'PUERTO RICO', 'active', 'PRI', 'Puerto Rico', '630', '1787', 'PR', NULL, NULL),
(175, 'دولة قطر', 'QATAR', 'active', 'QAT', 'Qatar', '634', '974', 'QA', NULL, NULL),
(176, 'جمع شمل', 'REUNION', 'active', 'REU', 'Reunion', '638', '262', 'RE', NULL, NULL),
(177, 'رومانيا', 'ROMANIA', 'active', 'ROM', 'Romania', '642', '40', 'RO', NULL, NULL),
(178, 'الاتحاد الروسي', 'RUSSIAN FEDERATION', 'active', 'RUS', 'Russian Federation', '643', '70', 'RU', NULL, NULL),
(179, 'رواندا', 'RWANDA', 'active', 'RWA', 'Rwanda', '646', '250', 'RW', NULL, NULL),
(180, 'سانت هيلينا', 'SAINT HELENA', 'active', 'SHN', 'Saint Helena', '654', '290', 'SH', NULL, NULL),
(181, 'سانت كيتس ونيفيس', 'SAINT KITTS AND NEVIS', 'active', 'KNA', 'Saint Kitts and Nevis', '659', '1869', 'KN', NULL, NULL),
(182, 'القديسة لوسيا', 'SAINT LUCIA', 'active', 'LCA', 'Saint Lucia', '662', '1758', 'LC', NULL, NULL),
(183, 'سانت بيير وميكلون', 'SAINT PIERRE AND MIQUELON', 'active', 'SPM', 'Saint Pierre and Miquelon', '666', '508', 'PM', NULL, NULL),
(184, 'سانت فنسنت وجزر غرينادين', 'SAINT VINCENT AND THE GRENADINES', 'active', 'VCT', 'Saint Vincent and the Grenadines', '670', '1784', 'VC', NULL, NULL),
(185, 'ساموا', 'SAMOA', 'active', 'WSM', 'Samoa', '882', '684', 'WS', NULL, NULL),
(186, 'سان مارينو', 'SAN MARINO', 'active', 'SMR', 'San Marino', '674', '378', 'SM', NULL, NULL),
(187, 'ساو تومي وبرينسيبي', 'SAO TOME AND PRINCIPE', 'active', 'STP', 'Sao Tome and Principe', '678', '239', 'ST', NULL, NULL),
(188, 'المملكة العربية السعودية', 'SAUDI ARABIA', 'active', 'SAU', 'Saudi Arabia', '682', '966', 'SA', NULL, NULL),
(189, 'السنغال', 'SENEGAL', 'active', 'SEN', 'Senegal', '686', '221', 'SN', NULL, NULL),
(190, 'صربيا والجبل الأسود', 'SERBIA AND MONTENEGRO', 'active', ' ', 'Serbia and Montenegro', ' ', '381', 'CS', NULL, NULL),
(191, 'سيشيل', 'SEYCHELLES', 'active', 'SYC', 'Seychelles', '690', '248', 'SC', NULL, NULL),
(192, 'سيرا ليون', 'SIERRA LEONE', 'active', 'SLE', 'Sierra Leone', '694', '232', 'SL', NULL, NULL),
(193, 'سنغافورة', 'SINGAPORE', 'active', 'SGP', 'Singapore', '702', '65', 'SG', NULL, NULL),
(194, 'سلوفاكيا', 'SLOVAKIA', 'active', 'SVK', 'Slovakia', '703', '421', 'SK', NULL, NULL),
(195, 'سلوفينيا', 'SLOVENIA', 'active', 'SVN', 'Slovenia', '705', '386', 'SI', NULL, NULL),
(196, 'جزر سليمان', 'SOLOMON ISLANDS', 'active', 'SLB', 'Solomon Islands', '90', '677', 'SB', NULL, NULL),
(197, 'الصومال', 'SOMALIA', 'active', 'SOM', 'Somalia', '706', '252', 'SO', NULL, NULL),
(198, 'جنوب أفريقيا', 'SOUTH AFRICA', 'active', 'ZAF', 'South Africa', '710', '27', 'ZA', NULL, NULL),
(199, 'جورجيا الجنوبية وجزر ساندويتش الجنوبية', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'active', ' ', 'South Georgia and the South Sandwich Islands', ' ', '0', 'GS', NULL, NULL),
(200, 'إسبانيا', 'SPAIN', 'active', 'ESP', 'Spain', '724', '34', 'ES', NULL, NULL),
(201, 'سيريلانكا', 'SRI LANKA', 'active', 'LKA', 'Sri Lanka', '144', '94', 'LK', NULL, NULL),
(202, 'السودان', 'SUDAN', 'active', 'SDN', 'Sudan', '736', '249', 'SD', NULL, NULL),
(203, 'سورينام', 'SURINAME', 'active', 'SUR', 'Suriname', '740', '597', 'SR', NULL, NULL),
(204, 'سفالبارد وجان ماين', 'SVALBARD AND JAN MAYEN', 'active', 'SJM', 'Svalbard and Jan Mayen', '744', '47', 'SJ', NULL, NULL),
(205, 'سوازيلاند', 'SWAZILAND', 'active', 'SWZ', 'Swaziland', '748', '268', 'SZ', NULL, NULL),
(206, 'السويد', 'SWEDEN', 'active', 'SWE', 'Sweden', '752', '46', 'SE', NULL, NULL),
(207, 'سويسرا', 'SWITZERLAND', 'active', 'CHE', 'Switzerland', '756', '41', 'CH', NULL, NULL),
(208, 'الجمهورية العربية السورية', 'SYRIAN ARAB REPUBLIC', 'active', 'SYR', 'Syrian Arab Republic', '760', '963', 'SY', NULL, NULL),
(209, 'تايوان ، مقاطعة الصين', 'TAIWAN, PROVINCE OF CHINA', 'active', 'TWN', 'Taiwan, Province of China', '158', '886', 'TW', NULL, NULL),
(210, 'طاجيكستان', 'TAJIKISTAN', 'active', 'TJK', 'Tajikistan', '762', '992', 'TJ', NULL, NULL),
(211, 'جمهورية تنزانيا المتحدة', 'TANZANIA, UNITED REPUBLIC OF', 'active', 'TZA', 'Tanzania, United Republic of', '834', '255', 'TZ', NULL, NULL),
(212, 'تايلاند', 'THAILAND', 'active', 'THA', 'Thailand', '764', '66', 'TH', NULL, NULL),
(213, 'تيمور الشرقية', 'TIMOR-LESTE', 'active', ' ', 'Timor-Leste', ' ', '670', 'TL', NULL, NULL),
(214, 'توجو', 'TOGO', 'active', 'TGO', 'Togo', '768', '228', 'TG', NULL, NULL),
(215, 'توكيلاو', 'TOKELAU', 'active', 'TKL', 'Tokelau', '772', '690', 'TK', NULL, NULL),
(216, 'تونغا', 'TONGA', 'active', 'TON', 'Tonga', '776', '676', 'TO', NULL, NULL),
(217, 'ترينداد وتوباغو', 'TRINIDAD AND TOBAGO', 'active', 'TTO', 'Trinidad and Tobago', '780', '1868', 'TT', NULL, NULL),
(218, 'تونس', 'TUNISIA', 'active', 'TUN', 'Tunisia', '788', '216', 'TN', NULL, NULL),
(219, 'تركيا', 'TURKEY', 'active', 'TUR', 'Turkey', '792', '90', 'TR', NULL, NULL),
(220, 'تركمانستان', 'TURKMENISTAN', 'active', 'TKM', 'Turkmenistan', '795', '7370', 'TM', NULL, NULL),
(221, 'جزر تركس وكايكوس', 'TURKS AND CAICOS ISLANDS', 'active', 'TCA', 'Turks and Caicos Islands', '796', '1649', 'TC', NULL, NULL),
(222, 'توفالو', 'TUVALU', 'active', 'TUV', 'Tuvalu', '798', '688', 'TV', NULL, NULL),
(223, 'أوغندا', 'UGANDA', 'active', 'UGA', 'Uganda', '800', '256', 'UG', NULL, NULL),
(224, 'أوكرانيا', 'UKRAINE', 'active', 'UKR', 'Ukraine', '804', '380', 'UA', NULL, NULL),
(225, 'الإمارات العربية المتحدة', 'UNITED ARAB EMIRATES', 'active', 'ARE', 'United Arab Emirates', '784', '971', 'AE', NULL, NULL),
(226, 'المملكة المتحدة', 'UNITED KINGDOM', 'active', 'GBR', 'United Kingdom', '826', '44', 'GB', NULL, NULL),
(227, 'الولايات المتحدة الأمريكية', 'UNITED STATES', 'active', 'USA', 'United States', '840', '1', 'US', NULL, NULL),
(228, 'جزر الولايات المتحدة البعيدة الصغرى', 'UNITED STATES MINOR OUTLYING ISLANDS', 'active', ' ', 'United States Minor Outlying Islands', ' ', '1', 'UM', NULL, NULL),
(229, 'أوروغواي', 'URUGUAY', 'active', 'URY', 'Uruguay', '858', '598', 'UY', NULL, NULL),
(230, 'أوزبكستان', 'UZBEKISTAN', 'active', 'UZB', 'Uzbekistan', '860', '998', 'UZ', NULL, NULL),
(231, 'فانواتو', 'VANUATU', 'active', 'VUT', 'Vanuatu', '548', '678', 'VU', NULL, NULL),
(232, 'فنزويلا', 'VENEZUELA', 'active', 'VEN', 'Venezuela', '862', '58', 'VE', NULL, NULL),
(233, 'فييت نام', 'VIET NAM', 'active', 'VNM', 'Viet Nam', '704', '84', 'VN', NULL, NULL),
(234, 'جزر العذراء البريطانية', 'VIRGIN ISLANDS, BRITISH', 'active', 'VGB', 'Virgin Islands, British', '92', '1284', 'VG', NULL, NULL),
(235, 'جزر العذراء ، الولايات المتحدة', 'VIRGIN ISLANDS, U.S.', 'active', 'VIR', 'Virgin Islands, U.s.', '850', '1340', 'VI', NULL, NULL),
(236, 'واليس وفوتونا', 'WALLIS AND FUTUNA', 'active', 'WLF', 'Wallis and Futuna', '876', '681', 'WF', NULL, NULL),
(237, 'الصحراء الغربية', 'WESTERN SAHARA', 'active', 'ESH', 'Western Sahara', '732', '212', 'EH', NULL, NULL),
(238, 'اليمن', 'YEMEN', 'active', 'YEM', 'Yemen', '887', '967', 'YE', NULL, NULL),
(239, 'زامبيا', 'ZAMBIA', 'active', 'ZMB', 'Zambia', '894', '260', 'ZM', NULL, NULL),
(240, 'زيمبابوي', 'ZIMBABWE', 'active', 'ZWE', 'Zimbabwe', '716', '263', 'ZW', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
