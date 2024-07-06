-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2022 at 05:34 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `novel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `date`) VALUES
(1, 'admin', 'CAC29D7A34687EB14B37068EE4708E7B', 'admin@mail.com', '2022-05-27 13:21:52');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`c_id`, `c_name`, `date`) VALUES
(1, 'Genre', '2022-09-07 03:47:05'),
(2, 'Author', '2022-09-06 03:44:30'),
(4, 'Publisher', '2022-09-27 03:01:08');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `p_id` int(222) NOT NULL,
  `s_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `author` varchar(200) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `s_id`, `title`, `author`, `slogan`, `price`, `img`) VALUES
(4, 7, 'The Butcher and the Wren', 'Alaina Urquhart', 'From the co-host of chart-topping true crime podcast Morbid, a thrilling debut novel told from the dueling perspectives of a notorious serial killer and the medical examiner following where his trail of victims leads  Some', '212.00', '633086c86f6fc.jpg'),
(5, 7, 'Daisy Darker', 'Alice Feeney', 'After years of avoiding each other, Daisy Darker’s entire family is assembling for Nana’s 80th birthday party in Nana’s crumbling gothic house on a tiny tidal island. Finally back together one last time.', '233.00', '63308742a4980.jpg'),
(6, 10, 'Five Feet Apart', 'Rachael Lippincott', 'In this moving story two teens fall in love with just one minor complication—they can’t get within five feet of each other without risking their lives.  Can you love someone you can never touch?  Stella Grant likes to be i', '234.00', '633086f165c74.jpg'),
(7, 11, 'The Exorcist', 'William Peter Blatty', 'The Exorcist is a 1971 horror novel by American writer William Peter Blatty. The book details the demonic possession of eleven-year-old Regan MacNeil, the daughter of a famous actress, and the two priests who attempt to ex', '235.00', '63307e6789394.jpg'),
(8, 13, 'Twilight', 'Stephenie Meyer', 'The Twilight Saga is a series of four vampire-themed fantasy romance novels, two companion novels, and one novella, written by American author Stephenie Meyer.', '585.00', '633084a9bfc2b.jpg'),
(9, 14, 'After', ' Anna Todd', 'After is a 2014 young adult romance novel written by American author Anna Todd under her Wattpad name Imaginator1D and published by Gallery Books, an imprint of Simon & Schuster. After is the first installment of the After', '290.00', '633086117e6a4.jpg'),
(10, 16, 'Everyone Has A Story', 'Savi Sharma', 'Everyone Has a Story is a story about Vivan and Meera. Meera wants to write and Vivan, the mysterious guy is her subject. Apart from the love story they have.', '345.00', '633088c71c2c6.jpg'),
(11, 18, 'The Book of Lost Names', 'Kristin Harmel', 'Inspired by an astonishing true story from World War II, a young woman with a talent for forgery helps hundreds of Jewish children flee the Nazis in this “sweeping and magnificent” (Fiona Davis, bestselling author of The L', '290.00', '6330945d40637.jpg'),
(15, 13, 'Harry Potter', 'J.K. Rolwing', 'Harry Potter is a series of seven fantasy novels written by British author J. K. Rowling. The novels chronicle the lives of a young wizard, Harry Potter, and his friends Hermione Granger and Ron Weasley, all of whom are st', '560.00', '63329c9fa11c0.jpg'),
(16, 13, ' After Series', 'Anna Todd', 'The After series is a five-book young-adult romance series written by Anna Todd and published by the Simon & Schuster publishing company.', '450.00', '63329dc456cf8.jpg'),
(18, 46, 'The Alchemist', 'Paulo Coelho', 'The Alchemist is a novel by Brazilian author Paulo Coelho which was first published in 1988. Originally written in Portuguese, it became a widely translated international bestseller. ', '290.00', '63329fa71c8cc.jpg'),
(19, 48, 'The Silent Wife', 'A. S. A. Harrison', 'Jodi and Todd are at a bad place in their marriage. Both are at the mercy of their unrelenting wants and needs, and both are unaware that the path they are on is careening toward murder.', '230.00', '6332adddca204.jpg'),
(20, 47, 'When You Were Mine', 'Rebecca Serle', 'In this “heart-clutching psychological thriller” (People) from an author who Stephen King calls “an absolute master,” a young female police officer faces danger on all fronts—from a clever victim of abuse, ..', '235.00', '6335499705356.jpg'),
(21, 10, 'Fifty Shades', 'E. L. James', 'Fifty Shades is a series of erotic novels by E. L. James, initially a trilogy consisting of Fifty Shades of Grey, Fifty Shades Darker and Fifty Shades Freed. The series traces the deepening relationship between college gra', '350.00', '63354bc9ed6a2.jpg'),
(22, 11, 'A Head Full of Ghosts', 'Paul G. Tremblay', 'A Head Full of Ghosts is the fourth horror novel by American writer Paul G. Tremblay. The plot involves an American family from Massachusetts under financial and emotional strain when their fourteen-year-old daughter, Marj', '260.00', '63354c8ae48c2.jpg'),
(23, 14, 'Anna and the French Kiss', 'Stephanie Perkins', 'Anna and the French Kiss is the 2010 debut novel of Stephanie Perkins. The book was published on December 2, 2010, through Dutton Juvenile and was written during National Novel Writing Month. The book was followed with the', '245.00', '63354d49f0a43.jpg'),
(24, 16, 'Stories We Never Tell', 'Savi Sharma', '‘Everyone has a Story‘ which is India’s first successful self published novel by a female author. An Amazon Bestseller will be now re-published by India’s top publisher Westland Books. The author of this novel is Savi Shar', '265.00', '63354e2ccbe50.jpg'),
(25, 18, 'The Paris Daughter', 'Kristin Harmel', 'From the bestselling author of the “heart-stopping tale of survival and heroism” (People) The Book of Lost Names comes a gripping historical novel about two mothers who must make unthinkable choices in ', '260.00', '63354ec93d9f6.jpg'),
(26, 46, 'Veronika Decides to Die', 'Paulo Coelho', 'Twenty-four-year-old Veronika seems to have everything -- youth and beauty, boyfriends and a loving family, a fulfilling job. But something is missing in her life. So, one cold November morning, she takes a handful of slee', '230.00', '63354f8818e52.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(1, 1, 'in process', 'On the Way.......! Your product will reach soon', '2022-09-27 05:27:02'),
(2, 3, 'closed', 'Your product has been successfully arrived................', '2022-09-27 05:51:51'),
(3, 5, 'in process', 'Your product is on the way............!!!!!', '2022-09-30 02:50:12'),
(4, 6, 'closed', 'Your product has been delivered successfully............!!!!', '2022-09-30 03:21:27'),
(5, 7, 'rejected', 'Your product delivery has been cancelled.....!!!', '2022-09-30 03:22:07');

-- --------------------------------------------------------

--
-- Table structure for table `subcat`
--

CREATE TABLE `subcat` (
  `s_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcat`
--

INSERT INTO `subcat` (`s_id`, `c_id`, `title`, `image`, `date`) VALUES
(7, 1, 'Thriller', '631823250b2ad.jpg', '2022-09-07 04:50:45'),
(10, 1, 'Film adaption', '6318114cece1e.jpg', '2022-09-07 03:34:36'),
(11, 1, 'Horror', '6318115eaf788.jpg', '2022-09-07 03:34:54'),
(13, 1, 'Novel series', '6318119122414.jpg', '2022-09-07 03:35:45'),
(14, 1, 'Romance', '631819c140c11.jpg', '2022-09-07 04:10:41'),
(16, 2, 'Savi Sharma', '631819a1313bb.jpg', '2022-09-07 04:10:09'),
(18, 2, 'Kristin Harmel', '6318133b169f7.jpg', '2022-09-07 03:42:51'),
(46, 2, 'Paulo Coelho', '6331e826cbaa7.jpg', '2022-09-26 17:57:58'),
(47, 4, 'Orange Book Publication', '633267981725e.png', '2022-09-27 03:01:44'),
(48, 4, 'Coffee House Press', '6332ad0ccd596.jpg', '2022-09-27 07:58:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` int(12) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(8, 'Alina', 'alinavarghese009@gmail.com', 2147483647, 'b283b728590726cdcd88a97ab3e70890', 'Kerala Park, University Road, Rajkot, Gujarat', 1, '2022-09-27 06:29:19'),
(9, 'Kajal', 'kajalkhuha030@gmail.com', 2147483647, '6ffcfda4ecdd300501464813e1fcd3f3', 'Nishtha Girls Hostel, Panchayat Chowk, Rajkot,Gujarat', 1, '2022-09-27 06:42:41'),
(11, 'Neel', 'neelkalyani601@gmail.com', 2147483647, '78c1d25a89620c8450bbd523e7846441', 'Katariya Chowk, rajkot, Gujarat', 1, '2022-09-27 07:42:07'),
(12, 'Keval', 'keval@gmail.com', 2147483647, '5498982566abb568c872d4dad5774727', 'Sheetal Park, Bombay', 1, '2022-09-30 00:59:59'),
(13, 'Paranj', 'pipaliyaparanj75@gmail.com', 2147483647, 'd04fba95900074a3b70e01f0157eeecb', '80\"street , Kolkata', 1, '2022-09-30 01:05:31');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(5, 12, 'The Exorcist', 1, '235.00', 'in process', '2022-09-30 02:50:12'),
(6, 12, 'A Head Full of Ghosts', 5, '260.00', 'closed', '2022-09-30 03:21:27'),
(7, 13, 'Five Feet Apart', 1, '234.00', 'rejected', '2022-09-30 03:22:07'),
(8, 9, 'Harry Potter', 1, '560.00', NULL, '2022-09-30 01:06:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcat`
--
ALTER TABLE `subcat`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `p_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subcat`
--
ALTER TABLE `subcat`
  MODIFY `s_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
