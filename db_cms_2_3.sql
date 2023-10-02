-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2023 at 08:22 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cms_2_3`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_about_us`
--

CREATE TABLE `tbl_about_us` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `create_at` date NOT NULL DEFAULT current_timestamp(),
  `post_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_about_us`
--

INSERT INTO `tbl_about_us` (`id`, `description`, `create_at`, `post_by`) VALUES
(2, 'ក្នុងប្រវត្តិសាស្រ្តពិភពលោក​រាប់ពាន់​ឆ្នាំមកនេះ មាន​ការលេចឡើង​ចក្រភពជាច្រើន។ ខាងក្រោមនេះ​គឺ​ជាចក្រភពធំៗទាំង១០០ ដោយ​ក្នុងនោះ​នៅតំបន់អាស៊ីអាគ្នេយ៍​ក៏មាន ៤ចក្រភពផងដែរ រួមមាន​ចក្រភពខ្មែរ (Khmer Empire), ភូមា (Taungoo Empire), Srivijaya Empire និង Majaphit Empire ដែល​ចក្រភពទាំងពីរជាផ្នែកមួយ​នៃឥណ្ឌូណេស៊ី និងម៉ាឡេស៊ី​​បច្ចុប្បន្ន។ អតីតចក្រភព​ធំជាងគេ គឺអង់គ្លេស បន្ទាប់មក ម៉ុងហ្គោល និង​រុស្ស៊ី។', '2023-09-29', '6');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE `tbl_feedback` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `feedback_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_feedback`
--

