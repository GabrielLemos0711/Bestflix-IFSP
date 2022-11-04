-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03-Nov-2022 às 21:44
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bestfilix`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `producoes`
--

CREATE TABLE `producoes` (
  `id` int(11) NOT NULL,
  `titulo` varchar(500) NOT NULL,
  `descricao` text NOT NULL,
  `categoria` varchar(200) NOT NULL,
  `capa` varchar(600) NOT NULL,
  `classificacao` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `producoes`
--

INSERT INTO `producoes` (`id`, `titulo`, `descricao`, `categoria`, `capa`, `classificacao`) VALUES
(9, 'Homem-Aranha: Sem Volta Para Casa', 'Peter Parker é desmascarado e não consegue mais separar sua vida normal dos grandes riscos de ser um super-herói. Quando ele pede ajuda ao Doutor Estranho, os riscos se tornam ainda mais perigosos, e o forçam a descobrir o que realmente significa ser o Homem-Aranha.', 'Ação', 'https://vizer.tv/content/movies/posterPt/342/27820.webp', '16 Anos'),
(11, 'Velozes e Furiosos 9', 'Dominic Toretto e sua família precisam enfrentar o seu irmão mais novo Jakob, um assassino mortal que está trabalhando com uma antiga inimiga, a cyber-terrorista Cipher.', 'Ação', 'https://vizer.tv/content/movies/posterPt/342/25724.webp', '16 anos'),
(12, 'Venom: Tempo de Carnificina', 'Em busca de seu próximo furo de reportagem, o jornalista Eddie Brock consegue uma entrevista exclusiva com Cletus Kasady, um assassino no corredor da morte, que descobre o segredo de Eddie e se torna o hospedeiro de Carnificina, um simbionte aterrorizante e ameaçador. Eddie e Venom precisam superar sua relação atribulada e trabalhar em conjunto para derrotar Carnificina. CURTIR  ', 'Ação', 'https://vizer.tv/content/movies/posterPt/342/27817.webp', '18 Anos'),
(14, 'Vingadores: Ultimato', 'Após os eventos devastadores de \"Vingadores: Guerra Infinita\", o universo está em ruínas devido aos esforços do Titã Louco, Thanos. Com a ajuda de aliados remanescentes, os Vingadores devem se reunir mais uma vez a fim de desfazer as ações de Thanos e restaurar a ordem no universo de uma vez por todas, não importando as consequências.', 'Ação', 'https://vizer.tv/content/movies/posterPt/342/13128.webp', '16 Anos'),
(15, 'Vingadores: Guerra Infinita', 'Homem de Ferro, Thor, Hulk e os Vingadores se unem para combater seu inimigo mais poderoso, o maligno Thanos. Em uma missão para coletar todas as seis pedras infinitas, Thanos planeja usá-las para infligir sua vontade maléfica sobre a realidade.', 'Ação', 'https://vizer.tv/content/movies/posterPt/342/13510.webp', '16 Anos'),
(16, 'Vingadores: Era de Ultron', 'Ao tentar proteger o planeta de ameaças, Tony Stark constrói um sistema de inteligência artificial que cuidaria da paz mundial. O projeto acaba dando errado e gera o nascimento do Ultron. Com o destino da Terra em jogo, os Vingadores terão que se unir para mais uma vez salvar a raça humana da extinção.', 'Ação', 'https://vizer.tv/content/movies/posterPt/342/17716.webp', '16 Anos'),
(17, 'Os Vingadores: The Avengers', 'Loki, o irmão de Thor, ganha acesso ao poder ilimitado do cubo cósmico ao roubá-lo de dentro das instalações da S.H.I.E.L.D. Nick Fury, o diretor desta agência internacional que mantém a paz, logo reúne os únicos super-heróis que serão capazes de defender a Terra de ameaças sem precedentes. Homem de Ferro, Capitão América, Hulk, Thor, Viúva Negra e Gavião Arqueiro formam o time dos sonhos de Fury, mas eles precisam aprender a colocar os egos de lado e agir como um grupo em prol da humanidade.', 'Ação', 'https://vizer.tv/content/movies/posterPt/342/24376.webp', '16 Anos'),
(18, 'Thor: Amor e Trovão', 'Thor parte em uma jornada de autodescoberta, diferente de tudo que ele já enfrentou. Mas seus esforços são interrompidos por um assassino galáctico conhecido como Gorr, o Carniceiro dos Deuses, que busca a extinção dos deuses. Para combater esta ameaça, Thor pede a ajuda da Rei Valquíria, Korg e da ex-namorada Jane Foster, que, para a surpresa de Thor, inexplicavelmente empunha seu mágico martelo, Mjolnir, como a Poderosa Thor. Juntos, eles embarcam em uma angustiante aventura cósmica para descobrir o mistério da vingança do Carniceiro dos Deuses e detê-lo antes que seja tarde demais.', 'Ação', 'https://vizer.tv/content/movies/posterPt/342/27824.webp', '16 Anos');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `producoes`
--
ALTER TABLE `producoes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `producoes`
--
ALTER TABLE `producoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
