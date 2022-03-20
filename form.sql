-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3325
-- Tempo de geração: 03-Dez-2021 às 21:24
-- Versão do servidor: 10.4.18-MariaDB
-- versão do PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `form`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario_equipamento`
--

CREATE TABLE `usuario_equipamento` (
  `cpf_usuario` varchar(12) NOT NULL,
  `nome_usuario` varchar(80) NOT NULL,
  `genero_usuario` varchar(30) NOT NULL,
  `cargo_usuario` varchar(40) NOT NULL,
  `departamento_usuario` varchar(40) NOT NULL,
  `email_usuario` varchar(110) NOT NULL,
  `telefone_usuario` varchar(20) NOT NULL,
  `numero_equipamento` varchar(23) NOT NULL,
  `nome_equipamento` varchar(50) NOT NULL,
  `data_fabricacao` date NOT NULL,
  `data_aquisicao` date NOT NULL,
  `descricao_problema` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario_equipamento`
--

INSERT INTO `usuario_equipamento` (`cpf_usuario`, `nome_usuario`, `genero_usuario`, `cargo_usuario`, `departamento_usuario`, `email_usuario`, `telefone_usuario`, `numero_equipamento`, `nome_equipamento`, `data_fabricacao`, `data_aquisicao`, `descricao_problema`) VALUES
('222999555-77', 'Pedro', 'Masculino', 'Administrador', 'Administração', 'pedro@hotmail.com', '11949375208', '4', 'Laptop', '2021-02-07', '2021-11-10', 'O laptop está travando muito.'),
('777888999-00', 'Regina', 'Feminino', 'Contadora', 'Contabilidade', 'regina@outlook.com', '11900001111', '1027', 'Impressora', '2016-08-19', '2019-10-31', 'A impressora não está se conectando com o computador.'),
('999000111-44', 'Dandara', 'Feminino', 'Gerente', 'Gerência', 'dandara@gmail.com', '11957821309', '224', 'Computador', '2018-05-13', '2018-09-07', 'Não estou conseguindo instalar um programa. Está dando erro sempre que clico no botão \"Download\" do site.');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `usuario_equipamento`
--
ALTER TABLE `usuario_equipamento`
  ADD PRIMARY KEY (`cpf_usuario`),
  ADD UNIQUE KEY `numero_equipamento` (`numero_equipamento`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
