-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2026 at 07:25 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dsa_tracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `problems`
--

CREATE TABLE `problems` (
  `id` int(11) NOT NULL,
  `subtopic_id` int(11) DEFAULT NULL,
  `problem_name` varchar(100) DEFAULT NULL,
  `platform` varchar(200) DEFAULT NULL,
  `difficulty` varchar(50) DEFAULT NULL,
  `problem_link` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `problems`
--

INSERT INTO `problems` (`id`, `subtopic_id`, `problem_name`, `platform`, `difficulty`, `problem_link`) VALUES
(1, 1, 'Two Sum', 'LeetCode', 'Easy', 'https://leetcode.com/problems/two-sum/');

-- --------------------------------------------------------

--
-- Table structure for table `progress`
--

CREATE TABLE `progress` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `problem_id` int(11) DEFAULT NULL,
  `solved` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subtopics`
--

CREATE TABLE `subtopics` (
  `id` int(11) NOT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `subtopic_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subtopics`
--

INSERT INTO `subtopics` (`id`, `topic_id`, `subtopic_name`) VALUES
(1, 1, 'Basic Array Operations'),
(2, 1, 'Two Pointer Technique'),
(3, 1, 'Sliding Window'),
(4, 1, 'Prefix Sum'),
(5, 1, 'Matrix / 2D Arrays'),
(6, 1, 'Searching & Sorting'),
(7, 2, 'Basic String Manipulation'),
(8, 2, 'Palindrome Problems'),
(9, 2, 'Anagram Problems'),
(10, 2, 'Pattern Matching'),
(11, 2, 'Substring Problems'),
(12, 3, 'Basic Operations'),
(13, 3, 'Reverse Linked List'),
(14, 3, 'Cycle Detection'),
(15, 3, 'Insert / Delete'),
(16, 3, 'Doubly Linked List'),
(17, 3, 'Advanced Linked List'),
(18, 3, 'Basic Operations'),
(19, 3, 'Reverse Linked List'),
(20, 3, 'Cycle Detection'),
(21, 3, 'Insert / Delete'),
(22, 3, 'Doubly Linked List'),
(23, 3, 'Advanced Linked List'),
(24, 4, 'Tree Traversals'),
(25, 4, 'Binary Tree Problems'),
(26, 4, 'Binary Search Tree'),
(27, 4, 'Tree Views'),
(28, 4, 'Advanced Tree Problems'),
(29, 5, 'Graph Representation'),
(30, 5, 'Breadth First Search (BFS)'),
(31, 5, 'Depth First Search (DFS)'),
(32, 5, 'Shortest Path Algorithms'),
(33, 5, 'Minimum Spanning Tree'),
(34, 5, 'Topological Sort'),
(35, 5, 'Advanced Graph Problems'),
(36, 6, 'Fibonacci Pattern'),
(37, 6, 'Knapsack Problems'),
(38, 6, 'Longest Increasing Subsequence'),
(39, 6, 'Subsequence DP'),
(40, 6, 'Grid DP'),
(41, 6, 'DP on Strings'),
(42, 6, 'Advanced DP Problems'),
(43, 8, 'Linear Search'),
(44, 8, 'Binary Search'),
(45, 8, 'Search Insert Position'),
(46, 8, 'First and Last Occurrence'),
(47, 8, 'Peak Element'),
(48, 9, 'Bubble Sort'),
(49, 9, 'Selection Sort'),
(50, 9, 'Insertion Sort'),
(51, 9, 'Merge Sort'),
(52, 9, 'Quick Sort'),
(53, 9, 'Heap Sort'),
(54, 10, 'Tree Traversals'),
(55, 10, 'Binary Tree Problems'),
(56, 10, 'Binary Search Tree'),
(57, 10, 'Tree Views'),
(58, 10, 'Lowest Common Ancestor'),
(59, 10, 'Advanced Tree Problems'),
(60, 11, 'Graph Representation'),
(61, 11, 'Breadth First Search (BFS)'),
(62, 11, 'Depth First Search (DFS)'),
(63, 11, 'Shortest Path Algorithms'),
(64, 11, 'Minimum Spanning Tree'),
(65, 11, 'Topological Sort'),
(66, 12, 'Fibonacci Pattern'),
(67, 12, 'Knapsack Problems'),
(68, 12, 'Longest Increasing Subsequence'),
(69, 12, 'Subsequence DP'),
(70, 12, 'Grid DP'),
(71, 12, 'DP on Strings'),
(77, 7, 'Activity Selection'),
(78, 7, 'Fractional Knapsack'),
(79, 7, 'Job Scheduling'),
(80, 7, 'Minimum Coins Problem'),
(81, 7, 'Huffman Coding'),
(82, 7, 'Greedy Graph Problems');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `topic_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `topic_name`) VALUES
(1, 'Arrays'),
(2, 'Strings'),
(3, 'Linked List'),
(4, 'Stack'),
(5, 'Queue'),
(6, 'Recursion'),
(7, 'Greedy Algorithms'),
(8, 'Searching'),
(9, 'Sorting'),
(10, 'Trees'),
(11, 'Graphs'),
(12, 'Dynamic Programming');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `problems`
--
ALTER TABLE `problems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subtopic_id` (`subtopic_id`);

--
-- Indexes for table `progress`
--
ALTER TABLE `progress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `problem_id` (`problem_id`);

--
-- Indexes for table `subtopics`
--
ALTER TABLE `subtopics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `problems`
--
ALTER TABLE `problems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `progress`
--
ALTER TABLE `progress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subtopics`
--
ALTER TABLE `subtopics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `problems`
--
ALTER TABLE `problems`
  ADD CONSTRAINT `problems_ibfk_1` FOREIGN KEY (`subtopic_id`) REFERENCES `subtopics` (`id`);

--
-- Constraints for table `progress`
--
ALTER TABLE `progress`
  ADD CONSTRAINT `progress_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `progress_ibfk_2` FOREIGN KEY (`problem_id`) REFERENCES `problems` (`id`);

--
-- Constraints for table `subtopics`
--
ALTER TABLE `subtopics`
  ADD CONSTRAINT `subtopics_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
