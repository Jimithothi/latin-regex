-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2017 at 11:30 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hds_dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `assets_id` int(10) NOT NULL,
  `assets_name` varchar(250) NOT NULL,
  `fridge_freezer` varchar(255) NOT NULL,
  `kitchenette_id` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`assets_id`, `assets_name`, `fridge_freezer`, `kitchenette_id`, `status`) VALUES
(1, 'A1', 'freezer', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `asset_cleaning_report_detail`
--

CREATE TABLE `asset_cleaning_report_detail` (
  `id` int(10) NOT NULL,
  `asscl_report_id` int(10) NOT NULL,
  `day_of_month` int(11) NOT NULL,
  `fridge` varchar(200) DEFAULT NULL,
  `microwave` varchar(200) DEFAULT NULL,
  `sinks` varchar(200) DEFAULT NULL,
  `wash_basin` varchar(200) DEFAULT NULL,
  `benchs` varchar(200) DEFAULT NULL,
  `freezer` varchar(200) DEFAULT NULL,
  `cup_boards` varchar(200) DEFAULT NULL,
  `drawers` varchar(200) DEFAULT NULL,
  `hot_water_unit` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `asset_cleaning_report_detail`
--

INSERT INTO `asset_cleaning_report_detail` (`id`, `asscl_report_id`, `day_of_month`, `fridge`, `microwave`, `sinks`, `wash_basin`, `benchs`, `freezer`, `cup_boards`, `drawers`, `hot_water_unit`) VALUES
(835, 28, 1, 'Yes', 'Yes', '', '', '', '', '', '', ''),
(836, 28, 2, '', '', '', '', '', '', '', '', ''),
(837, 28, 3, '', '', '', '', '', '', '', '', ''),
(838, 28, 4, '', '', '', '', '', '', '', '', ''),
(839, 28, 5, '', '', '', '', '', '', '', '', ''),
(840, 28, 6, '', 'No', '', '', '', '', '', '', ''),
(841, 28, 7, '', '', '', '', '', '', '', '', ''),
(842, 28, 8, '', '', '', '', '', '', '', '', ''),
(843, 28, 9, '', '', '', '', '', '', '', '', ''),
(844, 28, 10, '', '', '', '', '', '', '', '', ''),
(845, 28, 11, '', '', '', '', '', '', '', '', ''),
(846, 28, 12, '', '', '', '', '', '', '', '', ''),
(847, 28, 13, '', '', '', '', '', '', '', '', ''),
(848, 28, 14, '', '', '', '', '', '', '', '', ''),
(849, 28, 15, '', '', '', '', '', '', '', '', ''),
(850, 28, 16, '', '', '', '', '', '', '', '', ''),
(851, 28, 17, '', '', '', '', '', '', '', '', ''),
(852, 28, 18, '', '', '', '', '', '', '', '', ''),
(853, 28, 19, '', '', '', '', '', '', '', '', ''),
(854, 28, 20, '', '', '', '', '', '', '', '', ''),
(855, 28, 21, '', '', '', '', '', '', '', '', ''),
(856, 28, 22, '', '', '', '', '', '', '', '', ''),
(857, 28, 23, '', '', '', '', '', '', '', '', ''),
(858, 28, 24, '', '', '', '', '', '', '', '', ''),
(859, 28, 25, '', '', '', '', '', '', '', '', ''),
(860, 28, 26, '', '', '', '', '', '', '', '', ''),
(861, 28, 27, '', '', '', '', '', '', '', '', ''),
(862, 28, 28, '', '', '', '', '', '', '', '', ''),
(863, 28, 29, '', '', '', '', '', '', '', '', ''),
(864, 28, 30, 'N/A', '', '', '', '', '', '', '', ''),
(865, 28, 31, '', '', '', '', '', '', '', '', 'Yes'),
(866, 29, 1, '', '', '', '', '', '', '', '', ''),
(867, 29, 2, '', '', '', '', '', '', '', '', ''),
(868, 29, 3, '', '', '', '', '', '', '', '', ''),
(869, 29, 4, '', '', '', '', '', '', '', '', ''),
(870, 29, 5, '', '', '', '', '', '', '', '', ''),
(871, 29, 6, '', '', '', '', '', '', '', '', ''),
(872, 29, 7, '', '', '', '', '', '', '', '', ''),
(873, 29, 8, '', '', '', '', '', '', '', '', ''),
(874, 29, 9, '', '', '', '', '', '', '', '', ''),
(875, 29, 10, '', '', '', '', '', '', '', '', ''),
(876, 29, 11, '', '', '', '', '', '', '', '', ''),
(877, 29, 12, '', '', '', '', '', '', '', '', ''),
(878, 29, 13, '', '', '', '', '', '', '', '', ''),
(879, 29, 14, '', '', '', '', '', '', '', '', ''),
(880, 29, 15, '', '', '', '', '', '', '', '', ''),
(881, 29, 16, '', '', '', '', '', '', '', '', ''),
(882, 29, 17, '', '', '', '', '', '', '', '', ''),
(883, 29, 18, '', '', '', '', '', '', '', '', ''),
(884, 29, 19, '', '', '', '', '', '', '', '', ''),
(885, 29, 20, '', '', '', '', '', '', '', '', ''),
(886, 29, 21, '', '', '', '', '', '', '', '', ''),
(887, 29, 22, '', '', '', '', '', '', '', '', ''),
(888, 29, 23, '', '', '', '', '', '', '', '', ''),
(889, 29, 24, '', '', '', '', '', '', '', '', ''),
(890, 29, 25, '', '', '', '', '', '', '', '', ''),
(891, 29, 26, '', '', '', '', '', '', '', '', ''),
(892, 29, 27, '', '', '', '', '', '', '', '', ''),
(893, 29, 28, '', '', '', '', '', '', '', '', ''),
(894, 29, 29, '', '', '', '', '', '', '', '', ''),
(895, 29, 30, '', '', '', '', '', '', '', '', ''),
(896, 29, 31, '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `asset_cleaning_report_master`
--

CREATE TABLE `asset_cleaning_report_master` (
  `asscl_report_id` int(10) NOT NULL,
  `report_date` date NOT NULL,
  `asscl_created_date` datetime NOT NULL,
  `asscl_created_by` int(10) NOT NULL,
  `assets_name` varchar(250) NOT NULL,
  `assets_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `asset_cleaning_report_master`
--

INSERT INTO `asset_cleaning_report_master` (`asscl_report_id`, `report_date`, `asscl_created_date`, `asscl_created_by`, `assets_name`, `assets_id`) VALUES
(28, '2017-05-01', '2017-05-12 13:59:45', 1, '', 0),
(29, '2017-01-01', '2017-05-24 07:28:41', 2, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `checklist_job_master`
--

CREATE TABLE `checklist_job_master` (
  `checklist_job_id` int(10) NOT NULL,
  `checklist_job_name` varchar(250) NOT NULL,
  `checklist_job_order` int(10) NOT NULL,
  `monday` tinyint(1) NOT NULL,
  `tuesday` tinyint(1) NOT NULL,
  `wednesday` tinyint(1) NOT NULL,
  `thursday` tinyint(1) NOT NULL,
  `friday` tinyint(1) NOT NULL,
  `saturday` tinyint(1) NOT NULL,
  `sunday` tinyint(1) NOT NULL,
  `all_none` tinyint(1) NOT NULL,
  `none_text` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `checklist_job_master`
--

INSERT INTO `checklist_job_master` (`checklist_job_id`, `checklist_job_name`, `checklist_job_order`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`, `sunday`, `all_none`, `none_text`) VALUES
(1, 'Floors', 1, 1, 1, 1, 1, 1, 1, 1, 0, NULL),
(2, 'benches, servery & under lip of benches', 2, 1, 1, 1, 1, 1, 1, 1, 0, NULL),
(3, 'Utensils, cutting boards & other preparation equipment', 3, 1, 1, 1, 1, 1, 1, 1, 0, NULL),
(4, 'Hand wash basin', 4, 1, 1, 1, 1, 1, 1, 1, 0, NULL),
(5, 'Cleaning cloths, dish cloths & tea-towels', 5, 0, 0, 0, 0, 0, 0, 0, 1, 'Outsourced by laundry contractors  (Store for pickup daily) '),
(6, 'Can Opener', 6, 1, 1, 1, 1, 1, 1, 1, 0, NULL),
(7, 'All sinks', 7, 1, 1, 1, 1, 1, 1, 1, 0, NULL),
(8, 'Bamix  (Before & after each use) ', 8, 1, 1, 1, 1, 1, 1, 1, 0, NULL),
(9, 'Piping Bags (disposable only) ', 9, 0, 0, 0, 0, 0, 0, 0, 1, '(Dispose of After each use)'),
(10, 'Hot plates & Stove top,  Oven &  Splash-backs ', 10, 1, 1, 1, 1, 1, 1, 0, 0, NULL),
(11, 'Microwave & Plate warmers ', 11, 1, 1, 1, 1, 1, 1, 1, 0, NULL),
(12, 'Mixers', 12, 1, 1, 1, 1, 1, 1, 1, 0, NULL),
(13, 'Rubbish Bins', 13, 1, 1, 1, 1, 1, 1, 1, 0, NULL),
(14, 'Trolley Wheels', 14, 1, 1, 1, 1, 1, 1, 1, 0, NULL),
(15, 'Dish-washer (after each service)', 15, 1, 1, 1, 1, 1, 1, 1, 0, NULL),
(16, 'Cleaning equipment Mops and buckets', 16, 0, 0, 0, 0, 0, 0, 0, 1, 'Empty buckets after use and store mops for cleaners –daily'),
(17, 'Wall Tiles', 17, 1, 1, 1, 1, 1, 1, 1, 0, NULL),
(18, 'Bain-marie & Hot Box', 18, 1, 1, 1, 1, 1, 1, 1, 0, NULL),
(19, 'Destaining (Daily as required)', 19, 1, 1, 1, 1, 1, 0, 1, 0, NULL),
(20, 'Dry Storage Area (Sunday)', 20, 0, 0, 0, 0, 0, 0, 1, 0, NULL),
(21, 'Trolleys (Saturday)', 21, 0, 0, 0, 0, 0, 1, 0, 0, NULL),
(22, 'All shelves & drawers in  kitchen (Friday)', 22, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(23, 'Refrigerator/ Freezer, doors, seals  & handles.', 23, 0, 0, 0, 0, 0, 0, 0, 1, 'Mthly   1st Monday in Month'),
(24, 'Food Storage Containers /canisters', 24, 0, 0, 0, 0, 0, 0, 0, 1, '* as emptied'),
(25, 'Bug Zapper  (If applicable)', 25, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
(26, 'All doors', 26, 0, 0, 0, 0, 0, 0, 0, 1, 'Mthly   2nd Monday each Month)'),
(27, 'Air vents, canopies/filters', 27, 0, 0, 0, 0, 0, 0, 0, 1, '3 Mthly by Maintenance  (as scheduled)');

-- --------------------------------------------------------

--
-- Table structure for table `check_list_facility_mapping`
--

CREATE TABLE `check_list_facility_mapping` (
  `chk_list_id` int(10) NOT NULL,
  `facility_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `check_list_facility_mapping`
--

INSERT INTO `check_list_facility_mapping` (`chk_list_id`, `facility_id`) VALUES
(1, 32),
(2, 32),
(3, 32),
(5, 32),
(7, 32),
(8, 32),
(9, 32),
(11, 32),
(13, 32),
(14, 32),
(23, 32),
(25, 32),
(27, 32),
(29, 32),
(36, 32),
(45, 32),
(54, 32),
(62, 32),
(66, 32),
(67, 32),
(68, 32),
(69, 32),
(70, 32),
(75, 32),
(76, 32),
(77, 32),
(78, 32),
(79, 32),
(80, 32),
(81, 32),
(1, 33),
(2, 33),
(3, 33),
(4, 33),
(5, 33),
(6, 33),
(7, 33),
(8, 33),
(11, 33),
(13, 33),
(14, 33),
(16, 33),
(17, 33),
(19, 33),
(20, 33),
(22, 33),
(24, 33),
(25, 33),
(26, 33),
(27, 33),
(28, 33),
(29, 33),
(30, 33),
(32, 33),
(34, 33),
(36, 33),
(39, 33),
(42, 33),
(44, 33),
(46, 33),
(48, 33),
(55, 33),
(56, 33),
(57, 33),
(58, 33),
(59, 33),
(60, 33),
(61, 33),
(62, 33),
(63, 33),
(64, 33),
(68, 33),
(70, 33),
(72, 33),
(75, 33),
(76, 33),
(77, 33),
(78, 33),
(79, 33),
(80, 33),
(81, 33),
(1, 37),
(2, 37),
(75, 37),
(77, 37),
(79, 37),
(80, 37),
(81, 37);

-- --------------------------------------------------------

--
-- Table structure for table `check_list_group_master`
--

CREATE TABLE `check_list_group_master` (
  `grp_id` int(10) NOT NULL,
  `grp_desc` varchar(500) NOT NULL,
  `grp_order` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `check_list_group_master`
--

INSERT INTO `check_list_group_master` (`grp_id`, `grp_desc`, `grp_order`) VALUES
(1, 'Incoming goods', 1),
(2, 'Dry Goods Storage', 2),
(3, 'Coolroom, Freezer, Underbench fridge, Bar fridge, Others (Kitchenette), Staff (if applicable) ', 3),
(4, 'Cooking, Reheating, Cooling, Meal preparation, Vitamised food, Vitamiser blade, Process times, Meal  service, Allergen controls', 4),
(5, 'Chemical Products', 5),
(6, 'Cleaning schedules : Kitchen, Dining Room/s, Kitchenettes  ', 6),
(7, 'Garbage, All Areas ', 7),
(8, 'Staff', 8),
(9, 'Staff training records', 9),
(10, 'Pest Control', 10),
(11, 'Suppliers', 11),
(12, 'Maintenance', 12),
(13, 'Calibration', 13),
(14, 'Resident Complaint and Food Recall Policy ', 14);

-- --------------------------------------------------------

--
-- Table structure for table `check_list_master`
--

CREATE TABLE `check_list_master` (
  `chk_list_id` int(10) NOT NULL,
  `chk_list_grp_id` int(10) NOT NULL,
  `chk_list_item_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `check_list_master`
--

INSERT INTO `check_list_master` (`chk_list_id`, `chk_list_grp_id`, `chk_list_item_name`) VALUES
(1, 1, 'Refrigerated trucks where stated'),
(2, 1, 'Correct temperatures recorded'),
(3, 1, 'Correct packaging – no rusted, swollen or dented cans'),
(4, 1, 'Goods ordered and labeled as below 5° C  or Frozen'),
(5, 1, 'Current Use-By and Best-Before Dates applicable to goods'),
(6, 1, 'Dry goods checked, documented and in good condition'),
(7, 1, 'Clean well maintained trucks (see incoming goods vehicle check)'),
(8, 1, 'The food delivery personnel display high standards of personal hygiene practices'),
(9, 2, 'All food covered and dated'),
(10, 2, 'Food sealed correctly and in food grade lidded containers'),
(11, 2, 'Stock rotated / First in- First out (check use-by-dates of stock)'),
(12, 2, 'Clean storage areas for dry goods'),
(13, 2, 'No visible sign of pests'),
(14, 2, 'Items stored off floor or on wheels.'),
(15, 3, 'Correct temperatures'),
(16, 3, 'Foods covered and dated with use-by-dates.'),
(17, 3, 'No out-of-date foods or use- by-dates'),
(18, 3, 'Correct storage (raw food separated and stored below cooked foods)'),
(19, 3, 'Thawing food is covered, dated, on a tray and below cooked or ready-to -eat food.'),
(20, 3, 'Clean and tidy units including handles and tops of units'),
(21, 3, 'No ice build-up in freezer'),
(22, 3, 'Door seals clean and in good repair'),
(23, 4, 'Cooking temperatures correctly documented (@ or above 75° C)'),
(24, 4, 'Reheating temperatures (@ or above 75° C)'),
(25, 4, 'Cooling Temperatures as per 2/4 hour FSANZ guide.'),
(26, 4, 'Preparation time frame documented (within 2 hours-total)'),
(27, 4, 'Vitamised food heated (@ or above 75° C)'),
(28, 4, 'Vitamised blade re-sanitised –prior to each use'),
(29, 4, 'Process log completed (within 2 hours)'),
(30, 4, 'Temperature @ meal service (Bain Marie) compliant (@ or above 60° C)'),
(31, 4, 'Allergen controls strictly adhered to'),
(32, 5, 'Chemicals stored correctly and away from food storage areas'),
(33, 5, 'Chemicals sealed and correctly labelled'),
(34, 5, 'Correct colour coded equipment for kitchen use only'),
(35, 5, 'Mops and Buckets stored up side down to dry correctly'),
(36, 5, 'Chemical Data visible (listing correct chemicals on-site and use)'),
(37, 5, 'Cleaning area and equipment maintained as clean'),
(38, 6, 'All cleaning procedures carried out correctly,'),
(39, 6, 'Correct cleaning of equipment'),
(40, 6, 'Correct use of cleaning equipment and chemicals'),
(41, 7, 'Bins emptied out each day then washed, sanitised and stored to air dry'),
(42, 7, 'Waste disposal area kept clean with lids closed flush, to avoid attraction to pests'),
(43, 7, 'Rubbish being correctly stored for re-cycle laws'),
(44, 7, 'Rubbish not stored in thoroughfares'),
(45, 7, 'Contractor meeting company contract standards'),
(46, 8, 'Clean clothes/shoes/aprons'),
(47, 8, 'Correct hair cover where required'),
(48, 8, 'Correct use of food handling gloves'),
(49, 8, 'Jewelry: only plain banded rings and sleepers permitted'),
(50, 8, 'No nail polish or false nails allowed (or covered with a glove)'),
(51, 8, 'Band-aids coloured (blue) and covered with a glove if wound is on hand'),
(52, 8, 'Illness records documented'),
(53, 8, 'All food handling and personal hygiene practices adhered  to'),
(54, 8, 'Policies understood/protocols signed'),
(55, 9, 'Every member of Food Service staff has obtained a food hygiene and handling training'),
(56, 9, 'Revision training sessions every 2 years'),
(57, 9, 'Training records kept updated'),
(58, 10, 'Check contracts’ records that preventative pest control procedures are being carried out and completed documentation filed correctly'),
(59, 10, 'Check documentation on pest findings and action taken'),
(60, 11, 'Check suppliers are meeting company policy for delivery, receival and quality of goods'),
(61, 11, 'Ensure records of approved suppliers are kept updated'),
(62, 11, 'Arrange for letters of the terms and conditions to be sent to new suppliers'),
(63, 11, 'Make changes to list with the introduction of new suppliers'),
(64, 11, 'Are Food Act and HACCP Certification current (check annually)'),
(65, 12, 'Check that all equipment has been checked, maintained and recorded'),
(66, 12, 'Paint not peeling'),
(67, 12, 'Tiles and utensils in good repair (no cracked tiles)'),
(68, 12, 'Ovens clean and in good repair'),
(69, 12, 'Refrigeration and door seals checked'),
(70, 12, 'Lights covered and cleaned'),
(71, 12, 'Exhaust vents cleaned'),
(72, 12, 'Cooling vents and high fittings cleaned and in good repair'),
(73, 12, 'Ceiling fans cleaned'),
(74, 12, 'Coolroom fan and covers clean and free of dust and mould'),
(75, 13, '1. Temperature probe/s'),
(76, 13, '2. Coolroom, Fridges and Freezer Temperatures'),
(77, 13, '3. Dishwasher temperatures (*Wash Cycle 60°C, Rinse cycle 82°C) *Commercial Dishwashers'),
(78, 13, '4. Microwave ovens'),
(79, 14, 'Check all complaints and recalls are documented'),
(80, 14, 'Review food safety program (if applicable)'),
(81, 14, 'Check all returns are documented on the Corrective Action record and follow up advice or refunds received');

-- --------------------------------------------------------

--
-- Table structure for table `cleaning_checklist_detail`
--

CREATE TABLE `cleaning_checklist_detail` (
  `id` int(10) NOT NULL,
  `cleaning_checklist_id` int(10) NOT NULL,
  `checklist_job_id` int(10) NOT NULL,
  `monday` tinyint(1) DEFAULT NULL,
  `tuesday` tinyint(1) DEFAULT NULL,
  `wednesday` tinyint(1) DEFAULT NULL,
  `thursday` tinyint(1) DEFAULT NULL,
  `friday` tinyint(1) DEFAULT NULL,
  `saturday` tinyint(1) DEFAULT NULL,
  `sunday` tinyint(1) DEFAULT NULL,
  `none_text` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `cleaning_checklist_detail`
--

INSERT INTO `cleaning_checklist_detail` (`id`, `cleaning_checklist_id`, `checklist_job_id`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`, `sunday`, `none_text`) VALUES
(1, 1, 1, 1, 0, 0, 0, 0, 0, 0, NULL),
(2, 1, 2, 0, 1, 0, 0, 0, 0, 0, NULL),
(3, 1, 3, 0, 0, 1, 0, 0, 0, 0, NULL),
(4, 1, 4, 0, 0, 0, 1, 0, 0, 0, NULL),
(5, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Outsourced by laundry contractors  (Store for pickup daily) '),
(6, 1, 6, 0, 0, 1, 0, 0, 0, 0, NULL),
(7, 1, 7, 0, 1, 0, 0, 0, 0, 0, NULL),
(8, 1, 8, 1, 0, 0, 0, 0, 0, 0, NULL),
(9, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '(Dispose of After each use)'),
(10, 1, 10, 0, 0, 0, 0, 0, 0, NULL, NULL),
(11, 1, 11, 0, 0, 0, 0, 0, 0, 0, NULL),
(12, 1, 12, 0, 0, 0, 0, 0, 0, 0, NULL),
(13, 1, 13, 0, NULL, NULL, NULL, NULL, 0, 0, NULL),
(14, 1, 14, 0, 0, 0, 0, 0, 0, 0, NULL),
(15, 1, 15, 0, 0, 0, 0, 0, 0, 0, NULL),
(16, 1, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Empty buckets after use and store mops for cleaners –daily'),
(17, 1, 17, 0, 0, 0, 0, 0, 0, 0, NULL),
(18, 1, 18, 0, 0, 0, 0, 0, 0, 0, NULL),
(19, 1, 19, 0, 0, 0, 0, 0, NULL, 0, NULL),
(20, 1, 20, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(21, 1, 21, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(22, 1, 22, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(23, 1, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mthly   1st Monday in Month'),
(24, 1, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '* as emptied'),
(25, 1, 25, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(26, 1, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mthly   2nd Monday each Month)'),
(27, 1, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3 Mthly by Maintenance  (as scheduled)'),
(28, 2, 1, 1, 0, 0, 0, 0, 0, 0, NULL),
(29, 2, 2, 0, 1, 0, 0, 0, 0, 0, NULL),
(30, 2, 3, 0, 0, 1, 0, 0, 0, 0, NULL),
(31, 2, 4, 0, 0, 0, 1, 0, 0, 0, NULL),
(32, 2, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Outsourced by laundry contractors  (Store for pickup daily) '),
(33, 2, 6, 0, 0, 0, 0, 1, 0, 0, NULL),
(34, 2, 7, 0, 0, 0, 0, 0, 0, 0, NULL),
(35, 2, 8, 0, 0, 0, 0, 0, 0, 0, NULL),
(36, 2, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '(Dispose of After each use)'),
(37, 2, 10, 0, 0, 0, 0, 0, 0, NULL, NULL),
(38, 2, 11, 0, 0, 0, 0, 0, 0, 0, NULL),
(39, 2, 12, 0, 0, 0, 0, 0, 0, 0, NULL),
(40, 2, 13, 0, NULL, NULL, NULL, NULL, 0, 0, NULL),
(41, 2, 14, 0, 0, 0, 0, 0, 0, 0, NULL),
(42, 2, 15, 0, 0, 0, 0, 0, 0, 0, NULL),
(43, 2, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Empty buckets after use and store mops for cleaners –daily'),
(44, 2, 17, 0, 0, 0, 0, 0, 0, 0, NULL),
(45, 2, 18, 0, 0, 0, 0, 0, 0, 0, NULL),
(46, 2, 19, 0, 0, 0, 0, 0, NULL, 0, NULL),
(47, 2, 20, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(48, 2, 21, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(49, 2, 22, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(50, 2, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mthly   1st Monday in Month'),
(51, 2, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '* as emptied'),
(52, 2, 25, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(53, 2, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mthly   2nd Monday each Month)'),
(54, 2, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3 Mthly by Maintenance  (as scheduled)');

-- --------------------------------------------------------

--
-- Table structure for table `cleaning_checklist_master`
--

CREATE TABLE `cleaning_checklist_master` (
  `cleaning_checklist_id` int(10) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `cleaning_checklist_created_by` int(10) DEFAULT NULL,
  `checked_by` int(10) DEFAULT NULL,
  `checked_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `cleaning_checklist_master`
--

INSERT INTO `cleaning_checklist_master` (`cleaning_checklist_id`, `start_date`, `end_date`, `cleaning_checklist_created_by`, `checked_by`, `checked_on`) VALUES
(1, '2017-05-01', '2017-05-07', 1, 0, '0000-00-00 00:00:00'),
(2, '2017-05-08', '2017-05-14', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `corrective_action`
--

CREATE TABLE `corrective_action` (
  `id` int(10) NOT NULL,
  `report_id` int(10) NOT NULL,
  `report_type` enum('maintenance','meal','incoming','internal','checklist','cooling','combined','preparation','refrigeration') NOT NULL,
  `report_issue_date` date DEFAULT NULL,
  `report_issue` varchar(250) DEFAULT NULL,
  `report_correction` varchar(250) DEFAULT NULL,
  `report_issue_created_by` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `corrective_action`
--

INSERT INTO `corrective_action` (`id`, `report_id`, `report_type`, `report_issue_date`, `report_issue`, `report_correction`, `report_issue_created_by`) VALUES
(1, 6, 'internal', '2017-05-31', 'Issue1', 'Action2', 1),
(2, 8, 'maintenance', '2017-01-27', 'Issue', 'Action', 1),
(3, 8, 'maintenance', '2017-05-28', 'Issue', 'Issue', 1),
(4, 1, 'internal', '2017-05-31', 'Issue', 'Action', 1),
(5, 1, 'internal', '2017-05-29', 'Issue', 'Action', 1),
(6, 2, 'meal', '2017-01-25', 'Issue', 'Action', 1),
(7, 2, 'meal', '2017-05-28', 'Issue', 'Action', 1),
(8, 2, 'checklist', '2017-01-01', 'Issue', 'Action', 1),
(9, 2, 'checklist', '2017-05-31', 'Issue', 'Action', 1),
(10, 1, 'checklist', '2017-05-01', 'Issue', 'Action', 1),
(11, 1, 'incoming', '0000-00-00', 'Issue', 'Action', 1),
(12, 6, 'cooling', '2017-05-31', 'Issue', 'Action', 2),
(13, 6, 'cooling', '2017-05-30', 'Issue', 'Action', 2),
(14, 6, 'cooling', '2017-05-31', 'Issue', 'Action', 2),
(15, 6, 'combined', '2017-05-31', 'Issue', 'Action', 2),
(16, 6, 'combined', '2017-05-30', 'Combined', 'Combined', 2);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(10) NOT NULL,
  `country_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`) VALUES
(1, 'Afghanistan'),
(2, 'Albania'),
(3, 'Algeria'),
(4, 'American Samoa'),
(5, 'Andorra'),
(6, 'Angola'),
(7, 'Anguilla'),
(8, 'Antarctica'),
(9, 'Antigua and Barbuda'),
(10, 'Argentina'),
(11, 'Armenia'),
(12, 'Aruba'),
(13, 'Australia'),
(14, 'Austria'),
(15, 'Azerbaijan'),
(16, 'Bahamas'),
(17, 'Bahrain'),
(18, 'Bangladesh'),
(19, 'Barbados'),
(20, 'Belarus'),
(21, 'Belgium'),
(22, 'Belize'),
(23, 'Benin'),
(24, 'Bermuda'),
(25, 'Bhutan'),
(26, 'Bolivia'),
(27, 'Bosnia and Herzegowina'),
(28, 'Botswana'),
(29, 'Bouvet Island'),
(30, 'Brazil'),
(31, 'British Indian Ocean Territory'),
(32, 'Brunei Darussalam'),
(33, 'Bulgaria'),
(34, 'Burkina Faso'),
(35, 'Burundi'),
(36, 'Cambodia'),
(37, 'Cameroon'),
(38, 'Canada'),
(39, 'Cape Verde'),
(40, 'Cayman Islands'),
(41, 'Central African Republic'),
(42, 'Chad'),
(43, 'Chile'),
(44, 'China'),
(45, 'Christmas Island'),
(46, 'Cocos (Keeling) Islands'),
(47, 'Colombia'),
(48, 'Comoros'),
(49, 'Congo'),
(50, 'Congo, the Democratic Republic of the'),
(51, 'Cook Islands'),
(52, 'Costa Rica'),
(53, 'Cote d''Ivoire'),
(54, 'Croatia (Hrvatska)'),
(55, 'Cuba'),
(56, 'Cyprus'),
(57, 'Czech Republic'),
(58, 'Denmark'),
(59, 'Djibouti'),
(60, 'Dominica'),
(61, 'Dominican Republic'),
(62, 'East Timor'),
(63, 'Ecuador'),
(64, 'Egypt'),
(65, 'El Salvador'),
(66, 'Equatorial Guinea'),
(67, 'Eritrea'),
(68, 'Estonia'),
(69, 'Ethiopia'),
(70, 'Falkland Islands (Malvinas)'),
(71, 'Faroe Islands'),
(72, 'Fiji'),
(73, 'Finland'),
(74, 'France'),
(75, 'France Metropolitan'),
(76, 'French Guiana'),
(77, 'French Polynesia'),
(78, 'French Southern Territories'),
(79, 'Gabon'),
(80, 'Gambia'),
(81, 'Georgia'),
(82, 'Germany'),
(83, 'Ghana'),
(84, 'Gibraltar'),
(85, 'Greece'),
(86, 'Greenland'),
(87, 'Grenada'),
(88, 'Guadeloupe'),
(89, 'Guam'),
(90, 'Guatemala'),
(91, 'Guinea'),
(92, 'Guinea-Bissau'),
(93, 'Guyana'),
(94, 'Haiti'),
(95, 'Heard and Mc Donald Islands'),
(96, 'Holy See (Vatican City State)'),
(97, 'Honduras'),
(98, 'Hong Kong'),
(99, 'Hungary'),
(100, 'Iceland'),
(101, 'India'),
(102, 'Indonesia'),
(103, 'Iran (Islamic Republic of)'),
(104, 'Iraq'),
(105, 'Ireland'),
(106, 'Israel'),
(107, 'Italy'),
(108, 'Jamaica'),
(109, 'Japan'),
(110, 'Jordan'),
(111, 'Kazakhstan'),
(112, 'Kenya'),
(113, 'Kiribati'),
(114, 'Korea, Democratic People''s Republic of'),
(115, 'Korea, Republic of'),
(116, 'Kuwait'),
(117, 'Kyrgyzstan'),
(118, 'Lao, People''s Democratic Republic'),
(119, 'Latvia'),
(120, 'Lebanon'),
(121, 'Lesotho'),
(122, 'Liberia'),
(123, 'Libyan Arab Jamahiriya'),
(124, 'Liechtenstein'),
(125, 'Lithuania'),
(126, 'Luxembourg'),
(127, 'Macau'),
(128, 'Macedonia, The Former Yugoslav Republic of'),
(129, 'Madagascar'),
(130, 'Malawi'),
(131, 'Malaysia'),
(132, 'Maldives'),
(133, 'Mali'),
(134, 'Malta'),
(135, 'Marshall Islands'),
(136, 'Martinique'),
(137, 'Mauritania'),
(138, 'Mauritius'),
(139, 'Mayotte'),
(140, 'Mexico'),
(141, 'Micronesia, Federated States of'),
(142, 'Moldova, Republic of'),
(143, 'Monaco'),
(144, 'Mongolia'),
(145, 'Montserrat'),
(146, 'Morocco'),
(147, 'Mozambique'),
(148, 'Myanmar'),
(149, 'Namibia'),
(150, 'Nauru'),
(151, 'Nepal'),
(152, 'Netherlands'),
(153, 'Netherlands Antilles'),
(154, 'New Caledonia'),
(155, 'New Zealand'),
(156, 'Nicaragua'),
(157, 'Niger'),
(158, 'Nigeria'),
(159, 'Niue'),
(160, 'Norfolk Island'),
(161, 'Northern Mariana Islands'),
(162, 'Norway'),
(163, 'Oman'),
(164, 'Pakistan'),
(165, 'Palau'),
(166, 'Panama'),
(167, 'Papua New Guinea'),
(168, 'Paraguay'),
(169, 'Peru'),
(170, 'Philippines'),
(171, 'Pitcairn'),
(172, 'Poland'),
(173, 'Portugal'),
(174, 'Puerto Rico'),
(175, 'Qatar'),
(176, 'Reunion'),
(177, 'Romania'),
(178, 'Russian Federation'),
(179, 'Rwanda'),
(180, 'Saint Kitts and Nevis'),
(181, 'Saint Lucia'),
(182, 'Saint Vincent and the Grenadines'),
(183, 'Samoa'),
(184, 'San Marino'),
(185, 'Sao Tome and Principe'),
(186, 'Saudi Arabia'),
(187, 'Senegal'),
(188, 'Seychelles'),
(189, 'Sierra Leone'),
(190, 'Singapore'),
(191, 'Slovakia (Slovak Republic)'),
(192, 'Slovenia'),
(193, 'Solomon Islands'),
(194, 'Somalia'),
(195, 'South Africa'),
(196, 'South Georgia and the South Sandwich Islands'),
(197, 'Spain'),
(198, 'Sri Lanka'),
(199, 'St. Helena'),
(200, 'St. Pierre and Miquelon'),
(201, 'Sudan'),
(202, 'Suriname'),
(203, 'Svalbard and Jan Mayen Islands'),
(204, 'Swaziland'),
(205, 'Sweden'),
(206, 'Switzerland'),
(207, 'Syrian Arab Republic'),
(208, 'Taiwan, Province of China'),
(209, 'Tajikistan'),
(210, 'Tanzania, United Republic of'),
(211, 'Thailand'),
(212, 'Togo'),
(213, 'Tokelau'),
(214, 'Tonga'),
(215, 'Trinidad and Tobago'),
(216, 'Tunisia'),
(217, 'Turkey'),
(218, 'Turkmenistan'),
(219, 'Turks and Caicos Islands'),
(220, 'Tuvalu'),
(221, 'Uganda'),
(222, 'Ukraine'),
(223, 'United Arab Emirates'),
(224, 'United Kingdom'),
(225, 'United States'),
(226, 'United States Minor Outlying Islands'),
(227, 'Uruguay'),
(228, 'Uzbekistan'),
(229, 'Vanuatu'),
(230, 'Venezuela'),
(231, 'Vietnam'),
(232, 'Virgin Islands (British)'),
(233, 'Virgin Islands (U.S.)'),
(234, 'Wallis and Futuna Islands'),
(235, 'Western Sahara'),
(236, 'Yemen'),
(237, 'Yugoslavia'),
(238, 'Zambia'),
(239, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `daily_monitoring_report_combined`
--

CREATE TABLE `daily_monitoring_report_combined` (
  `id` int(10) NOT NULL,
  `daily_moni_rep_id` int(10) NOT NULL,
  `food_services` varchar(150) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `time_cooking` time DEFAULT NULL,
  `cooking_core_temp` varchar(50) DEFAULT NULL,
  `vitamised_food_temp` varchar(50) NOT NULL,
  `time_cooking_completed` time DEFAULT NULL,
  `time_plating_begin` time DEFAULT NULL,
  `temp_start_plating` varchar(50) DEFAULT NULL,
  `time_plating_end` time DEFAULT NULL,
  `daily_moni_detail_created_date` datetime NOT NULL,
  `daily_moni_detail_created_by` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `daily_monitoring_report_combined`
--

INSERT INTO `daily_monitoring_report_combined` (`id`, `daily_moni_rep_id`, `food_services`, `product_name`, `time_cooking`, `cooking_core_temp`, `vitamised_food_temp`, `time_cooking_completed`, `time_plating_begin`, `temp_start_plating`, `time_plating_end`, `daily_moni_detail_created_date`, `daily_moni_detail_created_by`) VALUES
(201, 6, 'breakfast', 'Milks', '14:37:25', '15:37:25', '', '18:00:00', NULL, '', NULL, '0000-00-00 00:00:00', 2),
(202, 6, 'breakfast', 'Soup', '18:08:00', NULL, '', '10:45:00', NULL, '', NULL, '0000-00-00 00:00:00', 1),
(203, 6, 'lunch', 'Veg', '00:00:00', NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 2),
(204, 6, 'lunch', '', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(205, 6, 'lunch', '', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(206, 6, 'lunch', '', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(207, 6, 'lunch', '', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(208, 6, 'lunch', '', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(209, 6, 'lunch', '', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(210, 6, 'lunch', '', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(211, 6, 'lunch', '', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(212, 6, 'evening', '', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(213, 6, 'evening', '', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(214, 6, 'evening', '', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(215, 6, 'evening', '', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(216, 6, 'evening', '', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(217, 6, 'evening', '', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(218, 6, 'evening', '', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(219, 6, 'evening', '', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(220, 6, 'evening', '', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(221, 7, 'breakfast', 'Porridge', '06:32:24', NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 2),
(222, 7, 'breakfast', 'Eggs(cook to 75� C) Milk Other ', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(223, 7, 'lunch', 'Main meat', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(224, 7, 'lunch', '2nd choice', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(225, 7, 'lunch', 'Vitamised', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(226, 7, 'lunch', 'Other', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(227, 7, 'lunch', 'Mash Potato', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(228, 7, 'lunch', 'Vegetables(add name of each vegetable)', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(229, 7, 'lunch', '1', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(230, 7, 'lunch', '2', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(231, 7, 'lunch', 'Dessert', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(232, 7, 'evening', 'Main meat', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(233, 7, 'evening', '2nd choice', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(234, 7, 'evening', 'Vitamised', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(235, 7, 'evening', 'Other', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(236, 7, 'evening', 'Mash Potato', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(237, 7, 'evening', 'Vegetables(add name of each vegetable)', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(238, 7, 'evening', '1', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(239, 7, 'evening', '2', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(240, 7, 'evening', 'Dessert', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(301, 0, 'breakfast', 'Porridge', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(302, 0, 'breakfast', 'Eggs(cook to 75� C) Milk Other ', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(303, 0, 'lunch', 'Main meat', '01:00:13', NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(304, 0, 'lunch', '2nd choice', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(305, 0, 'lunch', 'Vitamised', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(306, 0, 'lunch', 'Other', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(307, 0, 'lunch', 'Mash Potato', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(308, 0, 'lunch', 'Vegetables(add name of each vegetable)', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(309, 0, 'lunch', '1', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(310, 0, 'lunch', '2', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(311, 0, 'lunch', 'Dessert', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(312, 0, 'evening', 'Main meat', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(313, 0, 'evening', '2nd choice', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(314, 0, 'evening', 'Vitamised', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(315, 0, 'evening', 'Other', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(316, 0, 'evening', 'Mash Potato', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(317, 0, 'evening', 'Vegetables(add name of each vegetable)', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(318, 0, 'evening', '1', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(319, 0, 'evening', '2', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(320, 0, 'evening', 'Dessert', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(341, 10, 'breakfast', 'Porridge', '01:00:01', NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 1),
(342, 10, 'breakfast', 'Eggs(cook to 75� C) Milk Other ', '01:00:01', NULL, '', NULL, '13:23:41', '', NULL, '0000-00-00 00:00:00', 1),
(343, 10, 'lunch', 'Main meat', '01:00:01', NULL, '', NULL, '13:05:53', '', NULL, '0000-00-00 00:00:00', 1),
(344, 10, 'lunch', '2nd choice', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(345, 10, 'lunch', 'Vitamised', NULL, NULL, '', NULL, '13:25:50', '', NULL, '0000-00-00 00:00:00', 1),
(346, 10, 'lunch', 'Other', NULL, NULL, '', NULL, NULL, '', '13:26:35', '0000-00-00 00:00:00', 1),
(347, 10, 'lunch', 'Mash Potato', '01:00:01', NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 1),
(348, 10, 'lunch', 'Vegetables(add name of each vegetable)', NULL, NULL, '', NULL, NULL, 'Test', NULL, '0000-00-00 00:00:00', 1),
(349, 10, 'lunch', '1', NULL, NULL, '', '13:26:01', NULL, '', NULL, '0000-00-00 00:00:00', 1),
(350, 10, 'lunch', '2', NULL, NULL, 'tEST', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 1),
(351, 10, 'lunch', 'Dessert', NULL, 'tEST', '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 1),
(352, 10, 'evening', 'Main meat', '01:00:01', NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 1),
(353, 10, 'evening', '2nd choice', '01:00:01', NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 1),
(354, 10, 'evening', 'Vitamised', '01:00:01', NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 1),
(355, 10, 'evening', 'Other', '01:00:01', 'test', '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 1),
(356, 10, 'evening', 'Mash Potato', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(357, 10, 'evening', 'Vegetables(add name of each vegetable)', '01:00:01', NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 1),
(358, 10, 'evening', '1', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(359, 10, 'evening', '2', '01:00:01', NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 1),
(360, 10, 'evening', 'Dessert', '01:00:01', NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 1),
(441, 15, 'breakfast', 'Porridge', '10:12:15', NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 1),
(442, 15, 'breakfast', 'Eggs(cook to 75° C) Milk Other ', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(443, 15, 'lunch', 'Main meat', '13:00:00', NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 1),
(444, 15, 'lunch', '2nd choice', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(445, 15, 'lunch', 'Vitamised', '15:00:00', NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 1),
(446, 15, 'lunch', 'Other', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(447, 15, 'lunch', 'Mash Potato', '17:00:00', NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 1),
(448, 15, 'lunch', 'Vegetables(add name of each vegetable)', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(449, 15, 'lunch', '1', '19:00:00', NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 1),
(450, 15, 'lunch', '2', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(451, 15, 'lunch', 'Dessert', '21:00:00', NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 1),
(452, 15, 'evening', 'Main meat', '10:12:52', NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 1),
(453, 15, 'evening', '2nd choice', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(454, 15, 'evening', 'Vitamised', '12:12:55', NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 1),
(455, 15, 'evening', 'Other', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(456, 15, 'evening', 'Mash Potato', '14:13:00', NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 1),
(457, 15, 'evening', 'Vegetables(add name of each vegetable)', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(458, 15, 'evening', '1', '16:13:06', NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 1),
(459, 15, 'evening', '2', NULL, NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 0),
(460, 15, 'evening', 'Dessert', '18:13:10', NULL, '', NULL, NULL, '', NULL, '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `daily_monitoring_report_cooling`
--

CREATE TABLE `daily_monitoring_report_cooling` (
  `id` int(10) NOT NULL,
  `daily_moni_rep_id` int(10) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `time_process_begin` time NOT NULL,
  `temp_at_begining_process` varchar(50) NOT NULL,
  `time_at_two_hour` time DEFAULT NULL,
  `temp_at_two_hour` varchar(50) NOT NULL,
  `time_at_six_hour` time NOT NULL,
  `temp_at_six_hour` varchar(50) NOT NULL,
  `daily_moni_cooling_created_date` datetime NOT NULL,
  `daily_moni_cooling_created_by` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `daily_monitoring_report_cooling`
--

INSERT INTO `daily_monitoring_report_cooling` (`id`, `daily_moni_rep_id`, `product_name`, `time_process_begin`, `temp_at_begining_process`, `time_at_two_hour`, `temp_at_two_hour`, `time_at_six_hour`, `temp_at_six_hour`, `daily_moni_cooling_created_date`, `daily_moni_cooling_created_by`) VALUES
(28, 6, 'Test', '10:46:00', '100', '21:46:00', '10', '23:46:00', '100', '2017-05-23 09:50:55', 1),
(29, 6, 'Test', '10:46:00', '100', '21:46:00', '10', '23:46:00', '100', '0000-00-00 00:00:00', 1),
(30, 6, 'Test1', '10:46:00', '100', '21:46:00', '10', '23:46:00', '100', '0000-00-00 00:00:00', 1),
(31, 6, 'Test', '10:46:00', '100', '21:46:00', '10', '23:46:00', '100', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `daily_monitoring_report_master`
--

CREATE TABLE `daily_monitoring_report_master` (
  `daily_moni_rep_id` int(10) NOT NULL,
  `facility_id` int(10) NOT NULL,
  `kitchenette_id` int(10) NOT NULL,
  `report_date` date NOT NULL,
  `daily_moni_created_date` datetime NOT NULL,
  `daily_moni_created_by` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `daily_monitoring_report_master`
--

INSERT INTO `daily_monitoring_report_master` (`daily_moni_rep_id`, `facility_id`, `kitchenette_id`, `report_date`, `daily_moni_created_date`, `daily_moni_created_by`) VALUES
(6, 37, 4, '2017-05-23', '2017-05-23 09:50:55', 1),
(7, 37, 4, '2017-05-24', '2017-05-24 06:32:24', 2),
(8, 37, 4, '2017-05-25', '2017-05-25 07:28:42', 1),
(10, 37, 4, '2017-05-26', '2017-05-26 09:29:33', 1),
(15, 37, 4, '2017-05-30', '2017-05-30 06:43:17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `daily_monitoring_report_preparation`
--

CREATE TABLE `daily_monitoring_report_preparation` (
  `id` int(10) NOT NULL,
  `daily_moni_rep_id` int(10) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `time_preparation_begin` time DEFAULT NULL,
  `temp_preparation_begin` varchar(50) DEFAULT 'N/A',
  `time_back_in_refrigeration` time DEFAULT NULL,
  `time_out_in_refrigeration` time DEFAULT NULL,
  `time_of_service` time DEFAULT NULL,
  `total_time_in_room_temp` time DEFAULT NULL,
  `daily_moni_preparation_created_date` datetime NOT NULL,
  `daily_moni_preparation_created_by` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `daily_monitoring_report_preparation`
--

INSERT INTO `daily_monitoring_report_preparation` (`id`, `daily_moni_rep_id`, `product_name`, `time_preparation_begin`, `temp_preparation_begin`, `time_back_in_refrigeration`, `time_out_in_refrigeration`, `time_of_service`, `total_time_in_room_temp`, `daily_moni_preparation_created_date`, `daily_moni_preparation_created_by`) VALUES
(31, 6, 'Product01', NULL, '', NULL, NULL, NULL, NULL, '2017-05-23 10:39:41', 1),
(32, 6, 'Product02', NULL, '', NULL, NULL, NULL, NULL, '2017-05-23 10:39:42', 1),
(33, 6, 'Product03', NULL, '', NULL, NULL, NULL, NULL, '2017-05-23 10:39:42', 1),
(34, 6, 'Product04', NULL, '', NULL, NULL, NULL, NULL, '2017-05-23 10:39:42', 1),
(35, 6, '', NULL, '', NULL, NULL, NULL, NULL, '2017-05-23 10:39:42', 0),
(36, 8, 'Product1', '10:58:00', '', '11:58:00', NULL, NULL, '01:00:00', '2017-05-25 07:28:42', 1),
(37, 8, '', NULL, '', NULL, NULL, NULL, NULL, '2017-05-25 07:28:42', 0),
(38, 8, '', NULL, '', NULL, NULL, NULL, NULL, '2017-05-25 07:28:42', 0),
(39, 8, '', NULL, '', NULL, NULL, NULL, NULL, '2017-05-25 07:28:42', 0),
(40, 8, '', NULL, '', NULL, NULL, NULL, NULL, '2017-05-25 07:28:42', 0);

-- --------------------------------------------------------

--
-- Table structure for table `daily_monitoring_report_refrigeration`
--

CREATE TABLE `daily_monitoring_report_refrigeration` (
  `id` int(10) NOT NULL,
  `daily_moni_rep_id` int(10) NOT NULL,
  `refr_stock_time_of_check` time NOT NULL,
  `is_stock_covered` tinyint(1) NOT NULL,
  `is_shelving` tinyint(1) NOT NULL,
  `is_all_item` tinyint(1) NOT NULL,
  `is_raw_food` tinyint(1) NOT NULL,
  `is_egg_contains` tinyint(1) NOT NULL,
  `is_containers` tinyint(1) NOT NULL,
  `refrigeration_checked_by` int(10) NOT NULL,
  `is_all_stock_sealed` tinyint(1) NOT NULL,
  `unit_not_overloaded` enum('Yes','No') DEFAULT NULL,
  `freezer_checked_by` int(10) NOT NULL,
  `dishwasher_time` time NOT NULL,
  `dishwasher_action` varchar(255) DEFAULT NULL,
  `is_drystorage_stock_covered` tinyint(1) NOT NULL,
  `is_drystorage_shelving` tinyint(1) NOT NULL,
  `is_drystorage_item_stored` tinyint(1) NOT NULL,
  `is_drystorage_noevidence` tinyint(1) NOT NULL,
  `drystorage_checked_by` int(10) NOT NULL,
  `probe_month_march` enum('Hot','Cold') DEFAULT NULL,
  `probe_month_september` enum('Cold','Hot') DEFAULT NULL,
  `probe_checked_by` int(10) NOT NULL,
  `sanitisation_proc_time` time DEFAULT NULL,
  `sanitisation_proc_who` varchar(150) DEFAULT NULL,
  `sanitisation_proc_what` varchar(150) DEFAULT NULL,
  `sanitisation_proc_checked_by` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `daily_monitoring_report_refrigeration`
--

INSERT INTO `daily_monitoring_report_refrigeration` (`id`, `daily_moni_rep_id`, `refr_stock_time_of_check`, `is_stock_covered`, `is_shelving`, `is_all_item`, `is_raw_food`, `is_egg_contains`, `is_containers`, `refrigeration_checked_by`, `is_all_stock_sealed`, `unit_not_overloaded`, `freezer_checked_by`, `dishwasher_time`, `dishwasher_action`, `is_drystorage_stock_covered`, `is_drystorage_shelving`, `is_drystorage_item_stored`, `is_drystorage_noevidence`, `drystorage_checked_by`, `probe_month_march`, `probe_month_september`, `probe_checked_by`, `sanitisation_proc_time`, `sanitisation_proc_who`, `sanitisation_proc_what`, `sanitisation_proc_checked_by`) VALUES
(2, 6, '12:28:03', 1, 0, 0, 0, 0, 1, 0, 0, '', 0, '00:00:00', NULL, 0, 1, 1, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(3, 15, '08:35:18', 0, 1, 1, 1, 0, 1, 0, 0, '', 0, '00:00:00', 'test test', 0, 1, 1, 0, 0, NULL, NULL, 0, NULL, 'test', 'test', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `daily_monitoring_report_refrigeration_detail`
--

CREATE TABLE `daily_monitoring_report_refrigeration_detail` (
  `id` int(10) NOT NULL,
  `daily_moni_rep_id` int(10) NOT NULL,
  `refrigeration_unit_name` varchar(150) NOT NULL COMMENT 'will take the name from assets table',
  `time_am` time DEFAULT NULL,
  `temp_am` varchar(50) NOT NULL,
  `time_pm` time DEFAULT NULL,
  `temp_pm` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `daily_monitoring_report_refrigeration_detail`
--

INSERT INTO `daily_monitoring_report_refrigeration_detail` (`id`, `daily_moni_rep_id`, `refrigeration_unit_name`, `time_am`, `temp_am`, `time_pm`, `temp_pm`) VALUES
(14, 6, 'A1', '15:39:00', '', '15:49:00', ''),
(17, 15, 'A1', '11:37:00', '', '11:37:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `daily_monitoring_report_user_mapping`
--

CREATE TABLE `daily_monitoring_report_user_mapping` (
  `id` int(10) NOT NULL,
  `daily_moni_rep_id` int(10) NOT NULL,
  `checked_by` int(10) NOT NULL,
  `checked_on` datetime NOT NULL,
  `report_type` enum('combined','cooling','preparation','refrigeration') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `facility`
--

CREATE TABLE `facility` (
  `facility_id` int(11) NOT NULL,
  `facility_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `address_1` varchar(250) DEFAULT NULL,
  `postcode` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `facility`
--

INSERT INTO `facility` (`facility_id`, `facility_name`, `first_name`, `last_name`, `phone`, `email`, `address`, `address_1`, `postcode`, `city`, `state`, `country`, `logo`, `status`) VALUES
(37, 'F3', 'F1', 'F1', '1234567890', 'f1@gmail.com', 'F1', '', '123456789', 'India', 'India', '101', '', 1),
(38, 'F2', 'F2', 'F2', '1234567890', 'f2@gmail.com', 'F2', 'F2', '123456789', 'India', 'India', '101', '', 1),
(39, 'F3', 'F2', 'F2', '1234567890', 'admin@abc.com', 'F2', '', '123456', 'F2', 'F2', '13', '', 0),
(40, 'F1', 'F2', 'F2', '1234567890', 'test@gmail.com', '<div class="infoMessage">*', '', '123456', 'F2', 'F2', '13', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `incoming_food_report_detail`
--

CREATE TABLE `incoming_food_report_detail` (
  `id` int(10) NOT NULL,
  `incoming_food_report_id` int(10) NOT NULL,
  `incoming_date` date NOT NULL,
  `incoming_supplier` varchar(255) DEFAULT NULL,
  `time_on_arrival` varchar(250) DEFAULT NULL,
  `product_being_tested` varchar(250) NOT NULL,
  `used_before_dates` varchar(10) DEFAULT NULL,
  `incoming_temp` varchar(250) NOT NULL DEFAULT 'N/A',
  `incoming_condition` varchar(10) DEFAULT NULL,
  `incoming_vehicle_check` varchar(10) DEFAULT NULL,
  `incoming_perishables_store` varchar(250) NOT NULL,
  `checked_by` int(10) NOT NULL,
  `checked_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `incoming_food_report_detail`
--

INSERT INTO `incoming_food_report_detail` (`id`, `incoming_food_report_id`, `incoming_date`, `incoming_supplier`, `time_on_arrival`, `product_being_tested`, `used_before_dates`, `incoming_temp`, `incoming_condition`, `incoming_vehicle_check`, `incoming_perishables_store`, `checked_by`, `checked_on`) VALUES
(1, 1, '0000-00-00', 'Supplier-1', '15:32', 'Product-1', 'Yes', '10', 'Yes', 'Yes', '15:32', 2, '2017-05-12 12:03:02'),
(2, 1, '0000-00-00', '', '', '', 'Yes', '', 'Yes', 'Yes', '', 2, '2017-05-12 12:03:02'),
(3, 1, '0000-00-00', '', '', '', 'Yes', '', 'Yes', 'Yes', '', 2, '2017-05-23 16:34:53'),
(4, 2, '2017-05-31', '', '', '', 'Yes', '', 'Yes', 'Yes', '10:42', 2, '2017-05-24 07:12:41'),
(5, 3, '2017-05-30', '', '', '', 'No', '', 'No', 'No', '', 2, '2017-05-24 07:16:00');

-- --------------------------------------------------------

--
-- Table structure for table `incoming_food_report_master`
--

CREATE TABLE `incoming_food_report_master` (
  `incoming_food_report_id` int(10) NOT NULL,
  `report_date` date NOT NULL,
  `incoming_food_created_date` datetime NOT NULL,
  `incoming_food_created_by` int(10) NOT NULL,
  `checked_by` int(10) NOT NULL,
  `checked_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `incoming_food_report_master`
--

INSERT INTO `incoming_food_report_master` (`incoming_food_report_id`, `report_date`, `incoming_food_created_date`, `incoming_food_created_by`, `checked_by`, `checked_on`) VALUES
(1, '2017-05-01', '2017-05-12 12:03:02', 1, 0, '0000-00-00 00:00:00'),
(2, '2017-09-01', '2017-05-24 07:12:41', 2, 0, '0000-00-00 00:00:00'),
(3, '2017-07-01', '2017-05-24 07:16:00', 2, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `internal_audit_report_detail`
--

CREATE TABLE `internal_audit_report_detail` (
  `id` int(10) NOT NULL,
  `int_aud_rep_id` int(10) NOT NULL,
  `grp_desc` varchar(250) NOT NULL,
  `grp_id` int(10) NOT NULL,
  `check_list_value` enum('Yes','No','N/A') NOT NULL,
  `non_compliance` varchar(500) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `internal_audit_report_detail`
--

INSERT INTO `internal_audit_report_detail` (`id`, `int_aud_rep_id`, `grp_desc`, `grp_id`, `check_list_value`, `non_compliance`, `created_date`) VALUES
(1, 1, 'Incoming goods', 1, 'Yes', '', '2017-05-18 06:46:27'),
(2, 1, 'Dry Goods Storage', 2, '', '', '2017-05-18 06:46:27'),
(3, 1, 'Coolroom,Freezer ,Underbench fridge ,Bar fridge ,Others (Kitchenette),Staff (if applicable) ', 3, '', '', '2017-05-18 06:46:27'),
(4, 1, 'Cooking, Reheating ,Cooling ,Meal preparation, Vitamised food, Vitamiser blade,Process times ,Meal  service ,Allergen controls', 4, '', '', '2017-05-18 06:46:27'),
(5, 1, 'Chemical Products', 5, '', '', '2017-05-18 06:46:27'),
(6, 1, 'Cleaning schedules : Kitchen ,Dining Room/s ,Kitchenettes  ', 6, '', '', '2017-05-18 06:46:27'),
(7, 1, 'Garbage, All Areas ', 7, '', '', '2017-05-18 06:46:27'),
(8, 1, 'Staff', 8, '', '', '2017-05-18 06:46:27'),
(9, 1, 'Staff training records', 9, '', '', '2017-05-18 06:46:27'),
(10, 1, 'Pest Control', 10, '', '', '2017-05-18 06:46:27'),
(11, 1, 'Suppliers', 11, '', '', '2017-05-18 06:46:27'),
(12, 1, 'Maintenance', 12, '', '', '2017-05-18 06:46:27'),
(13, 1, 'Calibration', 13, 'Yes', '', '2017-05-18 06:46:27'),
(14, 1, 'Resident Complaint and Food Recall Policy ', 14, 'Yes', '', '2017-05-18 06:46:27');

-- --------------------------------------------------------

--
-- Table structure for table `internal_audit_report_detail_mapping`
--

CREATE TABLE `internal_audit_report_detail_mapping` (
  `mapping_id` int(10) NOT NULL,
  `grp_id` int(10) NOT NULL,
  `int_aud_rep_id` int(10) NOT NULL,
  `chk_list_id` int(10) NOT NULL,
  `chk_list_item_name` varchar(500) NOT NULL,
  `is_checked` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `internal_audit_report_detail_mapping`
--

INSERT INTO `internal_audit_report_detail_mapping` (`mapping_id`, `grp_id`, `int_aud_rep_id`, `chk_list_id`, `chk_list_item_name`, `is_checked`) VALUES
(1, 1, 1, 1, 'Refrigerated trucks where stated', 1),
(2, 1, 1, 2, 'Correct temperatures recorded', 1),
(3, 13, 1, 75, '1. Temperature probe/s', 1),
(4, 13, 1, 77, '3. Dishwasher temperatures (*Wash Cycle 60°C, Rinse cycle 82°C) *Commercial Dishwashers', 1),
(5, 14, 1, 79, 'Check all complaints and recalls are documented', 0),
(6, 14, 1, 80, 'Review food safety program (if applicable)', 0),
(7, 14, 1, 81, 'Check all returns are documented on the Corrective Action record and follow up advice or refunds received', 0);

-- --------------------------------------------------------

--
-- Table structure for table `internal_audit_report_master`
--

CREATE TABLE `internal_audit_report_master` (
  `int_aud_rep_id` int(10) NOT NULL,
  `facility_id` int(10) NOT NULL,
  `report_date` date NOT NULL,
  `checked_by` int(10) DEFAULT NULL,
  `checked_on` datetime DEFAULT NULL,
  `int_aud_created_date` datetime NOT NULL,
  `int_aud_created_by` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `internal_audit_report_master`
--

INSERT INTO `internal_audit_report_master` (`int_aud_rep_id`, `facility_id`, `report_date`, `checked_by`, `checked_on`, `int_aud_created_date`, `int_aud_created_by`) VALUES
(1, 37, '2017-05-01', 0, NULL, '2017-05-12 09:00:38', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kitchenette`
--

CREATE TABLE `kitchenette` (
  `kitchenette_id` int(11) NOT NULL,
  `kitchenette_name` varchar(250) NOT NULL,
  `facility_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `kitchenette`
--

INSERT INTO `kitchenette` (`kitchenette_id`, `kitchenette_name`, `facility_id`, `status`) VALUES
(3, 'K1', 37, 0),
(4, 'K2', 37, 1);

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_calibration_report`
--

CREATE TABLE `maintenance_calibration_report` (
  `maintenance_id` int(10) NOT NULL,
  `report_date` date NOT NULL,
  `maintenance_created_date` datetime NOT NULL,
  `maintenance_created_by` int(10) NOT NULL,
  `checked_by` int(10) DEFAULT NULL,
  `checked_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `maintenance_calibration_report`
--

INSERT INTO `maintenance_calibration_report` (`maintenance_id`, `report_date`, `maintenance_created_date`, `maintenance_created_by`, `checked_by`, `checked_on`) VALUES
(6, '2017-05-05', '2017-05-05 12:33:52', 2, NULL, NULL),
(7, '2017-05-09', '2017-05-11 12:33:34', 1, NULL, NULL),
(8, '2017-05-12', '2017-05-12 08:45:41', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_calibration_report_detail`
--

CREATE TABLE `maintenance_calibration_report_detail` (
  `id` int(10) NOT NULL,
  `maintenance_id` int(10) NOT NULL,
  `unit_name` varchar(250) NOT NULL,
  `unit_date` date NOT NULL,
  `hot_check` varchar(250) NOT NULL DEFAULT 'N/A',
  `cold_check` varchar(250) NOT NULL DEFAULT 'N/A',
  `checked_by` int(10) DEFAULT NULL,
  `checked_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `maintenance_calibration_report_detail`
--

INSERT INTO `maintenance_calibration_report_detail` (`id`, `maintenance_id`, `unit_name`, `unit_date`, `hot_check`, `cold_check`, `checked_by`, `checked_on`) VALUES
(1, 6, 'Test', '2017-05-01', '0', '100', 2, '2017-05-05 12:33:52'),
(2, 8, 'Unit-1', '2017-05-28', '10', '0', 1, '2017-05-12 08:45:41');

-- --------------------------------------------------------

--
-- Table structure for table `meal_temp_report_detail`
--

CREATE TABLE `meal_temp_report_detail` (
  `id` int(10) NOT NULL,
  `meal_temp_report_id` int(10) NOT NULL,
  `day_of_month` int(10) NOT NULL,
  `lunch_main1` varchar(200) DEFAULT 'N/A',
  `lunch_main2` varchar(200) DEFAULT 'N/A',
  `lunch_veg` varchar(200) DEFAULT 'N/A',
  `lunch_potato` varchar(200) DEFAULT 'N/A',
  `lunch_desert` varchar(200) DEFAULT 'N/A',
  `lunch_checked_by` int(10) NOT NULL,
  `dinner_soup` varchar(200) DEFAULT 'N/A',
  `dinner_main` varchar(200) DEFAULT 'N/A',
  `dinner_puree_main` varchar(200) DEFAULT 'N/A',
  `dinner_puree_veg` varchar(200) DEFAULT 'N/A',
  `dinner_veg` varchar(200) DEFAULT 'N/A',
  `dinner_checked_by` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `meal_temp_report_detail`
--

INSERT INTO `meal_temp_report_detail` (`id`, `meal_temp_report_id`, `day_of_month`, `lunch_main1`, `lunch_main2`, `lunch_veg`, `lunch_potato`, `lunch_desert`, `lunch_checked_by`, `dinner_soup`, `dinner_main`, `dinner_puree_main`, `dinner_puree_veg`, `dinner_veg`, `dinner_checked_by`) VALUES
(1, 1, 1, '', '', '', '', '', 0, '', '', '', '', '', 0),
(2, 1, 2, '', '', '', '', '', 0, '', '', '', '', '', 0),
(3, 1, 3, '', '', '', '', '', 0, '', '', '', '', '', 0),
(4, 1, 4, '', '', '', '', '', 0, '', '', '', '', '', 0),
(5, 1, 5, '', '', '', '', '', 0, '', '', '', '', '', 0),
(6, 1, 6, '', '', '', '', '', 0, '', '', '', '', '', 0),
(7, 1, 7, '', '', '', '', '', 0, '', '', '', '', '', 0),
(8, 1, 8, '', '', '', '', '', 0, '', '', '', '', '', 0),
(9, 1, 9, '', '', '', '', '', 0, '', '', '', '', '', 0),
(10, 1, 10, '', '', '', '', '', 0, '', '', '', '', '', 0),
(11, 1, 11, '', '', '', '', '', 0, '', '', '', '', '', 0),
(12, 1, 12, '', '', '', '', '', 0, '', '', '', '', '', 0),
(13, 1, 13, '', '', '', '', '', 0, '', '', '', '', '', 0),
(14, 1, 14, '', '', '', '', '', 0, '', '', '', '', '', 0),
(15, 1, 15, '', '', '', '', '', 0, '', '', '', '', '', 0),
(16, 1, 16, '', '', '', '', '', 0, '', '', '', '', '', 0),
(17, 1, 17, '', '', '', '', '', 0, '', '', '', '', '', 0),
(18, 1, 18, '', '', '', '', '', 0, '', '', '', '', '', 0),
(19, 1, 19, '', '', '', '', '', 0, '', '', '', '', '', 0),
(20, 1, 20, '', '', '', '', '', 0, '', '', '', '', '', 0),
(21, 1, 21, '', '', '', '', '', 0, '', '', '', '', '', 0),
(22, 1, 22, '', '', '', '', '', 0, '', '', '', '', '', 0),
(23, 1, 23, '', '', '', '', '', 0, '', '', '', '', '', 0),
(24, 1, 24, '', '', '', '', '', 0, '', '', '', '', '', 0),
(25, 1, 25, '', '', '', '', '', 0, '', '', '', '', '', 0),
(26, 1, 26, '', '', '', '', '', 0, '', '', '', '', '', 0),
(27, 1, 27, '', '', '', '', '', 0, '', '', '', '', '', 0),
(28, 1, 28, '', '', '', '', '', 0, '', '', '', '', '', 0),
(29, 1, 29, '', '', '', '', '', 0, '', '', '', '', '', 0),
(30, 1, 30, '', '', '', '', '', 0, '', '', '', '', '', 0),
(31, 1, 31, '', '', '', '', '', 0, '', '', '', '', '', 0),
(32, 2, 1, '10', '', '', '', '', 1, '', '', '', '', '', 0),
(33, 2, 2, '', '', '', '', '', 0, '', '', '', '', '', 0),
(34, 2, 3, '', '', '', '', '', 0, '32', '', '', '', '', 1),
(35, 2, 4, '', '', '', '', '', 0, '', '', '', '', '', 0),
(36, 2, 5, '', '', '', '', '', 0, '', '32', '', '', '', 1),
(37, 2, 6, '', '', '', '', '', 0, '', '', '', '', '', 0),
(38, 2, 7, '', '', '', '', '', 0, '', '', '32', '', '', 1),
(39, 2, 8, '', '', '', '', '', 0, '', '', '', '', '', 0),
(40, 2, 9, '', '', '', '', '', 0, '', '32', '', '', '', 1),
(41, 2, 10, '', '', '', '', '', 0, '', '', '', '', '', 0),
(42, 2, 11, '', '', '', '', '', 0, '', '', '', '', '', 0),
(43, 2, 12, '', '', '', '', '', 0, '', '', '', '', '', 0),
(44, 2, 13, '', '', '', '', '', 0, '', '', '', '', '', 0),
(45, 2, 14, '', '', '', '', '', 0, '', '', '', '', '', 0),
(46, 2, 15, '', '', '', '', '', 0, '', '', '', '', '', 0),
(47, 2, 16, '', '', '', '', '', 0, '', '', '', '', '', 0),
(48, 2, 17, '', '', '', '', '', 0, '', '', '', '', '', 0),
(49, 2, 18, '', '', '', '', '', 0, '', '', '', '', '', 0),
(50, 2, 19, '', '', '', '', '', 0, '', '', '', '', '', 0),
(51, 2, 20, '', '', '', '', '', 0, '', '', '', '', '', 0),
(52, 2, 21, '', '', '', '', '', 0, '', '', '', '', '', 0),
(53, 2, 22, '', '', '', '', '', 0, '', '', '', '', '', 0),
(54, 2, 23, '', '', '', '', '', 0, '', '', '', '', '', 0),
(55, 2, 24, '', '', '', '', '', 0, '', '32', '', '', '', 1),
(56, 2, 25, '', '', '', '', '', 0, '', '', '', '', '', 0),
(57, 2, 26, '', '', '', '', '', 0, '', '', '', '', '', 0),
(58, 2, 27, '', '', '', '', '', 0, '', '', '', '', '', 0),
(59, 2, 28, '', '', '', '', '', 0, '', '', '', '', '', 0),
(60, 2, 29, '', '', '', '', '', 0, '', '', '', '', '', 0),
(61, 2, 30, '', '', '', '', '', 0, '', '', '', '', '', 0),
(62, 2, 31, '', '', '', '', '', 0, '', '', '', '', '', 0),
(63, 3, 1, '10', '', '', '', '', 1, '', '', '', '', '', 0),
(64, 3, 2, '', '', '', '', '', 0, '', '', '', '', '', 0),
(65, 3, 3, '', '', '', '', '', 0, '', '', '', '', '', 0),
(66, 3, 4, '', '', '', '', '', 0, '', '', '', '', '', 0),
(67, 3, 5, '', '', '', '', '', 0, '', '', '', '', '', 0),
(68, 3, 6, '', '', '', '', '', 0, '', '', '', '', '', 0),
(69, 3, 7, '', '', '', '', '', 0, '', '', '', '', '', 0),
(70, 3, 8, '', '', '', '', '', 0, '', '', '', '', '', 0),
(71, 3, 9, '', '', '', '', '', 0, '', '', '', '', '', 0),
(72, 3, 10, '', '', '', '', '', 0, '', '', '', '', '', 0),
(73, 3, 11, '', '', '', '', '', 0, '', '', '', '', '', 0),
(74, 3, 12, '', '', '', '', '', 0, '', '', '', '', '', 0),
(75, 3, 13, '', '', '', '', '', 0, '', '', '', '', '', 0),
(76, 3, 14, '', '', '', '', '', 0, '', '', '', '', '', 0),
(77, 3, 15, '', '', '', '', '', 0, '', '', '', '', '', 0),
(78, 3, 16, '', '', '', '', '', 0, '', '', '', '', '', 0),
(79, 3, 17, '', '', '', '', '', 0, '', '', '', '', '', 0),
(80, 3, 18, '', '', '', '', '', 0, '', '', '', '', '', 0),
(81, 3, 19, '', '', '', '', '', 0, '', '', '', '', '', 0),
(82, 3, 20, '', '', '', '', '', 0, '', '', '', '', '', 0),
(83, 3, 21, '', '', '', '', '', 0, '', '', '', '', '', 0),
(84, 3, 22, '', '', '', '', '', 0, '', '', '', '', '', 0),
(85, 3, 23, '', '', '', '', '', 0, '', '', '', '', '', 0),
(86, 3, 24, '', '', '', '', '', 0, '', '', '', '', '', 0),
(87, 3, 25, '', '', '', '', '', 0, '', '', '', '', '', 0),
(88, 3, 26, '', '', '', '', '', 0, '', '', '', '', '', 0),
(89, 3, 27, '', '', '', '', '', 0, '', '', '', '', '', 0),
(90, 3, 28, '', '', '', '', '', 0, '', '', '', '', '', 0),
(91, 3, 29, '', '', '', '', '', 0, '', '', '', '', '', 0),
(92, 3, 30, '', '', '', '', '', 0, '', '', '', '', '', 0),
(93, 3, 31, '', '', '', '', '', 0, '', '', '', '', '', 0),
(94, 4, 1, '', '', '', '', '', 0, '', '', '', '', '', 0),
(95, 4, 2, '', '', '', '', '', 0, '', '', '', '', '', 0),
(96, 4, 3, '', '', '', '', '', 0, '', '', '', '', '', 0),
(97, 4, 4, '', '', '', '', '', 0, '', '', '', '', '', 0),
(98, 4, 5, '', '', '', '', '', 0, '', '', '', '', '', 0),
(99, 4, 6, '', '', '', '', '', 0, '', '', '', '', '', 0),
(100, 4, 7, '', '', '', '', '', 0, '', '', '', '', '', 0),
(101, 4, 8, '', '', '', '', '', 0, '', '', '', '', '', 0),
(102, 4, 9, '', '', '', '', '', 0, '', '', '', '', '', 0),
(103, 4, 10, '', '', '', '', '', 0, '', '', '', '', '', 0),
(104, 4, 11, '', '', '', '', '', 0, '', '', '', '', '', 0),
(105, 4, 12, '', '', '', '', '', 0, '', '', '', '', '', 0),
(106, 4, 13, '', '', '', '', '', 0, '', '', '', '', '', 0),
(107, 4, 14, '', '', '', '', '', 0, '', '', '', '', '', 0),
(108, 4, 15, '', '', '', '', '', 0, '', '', '', '', '', 0),
(109, 4, 16, '', '', '', '', '', 0, '', '', '', '', '', 0),
(110, 4, 17, '', '', '', '', '', 0, '', '', '', '', '', 0),
(111, 4, 18, '', '', '', '', '', 0, '', '', '', '', '', 0),
(112, 4, 19, '', '', '', '', '', 0, '', '', '', '', '', 0),
(113, 4, 20, '', '', '', '', '', 0, '', '', '', '', '', 0),
(114, 4, 21, '', '', '', '', '', 0, '', '', '', '', '', 0),
(115, 4, 22, '', '', '', '', '', 0, '', '', '', '', '', 0),
(116, 4, 23, '', '', '', '', '', 0, '', '', '', '', '', 0),
(117, 4, 24, '', '', '', '', '', 0, '', '', '', '', '', 0),
(118, 4, 25, '', '', '', '', '', 0, '', '', '', '', '', 0),
(119, 4, 26, '', '', '', '', '', 0, '', '', '', '', '', 0),
(120, 4, 27, '', '', '', '', '', 0, '', '', '', '', '', 0),
(121, 4, 28, '', '', '', '', '', 0, '', '', '', '', '', 0),
(122, 5, 1, '', '', '', '', '', 0, '', '', '', '', '', 0),
(123, 5, 2, '', '', '', '', '', 0, '', '', '', '', '', 0),
(124, 5, 3, '', '', '', '', '', 0, '', '', '', '', '', 0),
(125, 5, 4, '', '', '', '', '', 0, '', '', '', '', '', 0),
(126, 5, 5, '', '', '', '', '', 0, '', '', '', '', '', 0),
(127, 5, 6, '', '', '', '', '', 0, '', '', '', '', '', 0),
(128, 5, 7, '', '', '', '', '', 0, '', '', '', '', '', 0),
(129, 5, 8, '', '', '', '', '', 0, '', '', '', '', '', 0),
(130, 5, 9, '', '', '', '', '', 0, '', '', '', '', '', 0),
(131, 5, 10, '', '', '', '', '', 0, '', '', '', '', '', 0),
(132, 5, 11, '', '', '', '', '', 0, '', '', '', '', '', 0),
(133, 5, 12, '', '', '', '', '', 0, '', '', '', '', '', 0),
(134, 5, 13, '', '', '', '', '', 0, '', '', '', '', '', 0),
(135, 5, 14, '', '', '', '', '', 0, '', '', '', '', '', 0),
(136, 5, 15, '', '', '', '', '', 0, '', '', '', '', '', 0),
(137, 5, 16, '', '', '', '', '', 0, '', '', '', '', '', 0),
(138, 5, 17, '', '', '', '', '', 0, '', '', '', '', '', 0),
(139, 5, 18, '', '', '', '', '', 0, '', '', '', '', '', 0),
(140, 5, 19, '', '', '', '', '', 0, '', '', '', '', '', 0),
(141, 5, 20, '', '', '', '', '', 0, '', '', '', '', '', 0),
(142, 5, 21, '', '', '', '', '', 0, '', '', '', '', '', 0),
(143, 5, 22, '', '', '', '', '', 0, '', '', '', '', '', 0),
(144, 5, 23, '', '', '', '', '', 0, '', '', '', '', '', 0),
(145, 5, 24, '', '', '', '', '', 0, '', '', '', '', '', 0),
(146, 5, 25, '', '', '', '', '', 0, '', '', '', '', '', 0),
(147, 5, 26, '', '', '', '', '', 0, '', '', '', '', '', 0),
(148, 5, 27, '', '', '', '', '', 0, '', '', '', '', '', 0),
(149, 5, 28, '', '', '', '', '', 0, '', '', '', '', '', 0),
(150, 5, 29, '', '', '', '', '', 0, '', '', '', '', '', 0),
(151, 5, 30, '', '', '', '', '', 0, '', '', '', '', '', 0),
(152, 5, 31, '', '', '', '', '', 0, '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `meal_temp_report_master`
--

CREATE TABLE `meal_temp_report_master` (
  `meal_temp_report_id` int(10) NOT NULL,
  `report_date` date NOT NULL,
  `kitchenette_id` int(10) NOT NULL,
  `meal_created_date` datetime NOT NULL,
  `meal_created_by` int(10) NOT NULL,
  `checked_by` int(10) NOT NULL,
  `checked_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `meal_temp_report_master`
--

INSERT INTO `meal_temp_report_master` (`meal_temp_report_id`, `report_date`, `kitchenette_id`, `meal_created_date`, `meal_created_by`, `checked_by`, `checked_on`) VALUES
(1, '2017-12-01', 3, '2017-05-11 12:25:34', 1, 0, '0000-00-00 00:00:00'),
(2, '2017-05-01', 3, '2017-05-11 12:25:57', 1, 0, '0000-00-00 00:00:00'),
(3, '2017-05-01', 4, '2017-05-17 07:51:00', 1, 0, '0000-00-00 00:00:00'),
(4, '2017-02-01', 4, '2017-05-24 07:25:00', 2, 0, '0000-00-00 00:00:00'),
(5, '2017-08-01', 4, '2017-05-24 07:25:23', 2, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `menu_mapping`
--

CREATE TABLE `menu_mapping` (
  `id` int(10) NOT NULL,
  `role_id` int(10) NOT NULL,
  `menu_id` int(10) NOT NULL,
  `inactive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `menu_mapping`
--

INSERT INTO `menu_mapping` (`id`, `role_id`, `menu_id`, `inactive`) VALUES
(1, 10, 1, 1),
(2, 10, 2, 1),
(3, 10, 3, 1),
(4, 10, 4, 1),
(5, 1, 1, 1),
(6, 1, 2, 1),
(7, 1, 3, 1),
(8, 1, 4, 0),
(9, 2, 1, 0),
(10, 2, 2, 1),
(11, 2, 3, 1),
(12, 2, 4, 0),
(13, 3, 1, 0),
(14, 3, 2, 1),
(15, 3, 3, 1),
(16, 3, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `menu_master`
--

CREATE TABLE `menu_master` (
  `menu_id` int(10) NOT NULL,
  `manu_name` varchar(250) NOT NULL,
  `menu_uri` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `menu_master`
--

INSERT INTO `menu_master` (`menu_id`, `manu_name`, `menu_uri`) VALUES
(1, 'Facility', 'facility'),
(2, 'Kitchenette', 'kitchenette'),
(3, 'Assets', 'assts'),
(4, 'Users', 'users');

-- --------------------------------------------------------

--
-- Table structure for table `notification_master`
--

CREATE TABLE `notification_master` (
  `notification_id` int(10) NOT NULL,
  `notification_description` text NOT NULL,
  `report_type` enum('combined','cooling','preparation','refrigeration') NOT NULL,
  `daily_moni_rep_id` int(10) NOT NULL,
  `notification_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `notification_master`
--

INSERT INTO `notification_master` (`notification_id`, `notification_description`, `report_type`, `daily_moni_rep_id`, `notification_date`) VALUES
(1, '<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid', 'cooling', 2, '2017-05-18 07:16:55'),
(2, '<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid', 'cooling', 0, '2017-05-23 09:22:55'),
(3, '<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid', 'cooling', 0, '2017-05-23 09:26:39'),
(4, '<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid', 'cooling', 0, '2017-05-23 09:29:20'),
(5, '<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid', 'cooling', 0, '2017-05-23 09:31:59'),
(6, '<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid', 'cooling', 0, '2017-05-23 09:33:39'),
(7, '<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid', 'cooling', 0, '2017-05-23 09:36:36'),
(8, '<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid', 'cooling', 0, '2017-05-23 09:38:29'),
(9, '<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid', 'cooling', 3, '2017-05-23 09:40:15'),
(10, '<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid', 'cooling', 4, '2017-05-23 09:42:12'),
(11, '<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid', 'cooling', 5, '2017-05-23 09:44:18'),
(12, '<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid', 'cooling', 6, '2017-05-23 09:50:55'),
(13, '<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid', 'cooling', 6, '2017-05-23 09:51:30'),
(14, '<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid<br>\n\n<b>Product Name:- Test1</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid', 'cooling', 6, '2017-05-23 10:51:10'),
(15, '<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid<br>\n\n<b>Product Name:- Test1</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid', 'cooling', 6, '2017-05-23 15:59:43'),
(16, '<br><b>Food Service:-BreakFast </b><br>&nbsp;&nbsp;&nbsp;&nbsp; Name of product:-Milks<br>&nbsp;&nbsp;&nbsp;&nbsp;  Time that cooking/reheating  completed Invalid', 'combined', 6, '2017-05-23 16:04:34'),
(17, '<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid<br>\n\n<b>Product Name:- Test1</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid<br>\n\n<b>Product Name:- Test</b>\n<br>		 &nbsp;&nbsp;&nbsp;&nbsp; Time @Two Hours Is Invalid<br>		 &nbsp;&nbsp;&nbsp;&nbsp;Time @Six Hours Is Invalid', 'cooling', 6, '2017-05-25 07:12:43'),
(18, '<br><b>Food Service:-BreakFast </b><br>&nbsp;&nbsp;&nbsp;&nbsp; Name of product:-Milks<br>&nbsp;&nbsp;&nbsp;&nbsp;  Time that cooking/reheating  completed Invalid', 'combined', 6, '2017-05-25 07:16:03');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `amount` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`amount`) VALUES
(3),
(0);

-- --------------------------------------------------------

--
-- Table structure for table `permission_master`
--

CREATE TABLE `permission_master` (
  `id` int(10) NOT NULL,
  `role_id` int(10) NOT NULL,
  `menu_id` int(10) NOT NULL,
  `access_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `permission_master`
--

INSERT INTO `permission_master` (`id`, `role_id`, `menu_id`, `access_data`) VALUES
(1, 10, 1, '{"is_view":"1","is_detail":"1","is_add":"1","is_edit":"1","is_remove":"1","is_copy":"1"}'),
(2, 10, 2, '{"is_view":"1","is_detail":"1","is_add":"1","is_edit":"1","is_remove":"1","is_copy":"1"}'),
(3, 10, 3, '{"is_view":"1","is_detail":"1","is_add":"1","is_edit":"1","is_remove":"1","is_copy":"1"}'),
(4, 10, 4, '{"is_view":"1","is_detail":"1","is_add":"1","is_edit":"1","is_remove":"1","is_copy":"1"}'),
(5, 1, 1, '{"is_view":1,"is_detail":0,"is_add":1,"is_edit":0,"is_remove":1,"is_copy":1}'),
(6, 1, 2, '{"is_view":1,"is_detail":0,"is_add":1,"is_edit":1,"is_remove":1,"is_copy":1}'),
(7, 1, 3, '{"is_view":1,"is_detail":0,"is_add":1,"is_edit":1,"is_remove":1,"is_copy":1}'),
(8, 1, 4, '{"is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_copy":"0"}'),
(9, 2, 1, '{"is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_copy":"0"}'),
(10, 2, 2, '{"is_view":1,"is_detail":0,"is_add":1,"is_edit":1,"is_remove":1,"is_copy":0}'),
(11, 2, 3, '{"is_view":1,"is_detail":0,"is_add":1,"is_edit":1,"is_remove":1,"is_copy":1}'),
(12, 2, 4, '{"is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_copy":"0"}'),
(13, 3, 1, '{"is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_copy":"0"}'),
(14, 3, 2, '{"is_view":1,"is_detail":0,"is_add":1,"is_edit":1,"is_remove":1,"is_copy":0}'),
(15, 3, 3, '{"is_view":1,"is_detail":0,"is_add":1,"is_edit":1,"is_remove":1,"is_copy":0}'),
(16, 3, 4, '{"is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_copy":"0"}');

-- --------------------------------------------------------

--
-- Table structure for table `report_mapping`
--

CREATE TABLE `report_mapping` (
  `id` int(10) NOT NULL,
  `notification_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `report_mapping`
--

INSERT INTO `report_mapping` (`id`, `notification_id`, `user_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 2),
(4, 4, 2),
(5, 5, 2),
(6, 6, 2),
(7, 7, 2),
(8, 8, 2),
(9, 9, 2),
(10, 10, 2),
(11, 11, 2),
(12, 12, 1),
(13, 13, 1),
(14, 14, 1),
(15, 15, 2),
(16, 16, 12),
(17, 16, 2),
(18, 17, 1),
(19, 18, 12),
(20, 18, 2);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(10) NOT NULL,
  `role_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_name`) VALUES
(1, 'Food Safety Supervisor'),
(2, 'Head Chef'),
(3, 'Kitchen Assistant'),
(10, 'Super Admin');

-- --------------------------------------------------------

--
-- Table structure for table `sales_order`
--

CREATE TABLE `sales_order` (
  `grand_total` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `sales_order`
--

INSERT INTO `sales_order` (`grand_total`) VALUES
(1),
(2);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_list_report`
--

CREATE TABLE `supplier_list_report` (
  `supplier_list_id` int(10) NOT NULL,
  `report_date` date NOT NULL,
  `supplier_list_created_date` datetime NOT NULL,
  `supplier_list_created_by` int(10) NOT NULL,
  `checked_by` int(10) DEFAULT NULL,
  `checked_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `supplier_list_report`
--

INSERT INTO `supplier_list_report` (`supplier_list_id`, `report_date`, `supplier_list_created_date`, `supplier_list_created_by`, `checked_by`, `checked_on`) VALUES
(10, '2017-05-23', '2017-05-12 08:26:01', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_list_report_detail`
--

CREATE TABLE `supplier_list_report_detail` (
  `id` int(10) NOT NULL,
  `supplier_list_id` int(10) NOT NULL,
  `company_name` varchar(500) NOT NULL,
  `contact_name` varchar(500) NOT NULL,
  `company_address` varchar(500) NOT NULL,
  `goods_supplied` varchar(500) NOT NULL,
  `sighted_current_food_act` varchar(500) NOT NULL,
  `expiry_date_certificate` date DEFAULT NULL,
  `date_approval` date DEFAULT NULL,
  `date_of_review` date DEFAULT NULL,
  `checked_by` int(10) NOT NULL,
  `checked_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `supplier_list_report_detail`
--

INSERT INTO `supplier_list_report_detail` (`id`, `supplier_list_id`, `company_name`, `contact_name`, `company_address`, `goods_supplied`, `sighted_current_food_act`, `expiry_date_certificate`, `date_approval`, `date_of_review`, `checked_by`, `checked_on`) VALUES
(2, 10, 'Unicef', 'James', 'USA', 'Yes', 'Yes', '2017-05-29', '2017-05-28', NULL, 1, '2017-05-12 08:26:01'),
(3, 10, 'Who', 'Kavi', 'USA', 'Yes', 'No', '2017-05-12', '2017-05-12', NULL, 1, '2017-05-12 08:29:45');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `email` varchar(250) DEFAULT NULL,
  `forgotten_password_code` varchar(250) DEFAULT NULL,
  `first_name` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `is_email_notification` tinyint(4) NOT NULL,
  `is_alert_notification` tinyint(4) NOT NULL,
  `signature` varchar(50) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `email`, `forgotten_password_code`, `first_name`, `last_name`, `is_email_notification`, `is_alert_notification`, `signature`, `role_id`, `status`) VALUES
(1, 'admin@instani.com.au', '5f4dcc3b5aa765d61d8327deb882cf99', 'admin@instani.com.au', 'c1793ea0d9ae21797a887e2ea02ed336', 'Super', 'Admin', 1, 1, 'SA', 10, 1),
(2, 'jimit@ikraftsolutions.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'admin@abc.com', 'c1793ea0d9ae21797a887e2ea02ed336', 'admin@abc.com', 'admin@abc.com', 0, 0, 'AW', 1, 1),
(7, 'jimit@ikraftsolutions.com', 'cb953f6ca5923f7517125db46ed1293d', 'admin@abc.com', NULL, 'admin@abc.com', 'admin@abc.com', 0, 0, 'AA', 1, 1),
(8, 'jimit@ikraftsolutions.com', 'f9ce88a2ceb2caa9b7ca699cc8042db9', 'admin321@abc.com', NULL, 'admin@abc.com', 'admin@abc.com', 0, 0, 'AB', 1, 1),
(11, 'jimit@ikraftsolutions.com', 'c9e54211c475fb6a7821fa308c80ccb8', 'admin1234@gmail.com', NULL, 'A', 'B', 0, 0, 'AC', 1, 1),
(12, 'jimit@ikraftsolutions.com', '442b548e816f05640dec68f497ca38ac', 'admin1234@gmail.com', NULL, 'admin1234@gmail.com', 'admin1234@gmail.com', 0, 0, 'AA', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_facility_mapping`
--

CREATE TABLE `user_facility_mapping` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `facility_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `user_facility_mapping`
--

INSERT INTO `user_facility_mapping` (`id`, `user_id`, `facility_id`) VALUES
(6800, 12, 37),
(6802, 2, 38);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`assets_id`),
  ADD KEY `FK_assets_kitchenette` (`kitchenette_id`);

--
-- Indexes for table `asset_cleaning_report_detail`
--
ALTER TABLE `asset_cleaning_report_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_asset_cleaning_report_detail_asset_cleaning_report_master` (`asscl_report_id`);

--
-- Indexes for table `asset_cleaning_report_master`
--
ALTER TABLE `asset_cleaning_report_master`
  ADD PRIMARY KEY (`asscl_report_id`);

--
-- Indexes for table `checklist_job_master`
--
ALTER TABLE `checklist_job_master`
  ADD PRIMARY KEY (`checklist_job_id`);

--
-- Indexes for table `check_list_facility_mapping`
--
ALTER TABLE `check_list_facility_mapping`
  ADD KEY `FK_check_list_facility_mapping_check_list_master` (`chk_list_id`),
  ADD KEY `FK_check_list_facility_mapping_facility` (`facility_id`);

--
-- Indexes for table `check_list_group_master`
--
ALTER TABLE `check_list_group_master`
  ADD PRIMARY KEY (`grp_id`);

--
-- Indexes for table `check_list_master`
--
ALTER TABLE `check_list_master`
  ADD PRIMARY KEY (`chk_list_id`),
  ADD KEY `FK_check_list_master_check_list_group_master` (`chk_list_grp_id`);

--
-- Indexes for table `cleaning_checklist_detail`
--
ALTER TABLE `cleaning_checklist_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_cleaning_checklist_detail_cleaning_checklist_master` (`cleaning_checklist_id`),
  ADD KEY `FK_cleaning_checklist_detail_checklist_job_master` (`checklist_job_id`);

--
-- Indexes for table `cleaning_checklist_master`
--
ALTER TABLE `cleaning_checklist_master`
  ADD PRIMARY KEY (`cleaning_checklist_id`);

--
-- Indexes for table `corrective_action`
--
ALTER TABLE `corrective_action`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `daily_monitoring_report_combined`
--
ALTER TABLE `daily_monitoring_report_combined`
  ADD PRIMARY KEY (`id`),
  ADD KEY `daily_moni_rep_id` (`daily_moni_rep_id`);

--
-- Indexes for table `daily_monitoring_report_cooling`
--
ALTER TABLE `daily_monitoring_report_cooling`
  ADD PRIMARY KEY (`id`),
  ADD KEY `daily_moni_rep_id` (`daily_moni_rep_id`);

--
-- Indexes for table `daily_monitoring_report_master`
--
ALTER TABLE `daily_monitoring_report_master`
  ADD PRIMARY KEY (`daily_moni_rep_id`);

--
-- Indexes for table `daily_monitoring_report_preparation`
--
ALTER TABLE `daily_monitoring_report_preparation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_daily_report_preparation_daily_report_master` (`daily_moni_rep_id`);

--
-- Indexes for table `daily_monitoring_report_refrigeration`
--
ALTER TABLE `daily_monitoring_report_refrigeration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_monitoring_report_refrigeration_detail`
--
ALTER TABLE `daily_monitoring_report_refrigeration_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_monitoring_report_user_mapping`
--
ALTER TABLE `daily_monitoring_report_user_mapping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facility`
--
ALTER TABLE `facility`
  ADD PRIMARY KEY (`facility_id`);

--
-- Indexes for table `incoming_food_report_detail`
--
ALTER TABLE `incoming_food_report_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_incoming_food_report_detail_incoming_food_report_master` (`incoming_food_report_id`);

--
-- Indexes for table `incoming_food_report_master`
--
ALTER TABLE `incoming_food_report_master`
  ADD PRIMARY KEY (`incoming_food_report_id`);

--
-- Indexes for table `internal_audit_report_detail`
--
ALTER TABLE `internal_audit_report_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_internal_audit_report_detail_internal_audit_report_master` (`int_aud_rep_id`),
  ADD KEY `FK_internal_audit_report_detail_check_list_group_master` (`grp_id`);

--
-- Indexes for table `internal_audit_report_detail_mapping`
--
ALTER TABLE `internal_audit_report_detail_mapping`
  ADD PRIMARY KEY (`mapping_id`),
  ADD KEY `FK_internal_audit_report_detail_mapping_check_list_group_master` (`grp_id`),
  ADD KEY `FK_internal_audit_mapping__report_master` (`int_aud_rep_id`);

--
-- Indexes for table `internal_audit_report_master`
--
ALTER TABLE `internal_audit_report_master`
  ADD PRIMARY KEY (`int_aud_rep_id`);

--
-- Indexes for table `kitchenette`
--
ALTER TABLE `kitchenette`
  ADD PRIMARY KEY (`kitchenette_id`),
  ADD KEY `FK_kitchenette_facility` (`facility_id`);

--
-- Indexes for table `maintenance_calibration_report`
--
ALTER TABLE `maintenance_calibration_report`
  ADD PRIMARY KEY (`maintenance_id`);

--
-- Indexes for table `maintenance_calibration_report_detail`
--
ALTER TABLE `maintenance_calibration_report_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_maintenance_report_detail_maintenance_report` (`maintenance_id`);

--
-- Indexes for table `meal_temp_report_detail`
--
ALTER TABLE `meal_temp_report_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_meal_temp_report_detail_meal_temp_report_master` (`meal_temp_report_id`);

--
-- Indexes for table `meal_temp_report_master`
--
ALTER TABLE `meal_temp_report_master`
  ADD PRIMARY KEY (`meal_temp_report_id`);

--
-- Indexes for table `menu_mapping`
--
ALTER TABLE `menu_mapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_menu_mapping_menu_master` (`menu_id`),
  ADD KEY `FK_menu_mapping_role` (`role_id`);

--
-- Indexes for table `menu_master`
--
ALTER TABLE `menu_master`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `notification_master`
--
ALTER TABLE `notification_master`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `permission_master`
--
ALTER TABLE `permission_master`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_permission_master_role` (`role_id`),
  ADD KEY `FK_permission_master_menu_master` (`menu_id`);

--
-- Indexes for table `report_mapping`
--
ALTER TABLE `report_mapping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `supplier_list_report`
--
ALTER TABLE `supplier_list_report`
  ADD PRIMARY KEY (`supplier_list_id`);

--
-- Indexes for table `supplier_list_report_detail`
--
ALTER TABLE `supplier_list_report_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_supplier_list_report_detail_supplier_list_report` (`supplier_list_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `FK__role` (`role_id`);

--
-- Indexes for table `user_facility_mapping`
--
ALTER TABLE `user_facility_mapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_user_facility_mapping_user` (`user_id`),
  ADD KEY `FK_user_facility_mapping_facility` (`facility_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `assets_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `asset_cleaning_report_detail`
--
ALTER TABLE `asset_cleaning_report_detail`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=897;
--
-- AUTO_INCREMENT for table `asset_cleaning_report_master`
--
ALTER TABLE `asset_cleaning_report_master`
  MODIFY `asscl_report_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `checklist_job_master`
--
ALTER TABLE `checklist_job_master`
  MODIFY `checklist_job_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `check_list_group_master`
--
ALTER TABLE `check_list_group_master`
  MODIFY `grp_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `check_list_master`
--
ALTER TABLE `check_list_master`
  MODIFY `chk_list_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `cleaning_checklist_detail`
--
ALTER TABLE `cleaning_checklist_detail`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `cleaning_checklist_master`
--
ALTER TABLE `cleaning_checklist_master`
  MODIFY `cleaning_checklist_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `corrective_action`
--
ALTER TABLE `corrective_action`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;
--
-- AUTO_INCREMENT for table `daily_monitoring_report_combined`
--
ALTER TABLE `daily_monitoring_report_combined`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=461;
--
-- AUTO_INCREMENT for table `daily_monitoring_report_cooling`
--
ALTER TABLE `daily_monitoring_report_cooling`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `daily_monitoring_report_master`
--
ALTER TABLE `daily_monitoring_report_master`
  MODIFY `daily_moni_rep_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `daily_monitoring_report_preparation`
--
ALTER TABLE `daily_monitoring_report_preparation`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `daily_monitoring_report_refrigeration`
--
ALTER TABLE `daily_monitoring_report_refrigeration`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `daily_monitoring_report_refrigeration_detail`
--
ALTER TABLE `daily_monitoring_report_refrigeration_detail`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `daily_monitoring_report_user_mapping`
--
ALTER TABLE `daily_monitoring_report_user_mapping`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `facility`
--
ALTER TABLE `facility`
  MODIFY `facility_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `incoming_food_report_detail`
--
ALTER TABLE `incoming_food_report_detail`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `incoming_food_report_master`
--
ALTER TABLE `incoming_food_report_master`
  MODIFY `incoming_food_report_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `internal_audit_report_detail`
--
ALTER TABLE `internal_audit_report_detail`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `internal_audit_report_detail_mapping`
--
ALTER TABLE `internal_audit_report_detail_mapping`
  MODIFY `mapping_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `internal_audit_report_master`
--
ALTER TABLE `internal_audit_report_master`
  MODIFY `int_aud_rep_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `kitchenette`
--
ALTER TABLE `kitchenette`
  MODIFY `kitchenette_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `maintenance_calibration_report`
--
ALTER TABLE `maintenance_calibration_report`
  MODIFY `maintenance_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `maintenance_calibration_report_detail`
--
ALTER TABLE `maintenance_calibration_report_detail`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `meal_temp_report_detail`
--
ALTER TABLE `meal_temp_report_detail`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;
--
-- AUTO_INCREMENT for table `meal_temp_report_master`
--
ALTER TABLE `meal_temp_report_master`
  MODIFY `meal_temp_report_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `menu_mapping`
--
ALTER TABLE `menu_mapping`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `menu_master`
--
ALTER TABLE `menu_master`
  MODIFY `menu_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `notification_master`
--
ALTER TABLE `notification_master`
  MODIFY `notification_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `permission_master`
--
ALTER TABLE `permission_master`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `report_mapping`
--
ALTER TABLE `report_mapping`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `supplier_list_report`
--
ALTER TABLE `supplier_list_report`
  MODIFY `supplier_list_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `supplier_list_report_detail`
--
ALTER TABLE `supplier_list_report_detail`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `user_facility_mapping`
--
ALTER TABLE `user_facility_mapping`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6803;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `assets`
--
ALTER TABLE `assets`
  ADD CONSTRAINT `FK_assets_kitchenette` FOREIGN KEY (`kitchenette_id`) REFERENCES `kitchenette` (`kitchenette_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `asset_cleaning_report_detail`
--
ALTER TABLE `asset_cleaning_report_detail`
  ADD CONSTRAINT `FK_asset_cleaning_report_detail_asset_cleaning_report_master` FOREIGN KEY (`asscl_report_id`) REFERENCES `asset_cleaning_report_master` (`asscl_report_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
