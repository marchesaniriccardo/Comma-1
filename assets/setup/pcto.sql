-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 01, 2022 alle 16:28
-- Versione del server: 10.4.14-MariaDB
-- Versione PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pcto`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `cliente`
--

CREATE TABLE `cliente` (
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `indirizzo` varchar(255) DEFAULT NULL,
  `telefono` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `cliente`
--

INSERT INTO `cliente` (`username`, `email`, `password`, `nome`, `indirizzo`, `telefono`) VALUES
('bpm', 'bpm@gmail.com', 'B685D42CE77340828731371174CD0ACB27B545922CC0879D68A0728C7B731D26', 'BPM', 'Via Roma', '395944219889'),
('fineco', 'fineco@gmail.com', '6AA9E68229A313AB3159AC013FF047F4C0D3025A7ECB8DC2684D57E135CC0902', 'Fineco', 'Via Prato', '394401354849'),
('generali', 'generali@gmail.com', '0FC0A4C5A84C8FF37367F425FF833B0A2B1A0DE7C0507B02D42D8C3A184F6884', 'Generali', 'Via Monte', '39968599589'),
('intesa_san_paolo', 'intesasanpaolo@gmail.com', '7130EE8446EA733B45F3AB778519F94848C64594170A3F7BB680C00939CBF6DC', 'Intesa San Paolo', 'Via Facciolati', '396700758821'),
('mediolanum', 'mediolanum@gmail.com', '116AB34633F55FA29772F206F789F963B06FAAEB942EF1BC638599519A6DDE68', 'Mediolanum', 'Via Keil', '39713167775'),
('revolut', 'revolut@gmail.com', '58F4182F405C683D31E2F8B2DD145363C1919B16E961873C70FC695B1CAE0D6F', 'Revolut', 'Via Vittorio Veneto', '39707813644'),
('sella', 'sella@gmail.com', '643266AE8F3F8B60986C29E49C7525F40509A63DD23065ED7D3BFCE35EE46F71', 'Sella', 'Via Del Martirio', '39896465725'),
('unicredit', 'unicredit@gmail.com', 'unicreditP', 'Unicredit', 'Via Gemola', '3982692405470');

-- --------------------------------------------------------

--
-- Struttura della tabella `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `auth_type` varchar(255) NOT NULL,
  `selector` text NOT NULL,
  `token` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `expires_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `fornitore`
--

CREATE TABLE `fornitore` (
  `Nome` varchar(20) NOT NULL,
  `Indirizzo` varchar(40) DEFAULT NULL,
  `Telefono` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `fornitore`
--

INSERT INTO `fornitore` (`Nome`, `Indirizzo`, `Telefono`) VALUES
('fornitore1', 'ind forn 1', '29210383010'),
('fornitore2', 'ind forn 2', '20383194389'),
('fornitore3', 'ind forn 3', '38203752074');

-- --------------------------------------------------------

--
-- Struttura della tabella `impiegato`
--

CREATE TABLE `impiegato` (
  `Matricola` char(16) NOT NULL,
  `Nome` varchar(50) DEFAULT NULL,
  `Cognome` varchar(50) DEFAULT NULL,
  `Tipo` varchar(50) DEFAULT NULL,
  `Processo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `impiegato`
--

