-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14-Jul-2022 às 17:27
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sitesigma`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `CategoriaID` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Ativo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categorias`
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
-- Estrutura da tabela `produtos`
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
-- Extraindo dados da tabela `produtos`
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
(11, 'Borboleta', 'Descrição Borboleta', 'borboleta-legal.jpg', 4000, 2, 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`CategoriaID`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`ProdutosID`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `CategoriaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `ProdutosID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
