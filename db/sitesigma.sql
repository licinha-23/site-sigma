-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2022 at 11:59 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sitesigma`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE `categorias` (
  `CategoriaID` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Ativo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categorias`
--

INSERT INTO `categorias` (`CategoriaID`, `Nome`, `Ativo`) VALUES
(1, 'Animais Brasileiros', 1),
(2, 'Animais que Voam', 1),
(3, 'Animais de Desenhos Animados', 1),
(4, 'Dogs', 1),
(5, 'Animais', 1),
(6, 'Roupas', 1),
(7, 'Acessorios', 1),
(8, 'Paises', 1),
(9, 'Moveis', 1),
(10, 'Famosos', 1),
(11, 'Filmes', 1);

-- --------------------------------------------------------

--
-- Table structure for table `produtos`
--

CREATE TABLE `produtos` (
  `ProdutosID` int(11) NOT NULL,
  `Nome` varchar(150) NOT NULL,
  `Descricao` longtext NOT NULL,
  `imagem` varchar(200) NOT NULL,
  `Preco` float NOT NULL,
  `CategoriaID` int(11) NOT NULL,
  `Ativo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produtos`
--

INSERT INTO `produtos` (`ProdutosID`, `Nome`, `Descricao`, `imagem`, `Preco`, `CategoriaID`, `Ativo`) VALUES
(1, 'Capivara', 'Descrição Capivara Legal', 'capivara-legal.jpg', 1200, 1, 1),
(2, 'Anta', 'Descrição Anta', 'anta-legal.jpg', 3000, 1, 1),
(3, 'Tamanduá', 'Descrição Tamanduá Bandeira', 'tamandua-legal.jpg', 2500, 1, 1),
(4, 'Ararinha', 'Descrição Ararinha Azul', 'ararinha-legal.jpg', 3000, 1, 1),
(5, 'Mico', 'Descrição Mico Leão Dourado', 'mico-legal.jpg', 2000, 1, 1),
(6, 'Boto', 'Descrição Boto Cor de Rosa', 'boto-legal.jpg', 2000, 1, 1),
(7, 'Tatu', 'Descrição Tatu Bolinha', 'tatu-legal.jpg', 3000, 1, 1),
(8, 'Caramelho', 'Descrição Doguinho Caramelo', 'caramelo-legal.jpg', 3000, 1, 1),
(9, 'Onça', 'Descrição Onça Pintada', 'onca-legal.jpg', 3500, 1, 1),
(10, 'Tucano', 'Descrição Tucano', 'tucano-legal.jpg', 3500, 1, 1),
(11, 'Borboleta', 'Descrição Borboleta', 'borboleta-legal.jpg', 4000, 2, 1),
(12, 'Canário', 'Descrição Canarinho', 'canario-legal.jpg', 3000, 2, 1),
(13, 'Joaninha', 'Descrição Joaninha', 'joaninha-legal.jpg', 2500, 2, 1),
(14, 'Pica Pau', 'Descrição Pica Pau', 'picapau-legal.jpg', 2000, 2, 1),
(15, 'Libélula', 'Descrição Libélula', 'libelula-legal.jpg', 4000, 2, 1),
(16, 'Águia', 'Descrição Águia', 'aguia-legal.jpg', 2500, 2, 1),
(17, 'Flamingo', 'Descrição Flamingo', 'flamingo-legal.jpg', 3000, 2, 1),
(18, 'Rouxinol', 'Descrição Rouxinol', 'rouxinol-legal.jpg', 3000, 2, 1),
(19, 'Tom e Jerry', 'Descrição Tom e Jerry', 'Tom-Jerry-legal.jpg', 3000, 3, 1),
(20, 'Scooby Doo', 'Descrição Scooby Doo', 'scooby-legal.jpg', 2500, 3, 1),
(21, 'Coragem', 'Descrição Coragem, o Cão Covarde', 'coragem-legal.jpg', 4000, 3, 1),
(22, 'Jake', 'Descrição Jake, o Cão', 'jake-legal.jpg', 2500, 3, 1),
(23, 'Pica Pau', 'Descrição Pica Pau', 'picapau-desenho-legal.jpg', 3000, 3, 1),
(24, 'Peixonauta', 'Descrição Peixonauta', 'peixonauta-legal.jpg', 4000, 3, 1),
(25, 'Bob Esponja', 'Descrição Bob Esponja', 'bob-legal.jpg', 3000, 3, 1),
(26, 'Backyardigans', 'Descrição Backyardigans', 'backyardigans-legal.jpg', 4000, 3, 1),
(27, 'Barney', 'Descrição Barney', 'barney-legal.jpg', 3000, 3, 1),
(28, 'Gumball', 'Descrição Gumball Waterson', 'gumball-legal.jpg', 2500, 3, 1),
(29, 'Perry', 'Descrição Perry, o Ornitorrinco', 'perry-legal.jpg', 3000, 3, 1),
(30, 'Mickey', 'Descrição Mickey Mouse', 'mickey-legal.jpg', 3000, 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`CategoriaID`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`ProdutosID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `CategoriaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `ProdutosID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
