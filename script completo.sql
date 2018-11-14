-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 14-Nov-2018 às 14:14
-- Versão do servidor: 10.1.36-MariaDB
-- versão do PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `mat_aluno` int(11) NOT NULL,
  `cpf_aluno` varchar(11) NOT NULL,
  `rg_aluno` varchar(7) NOT NULL,
  `nome_aluno` varchar(45) NOT NULL,
  `data_nascimento_aluno` date NOT NULL,
  `email_aluno` varchar(45) NOT NULL,
  `filiacao_cod_filiacao` int(11) NOT NULL,
  `sexo_cod_sexo` int(11) NOT NULL,
  `estado_civil_cod_estado_civil` int(11) NOT NULL,
  `cidade_cod_cidade` int(11) NOT NULL,
  `endereco_cod_endereco` int(11) NOT NULL,
  `telefone_cod_telefone` int(11) NOT NULL,
  `escolaridade_cod_escolaridade` int(11) NOT NULL,
  `cargo_cod_cargo` int(11) NOT NULL,
  `pais_cod_pais` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`mat_aluno`, `cpf_aluno`, `rg_aluno`, `nome_aluno`, `data_nascimento_aluno`, `email_aluno`, `filiacao_cod_filiacao`, `sexo_cod_sexo`, `estado_civil_cod_estado_civil`, `cidade_cod_cidade`, `endereco_cod_endereco`, `telefone_cod_telefone`, `escolaridade_cod_escolaridade`, `cargo_cod_cargo`, `pais_cod_pais`) VALUES
