-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 19/05/2016 às 21:03
-- Versão do servidor: 5.5.49-0ubuntu0.14.04.1
-- Versão do PHP: 5.5.9-1ubuntu4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de dados: `vagrant`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `filmes`
--

CREATE TABLE IF NOT EXISTS `filmes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vimeo` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sub` varchar(100) NOT NULL,
  `agencia` varchar(100) NOT NULL,
  `cliente` varchar(100) NOT NULL,
  `diretor` varchar(100) NOT NULL,
  `ord` int(11) NOT NULL,
  `destaque` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `op` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=127 ;

--
-- Fazendo dump de dados para tabela `filmes`
--

INSERT INTO `filmes` (`id`, `vimeo`, `name`, `sub`, `agencia`, `cliente`, `diretor`, `ord`, `destaque`, `img`, `op`) VALUES
(1, '151822241', 'Rio 2016', '', 'Prole', 'Comitê Olímpico', 'Gustavo Gripe', 0, 2, '134d43ee78.jpg', 0),
(2, '137482006', '50 anos', '', 'F/Nazca', 'Nissin', 'Gustavo Gripe', 1, 2, '9fc10717cf.jpg', 0),
(3, '125279388', 'IT WAS', 'A BARREL', 'F.BIZ', 'JAMESON', 'Gustavo Gripe', 4, 2, 'e114f105d6.jpg', 0),
(4, '115032957', 'Natal', '', 'Blue Hive', 'FORD', 'Gustavo Gripe', 5, 2, '2007b536d5.jpg', 0),
(5, '94046740', 'Bible', 'of Barbecue', 'JWT', 'Tramontina', 'Gustavo Gripe', 3, 2, '79823f458d.jpg', 0),
(6, '134344064', 'Assinador ', 'de Carne', 'JWT', 'Tramontina', 'Gustavo Gripe', 5, 1, 'aad0d98223.jpg', 0),
(7, '153762479', 'Hergestellt', '', 'Matriz', 'Pia', 'Gustavo Gripe', 8, 2, 'fae228f6ed.jpg', 0),
(8, '139935822', 'Driver', '', 'F.BIZ', 'Subaru', 'Gustavo Gripe', 7, 1, 'c4709f2836.jpg', 0),
(9, '147440311', 'Romance', '', 'Africa', 'Heinz', 'Gustavo Gripe', 6, 1, '400e7235cd.jpg', 0),
(10, '133154146', 'The', 'Final Tests', 'DM9Sul', 'Olimpikus', 'Filipe Zapelini', 0, 2, 'beab80dbfa.jpg', 0),
(11, '99779040', 'Watch', 'Your Back', 'Léo Burnett', 'Fiat', 'Filipe Zapelini', 1, 0, '3f259e3073.jpg', 0),
(12, '141872076', 'One', 'Obsession', 'CuboCC', 'Oakley', 'Filipe Zapelini', 2, 1, '51bab09022.jpg', 0),
(13, '137258888', 'RATSREPUS', '', '', 'Adidas', 'Filipe Zapelini', 1, 2, '4af22fe7bc.jpg', 0),
(14, '53449525', 'Fit', 'Twist Drivemixer', 'F/NAZCA', 'Honda', 'Filipe Zapelini', 4, 1, 'f25875577f.jpg', 0),
(15, '159157261', 'Miami', 'Art Basel', 'Box1824', 'Stella Artois', 'Filipe Zapelini', 5, 1, '1f96fa48cf.jpg', 0),
(16, '153873824', 'Valley', 'of Death', '', 'Desillusion', 'Filipe Zapelini', 6, 1, '300372782b.jpg', 0),
(17, '133699000', 'Cristian', '', '', '', 'Filipe Zapelini', 7, 1, 'bb4517f370.jpg', 0),
(18, '85468940', 'Todo', 'Mundo é Mãe', 'Casa', 'Royal', 'Filipe Zapelini', 8, 1, '0a16586227.jpg', 0),
(19, '103234348', 'Eleições', '', '', 'MTV', 'Thiago Steka', 0, 1, '065e108142.png', 0),
(20, '94455114', 'Copa', '', '', 'MTV', 'Thiago Steka', 1, 1, '6a1f6c197b.png', 0),
(21, '83870715', 'Descontração', '', 'Escala', 'Ibravin', 'Thiago Steka', 2, 0, '6b67b32327.png', 0),
(22, '69715693', 'Liga', 'dos fanáticos', 'DM9 Sul', 'RBS', 'Thiago Steka', 6, 1, '982f573157.png', 0),
(23, '57010561', 'Opening', '', '', 'VH1', 'Thiago Steka', 8, 1, '2cbeab4b52.png', 0),
(24, '57062527', 'Só', 'um real', 'Ogilvy', 'GRAAC', 'Thiago Steka', 9, 1, '2ccaa41226.png', 0),
(25, '109813241', 'Goiabada', '', 'Riot', 'Vigor', 'Thiago Steka', 4, 1, 'df44202eeb.png', 0),
(26, '109817886', 'Pão', 'de Queijo', 'Riot', 'Vigor', 'Thiago Steka', 5, 1, '1fe4dbd0d0.png', 0),
(27, '109815848', 'Pão', 'Integral', 'Riot', 'Vigor', 'Thiago Steka', 3, 1, 'a730e285b2.png', 0),
(28, '104961134', 'recarregar', 'as baterias', 'África Zero', 'Fazenda Boa Vista', 'Pedro Mahfuz', 9, 1, '5fc911c0ac.jpg', 0),
(29, '101665794', 'Orquestra', 'à Capella', 'África', 'Folha', 'Pedro Mahfuz', 8, 1, '2dd964048e.jpg', 0),
(30, '100921825', 'Espelho', 'Amigo', 'África', 'Nutrella', 'Pedro Mahfuz', 2, 1, 'cedd74ce21.jpg', 0),
(31, '152565236', 'Contrapontos', '', 'Selling', 'Uniritter', 'Pedro Mahfuz', 3, 2, '08c4ed425f.jpg', 0),
(32, '135069217', 'Manifesto', '', 'JWT', 'Tylenol', 'Pedro Mahfuz', 4, 1, '3eec1eab48.jpg', 0),
(33, '111518947', 'Voluntárias', 'Pela Vida', 'DM9 Sul', '', 'Pedro Mahfuz', 5, 1, '52b19a43b5.jpg', 0),
(34, '84307572', 'Chocolateria', '', 'Matriz', 'Pia', 'Pedro Mahfuz', 6, 1, '4bec66c0e0.jpg', 0),
(35, '156472565', 'Te', 'Joga', 'JWT Brazil', 'Sprite', 'Pedro Mahfuz', 7, 1, 'c2ffb36db4.jpg', 0),
(36, '159980043', 'The', 'New Crossroads', 'CuboCC', 'Spotify', 'Pedro Mahfuz', 2, 2, '41c9048aaf.jpg', 0),
(37, '140413690', 'We', 'Need To Talk About Alice', '', '', 'Plenty', 0, 1, 'ce1d1fdd79.jpg', 0),
(38, '118442415', 'I', 'Am Fx', '', '', 'Plenty', 1, 1, 'a981e2a029.jpg', 0),
(39, '132867985', 'Moo', '', '', '', 'Plenty', 2, 1, '48dce85de4.jpg', 0),
(40, '141954051', 'Jugá', 'con Oreo', '', '', 'Plenty', 3, 1, '343fcc6533.jpg', 0),
(41, '132866387', 'Viacom', 'Screens', '', '', 'Plenty', 4, 1, '9ae01032ac.png', 0),
(42, '150688280', 'We', 'Love Bacon', '', '', 'Plenty', 5, 1, 'c7044749f6.jpg', 0),
(43, '', '', '', '', '', 'Plenty', 6, 0, '85d0ea3490.jpg', 0),
(44, '76084225', 'HBO', 'Latinoamerica', '', '', 'Plenty', 7, 1, '14b7f53de9.png', 0),
(45, '113117604', 'TV', 'Branding', '', 'Fox Animation', 'Plenty', 8, 1, '23bac4511c.png', 0),
(46, '139254251', 'Biscoitos', 'em casa', 'Duplo', 'Orquidea', 'Alton', 0, 0, '14553f4231.jpg', 0),
(47, 'https://vimeo.com/139857028', 'Vines', '', 'Almap', 'VISA', 'Alton', 0, 0, '203c33d07d.jpg', 0),
(48, 'https://vimeo.com/152154805', 'para cima', '', 'Almap', 'casa do zezinho', 'Alton', 0, 0, '3f12cd6172.jpg', 0),
(49, 'https://vimeo.com/152154391', 'vestidos', '', 'Facebook', 'Dafiti', 'Alton', 0, 0, 'ecd9b42c04.jpg', 0),
(50, '', '', '', '', '', 'Alton', 0, 0, '', 0),
(51, '', '', '', '', '', 'Alton', 0, 0, '', 0),
(52, '', '', '', '', '', 'Alton', 0, 0, '', 0),
(53, '', '', '', '', '', 'Alton', 0, 0, '', 0),
(54, '', '', '', '', '', 'Alton', 0, 0, '', 0),
(55, '160658035', 'Piano', '', 'F/Nazca', 'Electrolux', '1967', 0, 1, '14cb2f3249.png', 0),
(56, '150671949', 'Aquarela', '', 'CuboCC', 'Samsung', '1967', 0, 1, '5b30f246f9.png', 0),
(57, '141597386', 'Todo dia é Ano Novo', '', 'Africa', 'Brahma', '1967', 0, 1, 'ac6d6bc777.png', 0),
(58, '149798564', 'Mensagens do Coração', '', 'Escala', 'Simers', '1967', 0, 1, '5391a36a8d.png', 0),
(59, '139644228', 'Dia dos Pais', '', 'CP+B Brasil', 'Dove Men+Care', '1967', 0, 1, '3784c08f0a.jpg', 0),
(60, '140368773', 'Beauty Salon & Craft Beer', '', 'F.biz', 'Detrich', '1967', 0, 0, '35153b1cfd.jpg', 0),
(61, '159114150', 'O Carnaval não pode esperar', '', 'CuboCC', 'Coca-Cola', '1967', 0, 1, '19a2b982f6.png', 0),
(62, '157495739', 'Remix', '', '', 'Ray-Ban', '1967', 0, 1, '3cbfee62ee.jpg', 0),
(63, '139618620', 'Eternal', '', '', 'Mystic', '1967', 0, 1, '7d17640344.png', 0),
(64, '145862543', 'Skinner', '', '', 'West Coast', 'Ternura', 0, 1, '729424b360.png', 0),
(65, '139749670', 'Fala', 'com a mão', 'DM9', 'Guaraná', 'Ternura', 0, 1, 'f80ba790a2.png', 0),
(66, '139749674', 'Sobrevivência', '', 'LiveAd', 'Lenovo', 'Ternura', 2, 0, 'a14cd97007.jpg', 0),
(67, '139751461', 'Rock in Rio', '', 'LiveAd', 'Oi', 'Ternura', 0, 0, 'b154420dad.jpg', 0),
(68, '24927348', 'Estudos', 'MMXI', '', 'Helen Rödel', 'Ternura', 0, 0, '21c321f691.jpg', 0),
(69, '', '', '', '', '', 'Ternura', 0, 0, '', 0),
(70, '', '', '', '', '', 'Ternura', 0, 0, '', 0),
(71, '', '', '', '', '', 'Ternura', 0, 0, '', 0),
(72, '', '', '', '', '', 'Ternura', 0, 0, '', 0),
(73, '87701721', 'Bem Vindos', '', 'Matriz', 'Governo do RS', 'Gabriel Rubim', 0, 2, 'b7b0713af5.png', 1),
(74, '124242374', 'Poupedi', 'Sicredi', 'Morya', 'Sicredi', 'Gabriel Rubim', 1, 2, '894c2fbd13.jpeg', 1),
(75, '74661819', 'Primavera Verão', 'Paquetá', 'Competence', 'Paquetá', 'Gabriel Rubim', 2, 2, 'd763956800.png', 1),
(76, '107856319', 'Proteção Estendida', 'Dermacor', 'Ogilvy', 'Dupont', 'Gabriel Rubim', 3, 2, '539901f555.png', 1),
(77, '34535561', 'Camiseta', 'Coleção Planeta Atlântida', 'Paim', 'Lojas Renner', 'Gabriel Rubim', 4, 2, 'da6bb51e95.png', 1),
(78, '40375898', 'Passarela', '', 'GAD', 'Todeschini', 'Gabriel Rubim', 5, 2, '1a80b32d2d.png', 1),
(79, '96518343', 'Faz Acontecer', '', 'Competence', 'Banrisul', 'Gabriel Rubim', 6, 2, '16427c171e.png', 1),
(80, '75604105', 'Aranha', 'Aniver dos Sonhos', 'Competence', 'Gaston', 'Gabriel Rubim', 7, 2, '8ee51d46d7.png', 1),
(81, '90679357', 'VERO', 'Lançamento', 'Competence', 'Banrisul', 'Gabriel Rubim', 8, 2, '7ea3dcf816.png', 1),
(82, '146511656', '12 Shoes for 12 Lovers', 'Melissa', 'transainc.com', 'Grendene', 'Pepe Mendina', 0, 2, 'a86d4267d8.png', 1),
(83, '146923401', 'Planeta Atlantida', '', '', 'RBS', 'Pepe Mendina', 1, 1, '479e0fe3ef.png', 1),
(84, '112934022', 'The Art of Simplicity', '', 'Transa', 'Assintecal', 'Pepe Mendina', 8, 1, 'f74cad915e.png', 1),
(85, '146926330', 'A Força do Natal', 'Bourbon Shopping', 'Direto', 'Cia Zaffari', 'Pepe Mendina', 3, 2, '393a31c37b.png', 1),
(86, '95326693', 'Spectrum', '', 'Direto', 'Också', 'Pepe Mendina', 4, 2, '91e7b85761.png', 1),
(87, '132960163', 'Receitas Zaffari', 'Teaser', 'Direto', 'Cia Zaffari', 'Pepe Mendina', 5, 1, '68f1b8aeba.png', 1),
(88, '124342483', 'Sua casa tem que ser você', '', '', 'Todeschini', 'Pepe Mendina', 6, 1, 'aac02ac0af.png', 1),
(89, '110592406', 'Perspectiva', '', 'Duplo', 'ESPM', 'Pepe Mendina', 7, 0, '5a8032260c.png', 1),
(90, '137483268', 'Shoes First', '', 'ProTarget', 'Tanara', 'Pepe Mendina', 2, 2, '42009aa1fe.jpg', 1),
(91, '158346083', 'Envolverde', '', '', '', 'Beto Callage', 0, 0, '0c3f47105f.jpg', 1),
(92, '153540024', 'Picadilly 60 Anos', '', 'Global', 'Picadilly', 'Beto Callage', 0, 2, '0249349935.jpg', 1),
(93, '153540031', 'Pompéia', 'Dia das Crianças 2014', 'Escala', 'Lojas Pompéia', 'Beto Callage', 2, 0, '4f9081eafa.jpg', 1),
(94, '153540025', 'Lojas Pompéia', 'Dia dos Namorados 2014', 'Escala', 'Lojas Pompéia', 'Beto Callage', 3, 0, '8e8cb6b206.jpg', 1),
(95, '153540030', 'Pompéia', 'Outono/Inverno 2015', 'Escala', 'Lojas Pompéia', 'Beto Callage', 4, 0, 'c83f8c32db.jpg', 1),
(96, '153540026', 'Pompéia', 'Dia dos Pais 2014', 'Escala', 'Lojas Pompéia', 'Beto Callage', 5, 0, 'e54b1c6477.jpg', 1),
(97, '153540027', 'Pompéia', 'Dia dos Pais 2015', 'Escala', 'Lojas Pompéia', 'Beto Callage', 6, 0, '6f5121c59e.jpg', 1),
(98, '153540028', 'Pompéia', 'Dia das Crianças 2015', 'Escala', 'Lojas Pompéia', 'Beto Callage', 7, 0, 'b662bc2913.jpg', 1),
(99, '153545738', 'Pompéia', 'Fashion Weekend 2015', 'Escala', 'Lojas Pompéia', 'Beto Callage', 1, 2, '50e0cdb61a.jpg', 1),
(100, '136109108', 'Club Social', 'Sanduich Pizza', 'FCB Mayo Ecuador', 'Club Social', 'Guido Antonini', 1, 2, '7f099c4e86.png', 1),
(101, '140660043', 'Institucional', '', 'Morya', 'PUCRS', 'Guido Antonini', 1, 2, 'aba4787b47.png', 1),
(102, '145265243', 'e-commerce', '', 'Master', 'Correios', 'Guido Antonini', 0, 2, '44ac2bbc88.png', 1),
(103, '112119403', 'Pescador', '', 'FCB Mayo Ecuador', 'MIES', 'Guido Antonini', 3, 2, 'cd8cecf533.png', 1),
(104, '162436370', 'Outside Memories', '', 'Pereira & Odell', 'Marisol', 'Guido Antonini', 4, 0, 'ea5116e2e8.jpg', 1),
(105, '104330045', 'Tem como ficar mais Isabela?', 'Isabela 60 anos', 'e21', 'Isabela', 'Guido Antonini', 5, 0, '16d69502bf.png', 1),
(106, '122341186', 'Institucional', '', 'e21', 'Brandili', 'Guido Antonini', 6, 0, '634f9ae22e.png', 1),
(107, '144533685', 'Cenários', '', 'ProTarget', 'Mississipi', 'Guido Antonini', 7, 0, 'cc0c3f1729.png', 1),
(108, '100929132', 'Checklist', '', 'Morya', 'Sicredi', 'Guido Antonini', 8, 0, '9685e265de.png', 1),
(109, '', '', '', '', '', 'Interactive', 0, 0, '', 1),
(110, '', '', '', '', '', 'Interactive', 1, 0, '', 1),
(111, '', '', '', '', '', 'Interactive', 2, 0, '', 1),
(112, '', '', '', '', '', 'Interactive', 3, 0, '', 1),
(113, '', '', '', '', '', 'Interactive', 4, 0, '', 1),
(114, '', '', '', '', '', 'Interactive', 5, 0, '', 1),
(115, '', '', '', '', '', 'Interactive', 6, 0, '', 1),
(116, '', '', '', '', '', 'Interactive', 7, 0, '', 1),
(117, '', '', '', '', '', 'Interactive', 8, 0, '', 1),
(118, '135486753', 'Killing', 'Boring', 'Viacom', 'MTV', 'Bittar', 0, 0, 'ed56b66169.jpg', 0),
(119, '', '', '', '', '', 'Bittar', 0, 0, '62ead1c59e.jpg', 0),
(120, '10044172', 'Debate', '', 'Viacom', 'MTV', 'Bittar', 0, 0, '80bf6b02c6.jpg', 0),
(121, '', 'Sorte', '', 'Acaca', 'Riachuelo', 'Bittar', 4, 0, 'c305a25342.jpg', 0),
(122, '', '', '', '', '', 'Bittar', 0, 0, '', 0),
(123, '', '', '', '', '', 'Bittar', 0, 0, '', 0),
(124, '', '', '', '', '', 'Bittar', 0, 0, '', 0),
(125, '', '', '', '', '', 'Bittar', 0, 0, '', 0),
(126, '', '', '', '', '', 'Bittar', 0, 0, '', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
