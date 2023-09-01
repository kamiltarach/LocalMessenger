-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Wrz 01, 2023 at 09:54 AM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mes`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sender_id`, `recipient_id`, `message`, `timestamp`) VALUES
(1, 1, 8, 'A teraz mam nadzieje ze bedzie id=\'1\'', '2023-06-14 07:57:41'),
(2, 1, 8, 'No i jest', '2023-06-14 07:57:54'),
(3, 1, 8, 'Wiec najs', '2023-06-14 07:57:57'),
(4, 1, 1, 'Witam', '2023-06-14 09:11:30'),
(5, 1, 1, 'Jak sie Pan Ma', '2023-06-14 09:11:36'),
(6, 1, 1, 'czm to sie pisze jeden obok drugiego', '2023-06-14 09:11:47'),
(7, 1, 1, 'Kurwa', '2023-06-14 09:11:49'),
(8, 1, 3, 'Hej', '2023-06-14 09:31:38'),
(9, 1, 3, 'Ale teraz jakbym ja pisał to działa', '2023-06-14 09:31:49'),
(10, 1, 4, 'Witam', '2023-06-14 09:45:58'),
(11, 1, 4, 'Witam', '2023-06-14 11:20:00'),
(12, 1, 5, 'Siema Maciuś', '2023-06-14 11:46:24'),
(13, 1, 5, 'Jak tam zdrowie', '2023-06-14 11:46:29'),
(14, 1, 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Et illo optio nisi quas minima ullam quis, quae alias ea, assumenda quisquam ipsa voluptatem vero nulla voluptatibus error molestiae ut. Tempore!', '2023-06-14 12:14:48'),
(15, 2, 3, 'Jestem ciekawy jak to zadziała', '2023-06-14 12:15:58'),
(16, 1, 2, 'Z kazdym trzeba miec relacje', '2023-06-14 14:54:42'),
(17, 1, 6, 'A gdzie kuzyn,', '2023-06-14 14:55:02'),
(18, 1, 6, 'Mianowicie podsiadło', '2023-06-14 14:55:12'),
(19, 1, 7, 'A gdzie ojciec', '2023-06-14 14:55:21'),
(20, 1, 7, 'Mianowicie niewczas', '2023-06-14 14:55:27'),
(21, 1, 1, 'Why', '2023-06-18 12:16:38'),
(22, 1, 1, 'A teraz', '2023-06-18 12:18:45'),
(23, 1, 1, 'Czy to sie bedzie przesuwac', '2023-06-18 12:18:52');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `recipient`
--

CREATE TABLE `recipient` (
  `recipient_id` int(11) NOT NULL,
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `surname` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `recipient`
--

INSERT INTO `recipient` (`recipient_id`, `name`, `surname`) VALUES
(1, 'Mścichuj', 'Mickiewicz'),
(2, 'Marzanka', 'Nizinna'),
(3, 'Fiutek', 'Słowacki'),
(4, 'Marek', 'Marucha'),
(5, 'Maciej', 'Niemusiał'),
(6, 'Dawid', 'Nadsiadło'),
(7, 'Jakub', 'Przedczas'),
(8, 'Bogusław', 'Nieposłuszny');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`) VALUES
(1, 'Kamil Tarach', '$2y$10$scMgTA0ygzj6INSIIdytxOXrm3KR3TK8/ICz75rt91kgz8dyNYovS', NULL),
(2, 'Adam Wieczorek', '$2y$10$96.fTQ7ro19h7jpnuG3/bOQ2Dls8vWiVyOpIpR3KfqBpDgnch9F36', NULL);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `recipient_id` (`recipient_id`);

--
-- Indeksy dla tabeli `recipient`
--
ALTER TABLE `recipient`
  ADD PRIMARY KEY (`recipient_id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `recipient`
--
ALTER TABLE `recipient`
  MODIFY `recipient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