INSERT INTO `tbl_feedback` (`id`, `username`, `email`, `telephone`, `address`, `message`, `feedback_date`) VALUES
(1, 'ramey', 'ramey0406@gmail.com', '066425620', 'Rusei koe Phnom penh', 'Lionel Messi បង្ហើបពីគម្រោងផែនការជីវិតបន្ទាប់ ក្រោយពីបញ្ចប់អាជីពជា', '2023-09-29'),
(2, 'សុខ សារឿន', 'saraey33@gamil.com', '088632545', 'Phnom penh', 'ក្នុងប្រវត្តិសាស្រ្តពិភពលោក​រាប់ពាន់​ឆ្នាំមកនេះ មាន​ការលេចឡើង​ចក្រភពជាច្រើន។ ខាងក្រោមនេះ​គឺ​ជាចក្រភពធំៗទាំង១០០ ដោយ​ក្នុងនោះ​នៅតំបន់អាស៊ីអាគ្នេយ៍​ក៏មាន ៤ចក្រភពផងដែរ រួមមាន​ចក្រភពខ្មែរ (Khmer Empire), ភូមា (Taungoo Empire), Srivijaya Empire និង Majaphit Empire ដែល​ចក្រភពទាំងពីរជាផ្នែកមួយ​នៃឥណ្ឌូណេស៊ី និងម៉ាឡេស៊ី​​បច្ចុប្បន្ន។ អតីតចក្រភព​ធំជាងគេ គឺអង់គ្លេស បន្ទាប់មក ម៉ុងហ្គោល និង​រុស្ស៊ី។', '2023-09-30'),
(3, 'admin', 'saraey33@gamil.com', '022354312', 'Phnom penh', 'ក្នុងប្រវត្តិសាស្រ្តពិភពលោក​រាប់ពាន់​ឆ្នាំមកនេះ មាន​ការលេចឡើង​ចក្រភពជាច្រើន។ ខាងក្រោមនេះ​គឺ​ជាចក្រភពធំៗទាំង១០០ ដោយ​ក្នុងនោះ​នៅតំបន់អាស៊ីអាគ្នេយ៍​ក៏មាន ៤ចក្រភពផងដែរ រួមមាន​ចក្រភពខ្មែរ (Khmer Empire), ភូមា (Taungoo Empire), Srivijaya Empire និង Majaphit Empire ដែល​ចក្រភពទាំងពីរជាផ្នែកមួយ​នៃឥណ្ឌូណេស៊ី និងម៉ាឡេស៊ី​​បច្ចុប្បន្ន។ អតីតចក្រភព​ធំជាងគេ គឺអង់គ្លេស បន្ទាប់មក ម៉ុងហ្គោល និង​រុស្ស៊ី។', '2023-09-30'),
(4, 'Sana', 'saraey33@gamil.com', '022566553', 'Phnom penh', 'ក្នុងប្រវត្តិសាស្រ្តពិភពលោក​រាប់ពាន់​ឆ្នាំមកនេះ មាន​ការលេចឡើង​ចក្រភពជាច្រើន។ ខាងក្រោមនេះ​គឺ​ជាចក្រភពធំៗទាំង១០០ ដោយ​ក្នុងនោះ​នៅតំបន់អាស៊ីអាគ្នេយ៍​ក៏មាន ៤ចក្រភពផងដែរ រួមមាន​ចក្រភពខ្មែរ (Khmer Empire), ភូមា (Taungoo Empire), Srivijaya Empire និង Majaphit Empire ដែល​ចក្រភពទាំងពីរជាផ្នែកមួយ​នៃឥណ្ឌូណេស៊ី និងម៉ាឡេស៊ី​​បច្ចុប្បន្ន។ អតីតចក្រភព​ធំជាងគេ គឺអង់គ្លេស បន្ទាប់មក ម៉ុងហ្គោល និង​រុស្ស៊ី។', '2023-09-30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_follow_us`
--

CREATE TABLE `tbl_follow_us` (
  `id` int(11) NOT NULL,
  `thumnail` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `status` char(15) NOT NULL COMMENT 'footer, follow us',
  `create_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_follow_us`
--

INSERT INTO `tbl_follow_us` (`id`, `thumnail`, `label`, `url`, `status`, `create_at`) VALUES
(0, 'telegram.png', 'telegram', 'https://t.me/RA_MEY1\r\n', 'follow us', '2023-10-02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logo`
--

CREATE TABLE `tbl_logo` (
  `id` int(11) NOT NULL,
  `thumnail` varchar(255) NOT NULL,
  `status` char(10) NOT NULL COMMENT 'header,footer',
  `create_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_logo`
--

INSERT INTO `tbl_logo` (`id`, `thumnail`, `status`, `create_at`) VALUES
(7, '62966_modern-company-logo-concept_1017-9855.avif', 'header', '2023-09-26'),
(8, '139433_3d-render-happy-new-year-2022-text-typography-design-illustration_460848-7384.avif', 'footer', '2023-09-26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `id` int(11) NOT NULL,
  `thumnail` varchar(255) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `news_type` char(15) NOT NULL COMMENT 'sport, socail, entertainnment',
  `categary` char(15) NOT NULL COMMENT 'national,international',
  `post_by` int(11) NOT NULL,
  `viewer` int(11) NOT NULL,
  `post_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`id`, `thumnail`, `banner`, `title`, `description`, `news_type`, `categary`, `post_by`, `viewer`, `post_date`) VALUES
(24, '615747_650cf98ade418_1695349080_medium.jpg', '666651_650cf98ade418_1695349080_medium.jpg', 'Barca គម្លាត​១២​ពិន្ទុ​លើ​កំពូល​តារាង ក្រោយ​ឈ្នះ Real ក្នុង​ជំនួប El Clasico', 'ក្នុង​ការ​ប្រកួត​ដែល​គេ​ឲ្យ​ឈ្មោះ​ថា El Clasico ក្រុម​ភ្ញៀវ Madrid ជា​អ្នក​រក​បាន​គ្រាប់​នាំ​មុខ​មុន​ នៅ​នាទី​ទី​៩ ក្រោយ​ពេល​ខ្សែ​ការពារ Ronald Araujo របស់ Barca ធ្វើ​ឲ្យ​ចូល​ទី​ខ្លួន​ឯង។ មុន​បញ្ចប់​វគ្គ​ទី​មួយ​ ខ្សែ​ការពារ Sergi Roberto រក​បាន​គ្រាប់​តាម​ស្មើ​វិញ​ឲ្យ Barcelona បន្ទាប់​ពី​មិត្តរួម​ក្រុម Raphinha ព្យាយាម​មិន​បាន​សម្រេច។\r\n\r\nខ្សែ​បម្រើ​ប្រយុទ្ធ Marco Asensio ទាត់​បញ្ចូល​ទី​នៅ​នាទី​៨១​ ប៉ុន្តែ​អាជ្ញាកណ្ដាល​សម្រេច​​មិន​ឲ្យ​វិញ​​ក្រោយ​ពិនិត្យ VAR ឃើញ​ថា Offside។ ការ​ប្រកួត​ឈាន​ដល់​នាទី​៩០+២ ទៅ​ហើយ Kessie រក​បាន​គ្រាប់​ជ័យជម្នះ​ឲ្យ​ Barca ជួយ​ក្រុម​បាន​៣​ពិន្ទុ​ដ៏​មាន​សារៈសំខាន់។\r\n\r\nការ​ឈ្នះ​នេះ Barca បន្ត​ឈរ​លេខ​មួយ​ក្នុង​តារាង La Liga មាន​​៦៨​ពិន្ទុ ខណៈ Real Madrid នៅ​លេខ​ពីរ​​មាន​៥៦​ពិន្ទុ ឯ Atl Madrid នៅ​លេខ​បី​មាន​៥១​ពិន្ទុ៕', 'sport', 'international', 5, 4, '2023-09-27'),
(25, '600218_638553499791a_1669681980_medium.jpg', '560576_638553499791a_1669681980_medium.jpg', 'Ronaldo បាត់ឱកាស ២គ្រាប់នៅ World Cup ក្រោយគ្រាប់ទីមួយត្រូវ FIFA ឲ្យ Bruno ហើយ​បាល់ប៉េ ត្រូវ Bruno ទាត់ជំនួស', '២គ្រាប់របស់អឺរ៉ុបមួយនេះធ្វើបានដោយ Bruno Fernandes ទាំងពីរគ្រាប់ ដោយគ្រាប់ទីមួយនោះដំបូងឡើយមានការយល់ច្រឡំថាជាការតែតរបស់ ប្រធានក្រុមរបស់ Cristiano Ronaldo ប៉ុន្តែ FIFA បានលុបចោលវិញក្រោយពិនិត្យឃើញថាមិនបានប៉ះក្បាលរបស់ Ronaldo ទេ។\r\n\r\nដោយឡែកគ្រាប់ទីពីរកើតឡើងចុងម៉ោងនាទី ៩០+៣ ទាត់ប៉េណាល់ទីសម្រេចដោយ Bruno ដដែល ស្របពេលដែល Ronaldo បានប្ដូរចេញជំនួសដោយ Gonçalo Ramosat តាំងពីនាទី ៨២។ ២ប្រកួតកន្លងមកព័រទុយហ្គាល់ឈ្នះ ហ្គាណា ៣-២ និងឈ្នះអ៊ុយរ៉ាហ្គាយ ២-០ នៅសល់ប្រកួតចុងក្រោយបង្គ្រប់កិច្ចជាមួយកូរ៉េខាងត្បូង ដែលត្រូវការឈ្នះដាច់ខាត៕', 'sport', 'international', 5, 19, '2023-09-27'),
(26, '390379_638ee923050df_1670310120_medium.jpg', '600152_638ee923050df_1670310120_medium.jpg', 'ប៊ន​ ណារិទ្ធ៖​ សរសើរ​បង​ម៉ាប់ឆ្វេង​ គាត់​ចាស់​នៅតែ​ល្អ​ជា​ពិសេស​បច្ចេកទេស​នេះ', '                                            ប៊ន​ ណារិទ្ធ​ បន្ថែម​ទៀត​ថា​ បើ​ទោះ​ជា​ក្រុម​ខ្លួន​មាន​កាយសម្បទា​ល្អ​ កម្ពស់​ខ្ពស់​យ៉ាងណា​ក្ដី​ ប៉ុន្តែ​ក៏ពិបាក​បាំង​កីឡាករ​ ម៉ាប់ឆ្វេង​ ដែរ​ ព្រោះ​តែ​ភាព​ឆ្លាតវៃ​បត់បែន​គ្រប់​កាលៈទេសៈ​តែ​ម្ដង។​ មិន​ថាបាល់​យ៉ាងម៉េច​នោះ​ទេ​គឺ ​ម៉ាប់ឆ្វេង​ នៅ​តែ​អាច​វ៉ៃ​បាន​ និង​អាច​ចោះ​យក​ពិន្ទុ​បាន​ដដែល។​\r\n\r\nតាម​រយៈ​បទ​ពិសោធ​នេះ​រូប​គេ​ក៏​ដូច​ជា​ក្រុម​នឹង​ខំប្រឹង​កែប្រែ​នូវ​ចំណុច​ខ្វះខាត​មួយ​ចំនួន​ឡើង​វិញ​ផង​ដែរ​ ព្រោះ​មើល​តាម​ជាក់ស្ដែង​ប្រកួត​នេះមិន​ទាន់​បាន​ល្អ​ណាស់​ណា​ទេ។​                                        ', 'sport', 'national', 5, 18, '2023-09-27'),
(27, '123863_650d3d7ba198f_1695366480_medium.jpg', '356198_650d3d79e5ec9_1695366480_medium.jpg', 'ឈុតឆាកមិនអាចបំភ្លេចបាន និងត្រូវបានបញ្ចូលក្នុងប្រវត្តិសាស្ត្រ MAMA ច្រើនឆ្នាំកន្លងមកនេះ', '                                            កម្មវិធី MAMA ជាពេលវេលាដែលតារាល្បីបង្ហាញមុខជុំគ្នា ទាំងការឡើងសម្ដែង និងទទួលពាន​ផ្សេងៗ ដែលពួកគេ​ទទួលជោគជ័យរៀងៗខ្លួន ពិសេសលើវិស័យតន្ត្រី។\r\n\r\nទោះជា កម្មវិធីដើរទៅមុខឥតឈប់ ក៏អ្នកគាំទ្រទាំងអស់គ្មានថ្ងៃភ្លេចបាន​ឡើយ នូវពេលវេលារីករាយ និងវត្តមានរបស់តារាល្បីៗដែល​បាន​បន្សល់ទុក ចារក្នុងប្រវត្តិសាស្ត្រដ៏មានន័យរបស់ MAMA។ ដូច្នេះ​ខាងក្រោម គឺជាពេលវេលាដែលបានកើតឡើងក្នុងកម្មវិធី ហើយតែងស្ថិតក្នុងចិត្ត អ្នកតាមដានទាំងឡាយរបស់ K-Pop ជាដរាប៖                                        ', 'socail', 'national', 5, 3, '2023-09-27'),
(28, '489215_650bc75b60746_1695270720_medium.jpg', '608188_650bc7578a426_1695270720_medium.jpg', 'កម្មវិធី MAMA ជាពេលវេលាដែលតារាល្បីបង្ហាញមុខជុំគ្នា ទាំងការឡើងសម្ដែង និងទទួលពាន​ផ្សេងៗ ដែលពួកគេ​ទទួលជោគជ័យរៀងៗខ្លួន ពិសេសលើវិស័យតន្ត្រី។  ទោះជា កម្មវិធីដើរទៅមុខឥតឈប់ ក៏អ្នកគាំទ្រទាំងអស់គ្មានថ្ងៃភ្លេចបាន​ឡើយ នូវពេលវេលារីករាយ និងវត្តមានរបស់តារាល្បីៗដែល​បាន​ប', '                                                                                        កម្មវិធី MAMA ជាពេលវេលាដែលតារាល្បីបង្ហាញមុខជុំគ្នា ទាំងការឡើងសម្ដែង និងទទួលពាន​ផ្សេងៗ ដែលពួកគេ​ទទួលជោគជ័យរៀងៗខ្លួន ពិសេសលើវិស័យតន្ត្រី។\r\n\r\nទោះជា កម្មវិធីដើរទៅមុខឥតឈប់ ក៏អ្នកគាំទ្រទាំងអស់គ្មានថ្ងៃភ្លេចបាន​ឡើយ នូវពេលវេលារីករាយ និងវត្តមានរបស់តារាល្បីៗដែល​បាន​បន្សល់ទុក ចារក្នុងប្រវត្តិសាស្ត្រដ៏មានន័យរបស់ MAMA។ ដូច្នេះ​ខាងក្រោម គឺជាពេលវេលាដែលបានកើតឡើងក្នុងកម្មវិធី ហើយតែងស្ថិតក្នុងចិត្ត អ្នកតាមដានទាំងឡាយរបស់ K-Pop ជាដរាប៖                                                                                ', 'entertainment', 'international', 5, 2, '2023-09-27'),
(29, '573971_651294980c913_1695716460_medium.jpg', '686506_651294980c913_1695716460_medium.jpg', 'M Picture ចាប់ផ្ដើមចាក់បញ្ចាំងខ្សែភាពយន្ដ រឿង”រាត្រីអស្ដង្គត”ហើយ!', '                                            M Picture ចាប់ផ្ដើមចាក់បញ្ចាំងខ្សែភាពយន្ដ រឿង”រាត្រីអស្ដង្គត”ហើយ!                                        ', 'socail', 'national', 5, 0, '2023-09-27'),
(30, '842165_65129493041e1_1695716460_medium.jpg', '39045_65129493041e1_1695716460_medium.jpg', 'M Picture ចាប់ផ្ដើមចាក់បញ្ចាំងខ្សែភាពយន្ដ រឿង”រាត្រីអស្ដង្គត”ហើយ!', '                                            M Picture ចាប់ផ្ដើមចាក់បញ្ចាំងខ្សែភាពយន្ដ រឿង”រាត្រីអស្ដង្គត”ហើយ!                                        ', 'socail', 'national', 5, 2, '2023-09-27'),
(31, '269642_6512949709692_1695716460_medium.jpg', '962163_6512949709692_1695716460_medium.jpg', 'M Picture ចាប់ផ្ដើមចាក់បញ្ចាំងខ្សែភាពយន្ដ រឿង”រាត្រីអស្ដង្គត”ហើយ!', '                                            M Picture ចាប់ផ្ដើមចាក់បញ្ចាំងខ្សែភាពយន្ដ រឿង”រាត្រីអស្ដង្គត”ហើយ!                                        ', 'socail', 'national', 5, 8, '2023-09-27'),
(32, '663461_650bc75b60746_1695270720_medium.jpg', '323361_65129493041e1_1695716460_medium.jpg', 'M Picture ចាប់ផ្ដើមចាក់បញ្ចាំងខ្សែភាពយន្ដ រឿង”រាត្រីអស្ដង្គត”ហើយ!', '                                                                                        M Picture ចាប់ផ្ដើមចាក់បញ្ចាំងខ្សែភាពយន្ដ រឿង”រាត្រីអស្ដង្គត”ហើយ!                                                                                ', 'socail', 'national', 5, 5, '2023-09-27'),
(33, '601776_6514166e17d6b_1695815220_medium.jpg', '250930_6514166e17d6b_1695815220_medium.jpg', 'ក្លឹប​ទាំង​១០ នៅ​លីគ​កំពូល​ទាំង​៥ រក​គ្រាប់​បាល់​បាន​ច្រើន​ជាង​គេ​ ក្នុង​រដូវកាល​នេះ', '                                            ១. ក្លឹប​ Bayern Munich៖ រក​គ្រាប់​បាល់​បាន​ ១៨គ្រាប់​ ក្នុង​៥ប្រកួត​។\r\n\r\n២. ក្លឹប​ Brighton៖ រក​គ្រាប់​បាល់​បាន​ ១៨គ្រាប់​ ក្នុង​៦ប្រកួត​។\r\n\r\n៣. ក្លឹប​ Barcelona៖ រក​គ្រាប់​បាល់​បាន​ ១៨គ្រាប់​ ក្នុង​៧ប្រកួត​។\r\n\r\n៤. ក្លឹប​ Bayer Leverkusen៖ រក​គ្រាប់​បាល់​បាន​ ១៧គ្រាប់​ ក្នុង​៥ប្រកួត​។\r\n\r\n៥. ក្លឹប​ Stuttgart៖ រក​គ្រាប់​បាល់​បាន​ ១៧គ្រាប់​ ក្នុង​៥ប្រកួត​។\r\n\r\n៦. ក្លឹប​ Manchester City៖ រក​គ្រាប់​បាល់​បាន​ ១៦គ្រាប់​ ក្នុង​៦ប្រកួត​។\r\n\r\n៧. ក្លឹប​ Girona៖ រក​គ្រាប់​បាល់​បាន​ ១៦គ្រាប់​ ក្នុង​៦ប្រកួត​។\r\n\r\n៨. ក្លឹប​ Newcastle United៖ រក​គ្រាប់​បាល់​បាន​ ១៦គ្រាប់​ ក្នុង​៦ប្រកួត​។\r\n\r\n៩. ក្លឹប​ Liverpool៖ រក​គ្រាប់​បាល់​បាន​ ១៥គ្រាប់​ ក្នុង​៦ប្រកួត​។\r\n\r\n១០. ក្លឹប​ Tottenham Hotspure៖ រក​គ្រាប់​បាល់​បាន​ ១៥គ្រាប់​ ក្នុង​៦ប្រកួត​៕\r\n\r\nប្រភព៖ transfermarkt   ប្រែ​សម្រួល៖ ហ៊ីម រស្មី                                        ', 'sport', 'international', 5, 2, '2023-09-28'),
(34, '41441_6512265b95362_1695688260_medium.jpg', '386524_6512265b95362_1695688260_medium.jpg', 'កីឡាករ​ទាំង​១០រូប​ ក្លឹប​នៅ​ Bundesliga លក់​ចេញ​ក្នុង​តម្លៃ​ខ្ពស់​បំផុត​ក្នុង​ប្រវត្តិសាស្ត្រ​', '                                            ១. Ousmane Dembele៖ Dortmund លក់​ទៅ​ឲ្យ​ Barca ក្នុង​តម្លៃ​ ១៣៥លាន​អ៊ឺរ៉ូ​ នូវ​រដូវកាល​ឆ្នាំ​២០១៧/១៨។\r\n\r\n២. Jude Bellingham៖ Dortmund លក់​ទៅ​ឲ្យ​ Real Madrid ក្នុង​តម្លៃ​ ១០៣លាន​អ៊ឺរ៉ូ​ នូវ​រដូវកាល​ឆ្នាំ​២០២៣/២៤។\r\n\r\n៣. Randal Kolo Muani៖ Frankfurt លក់​ទៅ​ឲ្យ​ PSG ក្នុង​តម្លៃ​ ៩៥លាន​អ៊ឺរ៉ូ​ នូវ​រដូវកាល​ឆ្នាំ​២០២៣/២៤។\r\n\r\n៤. Josko Gvardiol៖ Leipzig លក់​ទៅ​ឲ្យ​ Man City ក្នុង​តម្លៃ​ ៩០លាន​អ៊ឺរ៉ូ​ នូវ​រដូវកាល​ឆ្នាំ​២០២៣/២៤។\r\n\r\n៥. Jadon Sancho៖ Dortmund លក់​ទៅ​ឲ្យ​ Man Utd ក្នុង​តម្លៃ​ ៨៥លាន​អ៊ឺរ៉ូ​ នូវ​រដូវកាល​ឆ្នាំ​២០២១/២២។\r\n\r\n៦. Kai Havertz៖ Leverkusen លក់​ទៅ​ឲ្យ​ Chelsea ក្នុង​តម្លៃ​ ៨០លាន​អ៊ឺរ៉ូ​ នូវ​រដូវកាល​ឆ្នាំ​២០២០/២១។\r\n\r\n៧. Kevin De Bruyne៖ Wolfsburg លក់​ទៅ​ឲ្យ​ Man City ក្នុង​តម្លៃ​ ៧៦លាន​អ៊ឺរ៉ូ​ នូវ​រដូវកាល​ឆ្នាំ​២០១៥/១៦។\r\n\r\n៨. Dominik Szoboszlai៖ Leipzig លក់​ទៅ​ឲ្យ​ Liverpool ក្នុង​តម្លៃ​ ៧០លាន​អ៊ឺរ៉ូ​ នូវ​រដូវកាល​ឆ្នាំ​២០២៣/២៤។\r\n\r\n៩. Christian Pulisic៖ Dortmund លក់​ទៅ​ឲ្យ​ Chelsea ក្នុង​តម្លៃ​ ៦៤លាន​អ៊ឺរ៉ូ​ នូវ​រដូវកាល​ឆ្នាំ​២០១៨/១៩។\r\n\r\n១០. Pierre Emerick Aubameyang៖ Dortmund លក់​ទៅ​ឲ្យ​ Arsenal ក្នុង​តម្លៃ​ ៦៣.៨លាន​អ៊ឺរ៉ូ​ នូវ​រដូវកាល​ឆ្នាំ​២០១៧/១៨៕\r\n\r\nប្រភព៖ transfermarkt   ប្រែ​សម្រួល៖ ហ៊ីម រស្មី                                        ', 'sport', 'international', 5, 2, '2023-09-28'),
(35, '814078_651150a536e79_1695633540_medium.jpg', '133148_651150a536e79_1695633540_medium.jpg', 'សហព័ន្ធ​កីឡា​អេឡិចត្រូនិក៖​ ឈាន​មួយ​ជំហាន​ទៀត​ហើយ​បង្កើត​ជា​វគ្គ​បណ្ដុះបណ្ដាល​អាជ្ញាកណ្ដាល​ ចៅក្រុម​កម្រិត​មូលដ្ឋាន​', 'រំលឹក​ដែរ​ថា​ វគ្គ​បណ្ដុះបណ្ដាល​ចៅក្រម​ អាជ្ញាកណ្ដាល​ កម្រិត​មូលដ្ឋាន​នេះ​ធ្វើ​ឡើង​រយៈពេល​ ៥ថ្ងៃ​ គឺ​ចាប់​ពី​ថ្ងៃ​ទី១៩​ ដល់​ ២៣​ ខែ​កញ្ញា​ ឆ្នាំ​២០២៣។​ សិក្ខាកាម​ចូលរួម​មាន​ ៣១​នាក់​ ស្រី៥នាក់​ ប្រុស​ ២៦​នាក់​ និង​គ្រូ​ឧបទេស​ចំនួន​ ៨នាក់​ផង​ដែរ។​ ពិធី​បិទ​វគ្គ​ចៅក្រម​ អាជ្ញាកណ្ដាល​នេះ​ធ្វើ​ឡើង​កាល​ពី​ថ្ងៃ​ទី២៣​ ខែ​កញ្ញា​ ឆ្នាំ​២០២៣​ នៅ​ទីស្នាក់ការ​ NOCC៕​', 'sport', 'national', 5, 1, '2023-09-28'),
(36, '241065_62edd45266d17_1659753540_medium.jpeg', '379307_62edd45266d17_1659753540_medium.jpeg', 'លីគ​កីឡា​អេឡិចត្រូនិក MPL-KH Autumn ចាប់​ផ្តើម​​ប្រកួត​សប្តាហ៍​នេះ​ហើយ​', 'ព្រឹត្តិការណ៍​ប្រកួត​លីគ​​អេឡិចត្រូនិក​​អាជីព​​​ MPL-KH​ Pro League ​​ នៃ​​​​វិញ្ញាសា Mobile Legends: Bang Bang វគ្គ​ MPL-KH Autumn Split ឈាន​ចូល​មក​ដល់​ហើយ​ដែល​អ្នក​គាំទ្រ​នឹង​ទទួល​បាន​ចំណី​ចក្ខុ​​​ពិសេស​​ប្លែក និង​កាន់​តែ​អស្ចារ្យ។ លីគ MPL-KH Autumn Split ​ដែល​ជា​ផ្នែក​មួយ​ដ៏​សំខាន់​​ក្នុង​ការ​ជួយ​ជំរុញ លើក​កម្ពស់ និង​អភិវឌ្ឍ​​វិស័យ​កីឡា​អេឡិចត្រូនិក​​ក្នុង​ប្រទេស​កម្ពុជា​​ដែល​នាំ​មក​ជូន​​ដោយ​ក្រុម​ហ៊ុន​ទូរសព្ទ Metfone ហើយភេសជ្ជៈ Sting និង​ Honda ជា​​ម្ចាស់​ឧបត្ថម្ភ​ផ្លូវ​ការ ព្រម​ទាំង​ដៃ​គូ​សហការ Indomie-Esports និង TikTok-Esports​ ចាប់​ផ្តើម​ប្រកួត​វគ្គ​វិល​ជុំ​សន្សំ​ពិន្ទុ (Regular) ចាប់​ពី​​ថ្ងៃ​ទី​៦ ខែ​សីហា ដល់​ថ្ងៃ​ទី​៤ ខែ​កញ្ញា ខណៈ​វគ្គ​ខ្វែង (Playoff) ត្រូវ​ប្រកួត​​ចាប់​ពី​ថ្ងៃ​ទី​១៧ ខែ​កញ្ញា ដល់​ថ្ងៃ​ទី​​១ ខែ​តុលា ហើយ​វគ្គ​ផ្តាច់​ព្រ័ត្រ​​នៅ​ថ្ងៃ​ទី​២ ខែ​តុលា ឆ្នាំ​២០២២។', 'sport', 'national', 5, 1, '2023-09-28'),
(37, '256229_65124b4c8e042_1695697740_medium.jpg', '421023_65124b4c8e042_1695697740_medium.jpg', 'កីឡា​កាយសម្ព័ន្ធ៖​ វគ្គ​បណ្ដុះបណ្ដាល​គ្រូ​ជា​ផ្នែក​សំខាន់​ក្នុង​ការ​ជំរុញ​អភិវឌ្ឍន៍​', 'វគ្គ​ដែល​ធ្វើ​ឡើង​តាំង​ពី​ថ្ងៃ​ទី២២​ ខែ​កញ្ញា​នេះ​គឺ​ផ្ដល់​នូវ​ចំណេះ​ជំនាញ​ច្បាស់លាស់​ដល់​គ្រូ​បង្គោល​ដើម្បី​រឹតតែ​មាន​ប្រសិទ្ធភាព​ក្នុង​ការ​បង្ហាត់បង្រៀន​ដល់​កីឡាករ​ កីឡា​ការិនី។​ កីឡាករ​ កីឡា​ការិនី​កម្រិត​មូលដ្ឋាន​ (អាយុ​៨ឆ្នាំ​ចុះ)​គឺ​មាន​ភាព​បត់បែន​លឿន​ប្រសិន​បើ​មាន​គ្រូ​បង្ហាត់​ល្អ​ ដូច្នេះ​គ្រូ​ត្រូវ​មាន​ចំណេះ​ដឹង​ច្បាស់លាស់​ជៀសវាង​កំហុស​ឆ្គង​ណា​មួយ។​ ក្នុង​វគ្គ​នេះ​ដែរ​គឺ​មាន​បង្រៀន​ជា​ទ្រឹស្ដី​ និង​ការ​អនុវត្តន៍។​', 'sport', 'national', 5, 1, '2023-09-28'),
(38, '31523_5d05c9f159eec_1560660420_medium.jpg', '894035_5d05c9f159eec_1560660420_medium.jpg', 'រួសរាន់​ចុះឈ្មោះ​អ្នក​ចង់​ចូលរួម​រត់​សប្បុរសធម៌​ AIA Pink Run​ ថ្ងៃទី២២​ ខែ​តុលា​ ២០២៣​ នៅ​ភ្នំពេញ​', 'AIA Pink Run ​ជា​ព្រឹត្តិការណ៍​រត់​ប្រណាំង​ដើម្បី​អបអរ​សមិទ្ធផល​ និង​ភាព​ជោគជ័យ​ នៃ​ព្រឹត្តិការណ៍​កីឡា​ស៊ីហ្គេម​ និង​អាស៊ាន​ប៉ារ៉ាហ្គេម​នៅ​កម្ពុជា។​ បន្ថែម​ពី​នេះ​ក៏​ជា​ការ​លើក​កម្ពស់​ការ​យល់​ដឹង​អំពី​ជំងឺ​មហារីក​សុដន់​ផង​ដែរ។​ AIA​ ក៏​ជួយ​ពិនិត្យ​ជូន​មហាជន​ចូលរួម​ដោយ​ឥត​គិត​ថ្លៃ​លើ​ជំងឺ​មហារីក​សុដន់​ទៀត​ផង។​\r\n\r\n', 'sport', 'national', 5, 1, '2023-09-28'),
(39, '489942_651275cfae66a_1695708600_medium.jpg', '39689_651275cfae66a_1695708600_medium.jpg', 'ទូតជប៉ុន៖ រឿង\"No More Bets” មិនប៉ះពាល់ខ្លាំងដល់ទេសចរ តែកម្ពុជាត្រូវកែលម្អរចំណុចខ្លះ ដើម្បីវិស័យទេសចរ', 'ចន្លោះមិនឃើញ\r\n\r\nនិយាយតែចំពោះភ្ញៀវទេសចរជប៉ុន ឯអគ្គរដ្ឋទូតជប៉ុនប្រចាំនៅកម្ពុជា លោក UENO ATSUSHI ថា ការចាក់បញ្ចាំខ្សែភាពយន្ដរឿង “សូមបញ្ឈប់ការភ្នាល់បន្ដទៀត” ឬ No More Bets របស់ចិនដែលធ្វើឲ្យប៉ះពាល់ដល់អារម្មណ៍ភ្ញៀវទេសចរចិន និងបណ្ដាប្រទេសមួយចំនួនដែលមានបំណងមកលេងកម្ពុជា មានការភ័យខ្លាចនោះដោយសារឧក្រិដ្ឋកម្មជួញដូរមនុស្សនោះ គឺភ្ញៀវទេសចរជប៉ុនពុំមានអារម្មណ៍បែបនេះឡើយ ហើយម្យ៉ាងរឿងបែបនេះ មិនត្រូវបានអនុញ្ញាតឲ្យចាក់បញ្ចាំង ឬចែករំលែកទូលំទូលាយឡើយនៅជប៉ុន។', 'socail', 'international', 5, 1, '2023-09-28'),
(40, '252345_650cd67136be4_1695340140_medium.jpg', '561887_650cd67136be4_1695340140_medium.jpg', 'មាន​តែ​មួយ​ប្រទេស​ទេ​ ដែល​មាន​កាំភ្លើង​ទម្រង់​ដូច​ AK-47 លើ​ទង់ជាតិ​របស់​ខ្លួន', 'ទង់ជាតិ​នៃ​ប្រទេស​ជាច្រើន​នៅ​លើ​ពិភព​លោក​ មាន​ការ​បញ្ចូល​អាវុធ​ផ្សេងៗ​ដែល​មាន​ន័យ​ផ្សេងៗ​គ្នា​ពី​មួយ​ទៅ​មួយ តែ​អាវុធ​សម័យ​ទំនើប​ដូច​ជា​ AK-47 ជាដើម​មាន​ក្នុង​សញ្ញា​ជាតិ​របស់​ប្រទេស​មួយ​ចំនួន​ដែរ​ តែ​បើ​សម្រាប់​ទង់ជាតិ​វិញ​ មាន​តែ​ប្រទេស​ម៉ូហ្សាំប៊ិក​ (Mozamique) ទេ​ដែល​មាន​កាំភ្លើង​ទម្រង់​ដូច​ប្រភេទ​ AK-47 ក្នុង​ទង់ជាតិ​របស់​គេ។', 'socail', 'international', 5, 2, '2023-09-28'),
(41, '106962_650adffa4d9a5_1695211500_medium.jpg', '347332_650adffa4d9a5_1695211500_medium.jpg', 'នៅ​អាស៊ាន​ គិត​ថា​ប្រទេស​ណា​មាន GDP ធំ​ជាង​គេ​?', 'នៅ​តំបន់​អាស៊ាន ប្រទេស​ឥណ្ឌូនេស៊ី​មាន​ផលទុនក្នុងស្រុក ឬ GDP សរុប ១ ៣៩០ប៊ីលាន​ដុល្លារ​អាមេរិក។ បន្ទាប់​ពី​ឥណ្ឌូនេស៊ី​គឺ ថៃ មាន​ GDP សរុប ៥៨០,៦៩ប៊ីលាន បន្ត​មក​ទៀត​គឺ វៀតណាម ដែល​មាន​ទំហំ​សេដ្ឋកិច្ច​សរុប ៤៦៩,៦២ប៊ីលាន​ដុល្លារ​។', 'socail', 'international', 5, 1, '2023-09-28'),
(42, '286246_651171ab34515_1695642000_medium.jpg', '438224_651171ab34515_1695642000_medium.jpg', 'មក​ដឹង​ពី ចំនួន​ប្រទេស​តាម​ទ្វីប​ទាំង​ ៧', 'ខាង​ក្រោម​នេះ ជា​ចំនួន​ប្រទេស​តាម​ទ្វីប​នីមួយ​ៗ​លើ​ពិភពលោក៖\r\n\r\n១. ទ្វីប​អាហ្វ្រិក​៖ ទ្វីប​ដែល​មាន​ទំហំ​ជាង​ ៣០​លាន​គីឡូម៉ែត្រ​ក្រឡា​នេះ ជា​ជម្រក​នៃ​ប្រទេស​តូច​ធំ​ ចំនួន​ ៥៤​។', 'socail', 'international', 5, 3, '2023-09-28'),
(43, '521123_65151aa3675ec_1695881880_medium.jpg', '31141_65151aa3675ec_1695881880_medium.jpg', 'ប្លែក! ២ថ្ងៃនេះ ផេនខេក បញ្ចេញរូបថតស្និទ្ធស្នាលជាមួយបុរសសង្ហារ ក្នុងឈុតមង្គលការជាប់ៗគ្នា', 'តារាសម្ដែងមាឌយក្ស ផេនខេក បានបញ្ចេញរូបថតជាច្រើនសន្លឹកនៅថ្ងៃនេះ និងម្សិលមិញ ជាមួយនឹងបុរសសង្សារ ដែលអ្នកគាំទ្រខ្លះសង្ស័យថាគូស្នេហ៍ថ្មី និងខ្លះថាគ្រាន់តែថតសម្ដែងក្នុងឈុតណាមួយ នៃសាច់រឿងប៉ុណ្ណោះ។ អ្វីដែលគេកាន់តែចាប់ភ្លឹកទៀតនោះ គឺផេនខេក បានពោលពាក្យក្នុងន័យស្នេហាជាច្រើនភ្ជាប់ជាមួយរូបថតទាំងនោះ។\r\n\r\n', 'entertainment', 'national', 5, 1, '2023-09-28'),
(44, '550359_6514f34427690_1695871800_medium.jpg', '962410_6514f34427690_1695871800_medium.jpg', 'តារាស្រី ៤ដួង រំលឹកអនុស្សាវរីយ៍នៅប្រាសាទអង្គរ ខណៈមហាជនផ្ទុះការជជែកគ្នាជាថ្មីរឿងថៃសង់ប្រាសាទ', 'នៅដើមសប្ដាហ៍ទី៤ នៃខែកញ្ញា ឆ្នាំ២០២៣ នេះ មហាជនទាំងក្នុង និងក្រៅប្រទេសបានចាប់អារម្មណ៍ជាថ្មីលើប្រទេសថៃដែលគេសង្ស័យថាបានសាងសង់ប្រាសាទដោយលួចចម្លងរចនាបទពីប្រាសាទអង្គរវត្ដរបស់ខ្មែរ។ សម្រាប់ពលរដ្ឋខ្មែរ ក្នុងនោះក៏មានតារាល្បីៗមួយចំនួនដែរ បានបង្ហាញការមិនពេញចិត្ដ ហើយបានរំលឹកអនុស្សាវរីយ៍នៅប្រាសាទអង្គរឡើងវិញ។', 'entertainment', 'national', 5, 0, '2023-09-28'),
(45, '875913_6513d854e1dec_1695799380_medium.jpg', '110731_6513d854e1dec_1695799380_medium.jpg', 'ស្វាមី សួស វីហ្សា កំណត់គោលដៅយកចំណូលប្រមាណ ៣ម៉ឺនដុល្លារ ក្នុង ១ខែ ពីផ្ទះមួយក្បែរទន្លេ', 'ថមមី ដែលជាស្វាមីតារាចម្រៀងស្រីរបស់ផលិតកម្មរស្មីហង្សមាស សួស វីហ្សា ទើបបានកំណត់ប្រាក់ចំណូលប្រចាំខែ ដោយបញ្ចេញរូបថត និងនិយាយបែបជឿជាក់មួយតាមបណ្ដាញសង្គមហ្វេសប៊ុកនៅរសៀលថ្ងៃទី២៧ ខែកញ្ញា ឆ្នាំ២០២៣ នេះ។', 'entertainment', 'national', 5, 1, '2023-09-28'),
(46, '410891_6513b65b9083d_1695790680_medium.jpg', '391856_6513b65b9083d_1695790680_medium.jpg', 'យ៉ែម ស្រីពេជ្រ ប្រាប់មូលហេតុចង់មានសង្សារ ច្រើនជាងមានស្វាមីភ្ជាប់ចំណងអាពាហ៍ពិពាហ៍', 'តារាសម្ដែង និងជាពិធីការិនី យ៉ែម ស្រីពេជ្រ កំពុងមានប្រជាប្រិយភាពខ្លាំងក្នុងរង្វង់អ្នកសិល្បៈ ហើយសម្រស់វិញក៏នៅតែស្រស់ស្អាត បើទោះបីជាគិតត្រឹមឆ្នាំ២០២៣ នេះ នាងមានវ័យជិត ៣០ឆ្នាំទៅហើយក្ដី។ បច្ចុប្បន្ន ស្រីពេជ្រ ចាប់ផ្ដើមបើកបេះដូងទទួលយកបុរសក្នុងក្ដីស្រម៉ៃ ប៉ុន្ដែមិនមែនជាស្វាមី ឬដៃគូជីវិតដែលត្រូវភ្ជាប់ចំណងអាពាហ៍ពិពាហ៍ឡើយ។', 'entertainment', 'national', 5, 0, '2023-09-28'),
(47, '529591_65124ccfae831_1695698100_medium.jpg', '840203_65124ccfae831_1695698100_medium.jpg', 'នរណាទៅជាម្ចាស់ឈ្មោះ ដែលល្បីឃ្លា”ចុះឯណា Goofy?” ក្នុងបទ”20Out Now” របស់ ទេព ពិសិដ្ឋ', 'បទចម្រៀង “20Out Now”របស់តារាRapវ័យក្មេង ទេព ពិសិដ្ឋ កំពុងទទួលបានការចាប់អារម្មណ៌ជាខ្លាំងពីសំណាក់យុវ័យ ហើយHookរបស់បទចម្រៀង”20OutNow”ក៏កំពុងផ្ទុះនៅក្នុងបណ្តាញសង្គមនានា ដូចជាFacebook និង Tik Tok។', 'entertainment', 'national', 5, 1, '2023-09-28'),
(48, '812074_650fa94008e21_1695525180_medium.jpg', '179334_650fa94008e21_1695525180_medium.jpg', 'ហេតុអ្វី​បាន​ជាពណ៌សក់ក្រហមជាពណ៌យ៉ាប់ជាងគេសម្រាប់តារា K-Pop?', 'ជាការសង្កេត ជាទូទៅ តារា K-Pop ភាគច្រើន​ចូលចិត្តលេងពណ៌សក់ចាំងៗ និងលេចធ្លោ ហើយពណ៌ដែលពេញនិយមជាងគេ​គឺ ពណ៌ក្រហម។ ទោះជាយ៉ាងណា នេះ​ក៏ជា​ដើមចមនៃបញ្ហា​ដែរ សម្រាប់តារាដែលលេងពណ៌សក់ក្រហម។ ទាក់ទង​នឹង​បញ្ហា​នេះ​ អ្នកជំនាញផ្នែកសក់ ២ នាក់ប្រចាំ​ K-Pop បាន​លើកឡើង និងពន្យល់មូលហេតុ​នៅក្នុង​បទសម្ភាស​មួយ។', 'entertainment', 'international', 5, 1, '2023-09-28'),
(49, '27088_64f5991d9a377_1693817100_medium.jpeg', '877780_64f5991d9a377_1693817100_medium.jpeg', 'ថ្ងៃមុខទៅជាយ៉ាងណាគ្មានអ្នកណាដឹង តែ V អាចស្រមៃចេញរូបភាពនៅនឹងមុខ', 'កាល​ពីឆ្នាំ ២០១៣ សមាជិក BTS បានឆ្លើយនូវសំណួរ មួយថា តើពួកគេ​មើលឃើញខ្លួន​ឯងទៅជាយ៉ាងណា នាពេល​អនាគត។ សម្រាប់ V បាន​ឆ្លើយចម្លើយជាទីពេញចិត្ត ប្រាប់ពីគម្រោងដែល​ខ្លួនគិតទុកជាស្រេច នៅពេល​ចូលនិវត្ត ពោលគឺពេល​ខ្លួនឈានចូលវ័យ ៤០ឆ្នាំ។', 'entertainment', 'international', 5, 0, '2023-09-28'),
(50, '829059_64e45d760badd_1692687720_medium.jpg', '699855_64e45d760badd_1692687720_medium.jpg', 'របួសជើងមិនទាន់ជាស្រួលបួល រឿងថ្មីសម្បូរឈុតឆាកហក់លោតមកដល់ ស៊ីន យូប៊ីន ប្ដេជ្ញាធ្វើឲ្យបានល្អ', 'ខ្សែភាពយន្ដរឿង “បណ្ដាសានាងរាត្រី” បានបើកកាមេរ៉ាថតហើយ ហើយតួឯកស្រី ស៊ីន យូប៊ីន ក៏ចាប់ផ្ដើមចេញថតជាមួយតួឯកប្រុសជនជាតិភូមា Paing Takhon ដែរ។ ឆ្លងកាត់ការថតរឿងជាច្រើន យូប៊ីន មិនដែលអល់អែក ឬបារម្ភក្នុងចិត្ដនោះទេ ប៉ុន្ដែសម្រាប់រឿងថ្មីនេះមានឈុតឆាកពិបាកច្រើនក្នុងពេលដែលជើងរបស់កញ្ញាមិនទាន់ជាសះស្បើយ១០០%។\r\n\r\n', 'entertainment', 'international', 5, 1, '2023-09-28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile` varchar(255) NOT NULL,
  `create_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `email`, `password`, `profile`, `create_at`) VALUES
(5, 'ramey', 'ramey0406@gmail.com', '202cb962ac59075b964b07152d234b70', '100923085356_me.jpg', '2023-09-10'),
(6, 'admin', 'ramey0406@gmail.com', '202cb962ac59075b964b07152d234b70', '280923105156_65129493041e1_1695716460_medium.jpg', '2023-09-28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_about_us`
--
ALTER TABLE `tbl_about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_logo`
--
ALTER TABLE `tbl_logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_about_us`
--
ALTER TABLE `tbl_about_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_logo`
--
ALTER TABLE `tbl_logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