INSERT INTO `impiegato` (`Matricola`, `Nome`, `Cognome`, `Tipo`, `Processo`) VALUES
('0000001', 'Giuseppe', 'Manni', 'Operaio', 'controllo qualita input'),
('0000002', 'Pietro', 'Di Angelo', 'Operaio', 'controllo qualita input'),
('0000003', 'Laura', 'Romani', 'Operaio', 'irrigidimento plastica'),
('0000004', 'Rodrigo', 'Costa', 'Operaio', 'irrigidimento plastica'),
('0000005', 'Luigi', 'De Cicco', 'Operaio', 'irrigidimento plastica'),
('0000006', 'Francesco', 'Padovan', 'Operaio', 'stampaggio grafica'),
('0000007', 'Angelo', 'Piazza', 'Operaio', 'stampaggio grafica'),
('0000008', 'Maria', 'Baglio', 'Operaio', 'posizionamento degli elaborati'),
('0000009', 'Anna', 'Cremonesi', 'Operaio', 'inserimento contactless'),
('0000010', 'Giuseppina', 'Toscani', 'Operaio', 'laminazione'),
('0000011', 'Angela', 'Longo', 'Operaio', 'separazione carte'),
('0000012', 'Concetta', ' Esposito', 'Operaio', 'separazione carte'),
('0000013', 'Giorgio', 'Carraro', 'Operaio', 'applicazione ologramma anticontraffazione'),
('0000014', 'Paolo', 'Fox', 'Operaio', 'inserimento chip'),
('0000015', 'Fabio', 'Martinelli', 'Operaio', 'inserimento chip'),
('0000016', 'Francesca', 'Giordano', 'Operaio', 'inserimento banda magnetica'),
('0000017', 'Matteo', 'Lombardi', 'Operaio', 'inserimento banda magnetica'),
('0000018', 'Carlo', 'Barbieri', 'Operaio', 'stampa codice carta'),
('0000019', 'Cinzia', 'Moretti', 'Operaio', 'logistica'),
('0000020', 'Leonardo', 'Rinaldi', 'Operaio', 'logistica'),
('0000021', 'Basilio', 'Celentano', 'Addetto al controllo qualita', NULL),
('0000022', 'Fabiola', 'Denari', 'Addetto al controllo qualita', NULL),
('0000023', 'Igor', 'Rampa', 'Addetto al controllo qualita', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `materie_prime`
--

CREATE TABLE `materie_prime` (
  `Codice` varchar(10) NOT NULL,
  `Lotto` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `materie_prime`
--

INSERT INTO `materie_prime` (`Codice`, `Lotto`) VALUES
('0000000001', '0000000001'),
('0000000002', '0000000001'),
('0000000003', '0000000001'),
('0000000004', '0000000002'),
('0000000005', '0000000002'),
('0000000006', '0000000002'),
('0000000007', '0000000002'),
('0000000008', '0000000003'),
('0000000009', '0000000003'),
('0000000010', '0000000004'),
('0000000011', '0000000004'),
('0000000012', '0000000004'),
('0000000013', '0000000004'),
('0000000014', '0000000005'),
('0000000015', '0000000005');

-- --------------------------------------------------------

--
-- Struttura della tabella `nc_input`
--

CREATE TABLE `nc_input` (
  `Numero` int(11) NOT NULL,
  `Descrizione` varchar(255) DEFAULT NULL,
  `Azioni_correttive` varchar(20) DEFAULT NULL,
  `Decisioni` varchar(255) DEFAULT NULL,
  `Stato` varchar(20) DEFAULT NULL,
  `Priorita` varchar(20) DEFAULT NULL,
  `Addetto_gestione` char(16) NOT NULL,
  `Origine` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `nc_interna`
--

CREATE TABLE `nc_interna` (
  `Numero` int(11) NOT NULL,
  `Descrizione` varchar(255) DEFAULT NULL,
  `Azioni_correttive` varchar(255) DEFAULT NULL,
  `Decisioni` varchar(255) DEFAULT NULL,
  `Stato` varchar(50) DEFAULT NULL,
  `Priorita` varchar(50) DEFAULT NULL,
  `Addetto_gestione` char(16) NOT NULL,
  `Origine` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `nc_interna`
--

INSERT INTO `nc_interna` (`Numero`, `Descrizione`, `Azioni_correttive`, `Decisioni`, `Stato`, `Priorita`, `Addetto_gestione`, `Origine`) VALUES
(1, 'stampa non conforme', NULL, 'semilavorato scartato', 'rilevata', 'basso', '0000021', 'stampaggio grafica'),
(2, 'fogli disallineati', NULL, 'semilavorato scartato', 'in risoluzione', 'basso', '0000023', 'laminazione'),
(3, 'plastica non irrigidita abbastanza', 'ripetere il processo di irrigidimento', 'rilavorazione', 'Risolta', 'basso', '0000022', 'laminazione');

-- --------------------------------------------------------

--
-- Struttura della tabella `nc_output`
--

CREATE TABLE `nc_output` (
  `Numero` int(11) NOT NULL,
  `Descrizione` varchar(255) DEFAULT NULL,
  `Azioni_correttive` varchar(20) DEFAULT NULL,
  `Decisioni` varchar(255) DEFAULT NULL,
  `Stato` varchar(20) DEFAULT NULL,
  `Priorita` varchar(20) DEFAULT NULL,
  `Addetto_gestione` char(16) NOT NULL,
  `Origine` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `processi`
--

CREATE TABLE `processi` (
  `Nome` varchar(50) NOT NULL,
  `Descrizione` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `processi`
--

INSERT INTO `processi` (`Nome`, `Descrizione`) VALUES
('applicazione ologramma anticontraffazione', 'nel retro della carta viene applicato l ologramma anticontraffazione'),
('controllo qualita input', 'l operaio controlla se le materie prime sono conformi alle norme con le quali sono state acquistate'),
('controllo stampa grafica', 'l operaio addetto al controllo controlla se la stampa è avvenuta con successo e se segue tutte le norme di conformita'),
('inserimento banda magnetica', 'nel retro della carta viene inserita la banda magnetica che serve per il riconoscimento della carta quando viene inserita nel POS o nell ATM'),
('inserimento chip', 'nella carta viene inserito il chip per collegarsi al circuito bancario'),
('inserimento contactless', 'tramite apposito macchinario viene inserito il chip per il pagamento contactless'),
('irrigidimento plastica', 'l operaio tramite apposito macchinario irrigidisce i fogli di PVC'),
('laminazione', 'tramite pressa industriale i componenti vengono pressati assieme'),
('logistica', 'le carte vengono imballate e spedite al cliente'),
('posizionamento degli elaborati', 'l operaio posiziona i vari strati uno sopra l altro allineati'),
('separazione carte', 'le carte vengono separate dal foglio di PVC'),
('stampa codice carta', 'nel fronte della carta vengono incisi i numeri che servono per l identificazione della carta'),
('stampaggio grafica', 'tramite una stampante industriale viene stampata la grafica che successivamente verra applicata alla carta di credito');

-- --------------------------------------------------------

--
-- Struttura della tabella `prodotto`
--

CREATE TABLE `prodotto` (
  `Codice` varchar(10) NOT NULL,
  `Lotto` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `prodotto`
--

INSERT INTO `prodotto` (`Codice`, `Lotto`) VALUES
('0000000026', '0000000001'),
('0000000027', '0000000001'),
('0000000028', '0000000001'),
('0000000029', '0000000001'),
('0000000030', '0000000001'),
('0000000031', '0000000002'),
('0000000032', '0000000002'),
('0000000033', '0000000002'),
('0000000034', '0000000003'),
('0000000035', '0000000003'),
('0000000036', '0000000003'),
('0000000037', '0000000003'),
('0000000038', '0000000003'),
('0000000039', '0000000003'),
('0000000040', '0000000004'),
('0000000041', '0000000004'),
('0000000042', '0000000004'),
('0000000043', '0000000004'),
('0000000044', '0000000005'),
('0000000045', '0000000005'),
('0000000046', '0000000005'),
('0000000047', '0000000005'),
('0000000048', '0000000005'),
('0000000049', '0000000006'),
('0000000050', '0000000006');

-- --------------------------------------------------------

--
-- Struttura della tabella `rilevamento_input`
--

CREATE TABLE `rilevamento_input` (
  `NC` int(11) NOT NULL,
  `Impiegato` varchar(20) NOT NULL,
  `Materia_prima` varchar(10) NOT NULL,
  `Data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `rilevamento_interno`
--

CREATE TABLE `rilevamento_interno` (
  `NC` int(11) NOT NULL,
  `Impiegato` char(16) NOT NULL,
  `Semilavorato` char(16) NOT NULL,
  `Data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `rilevamento_output`
--

CREATE TABLE `rilevamento_output` (
  `NC` int(11) NOT NULL,
  `Cliente` varchar(40) NOT NULL,
  `Prodotto` varchar(10) NOT NULL,
  `Data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `risoluzione_input`
--

CREATE TABLE `risoluzione_input` (
  `NC` int(11) NOT NULL,
  `Fornitore` varchar(20) NOT NULL,
  `Data_inizio` date DEFAULT NULL,
  `Data_fine` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `risoluzione_interna`
--

CREATE TABLE `risoluzione_interna` (
  `NC` int(11) NOT NULL,
  `Impiegato` char(16) NOT NULL,
  `Data_inizio` date DEFAULT NULL,
  `Data_fine` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `risoluzione_output`
--

CREATE TABLE `risoluzione_output` (
  `NC` int(11) NOT NULL,
  `Impiegato` varchar(20) NOT NULL,
  `Data_inizio` date DEFAULT NULL,
  `Data_fine` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `semilavorato`
--

CREATE TABLE `semilavorato` (
  `Codice` char(16) NOT NULL,
  `Lotto` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `semilavorato`
--

INSERT INTO `semilavorato` (`Codice`, `Lotto`) VALUES
('0000000001', '0000000001'),
('0000000002', '0000000001'),
('0000000003', '0000000001'),
('0000000004', '0000000001'),
('0000000005', '0000000001'),
('0000000006', '0000000002'),
('0000000007', '0000000002'),
('0000000008', '0000000002'),
('0000000009', '0000000003'),
('0000000010', '0000000003'),
('0000000011', '0000000003'),
('0000000012', '0000000003'),
('0000000013', '0000000003'),
('0000000014', '0000000003'),
('0000000015', '0000000004'),
('0000000016', '0000000004'),
('0000000017', '0000000004'),
('0000000018', '0000000004'),
('0000000019', '0000000005'),
('0000000020', '0000000005'),
('0000000021', '0000000005'),
('0000000022', '0000000005'),
('0000000023', '0000000005'),
('0000000024', '0000000006'),
('0000000025', '0000000006');

-- --------------------------------------------------------

--
-- Struttura della tabella `verifica_input`
--

CREATE TABLE `verifica_input` (
  `NC` int(11) NOT NULL,
  `Impiegato` varchar(20) NOT NULL,
  `Data_inizio` date DEFAULT NULL,
  `Data_fine` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `verifica_interna`
--

CREATE TABLE `verifica_interna` (
  `NC` int(11) NOT NULL,
  `Impiegato` char(16) NOT NULL,
  `Data_inizio` date DEFAULT NULL,
  `Data_fine` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `verifica_output`
--

CREATE TABLE `verifica_output` (
  `NC` int(11) NOT NULL,
  `Impiegato` varchar(20) NOT NULL,
  `Data_inizio` date DEFAULT NULL,
  `Data_fine` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`nome`);

--
-- Indici per le tabelle `fornitore`
--
ALTER TABLE `fornitore`
  ADD PRIMARY KEY (`Nome`);

--
-- Indici per le tabelle `impiegato`
--
ALTER TABLE `impiegato`
  ADD PRIMARY KEY (`Matricola`),
  ADD KEY `Processo` (`Processo`);

--
-- Indici per le tabelle `materie_prime`
--
ALTER TABLE `materie_prime`
  ADD PRIMARY KEY (`Codice`);

--
-- Indici per le tabelle `nc_input`
--
ALTER TABLE `nc_input`
  ADD PRIMARY KEY (`Numero`),
  ADD KEY `Addetto_gestione` (`Addetto_gestione`),
  ADD KEY `Origine` (`Origine`);

--
-- Indici per le tabelle `nc_interna`
--
ALTER TABLE `nc_interna`
  ADD PRIMARY KEY (`Numero`),
  ADD KEY `Addetto_gestione` (`Addetto_gestione`),
  ADD KEY `Origine` (`Origine`);

--
-- Indici per le tabelle `nc_output`
--
ALTER TABLE `nc_output`
  ADD PRIMARY KEY (`Numero`),
  ADD KEY `Addetto_gestione` (`Addetto_gestione`),
  ADD KEY `Origine` (`Origine`);

--
-- Indici per le tabelle `processi`
--
ALTER TABLE `processi`
  ADD PRIMARY KEY (`Nome`);

--
-- Indici per le tabelle `prodotto`
--
ALTER TABLE `prodotto`
  ADD PRIMARY KEY (`Codice`);

--
-- Indici per le tabelle `rilevamento_input`
--
ALTER TABLE `rilevamento_input`
  ADD PRIMARY KEY (`NC`,`Impiegato`,`Materia_prima`),
  ADD KEY `Impiegato` (`Impiegato`),
  ADD KEY `Materia_prima` (`Materia_prima`);

--
-- Indici per le tabelle `rilevamento_interno`
--
ALTER TABLE `rilevamento_interno`
  ADD PRIMARY KEY (`NC`,`Impiegato`,`Semilavorato`),
  ADD KEY `Impiegato` (`Impiegato`),
  ADD KEY `Semilavorato` (`Semilavorato`);

--
-- Indici per le tabelle `rilevamento_output`
--
ALTER TABLE `rilevamento_output`
  ADD PRIMARY KEY (`NC`,`Cliente`,`Prodotto`),
  ADD KEY `Cliente` (`Cliente`),
  ADD KEY `Prodotto` (`Prodotto`);

--
-- Indici per le tabelle `risoluzione_input`
--
ALTER TABLE `risoluzione_input`
  ADD PRIMARY KEY (`NC`,`Fornitore`),
  ADD KEY `Fornitore` (`Fornitore`);

--
-- Indici per le tabelle `risoluzione_interna`
--
ALTER TABLE `risoluzione_interna`
  ADD PRIMARY KEY (`NC`,`Impiegato`),
  ADD KEY `Impiegato` (`Impiegato`);

--
-- Indici per le tabelle `risoluzione_output`
--
ALTER TABLE `risoluzione_output`
  ADD PRIMARY KEY (`NC`,`Impiegato`),
  ADD KEY `Impiegato` (`Impiegato`);

--
-- Indici per le tabelle `semilavorato`
--
ALTER TABLE `semilavorato`
  ADD PRIMARY KEY (`Codice`);

--
-- Indici per le tabelle `verifica_input`
--
ALTER TABLE `verifica_input`
  ADD PRIMARY KEY (`NC`,`Impiegato`),
  ADD KEY `Impiegato` (`Impiegato`);

--
-- Indici per le tabelle `verifica_interna`
--
ALTER TABLE `verifica_interna`
  ADD PRIMARY KEY (`NC`,`Impiegato`),
  ADD KEY `Impiegato` (`Impiegato`);

--
-- Indici per le tabelle `verifica_output`
--
ALTER TABLE `verifica_output`
  ADD PRIMARY KEY (`NC`,`Impiegato`),
  ADD KEY `Impiegato` (`Impiegato`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `nc_input`
--
ALTER TABLE `nc_input`
  MODIFY `Numero` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `nc_interna`
--
ALTER TABLE `nc_interna`
  MODIFY `Numero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `impiegato`
--
ALTER TABLE `impiegato`
  ADD CONSTRAINT `impiegato_ibfk_1` FOREIGN KEY (`Processo`) REFERENCES `processi` (`Nome`) ON UPDATE CASCADE;

--
-- Limiti per la tabella `nc_input`
--
ALTER TABLE `nc_input`
  ADD CONSTRAINT `nc_input_ibfk_1` FOREIGN KEY (`Addetto_gestione`) REFERENCES `impiegato` (`Matricola`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nc_input_ibfk_2` FOREIGN KEY (`Origine`) REFERENCES `fornitore` (`Nome`) ON UPDATE CASCADE;

--
-- Limiti per la tabella `nc_interna`
--
ALTER TABLE `nc_interna`
  ADD CONSTRAINT `nc_interna_ibfk_1` FOREIGN KEY (`Addetto_gestione`) REFERENCES `impiegato` (`Matricola`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nc_interna_ibfk_2` FOREIGN KEY (`Origine`) REFERENCES `processi` (`Nome`) ON UPDATE CASCADE;

--
-- Limiti per la tabella `nc_output`
--
ALTER TABLE `nc_output`
  ADD CONSTRAINT `nc_output_ibfk_1` FOREIGN KEY (`Addetto_gestione`) REFERENCES `impiegato` (`Matricola`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nc_output_ibfk_2` FOREIGN KEY (`Origine`) REFERENCES `processi` (`Nome`) ON UPDATE CASCADE;

--
-- Limiti per la tabella `rilevamento_input`
--
ALTER TABLE `rilevamento_input`
  ADD CONSTRAINT `rilevamento_input_ibfk_1` FOREIGN KEY (`NC`) REFERENCES `nc_input` (`Numero`) ON UPDATE CASCADE,
  ADD CONSTRAINT `rilevamento_input_ibfk_2` FOREIGN KEY (`Impiegato`) REFERENCES `impiegato` (`Matricola`) ON UPDATE CASCADE,
  ADD CONSTRAINT `rilevamento_input_ibfk_3` FOREIGN KEY (`Materia_prima`) REFERENCES `materie_prime` (`Codice`) ON UPDATE CASCADE;

--
-- Limiti per la tabella `rilevamento_interno`
--
ALTER TABLE `rilevamento_interno`
  ADD CONSTRAINT `rilevamento_interno_ibfk_1` FOREIGN KEY (`NC`) REFERENCES `nc_interna` (`Numero`) ON UPDATE CASCADE,
  ADD CONSTRAINT `rilevamento_interno_ibfk_2` FOREIGN KEY (`Impiegato`) REFERENCES `impiegato` (`Matricola`) ON UPDATE CASCADE,
  ADD CONSTRAINT `rilevamento_interno_ibfk_3` FOREIGN KEY (`Semilavorato`) REFERENCES `semilavorato` (`Codice`) ON UPDATE CASCADE;

--
-- Limiti per la tabella `rilevamento_output`
--
ALTER TABLE `rilevamento_output`
  ADD CONSTRAINT `rilevamento_output_ibfk_1` FOREIGN KEY (`NC`) REFERENCES `nc_output` (`Numero`) ON UPDATE CASCADE,
  ADD CONSTRAINT `rilevamento_output_ibfk_2` FOREIGN KEY (`Cliente`) REFERENCES `cliente` (`nome`) ON UPDATE CASCADE,
  ADD CONSTRAINT `rilevamento_output_ibfk_3` FOREIGN KEY (`Prodotto`) REFERENCES `prodotto` (`Codice`) ON UPDATE CASCADE;

--
-- Limiti per la tabella `risoluzione_input`
--
ALTER TABLE `risoluzione_input`
  ADD CONSTRAINT `risoluzione_input_ibfk_1` FOREIGN KEY (`NC`) REFERENCES `nc_input` (`Numero`) ON UPDATE CASCADE,
  ADD CONSTRAINT `risoluzione_input_ibfk_2` FOREIGN KEY (`Fornitore`) REFERENCES `fornitore` (`Nome`) ON UPDATE CASCADE;

--
-- Limiti per la tabella `risoluzione_interna`
--
ALTER TABLE `risoluzione_interna`
  ADD CONSTRAINT `risoluzione_interna_ibfk_1` FOREIGN KEY (`NC`) REFERENCES `nc_interna` (`Numero`) ON UPDATE CASCADE,
  ADD CONSTRAINT `risoluzione_interna_ibfk_2` FOREIGN KEY (`Impiegato`) REFERENCES `impiegato` (`Matricola`) ON UPDATE CASCADE;

--
-- Limiti per la tabella `risoluzione_output`
--
ALTER TABLE `risoluzione_output`
  ADD CONSTRAINT `risoluzione_output_ibfk_1` FOREIGN KEY (`NC`) REFERENCES `nc_output` (`Numero`) ON UPDATE CASCADE,
  ADD CONSTRAINT `risoluzione_output_ibfk_2` FOREIGN KEY (`Impiegato`) REFERENCES `impiegato` (`Matricola`) ON UPDATE CASCADE;

--
-- Limiti per la tabella `verifica_input`
--
ALTER TABLE `verifica_input`
  ADD CONSTRAINT `verifica_input_ibfk_1` FOREIGN KEY (`NC`) REFERENCES `nc_input` (`Numero`) ON UPDATE CASCADE,
  ADD CONSTRAINT `verifica_input_ibfk_2` FOREIGN KEY (`Impiegato`) REFERENCES `fornitore` (`nome`) ON UPDATE CASCADE;

--
-- Limiti per la tabella `verifica_interna`
--
ALTER TABLE `verifica_interna`
  ADD CONSTRAINT `verifica_interna_ibfk_1` FOREIGN KEY (`NC`) REFERENCES `nc_interna` (`Numero`) ON UPDATE CASCADE,
  ADD CONSTRAINT `verifica_interna_ibfk_2` FOREIGN KEY (`Impiegato`) REFERENCES `impiegato` (`Matricola`) ON UPDATE CASCADE;

--
-- Limiti per la tabella `verifica_output`
--
ALTER TABLE `verifica_output`
  ADD CONSTRAINT `verifica_output_ibfk_1` FOREIGN KEY (`NC`) REFERENCES `nc_output` (`Numero`) ON UPDATE CASCADE,
  ADD CONSTRAINT `verifica_output_ibfk_2` FOREIGN KEY (`Impiegato`) REFERENCES `impiegato` (`Matricola`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
