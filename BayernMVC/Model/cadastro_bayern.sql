-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07-Jun-2023 às 02:55
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bayern`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro_bayern`
--

CREATE TABLE `cadastro_bayern` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `idade` int(200) NOT NULL,
  `funcao` varchar(200) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `pais` varchar(100) NOT NULL,
  `contrato` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cadastro_bayern`
--

INSERT INTO `cadastro_bayern` (`id`, `nome`, `idade`, `funcao`, `cpf`, `pais`, `contrato`) VALUES
(1, 'Thomas Tuchel', 49, 'Técnico', '12365478965', 'Alemanha', '2025-06-30'),
(2, 'Arno Michels', 55, 'Técnico auxiliar ', '63254789624', 'Alemanha', '2025-06-30'),
(3, 'Zsolt Lőw', 44, 'Técnico auxiliar ', '32145874932', 'Hungria ', '2025-06-30'),
(4, 'Anthony Barry', 37, 'Técnico auxiliar ', '31478952146', 'Inglaterra', '2025-06-30'),
(5, 'Michael Rechner', 43, 'Treinador de Goleiros', '41254789658', 'Alemanha', '2028-07-01'),
(6, 'Simon Martinello', 38, 'Instrutor Fitness ', '98565874123', 'Itália ', '2025-06-30'),
(7, 'Stephan Kerth', 34, 'Preparador Físico ', '36547892145', 'Alemanha', '2025-06-30'),
(8, 'Thomas Wilhelmi', 56, 'Fisioterapeuta ', '23548962147', 'Alemanha', '2025-12-30'),
(9, 'Michael Niemeyer', 52, 'Analista de desempenho', '74563219854', 'Alemanha', '2025-06-30'),
(10, 'Herbert Hainer', 68, 'Presidente', '98745214569', 'Alemanha', '2025-12-31'),
(11, 'Marco Neppe', 36, 'Director de futebol', '74125478963', 'Alemanha', '2025-12-31'),
(12, 'Manuel Neuer', 37, 'Jogador profissional ', '78541698547', 'Alemanha', '2024-06-30'),
(13, 'Yann Sommer', 34, 'Jogador profissional ', '32154789654', 'Suiça', '2025-06-30'),
(14, 'Sven Ulreich', 34, 'Jogador profissional ', '74125478965', 'Alemanha', '2024-06-30'),
(15, 'Johannes Schenk', 20, 'Jogador profissional ', '79854123654', 'Alemanha', '2024-06-30'),
(16, 'Matthijs de Ligt', 23, 'Jogador profissional ', '32652145632', 'Holanda', '2027-06-30'),
(17, 'Dayot Upamecano', 24, 'Jogador profissional ', '52147654893', 'França', '2026-06-30'),
(18, 'Alphonso Davies', 22, 'Jogador profissional ', '32698514578', 'Canadá', '2025-06-30'),
(19, 'Daley Blind', 33, 'Jogador profissional ', '79864134769', 'Holanda', '2023-12-31'),
(20, 'Noussair Mazraoui', 25, 'Jogador profissional ', '41235698746', 'Marrocos', '2026-06-30'),
(21, 'Josip Stanisic', 23, 'Jogador profissional ', '79316479325', 'Croácia', '2026-06-30'),
(22, 'Joshua Kimmich', 28, 'Jogador profissional ', '22236547895', 'Alemanha', '2025-06-30'),
(23, 'Leon Goretzka', 28, 'Jogador profissional ', '63225874154', 'Alemanha', '2026-06-30'),
(24, 'Ryan Gravenberch', 21, 'Jogador profissional ', '77854122366', 'Holanda', '2027-06-30'),
(25, 'Jamal Musiala', 20, 'Jogador profissional ', '44123365225', 'Alemanha', '2026-06-30'),
(26, 'Malik Tillman', 21, 'Jogador profissional ', '79663225333', 'Estados Unidos', '2024-06-30'),
(27, 'Paul Wanner', 17, 'Jogador profissional ', '741235412983', 'Áustria ', '2027-06-30'),
(28, 'Arijon Ibrahimovic', 17, 'Jogador profissional ', '88965884123', 'Alemanha', '2025-06-30'),
(29, 'Kingsley Coman', 26, 'Jogador profissional ', '79321456328', 'França', '2027-06-30'),
(30, 'Sadio Mané', 31, 'Jogador profissional ', '73215698412', 'Senegal ', '2025-06-30'),
(31, 'Leroy Sané', 27, 'Jogador profissional ', '893265139', 'Alemanha', '2025-06-30'),
(32, 'Serge Gnabry', 27, 'Jogador profissional ', '93617637925', 'Alemanha', '2026-06-30'),
(33, 'Thomas Müller', 33, 'Jogador profissional ', '83147935429', 'Alemanha', '2024-06-30'),
(34, 'Mathys Tel', 18, 'Jogador profissional ', '49316254783', 'França', '2025-06-30'),
(35, 'Eric Maxim Choupo-Moting', 34, 'Jogador profissional ', '93666452117', 'Camarões ', '2024-06-30'),
(36, 'Tom Ritzy Hülsmann', 19, 'Jogador Sub 20', '32326598541', 'Alemanha', '2024-06-30'),
(37, 'Justin Janitzek', 19, 'Jogador Sub 20', '787895654512', 'Alemanha', '2024-06-30'),
(38, 'Liam Morrison', 20, 'Jogador Sub 20', '71112546633', 'Escócia ', '2025-06-30'),
(39, 'Gabriel Marusic', 20, 'Jogador Sub 20', '96321521988', 'Croácia', '2025-06-30'),
(40, 'Frans Krätzig', 20, 'Jogador Sub 20', '95162374852', 'Alemanha', '2025-06-30'),
(41, 'Angelo Brückner', 20, 'Jogador Sub 20', '74136589632', 'Alemanha', '2025-06-30'),
(42, 'Eyüp Aydin', 18, 'Jogador Sub 20', '77788963332', 'Turquia ', '2024-06-30'),
(43, 'Luca Denk', 20, 'Jogador Sub 20', '44412256639', 'Alemanha', '2024-06-30'),
(44, 'Hyun-ju Lee', 20, 'Jogador Sub 20', '77856932165', 'Coreia do Sul', '2025-06-30'),
(45, 'Taichi Fukui', 18, 'Jogador Sub 20', '41236589632', 'Japão', '2025-06-30'),
(46, 'Lovro Zvonarek', 18, 'Jogador Sub 20', '88899633325', 'Croácia', '2025-06-30'),
(47, 'Younes Aitamer', 20, 'Jogador Sub 20', '56656532981', 'Argélia', '2025-06-30'),
(48, 'Mamin Sanyang', 20, 'Jogador Sub 20', '74125432985', 'Gâmbia', '2024-06-30'),
(49, 'Lucas Copado', 19, 'Jogador Sub 20', '96632114455', 'Alemanha', '2025-06-30');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cadastro_bayern`
--
ALTER TABLE `cadastro_bayern`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastro_bayern`
--
ALTER TABLE `cadastro_bayern`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