(1, '15968759234', '5984627', 'Luiz Gonçalves', '1994-02-15', 'luiz@email.com', 3, 1, 1, 1, 4, 2, 3, 1, 1),
(2, '56823495613', '6584239', 'Maria da Silva', '1989-09-18', 'maria.silva@email.com', 4, 2, 2, 1, 3, 4, 3, 2, 1),
(3, '953648752', '6458923', 'Roberto Cavalcante', '1998-05-23', 'roberto@email.com', 2, 1, 1, 1, 2, 1, 2, 2, 1),
(4, '56874239102', '5961238', 'Maria do Rosário', '1984-11-12', 'maria.rosario@email.com', 1, 2, 4, 1, 1, 1, 6, 2, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `bairro`
--

CREATE TABLE `bairro` (
  `cod_bairro` int(11) NOT NULL,
  `nome_bairro` varchar(45) NOT NULL,
  `cidade_cod_cidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `bairro`
--

INSERT INTO `bairro` (`cod_bairro`, `nome_bairro`, `cidade_cod_cidade`) VALUES
(1, 'Asa Norte', 1),
(2, 'Asa Sul', 1),
(3, 'Lago Norte', 1),
(4, 'Lago Sul', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargo`
--

CREATE TABLE `cargo` (
  `cod_cargo` int(11) NOT NULL,
  `desc_cargo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cargo`
--

INSERT INTO `cargo` (`cod_cargo`, `desc_cargo`) VALUES
(1, 'Programador'),
(2, 'Professor'),
(3, 'Médico'),
(4, 'Advogado'),
(5, 'Engenheiro'),
(6, 'Pesquisador');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidade`
--

CREATE TABLE `cidade` (
  `cod_cidade` int(11) NOT NULL,
  `nome_cidade` varchar(45) NOT NULL,
  `estado_cod_estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cidade`
--

INSERT INTO `cidade` (`cod_cidade`, `nome_cidade`, `estado_cod_estado`) VALUES
(1, 'Brasília', 7),
(2, 'Planaltina', 7),
(3, 'Sobradinho', 7),
(4, 'Guará', 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `cod_curso` int(11) NOT NULL,
  `nome_curso` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `curso`
--

INSERT INTO `curso` (`cod_curso`, `nome_curso`) VALUES
(1, 'Instrutor de Voo - Avião'),
(2, 'Instrutor de Voo - Helicóptero'),
(3, 'Instrutor de Avaliação de Instrumentos'),
(4, 'Instrutor Multi Motor');

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `cod_endereco` int(11) NOT NULL,
  `num_endereco` int(11) NOT NULL,
  `complemento_endereco` varchar(45) DEFAULT NULL,
  `bairro_cod_bairro` int(11) NOT NULL,
  `tipo_endereco_cod_tipo_endereco` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`cod_endereco`, `num_endereco`, `complemento_endereco`, `bairro_cod_bairro`, `tipo_endereco_cod_tipo_endereco`) VALUES
(1, 10, 'EQN 410', 1, 1),
(2, 12, 'SHIGS 710', 2, 1),
(3, 25, 'EQN 405', 1, 1),
(4, 1, 'EQN 408', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `escolaridade`
--

CREATE TABLE `escolaridade` (
  `cod_escolaridade` int(11) NOT NULL,
  `desc_escolaridade` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `escolaridade`
--

INSERT INTO `escolaridade` (`cod_escolaridade`, `desc_escolaridade`) VALUES
(1, 'Ensino Fundamental'),
(2, 'Ensino Médio'),
(3, 'Ensino Superior'),
(4, 'Pós-Graduação'),
(5, 'Mestrado'),
(6, 'Doutorado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estado`
--

CREATE TABLE `estado` (
  `cod_estado` int(11) NOT NULL,
  `nome_estado` varchar(45) NOT NULL,
  `sigla_estado` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `estado`
--

INSERT INTO `estado` (`cod_estado`, `nome_estado`, `sigla_estado`) VALUES
(1, 'Acre', 'AC'),
(2, 'Alagoas', 'AL'),
(3, 'Amapá', 'AP'),
(4, 'Amazona', 'AM'),
(5, 'Bahia', 'BA'),
(6, 'Ceará', 'CE'),
(7, 'Distrito Federal', 'DF'),
(8, 'Espírito Santo', 'ES'),
(9, 'Goiás', 'GO'),
(10, 'Maranhão', 'MA'),
(11, 'Mato Grosso', 'MT'),
(12, 'Mato Grosso do Sul', 'MS'),
(13, 'Minas Gerais', 'MG'),
(14, 'Pará ', 'PA'),
(15, 'Paraíba', 'PB'),
(16, 'Paraná', 'PR'),
(17, 'Pernambuco', 'PE'),
(18, 'Piauí', 'PI'),
(19, 'Rio de Janeiro', 'RJ'),
(20, 'Rio Grande do Norte', 'RN'),
(21, 'Rio Grande do Sul', 'RS'),
(22, 'Rondônia', 'RO'),
(23, 'Roraima', 'RR'),
(24, 'Santa Catarina', 'SC'),
(25, 'São Paulo', 'SP'),
(26, 'Sergipe', 'SE'),
(27, 'Tocantins', 'TO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estado_civil`
--

CREATE TABLE `estado_civil` (
  `cod_estado_civil` int(11) NOT NULL,
  `desc_estado_civil` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `estado_civil`
--

INSERT INTO `estado_civil` (`cod_estado_civil`, `desc_estado_civil`) VALUES
(1, 'Solteiro'),
(2, 'Casado'),
(3, 'Separado'),
(4, 'Divorciado'),
(5, 'Viúvo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `filiacao`
--

CREATE TABLE `filiacao` (
  `cod_filiacao` int(11) NOT NULL,
  `nome_mae` varchar(45) NOT NULL,
  `nome_pai` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `filiacao`
--

INSERT INTO `filiacao` (`cod_filiacao`, `nome_mae`, `nome_pai`) VALUES
(1, 'Ana Maria da Silva', 'José Silva'),
(2, 'Lurdes de Campos', 'João Paulo de Campos'),
(3, 'Paula Pereira', 'Lucas Pereira'),
(4, 'Cristina Lopes', 'Pedro Lopes');

-- --------------------------------------------------------

--
-- Estrutura da tabela `instituicao`
--

CREATE TABLE `instituicao` (
  `cod_instituicao` int(11) NOT NULL,
  `nome_instituicao` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `instituicao`
--

INSERT INTO `instituicao` (`cod_instituicao`, `nome_instituicao`) VALUES
(1, 'EJ - Escola de Aeronáutica Civil'),
(2, 'AEROSJC - Aeroclube de São José dos Campos'),
(3, 'DH Aviação'),
(4, 'Aeroclube de Bauru');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pais`
--

CREATE TABLE `pais` (
  `cod_pais` int(11) NOT NULL,
  `nome_pais` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pais`
--

INSERT INTO `pais` (`cod_pais`, `nome_pais`) VALUES
(1, 'Brasil'),
(2, 'Estados Unidos'),
(3, 'Canadá'),
(4, 'Argentina'),
(5, 'Chile');

-- --------------------------------------------------------

--
-- Estrutura da tabela `piloto`
--

CREATE TABLE `piloto` (
  `cod_piloto` int(11) NOT NULL,
  `cpf_piloto` varchar(11) NOT NULL,
  `breve_piloto` int(11) NOT NULL,
  `nome_piloto` varchar(45) NOT NULL,
  `email_piloto` varchar(45) NOT NULL,
  `data_nascimento_piloto` varchar(45) NOT NULL,
  `telefone_cod_telefone` int(11) NOT NULL,
  `sexo_cod_sexo` int(11) NOT NULL,
  `tipo_piloto_cod_tipo_piloto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `piloto`
--

INSERT INTO `piloto` (`cod_piloto`, `cpf_piloto`, `breve_piloto`, `nome_piloto`, `email_piloto`, `data_nascimento_piloto`, `telefone_cod_telefone`, `sexo_cod_sexo`, `tipo_piloto_cod_tipo_piloto`) VALUES
(1, '01234567891', 153485, 'Rafael das Chagas', 'rafael@email.com', '1978-02-07', 1, 1, 1),
(2, '98765432156', 789654, 'Lucas Alberto', 'lucas@email.com', '1971-08-13', 5, 1, 2),
(3, '45698725965', 654823, 'Maria Eduarda da Silva', 'm.eduarda@email.com', '1992-09-05', 3, 2, 1),
(4, '68423597154', 684259, 'Carla Oliveira', 'carla@email.com', '1975-03-18', 4, 2, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `piloto_tem_curso`
--

CREATE TABLE `piloto_tem_curso` (
  `piloto_cod_piloto` int(11) NOT NULL,
  `curso_cod_curso` int(11) NOT NULL,
  `instituicao_cod_instituicao` int(11) NOT NULL,
  `data_diploma` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `piloto_tem_curso`
--

INSERT INTO `piloto_tem_curso` (`piloto_cod_piloto`, `curso_cod_curso`, `instituicao_cod_instituicao`, `data_diploma`) VALUES
(2, 4, 4, '2012-06-05'),
(4, 1, 3, '2014-11-03');

-- --------------------------------------------------------

--
-- Estrutura da tabela `saida`
--

CREATE TABLE `saida` (
  `cod_saida` int(11) NOT NULL,
  `hora_saida` datetime NOT NULL,
  `hora_chegada` datetime NOT NULL,
  `parecer_saida` varchar(256) NOT NULL,
  `piloto_cod_piloto` int(11) NOT NULL,
  `aluno_mat_aluno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `saida`
--

INSERT INTO `saida` (`cod_saida`, `hora_saida`, `hora_chegada`, `parecer_saida`, `piloto_cod_piloto`, `aluno_mat_aluno`) VALUES
(1, '2018-10-02 10:00:00', '2018-10-02 11:00:00', 'Excelente voo', 2, 1),
(2, '2018-10-03 13:00:00', '2018-10-03 15:00:00', 'Voo razoável', 2, 2),
(3, '2018-11-06 14:00:00', '2018-11-06 16:00:00', 'Precisa treinar mais as curvas', 4, 3),
(4, '2018-11-09 18:00:00', '2018-11-09 20:00:00', 'Apto para voos noturnos', 4, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sexo`
--

CREATE TABLE `sexo` (
  `cod_sexo` int(11) NOT NULL,
  `desc_sexo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sexo`
--

INSERT INTO `sexo` (`cod_sexo`, `desc_sexo`) VALUES
(1, 'Masculino'),
(2, 'Feminino');

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefone`
--

CREATE TABLE `telefone` (
  `cod_telefone` int(11) NOT NULL,
  `ddd_telefone` int(11) NOT NULL,
  `num_telefone` int(11) NOT NULL,
  `tipo_telefone_cod_tipo_telefone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `telefone`
--

INSERT INTO `telefone` (`cod_telefone`, `ddd_telefone`, `num_telefone`, `tipo_telefone_cod_tipo_telefone`) VALUES
(1, 61, 991234567, 1),
(2, 61, 998765432, 1),
(3, 61, 33445260, 2),
(4, 61, 30406369, 2),
(5, 11, 33779820, 3),
(6, 62, 36371229, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_endereco`
--

CREATE TABLE `tipo_endereco` (
  `cod_tipo_endereco` int(11) NOT NULL,
  `desc_tipo_endereco` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipo_endereco`
--

INSERT INTO `tipo_endereco` (`cod_tipo_endereco`, `desc_tipo_endereco`) VALUES
(1, 'Residencial'),
(2, 'Comercial');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_piloto`
--

CREATE TABLE `tipo_piloto` (
  `cod_tipo_piloto` int(11) NOT NULL,
  `desc_tipo_piloto` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipo_piloto`
--

INSERT INTO `tipo_piloto` (`cod_tipo_piloto`, `desc_tipo_piloto`) VALUES
(1, 'Normal'),
(2, 'Instrutor');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_telefone`
--

CREATE TABLE `tipo_telefone` (
  `cod_tipo_telefone` int(11) NOT NULL,
  `desc_tipo_telefone` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipo_telefone`
--

INSERT INTO `tipo_telefone` (`cod_tipo_telefone`, `desc_tipo_telefone`) VALUES
(1, 'Pessoal'),
(2, 'Residencial'),
(3, 'Comercial');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`mat_aluno`,`cpf_aluno`,`rg_aluno`,`filiacao_cod_filiacao`,`sexo_cod_sexo`,`estado_civil_cod_estado_civil`,`cidade_cod_cidade`,`endereco_cod_endereco`,`telefone_cod_telefone`,`escolaridade_cod_escolaridade`,`cargo_cod_cargo`,`pais_cod_pais`),
  ADD KEY `fk_aluno_filiacao1` (`filiacao_cod_filiacao`),
  ADD KEY `fk_aluno_sexo1` (`sexo_cod_sexo`),
  ADD KEY `fk_aluno_estado_civil1` (`estado_civil_cod_estado_civil`),
  ADD KEY `fk_aluno_cidade1` (`cidade_cod_cidade`),
  ADD KEY `fk_aluno_endereco1` (`endereco_cod_endereco`),
  ADD KEY `fk_aluno_telefone1` (`telefone_cod_telefone`),
  ADD KEY `fk_aluno_escolaridade1` (`escolaridade_cod_escolaridade`),
  ADD KEY `fk_aluno_cargo1` (`cargo_cod_cargo`),
  ADD KEY `fk_aluno_pais1` (`pais_cod_pais`);

--
-- Indexes for table `bairro`
--
ALTER TABLE `bairro`
  ADD PRIMARY KEY (`cod_bairro`,`cidade_cod_cidade`),
  ADD KEY `fk_bairro_cidade1` (`cidade_cod_cidade`);

--
-- Indexes for table `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`cod_cargo`);

--
-- Indexes for table `cidade`
--
ALTER TABLE `cidade`
  ADD PRIMARY KEY (`cod_cidade`,`estado_cod_estado`),
  ADD KEY `fk_cidade_estado1` (`estado_cod_estado`);

--
-- Indexes for table `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`cod_curso`);

--
-- Indexes for table `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`cod_endereco`,`bairro_cod_bairro`,`tipo_endereco_cod_tipo_endereco`),
  ADD KEY `fk_endereco_bairro1` (`bairro_cod_bairro`),
  ADD KEY `fk_endereco_tipo_endereco1` (`tipo_endereco_cod_tipo_endereco`);

--
-- Indexes for table `escolaridade`
--
ALTER TABLE `escolaridade`
  ADD PRIMARY KEY (`cod_escolaridade`);

--
-- Indexes for table `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`cod_estado`);

--
-- Indexes for table `estado_civil`
--
ALTER TABLE `estado_civil`
  ADD PRIMARY KEY (`cod_estado_civil`);

--
-- Indexes for table `filiacao`
--
ALTER TABLE `filiacao`
  ADD PRIMARY KEY (`cod_filiacao`);

--
-- Indexes for table `instituicao`
--
ALTER TABLE `instituicao`
  ADD PRIMARY KEY (`cod_instituicao`);

--
-- Indexes for table `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`cod_pais`);

--
-- Indexes for table `piloto`
--
ALTER TABLE `piloto`
  ADD PRIMARY KEY (`cod_piloto`,`cpf_piloto`,`breve_piloto`,`telefone_cod_telefone`,`sexo_cod_sexo`,`tipo_piloto_cod_tipo_piloto`),
  ADD KEY `fk_piloto_telefone1` (`telefone_cod_telefone`),
  ADD KEY `fk_piloto_sexo1` (`sexo_cod_sexo`),
  ADD KEY `fk_piloto_tipo_piloto1` (`tipo_piloto_cod_tipo_piloto`);

--
-- Indexes for table `piloto_tem_curso`
--
ALTER TABLE `piloto_tem_curso`
  ADD PRIMARY KEY (`piloto_cod_piloto`,`curso_cod_curso`,`instituicao_cod_instituicao`),
  ADD KEY `fk_piloto_has_curso_curso1` (`curso_cod_curso`),
  ADD KEY `fk_piloto_has_curso_instituicao1` (`instituicao_cod_instituicao`);

--
-- Indexes for table `saida`
--
ALTER TABLE `saida`
  ADD PRIMARY KEY (`cod_saida`,`piloto_cod_piloto`,`aluno_mat_aluno`),
  ADD KEY `fk_saida_piloto1` (`piloto_cod_piloto`),
  ADD KEY `fk_saida_aluno1` (`aluno_mat_aluno`);

--
-- Indexes for table `sexo`
--
ALTER TABLE `sexo`
  ADD PRIMARY KEY (`cod_sexo`);

--
-- Indexes for table `telefone`
--
ALTER TABLE `telefone`
  ADD PRIMARY KEY (`cod_telefone`,`tipo_telefone_cod_tipo_telefone`),
  ADD KEY `fk_telefone_tipo_telefone1` (`tipo_telefone_cod_tipo_telefone`);

--
-- Indexes for table `tipo_endereco`
--
ALTER TABLE `tipo_endereco`
  ADD PRIMARY KEY (`cod_tipo_endereco`);

--
-- Indexes for table `tipo_piloto`
--
ALTER TABLE `tipo_piloto`
  ADD PRIMARY KEY (`cod_tipo_piloto`);

--
-- Indexes for table `tipo_telefone`
--
ALTER TABLE `tipo_telefone`
  ADD PRIMARY KEY (`cod_tipo_telefone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aluno`
--
ALTER TABLE `aluno`
  MODIFY `mat_aluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bairro`
--
ALTER TABLE `bairro`
  MODIFY `cod_bairro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cargo`
--
ALTER TABLE `cargo`
  MODIFY `cod_cargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cidade`
--
ALTER TABLE `cidade`
  MODIFY `cod_cidade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `curso`
--
ALTER TABLE `curso`
  MODIFY `cod_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `endereco`
--
ALTER TABLE `endereco`
  MODIFY `cod_endereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `escolaridade`
--
ALTER TABLE `escolaridade`
  MODIFY `cod_escolaridade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `estado`
--
ALTER TABLE `estado`
  MODIFY `cod_estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `estado_civil`
--
ALTER TABLE `estado_civil`
  MODIFY `cod_estado_civil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `filiacao`
--
ALTER TABLE `filiacao`
  MODIFY `cod_filiacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `instituicao`
--
ALTER TABLE `instituicao`
  MODIFY `cod_instituicao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pais`
--
ALTER TABLE `pais`
  MODIFY `cod_pais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `piloto`
--
ALTER TABLE `piloto`
  MODIFY `cod_piloto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `saida`
--
ALTER TABLE `saida`
  MODIFY `cod_saida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sexo`
--
ALTER TABLE `sexo`
  MODIFY `cod_sexo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `telefone`
--
ALTER TABLE `telefone`
  MODIFY `cod_telefone` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tipo_endereco`
--
ALTER TABLE `tipo_endereco`
  MODIFY `cod_tipo_endereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tipo_piloto`
--
ALTER TABLE `tipo_piloto`
  MODIFY `cod_tipo_piloto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tipo_telefone`
--
ALTER TABLE `tipo_telefone`
  MODIFY `cod_tipo_telefone` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `aluno`
--
ALTER TABLE `aluno`
  ADD CONSTRAINT `fk_aluno_cargo1` FOREIGN KEY (`cargo_cod_cargo`) REFERENCES `cargo` (`cod_cargo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_aluno_cidade1` FOREIGN KEY (`cidade_cod_cidade`) REFERENCES `cidade` (`cod_cidade`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_aluno_endereco1` FOREIGN KEY (`endereco_cod_endereco`) REFERENCES `endereco` (`cod_endereco`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_aluno_escolaridade1` FOREIGN KEY (`escolaridade_cod_escolaridade`) REFERENCES `escolaridade` (`cod_escolaridade`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_aluno_estado_civil1` FOREIGN KEY (`estado_civil_cod_estado_civil`) REFERENCES `estado_civil` (`cod_estado_civil`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_aluno_filiacao1` FOREIGN KEY (`filiacao_cod_filiacao`) REFERENCES `filiacao` (`cod_filiacao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_aluno_pais1` FOREIGN KEY (`pais_cod_pais`) REFERENCES `pais` (`cod_pais`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_aluno_sexo1` FOREIGN KEY (`sexo_cod_sexo`) REFERENCES `sexo` (`cod_sexo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_aluno_telefone1` FOREIGN KEY (`telefone_cod_telefone`) REFERENCES `telefone` (`cod_telefone`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `bairro`
--
ALTER TABLE `bairro`
  ADD CONSTRAINT `fk_bairro_cidade1` FOREIGN KEY (`cidade_cod_cidade`) REFERENCES `cidade` (`cod_cidade`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `cidade`
--
ALTER TABLE `cidade`
  ADD CONSTRAINT `fk_cidade_estado1` FOREIGN KEY (`estado_cod_estado`) REFERENCES `estado` (`cod_estado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `endereco`
--
ALTER TABLE `endereco`
  ADD CONSTRAINT `fk_endereco_bairro1` FOREIGN KEY (`bairro_cod_bairro`) REFERENCES `bairro` (`cod_bairro`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_endereco_tipo_endereco1` FOREIGN KEY (`tipo_endereco_cod_tipo_endereco`) REFERENCES `tipo_endereco` (`cod_tipo_endereco`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `piloto`
--
ALTER TABLE `piloto`
  ADD CONSTRAINT `fk_piloto_sexo1` FOREIGN KEY (`sexo_cod_sexo`) REFERENCES `sexo` (`cod_sexo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_piloto_telefone1` FOREIGN KEY (`telefone_cod_telefone`) REFERENCES `telefone` (`cod_telefone`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_piloto_tipo_piloto1` FOREIGN KEY (`tipo_piloto_cod_tipo_piloto`) REFERENCES `tipo_piloto` (`cod_tipo_piloto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `piloto_tem_curso`
--
ALTER TABLE `piloto_tem_curso`
  ADD CONSTRAINT `fk_piloto_has_curso_curso1` FOREIGN KEY (`curso_cod_curso`) REFERENCES `curso` (`cod_curso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_piloto_has_curso_instituicao1` FOREIGN KEY (`instituicao_cod_instituicao`) REFERENCES `instituicao` (`cod_instituicao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_piloto_has_curso_piloto1` FOREIGN KEY (`piloto_cod_piloto`) REFERENCES `piloto` (`cod_piloto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `saida`
--
ALTER TABLE `saida`
  ADD CONSTRAINT `fk_saida_aluno1` FOREIGN KEY (`aluno_mat_aluno`) REFERENCES `aluno` (`mat_aluno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_saida_piloto1` FOREIGN KEY (`piloto_cod_piloto`) REFERENCES `piloto` (`cod_piloto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `telefone`
--
ALTER TABLE `telefone`
  ADD CONSTRAINT `fk_telefone_tipo_telefone1` FOREIGN KEY (`tipo_telefone_cod_tipo_telefone`) REFERENCES `tipo_telefone` (`cod_tipo_telefone`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
