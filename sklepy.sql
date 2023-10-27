-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 27 Paź 2023, 12:36
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `zabka`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sklepy`
--

CREATE TABLE `sklepy` (
  `id` int(16) NOT NULL,
  `nazwa` varchar(64) NOT NULL,
  `wlasciciel` varchar(128) NOT NULL,
  `adres` varchar(128) NOT NULL,
  `id_dzielnice` int(16) NOT NULL,
  `lb_pracownikow` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `sklepy`
--

INSERT INTO `sklepy` (`id`, `nazwa`, `wlasciciel`, `adres`, `id_dzielnice`, `lb_pracownikow`) VALUES
(1, 'ID05302', 'Jan Kowalski', 'Abrahama 15B', 28, 4),
(2, 'ID0A011', 'Jan Nowak', 'Grunwaldzka 12', 30, 3),
(3, 'ID09295', 'Olaf Urban', 'Grunwaldzka 347', 12, 5),
(4, 'ID09241', 'Monika Kobył', 'Grunwaldzka 409', 12, 3),
(5, 'ID09715', 'Mariusz Rower', 'Grunwaldzka 472', 12, 3),
(6, 'ID0A654', 'Adam Śmiały', 'Grunwaldzka 92/98', 30, 6),
(7, 'ID0B728', 'Natalia Matuszyńska', 'Grunwaldzka 99-101 lok. 3A', 30, 6),
(8, 'ID0B415', 'Dominik Kowal', 'Jana Pawła II 23C', 34, 5),
(9, 'ID08972', 'Dominika Kowalewska', 'Hallera 132 lok. 253', 29, 3),
(10, 'ID06754', 'Bartosz Żukowski', 'Rzeczypospolitej 33', 34, 5);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `sklepy`
--
ALTER TABLE `sklepy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_dzielnice` (`id_dzielnice`) USING BTREE;

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `sklepy`
--
ALTER TABLE `sklepy`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `sklepy`
--
ALTER TABLE `sklepy`
  ADD CONSTRAINT `sklepy_ibfk_1` FOREIGN KEY (`id_dzielnice`) REFERENCES `dzielnice` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
