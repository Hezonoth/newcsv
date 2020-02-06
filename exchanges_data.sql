-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 06 Lut 2020, 17:09
-- Wersja serwera: 10.1.29-MariaDB
-- Wersja PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `laravel`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `exchanges_data`
--

CREATE TABLE `exchanges_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Symbol` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Exchange` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Trade_date` date DEFAULT NULL,
  `Trade_time` time(3) DEFAULT NULL,
  `Option_trade_price` double(255,3) DEFAULT NULL,
  `Trade_size` int(11) DEFAULT NULL,
  `Trade_exchange` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Trade_condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Option_symbol` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Option_expiration` date DEFAULT NULL,
  `Price_strike` double(255,3) DEFAULT NULL,
  `Call_Put` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Style` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Bid_price` double(255,3) DEFAULT NULL,
  `Bid_time` time(3) DEFAULT NULL,
  `Bid_size` int(11) DEFAULT NULL,
  `Bid_exchange` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Ask_price` double(255,3) DEFAULT NULL,
  `Ask_time` time(3) DEFAULT NULL,
  `Ask_size` int(11) DEFAULT NULL,
  `Ask_exchange` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Underlying_bid_price` double(255,3) DEFAULT NULL,
  `Underlying_ask_price` double(255,3) DEFAULT NULL,
  `Underlying_bid_time` time(3) DEFAULT NULL,
  `Underlying_ask_time` time(3) DEFAULT NULL,
  `Underlying_last_price` double(255,3) DEFAULT NULL,
  `Underlying_last_time` time(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `exchanges_data`
--
ALTER TABLE `exchanges_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `exchanges_data`
--
ALTER TABLE `exchanges_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
