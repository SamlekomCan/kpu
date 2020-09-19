-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2020 at 04:29 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kpu`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `role` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama`, `user`, `pass`, `mail`, `role`) VALUES
(1, 'superadmin', 'superadmin', '$2y$10$AHsq/k5/lOY.NRGdPmOTq.kkunVBxnx1woyDdB9.koNNZrTi2srhm', 'mail@mail.com', 5),
(2, 'ican04', 'admin2', '$2y$10$pQaEup/795jaB/.uQQM01uQxcIFFENLxkTfi6iTDJYFLWwwv3aC2e', 'mail2@mail.com', 1),
(5, 'BEMU', 'bemu', '$2y$10$77qpnMZEVddH2vee3MGO5.pKLhOcrFprhp2TSduBpRko7SP9N0o0O', 'mail@mail', 1),
(6, 'adminbaru', 'adminbaru', '$2y$10$5OG8aQP8ht2uqyU1bAceNePAi26h2P7bIHZggM4vREzWVRT6GliZC', 'adminbaru@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `calon`
--

CREATE TABLE `calon` (
  `id` int(11) NOT NULL,
  `ketua` varchar(255) NOT NULL,
  `wakil` varchar(255) NOT NULL,
  `fakultasketua` varchar(50) NOT NULL,
  `fakultaswakil` varchar(255) NOT NULL,
  `organisasi` varchar(50) NOT NULL,
  `prodi` varchar(255) NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `foto` varchar(100) NOT NULL,
  `hasil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dt_kandidat`
--

CREATE TABLE `dt_kandidat` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nim` varchar(9) NOT NULL,
  `nowa` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fakultas` varchar(255) NOT NULL,
  `prodi` varchar(255) NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `ukuran` int(11) NOT NULL,
  `tipe` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dt_kandidat`
--

INSERT INTO `dt_kandidat` (`id`, `nama`, `nim`, `nowa`, `email`, `fakultas`, `prodi`, `visi`, `misi`, `foto`, `ukuran`, `tipe`) VALUES
(8, 'HIERONIMUS FREDY MORGAN', '175314080', '', '', 'Sains dan Teknologi', 'Informatika', '', '', NULL, 0, ''),
(9, 'JOSE PEDRO FEBIAN', '175314038', '08976875764', 'Annas.alifazriel720@gmail.com', 'Sains dan Teknologi', 'Informatika', 'hgjhgj', 'cghcfdhjgchj', '226-2260470_transparent-admin-icon-png-admin-logo-png-png.png', 0, ''),
(10, 'BERLIN RAVELINO HUGO PADANG', '175314061', '', '', 'Sains dan Teknologi', 'Informatika', '', '', NULL, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

CREATE TABLE `fakultas` (
  `id_fakultas` int(11) NOT NULL,
  `fakultas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fakultas`
--

INSERT INTO `fakultas` (`id_fakultas`, `fakultas`) VALUES
(1, 'Sains dan Teknologi'),
(2, 'Farmasi'),
(3, 'Keguruan dan Ilmu Pendidikan'),
(4, 'Ekonomi'),
(5, 'Teologi'),
(6, 'Psikologi'),
(7, 'Sastra');

-- --------------------------------------------------------

--
-- Table structure for table `gubernur`
--

CREATE TABLE `gubernur` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `fakultas` varchar(255) NOT NULL,
  `prodi` varchar(255) NOT NULL,
  `angkatan` varchar(10) NOT NULL,
  `alasan` text NOT NULL,
  `idUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gubernur`
--

INSERT INTO `gubernur` (`id`, `nama`, `fakultas`, `prodi`, `angkatan`, `alasan`, `idUser`) VALUES
(1, 'JOSE PEDRO FEBIAN', 'Sains dan Teknologi', 'Informatika', '2018', 'coba 1 aja\r\n', 105),
(2, 'JOSE PEDRO FEBIAN', 'Sains dan Teknologi', 'Informatika', '2018', 'coba 2', 106),
(3, 'JOSE PEDRO FEBIAN', 'Sains dan Teknologi', 'Informatika', '2017', 'asd', 151);

-- --------------------------------------------------------

--
-- Table structure for table `himpunan`
--

CREATE TABLE `himpunan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `fakultas` varchar(255) NOT NULL,
  `prodi` varchar(255) NOT NULL,
  `angkatan` varchar(10) NOT NULL,
  `alasan` text NOT NULL,
  `idUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `himpunan`
--

INSERT INTO `himpunan` (`id`, `nama`, `fakultas`, `prodi`, `angkatan`, `alasan`, `idUser`) VALUES
(1, 'BERLIN RAVELINO HUGO PADANG', 'Sains dan Teknologi', 'Informatika', '2018', 'coba1aja', 105),
(2, 'M.IKHSAN ABIMANYU', 'Sains dan Teknologi', 'Informatika', '2018', 'coba 2\r\n', 106),
(3, 'M.IKHSAN ABIMANYU', 'Sains dan Teknologi', 'Informatika', '2018', 'coba 3\r\n', 107),
(4, 'JOSE PEDRO FEBIAN', 'Sains dan Teknologi', 'Informatika', '2017', 'asda', 151);

-- --------------------------------------------------------

--
-- Table structure for table `presiden`
--

CREATE TABLE `presiden` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `fakultas` varchar(255) NOT NULL,
  `prodi` varchar(255) NOT NULL,
  `angkatan` varchar(10) NOT NULL,
  `alasan` text NOT NULL,
  `idUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `presiden`
--

INSERT INTO `presiden` (`id`, `nama`, `fakultas`, `prodi`, `angkatan`, `alasan`, `idUser`) VALUES
(1, 'BERLIN RAVELINO HUGO PADANG', 'Sains dan Teknologi', 'Informatika', '2018', 'coba 1 aja', 105),
(2, 'BERLIN RAVELINO HUGO PADANG', 'Sains dan Teknologi', 'Informatika', '2018', 'coba 2', 106),
(3, 'JOSE PEDRO FEBIAN', 'Sains dan Teknologi', 'Informatika', '2017', 'asd', 151),
(4, 'ANDREAS ALDYANTO NURA', 'Sains dan Teknologi', 'Informatika', '2017', 'good', 142);

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id_prodi` int(11) NOT NULL,
  `id_fakultas_fk` int(11) NOT NULL,
  `nama_prodi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id_prodi`, `id_fakultas_fk`, `nama_prodi`) VALUES
(1, 1, 'Informatika'),
(2, 1, 'Teknik Elektro'),
(3, 1, 'Teknik Mesin'),
(4, 1, 'Matematika'),
(5, 2, 'Farmasi'),
(6, 3, 'Bimbingan dan Konseling'),
(7, 3, 'Pendidikan Bahasa dan Sastra Indonesia'),
(8, 3, 'Pendidikan Bahasa Inggris'),
(9, 3, 'Pendidikan Biologi'),
(10, 3, 'Pendidikan Ekonomi Bidang Keahlian Khusus Pendidikan Akuntasi'),
(11, 3, 'Pendidikan Ekonomi Bidang Keahlian Khusus Pendidikan Ekonommi'),
(12, 3, 'Pendidikan Fisika'),
(13, 3, 'Pendidikan Guru Sekolah Dasar'),
(14, 3, 'Pendidikan Keagamamaan Katolik'),
(15, 3, 'Pendidikan Kimia'),
(16, 3, 'Pendidikan Matematika'),
(17, 3, 'Pendidikan Sejarah'),
(18, 4, 'Akutansi'),
(19, 4, 'Ekonomi'),
(20, 4, 'Manajemen'),
(21, 5, 'Filsafat Keilahian Program Sarjana'),
(22, 6, 'Psikologi'),
(23, 7, 'Sastra Indonesia'),
(24, 7, 'Sastra Inggris'),
(25, 7, 'Sejarah');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nim` char(10) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fakultas` varchar(50) NOT NULL,
  `prodi` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  `statusBEMF` int(1) NOT NULL,
  `statusHM` int(1) NOT NULL,
  `role` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nim`, `nama`, `password`, `fakultas`, `prodi`, `status`, `statusBEMF`, `statusHM`, `role`) VALUES
(617, '165314001', 'YAKOBUS ARIS ARVANTO', '$2y$10$gf7pf2o/VPpxmaIEHRFc4.9oG4vgl8rTBlsAv6NmnoPsrK3Uxd/9S', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(618, '165314002', 'ALEXANDER BERNADUS SUNGKONO', '$2y$10$.ydKGuhQysYoX2abnNx53.tfKgnSwG52TEytYPjh0RM21TuS2sMey', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(619, '165314003', 'NANANG HIMAWAN FAUZI', '$2y$10$swgOJ5f/H4CJRbRcTTVf6uf38M0INYus/CKkvYt2xcMKnzARwS5/2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(620, '165314004', 'GEDE RIZKY BELA DHARMA RUDYARTA', '$2y$10$xR9RaSLIxpU00xOCJOYguekQr39YBpsRqT9VmYYq.6D6OVgA7MBN.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(621, '165314006', 'ANTONIUS YOGI PRIHANTORO', '$2y$10$Nd0FJ07IW1rSJe8j4mr7dOQjJ7in9hNJaur2aqfLmKirX1JVOfY/6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(622, '165314007', 'WIDI FIRMANSYAH', '$2y$10$wqybbnvA/3zXNGAdXXiW7urkQ5YPN0jPg2Oebphio7ekMp2BobM2u', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(623, '165314009', 'EVANNOAH ROLIMARCH PRATAMA', '$2y$10$kG4dyw.ipnnU1XBvV9rhj.rVRRY0ga2wzvDaXQE/CUQmO1qB2AmL.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(624, '165314011', 'WENSESLAUS TYAS WICAKSANA', '$2y$10$jpNKlnUiySEbI4xDCq6chuv05/pQNHo2cMtv8N7ltwcxRlN5p7gAG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(625, '165314012', 'BANYU WANA AJI', '$2y$10$nYA7CYjmr0BaWrkhbbyp/O97/QyBdxaeQlsxBZHb3kwmbzch4xvyW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(626, '165314013', 'AGNES WIDIANINGSIH WULANDARI', '$2y$10$46WaS1T.IUxdUboIUz7qkeZX.LxmjTWdVgKNjwgkMG.zhBiXE1gri', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(627, '165314014', 'BERNADETTE CHRESTELLA', '$2y$10$gp4fzycmArZ8cI3wvzD9M.D/eVbCTNIdQ/dM6UrGqs9FLy4m7BzRi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(628, '165314015', 'REYNALDI SETIAWAN', '$2y$10$mUfmOcHwRijduObgIeVeY.EptaEgiOTFHVsDvh.6I2EeP.Rb974pG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(629, '165314016', 'WILLY FRANSCA', '$2y$10$ztlNodN/D79XK4mEdaPBqOp6SYEjqvWgKKxRVjOBQvCAnYkSt7h66', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(630, '165314017', 'FRANSISCUS XAVERIUS DHIMAS DWI RATNANTO', '$2y$10$24sB0q2skfwNjfaumuE7I.AnL64lR9CYMmfLTzXnhHiGf3OCG5cJC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(631, '165314018', 'GESANG AGENG TRISAKTI', '$2y$10$rkjT6btFY/.I.vyCEIaUPOr/a5BflE/qoUE9NGYw.xMaNiByEua8G', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(632, '165314020', 'YOGA DWI PRASETYO', '$2y$10$2WmvIdhkn.Q0i00bv4cXTetuS63GM/r2Yyrcud8QXYIkqjGKEiRpi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(633, '165314021', 'TATAG HARDOYO', '$2y$10$.aOWH23M3MgpXPZnSotZG.jQjUCD3D.TlNOc3bx5e0JDsQUSRpwxi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(634, '165314023', 'AURELI ISAIAS', '$2y$10$058Sqz9AvTqhWQUujC45n.Bn0lKVnoxUK4a.uRgtxp/8Sd7AGKurS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(635, '165314024', 'CLARA RUMONDANG', '$2y$10$0r9Hpdg2ICIyhx5iEZirtua1gVhPmSxQh1LWZ/qStxW2eQuw5DeCy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(636, '165314025', 'ANTONIUS BAYU ANGGORO JATI', '$2y$10$dKyhQHvIwbW.qxkFmlj1zO4K6uKNjfdF.7TcVoiA60UwCHtfwscF.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(637, '165314026', 'YOVANDA PRISCILLA', '$2y$10$pHEzTGwn1OCEqEbi62za1uSj6C01QsCzJhL1cOhYZDMTuTuZX5lvG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(638, '165314027', 'YUSTINA LYVIA VIOLITA', '$2y$10$y9cImUPox0mmiBQcxrGSfu1EIjbhaqinET85kzbIR5gMq0QxrGNae', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(639, '165314028', 'WILLIAMS NICOSEN', '$2y$10$mwRRgjHjcwUjATjANiHlU.6MDYmSrSay4gz9Bq/d5NWwhPVDfhwbO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(640, '165314029', 'HADIYAN FAIKAR', '$2y$10$rSXA4Baqu/bKeSAMDJ.DKeSKpqZ6P6fGhPy6UMlyVQH7RdHrt3elC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(641, '165314031', 'ADITYA GALIH DIKA SIWI', '$2y$10$9dAXVmXxYTiUkTVdVUSTuuLDzDumBMigNU7ePd3.3frFdRuzOYQ2S', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(642, '165314032', 'LAURENSIUS JENAR ARTYANDA', '$2y$10$M9wHI8vIZ3QlEUsVItY4me.zTEi2rFepuOLaJ0X6X6WGgxR.dBVsO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(643, '165314033', 'JOSPHINE WAHYU SURYAKUMALA', '$2y$10$hVfiUJvJuAdpcd4mRpk9nufG11jHI6RK6ebSa9s5A3Nm/Xwmtvaom', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(644, '165314034', 'BERNADICTUS HERKULANTO HADISAPUTRA', '$2y$10$N0URFtL78uPcA3xfGJNhBeAi1KVFQDh7KJ26MnHbrifGNfdnlWX1y', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(645, '165314035', 'VICKY DARMAWAN', '$2y$10$84Rn6u1/Z2SBJt6x0ekhLOmgHD7DZ7Bn4SOTlPsxQiZ6TEPZrdt02', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(646, '165314036', 'MARIO ADITYA PRIMANDARU', '$2y$10$CsyNP4rDbO8SKfowzxD7veqB1m2US5MmkrGnW/M1NSYSq1.Re.0YC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(647, '165314037', 'VERONICA MEIDITA SETYANI', '$2y$10$omAS/aGyttj9TxKN0C06se1R3FYDJp4HNn70YxpfJaH5/5Zwkc/r2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(648, '165314038', 'DANIEL JERIANSYAH', '$2y$10$NyCJhlfDqqY1Z4Ni9zdRm.0GJ/3w42CbMBCn.p0FR6IBP.INqA9Zi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(649, '165314039', 'ANDREAS BENY KURNIAWAN', '$2y$10$GtB8RDrSH3ynHjwGjRcVauUY5bcst.FKdra1l3NL6XHtTRLXg4Twy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(650, '165314040', 'MUNA ALEKTA TARIGAN', '$2y$10$XvXbFjMLwe9FE.9EtB3rZ.8KWt1v2fiEMBEuVQFifJn3QjdBNXH.a', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(651, '165314041', 'YOS RIO PURAGA', '$2y$10$SFDMAnVuhf2KhsrJ3RnYKOFQOAq9PVqarJ9H.I7awDua1EIocWczO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(652, '165314042', 'FERDINAND ANDRE PASARIBU', '$2y$10$0t150qU73veCx1VTPxnrcOTqUBcRTwJo/bUrIbZr9fHhfSevcP9G2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(653, '165314043', 'RICKY FERDIAN', '$2y$10$EaRcbO4ZgGnm39efF7nOx.mAbegusUcSR3fy8kHmvUW.LFsc9CtHm', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(654, '165314044', 'KRISTOPHORUS ABEL PRIAMBODO LUMBAN TOBING', '$2y$10$EULZjXumzfVxB/4X6bFyEOyka8z6agjAXvwDp/.7ZZfmD3QZCViRq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(655, '165314045', 'JOHAN SATRIA KESUMA', '$2y$10$nSqN8p5yohN9TfGJXuLdgukC1cIsmtoIm4X.xSX8x5gHNcZAVHT.y', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(656, '165314046', 'FERDINANDUS LEMBAMBANG SULA', '$2y$10$xdw6wWnM6cwKHzIDTC3U6OOuFWoKxd1I/3zvZrkPDRxOCSnID3QzS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(657, '165314047', 'YANUARIUS BASILIUS', '$2y$10$h9U29jq22ATqH6J9F7SugeyzjQU/0UBu.24JkGfmntRRP2JS5jGFC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(658, '165314048', 'HIERONYMUS PRASTAWA AGUNG', '$2y$10$4mRypTYogELekdwAjrnCReXwsngxNTG21rcrWo363s/TGGXnQEa9O', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(659, '165314049', 'ANINDYAJATI', '$2y$10$0oCAlZ/aCGICAbsUaSg1Q.dTvzwrWrksx4Z7g5kFAFCCLf5vThFsq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(660, '165314050', 'KRISTIANUS YULI KURNIAWAN', '$2y$10$3IHBVNj44nhI06dw1cCcROv9Z.2X9599d4ihwjvPTt.A4pgvc26Aq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(661, '165314051', 'CHRISTIANTO EGA PRASETYO', '$2y$10$wlrP.jCoSIRxsQUUIdeR5u8ZIv7bC2D/hnUVXuPrbzugkGqL1Ugu.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(662, '165314053', 'FINSA ABRAHAM ALBIYANDA', '$2y$10$iE4xovvhG39Hd.P1kGxkVePteKfrnJDVldiqKaLmxxA183mbni.oO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(663, '165314054', 'EZRA PETRA NAMSA', '$2y$10$ZNfwS26NJvS4ccsoOkF1E.FMPE.Tw63nUdLUWar1YCUBeyb5mdtES', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(664, '165314055', 'ANATASHA OCTARIAMA RESPATI DEWI SIMBOLON', '$2y$10$7lCJaRMtngv4o/PRiHLhR.dnTAaW1EXeTvKsqDcDSO4PVVAjN2gIm', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(665, '165314056', 'DELVIANA SIAHAAN', '$2y$10$BaS4hNGjK.meitdX.7Zs4Ok1NCO9drJeOQPGtin.c7jHhN2kcM6V.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(666, '165314057', 'BERNARD HATOGUAN SIREGAR', '$2y$10$giWKbMgCBo5CVTnY4fMoueUA0Ao1r72qDZPzQKkPHDxVvLbG.bMoq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(667, '165314058', 'HANDOKO PRASETYO', '$2y$10$uCF19uQ6bDH0HEGfyOZ6L.8miZpuvi7EHfoYQIrvMeVoUoYO41FFO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(668, '165314060', 'STEFANUS KEVIN WICAKSONO', '$2y$10$KrjX7Ibnt62nDVHR74O7veZ2J3HgWkaLjNXVP0bb2niJ0nAfAueYW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(669, '165314061', 'NICODEMUS SEPTINOS PATI', '$2y$10$pwJCf94PLvyw.FpSwOOKbeQ19/NazeCEN5D3inep3vHtn9kqGajZ6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(670, '165314062', 'KLAUDIA KISNODI', '$2y$10$yy9TIQLTL.UcU7dc8RYngOMKFu6LqvhkkRv9nS.afxNNrCxjyKsVa', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(671, '165314063', 'YOSEPH GUSTI RANDA', '$2y$10$VOmPbzt7xeND9Dc0f.Ri/uJ6Y2bToLbNtX.ruhTzkHxHPx8pwsyU2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(672, '165314065', 'I KETUT MULIANA', '$2y$10$8wptReZpMDijg..5lpUJq.35OW/zw4RbqMCwjlVpOQkoGdLAiUjg.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(673, '165314066', 'VALENTINUS ANGGA ANKRISNAR', '$2y$10$tGPn4iBfbgDK2ccjHYowhuZDRAjSm6evZUo8v5Tel30q28MkUl9Iq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(674, '165314067', 'YOHANES MARIA VIANEY RUMA', '$2y$10$dkjAEDmQCC40d5tDzNv2POar2lt/Lk1xvkL8wb79A2UJZyDapYMnS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(675, '165314068', 'MAKSIMILIANUS WILLIAM KAUS PUTRA', '$2y$10$WyK8w70AUi.HukCGbSdAH.GHGHPXnmgBWe6iwfZQPby4uSxgGEu.i', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(676, '165314069', 'DESI RATNASARI', '$2y$10$qUmf3P7llOhSa5PV.BzH4u.mxFDFWiszuOLjrh0PpSsJKFwZuAoXK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(677, '165314070', 'WAYAN SUGIARSA', '$2y$10$8fkaisIIYC5suQk2e5WYMulAiHJS1NvGFgorjj/GAH0SbS2j5i/9K', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(678, '165314071', 'FRANSISCUS DWIAN ANUGERAH PRAMANA', '$2y$10$I1DeQsyUiy7gO3KY/pRtpOplt2zYp45J9b8zNRyXNe0LmhLzJiVk.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(679, '165314073', 'ARTHA DIAN SINAGA', '$2y$10$vtz8B5GMGphUmwvXajEz..aZvqwGpXNYhC2egFDhlj6k6TPIJcV9i', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(680, '165314074', 'BERNARDUS GANDHANG PANJI WARDHANI', '$2y$10$e51Lg/QYXkHmpeEG1O81ouhiNGZBsRcp2/NxGFD.BZPGBBqlgGR/m', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(681, '165314076', 'GALUH PINGKAN RAHMADANTI', '$2y$10$TwdJqUeWQAzScRLUHJjbWemhIaAbRxwUBzgTHQNFF0C9vMTsCbp.m', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(682, '165314077', 'YOLANDA EVELINE ARDININGTYAS', '$2y$10$LykB32.5UZjbOLcj/7GqYukwtniqQ8fw51DxekJ9UywmieecCCGo6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(683, '165314078', 'DANIEL BRAM CHANDRA SAPUTRA', '$2y$10$keYneQsaYpB55LlLXlt89.f4deM/ap1UHXKc0p.XI40PSomH4.iRS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(684, '165314079', 'TOBBY ARIYANTO MANDOI', '$2y$10$XYw3gMHfDsLLKWVhXnK/Y.DTCPqQCxVz3p7VEED8sgkJ9w7gUj7EW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(685, '165314080', 'YOHANES KAPISTRANO NANA', '$2y$10$yqKbxSrzFYw4FP8B4LzZAuIcmdh4oAEOyDv70HvQEykqfalgdjZrq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(686, '165314081', 'NORBERTUS KHRISNA PRATAMA', '$2y$10$3WyRZ9/cF3TII2skz66SCeVwk./xt/wYTrNZPF8/r87itDmry9mRa', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(687, '165314082', 'KI TAE KWON', '$2y$10$3xa4B60WR8UMaKRd/xwhLOKtIeCacdBdn/ToT/If.lNfxXyp/23Vi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(688, '165314083', 'HUSOR DAVID T PANDIANGAN', '$2y$10$34z8q8QIsNtihqPjuARi6uuhx8FFD1LBBAHA8AmCPCj7AFyK.LP1a', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(689, '165314084', 'ROMANUS HADYANTO ONGAN', '$2y$10$kr1pZQCaG53B1gjEekwSS.jnGHj2lFWVa3TDf1visYCqPf0oRzpKe', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(690, '165314085', 'CLARA SANTA ANGKAMOR', '$2y$10$52N0l0GzMUw9fYs4OpKSduVO9..ujn0zzTRBH2ATh/loUrgFdfzl2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(691, '165314086', 'CAROLINE ASTERIA CAEZAR ARYANI', '$2y$10$uGjFUHEOg6tShKD2WDK.RumWnzVhoPKeMNgGzUSAXx80MiRrBmcl6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(692, '165314087', 'ALBERT MATHIUN', '$2y$10$JWZw4yXgZ4mqaMRulGbF6u7tKz4TwxZIM4G4cItS.VWISQDdIK61i', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(693, '165314088', 'CHRISTIAN IISVHARAPRANIDANA PARAMITHA', '$2y$10$DCF8hCdATx8AXQoMQFsZ5exgCh/1B1Nge6RaoWs6WQnTOWC5LdIDq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(694, '165314089', 'DAVID THANLIAN KURNIAWAN', '$2y$10$5T.8QwgheMa8zjnOX9su3.aIMmVAPlnT/EDzWOEyqij5BKtKN1gJu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(695, '165314090', 'ANASTASIA NOVIA WINDRAWATI', '$2y$10$0y2jInxi69t6iMGICjjyU.FqGbpPhpt9HFMLm86fN72q1XYnqbGsW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(696, '165314091', 'DAVID ALMACESAR HABEKA', '$2y$10$HXHb5kG8QZYjfGgyVAghI.vKu4lv4.U1V8vfrn4N4KfcdpPhQarPa', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(697, '165314093', 'BAGAS DHITYA TAUFIQQI', '$2y$10$c.zz5QILxLaO.NvTbcmZqO9Xt3CpMMgGAOmiHXkrUQpqIuf519bJG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(698, '165314097', 'GANDHI NUGROHO', '$2y$10$Kq.MctKfnIdYbdX4WixKY.xejDup6dfYYOtxQSpFE/ecv2g/ABzYy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(699, '165314098', 'PAULINA MANGANDE', '$2y$10$7FG9oDQEW2LM2rWTZe8ZxuyJePuHfsuDcmo7gvhzwEaig6OW6EAE.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(700, '165314099', 'DIMA THOMAS REFANO', '$2y$10$zQwolFr9h80sj1zwSSi49eesn0OmbPHHK0kB5sJTliaBDVevN8Mra', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(701, '165314100', 'GEORGIUS I PUTU VANDI SETYAWAN', '$2y$10$FeazHOVF.Mou15v2SFGTq.Azf9Jlp8cIJvDbR5qjqxiPiOf8QejYW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(702, '165314101', 'ALFRIYANDI DWI PRADIPTA SINAGA', '$2y$10$Acxi2BCGoMDDHzevIqgrh.XutI4R.UxoTMQyx2IbUKV2TIUldImrG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(703, '165314102', 'RACHEL ELISA UTAMA', '$2y$10$fLktX.yyB9qWnGm8UpVnZ.vfF..dJ14xzNa/q2xuNgooCelJaRtuK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(704, '165314103', 'PUTU INTAN HASRI PUTRI', '$2y$10$1VToFYnSN/Zoq8pOBVJqguJoYAgU4CBLGxhQ4la9rmvKd/csXsuSK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(705, '165314104', 'MAGNUS ABIYU', '$2y$10$QIStT8aPaBP8n.yOoIDS.eQbkdxqg8qw7IP/uQnTgPQNXTksfgyeO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(706, '165314105', 'EKA PUTRA KURNIASANDY BENE DIKTUS', '$2y$10$cUf9kIleAyC0SnAlDh73weONfVsfmtOEpj9zhaqFHQPt5eooPyLeG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(707, '165314106', 'AFRA RIAN YUDIANTO', '$2y$10$m63gf5x42WzcOnlFyWRHQe3MCxqpYOsHQmGwV5gxakEszSidXmhmS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(708, '165314107', 'ALVA GRACEORA NUGROHO', '$2y$10$IeF2g89ATq1j7v.0mXMDyOkBP.ErZ3qmXgz9E85hm2PN8hYxIhVA.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(709, '165314108', 'ROBERTUS BINTORO', '$2y$10$R6GNPQMF1OHEnHK9I1fJx.etEov191fNcFTuBv2UdOCrTok2X10eS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(710, '165314110', 'MARETHA ELISTYANA', '$2y$10$qL6YwKbYUMgwne4MhJSoiejDyS10DdPqzZ5UpaKLnAtxsotK/.RyS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(711, '165314111', 'ANDREAS YAN PRATAMA ADI PANGESTU', '$2y$10$JA4tG4WfvxR4CeJoZf/DXOR23OG1T48DxlPVXlUDMsN5zPtZl1Qga', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(712, '165314112', 'NINDA MAWARNI', '$2y$10$.tWoP/uRpCvhEegKnueWU.6RNzFff79l8.md0fWWPrsCh4bOVfrby', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(713, '165314113', 'INDAH PERMATA SARI', '$2y$10$6AaNNpYNJ8OXpDpba1sn1ORxgfsnx/vOQfVpWzUIK2hCuCQurVDUu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(714, '165314114', 'LUDHGERUS HERVIN ETBY SAPUTRA', '$2y$10$EiSLdKaazZP4BNaPCLprBuQgSEvZvV1pAoERKhNiJrDvi.ukgyaJa', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(715, '165314115', 'DAVID PARSAORAN TAMPUBOLON', '$2y$10$bBjPoWH1HBUjDHAHxHLxTOnsptW6RX4KbJruulbVnPoiU0l.pZMDa', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(716, '165314116', 'HANANTO WIDIGDO', '$2y$10$mPG.tx.w.2AYXzeeBNakd.V.4b7nFT4TqiLoq9Imz/cxfPFCHc39e', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(717, '165314117', 'PAULUS LEONARDO SETIA PRABOWO', '$2y$10$li0hn5ZL81lwIohnfEJlgebYkooMACbChnsBi03.1rBgh.kocHn4y', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(718, '165314118', 'EGIDIA YUNI SAVITRI', '$2y$10$hHFHd45uaBI/K2GyKBamN.IprE9rJIOaXUBCzv9q1ZXA56asGbfR.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(719, '165314121', 'VALENTINA YOHANA SENDUK', '$2y$10$bQ59qEOneSP7pUkERjXswe/Gv5oTUUb6XyK4FQxU2TZxFNv1o/p1a', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(720, '165314124', 'DODI FERNANDO TAMBUNAN', '$2y$10$SVvUgS54UzwoiKT3EsMl9.hRtIPnbEETwi2GTvEiLngF273ScAiw6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(721, '175314001', 'STEVAN TIOVANDI', '$2y$10$O.HZiFDWvOLvYrE8GGJGW./Th0SHiBP.W5GQZvHxlQw5GmLa7H9pu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(722, '175314002', 'EDRICK HERNANDO', '$2y$10$wTqoBwJn8TdENNsnXMha8O0mBhZKcWjtrbIqMFiiw8QubXrJJOJi.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(723, '175314003', 'MARKUS PATRIK SEKAITELES', '$2y$10$VCIjpJqjzmcFDBPkycevm.T/z6cxPMu3rbT41TT0hd0C0jsqSjTVu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(724, '175314004', 'CHRISTOPHER MATTEW HERMAN', '$2y$10$aJ7ZkKxkHsLcpS424eJPDu3/gqOQeJekdUlVaghBTbkrA5oHHxk9G', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(725, '175314005', 'NICHOLAS WIMBARA', '$2y$10$d5JQVBM8E0Hm6JAyuYk7JuTPGz5AvFJ0ztwBzEtvE5vloeAuJtYLK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(726, '175314006', 'AYUNA ARMONICA', '$2y$10$aa0HsbharTxxNtNJHVjfueZhKB4.61QpuaLdVaXxcF9.7ZjUfX0HO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(727, '175314007', 'IGNATIUS RIKO RINALDI', '$2y$10$c0BZirwHNSBJoW.vSado..lltG5k3/KH0UFaoIsjwSR7M5nAtqDwi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(728, '175314008', 'NIKOLAUS HOSEA', '$2y$10$Vg0FEFgM/kFZlr51GvCMs.A3RN4KOcXMW9jlxVenmb0JMP1U.LcF6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(729, '175314009', 'CHRISTIAN WIBOWO TRINUGROHO', '$2y$10$MJQ9JuHLgIxV5Zn6GzWi8etVR9xi9CQdwpiqXiKIizRcweOmBpC42', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(730, '175314010', 'GERVASIUS TARUSMAN', '$2y$10$X65yLQQoz3GYekpUFxmnP.lAnhhXl9LY3pDeJzA10oddnrygVc14y', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(731, '175314011', 'DESHA VIRIYA KSANTI PURNOMO', '$2y$10$cO9mZy0GwXie6R7OHDViHOfFYODz5UVicRIKCodaTQp94fI0uWlJi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(732, '175314012', 'PHILIPUS CHEVIN JOANITO MAGAT', '$2y$10$pWXC6/srICPvzRK.3UgmYeHuqogsR.4oefKYBxe/0FW6lEPJg7Q3q', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(733, '175314013', 'ALBERTUS IVAN ADYATMA MAHESWARA', '$2y$10$R8G.qiBcYIG0rofZ4SHX7.FnAiDUcKUGH4fy1Qmc/LgEqbs9QrNf6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(734, '175314014', 'CHRISTIAN NARWASTU DELE', '$2y$10$uiK3D1NiYX.Ysutv.M32YutEqLXz76CCDwUM2tijw3fm9Ia/hJxku', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(735, '175314015', 'I GEDE DIPAYANA', '$2y$10$c8TpmJsF2DxT82nQep73VuYFesSL6yXpEKWhMGG8nu6O06R/u7G8a', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(736, '175314016', 'RENDY EKO PRAYOGO', '$2y$10$BwY29ndRAzcyBzAG5OpKRuOoLkc6ToXdbW4fl0F20uh4cSs9KHnoe', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(737, '175314017', 'PANJI LIBERTY PRATAMA HUAN', '$2y$10$H30hnQS7Q/3f59Img1RFCevmklCVyR/vrD6RfvwbDIayQSTVfbty.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(738, '175314018', 'WIRYAWAN SETYA NUGROHO', '$2y$10$wrM84LPP4z/l52xbaxanBOaMePew5vL4lz9ldY3HdHqWZ8TmWAt0e', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(739, '175314019', 'REYN KEVIN KILA', '$2y$10$00K5zE.OMV0oq9ElMVk.DeqWRrV3RYHkWkywF6l1/80QnEkqzV.Gq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(740, '175314020', 'TANDRIANTO KOKO GUNAWAN', '$2y$10$ePyPzvc6x19/K6nm25N8Q.SeyCz8IqNmF8EGAFy/m9BPwkHvmydse', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(741, '175314021', 'FLORIANUS SURYA KEVIN', '$2y$10$K/J0mQk2zVw8eQon6HiuVeJY.rnkhCIjls0yK4YPiqB6c/GGBueyy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(742, '175314022', 'FX DONI WAHYU SB', '$2y$10$d60GNBYautxMAPU0SjXmu.s/XIfpgQsqCvgb2yXHAlFLrg9vh2nsS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(743, '175314023', 'FELIX PRIHANTORO', '$2y$10$hhFrQegkJ6oi6KoW7G2n6OYxvNH3s1q9AgyYs/cli/c3CN5yFmkBy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(744, '175314024', 'DEVIDA AURELIA YACOB', '$2y$10$KdyjGHcuapxqzNluTUVHAujmNcyi2OgtZmOxWy9e0qLtdV3mNOIiS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(745, '175314025', 'TANGGUH PURWOAGIL', '$2y$10$BQ9kXm7P4kke99sQu2o.7uq2uXYB2fzW3VUJcnUxAWyC.X07Imt8.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(746, '175314026', 'IKHSANUDIN NUGRAHA', '$2y$10$LihW7Uh13hPwZq6ZkM8Dy.Q9Ccela4Vp1CMxrNOzVNoHlAExwdr26', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(747, '175314027', 'MICHAEL ALVIAN DANISH PRASOJO', '$2y$10$OFD08PVrPcdmeydJYy2RqeF12dpscOY.0WPjbeadXiXDhhR9DfCre', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(748, '175314028', 'WAHYU WIJANARKO', '$2y$10$DPQsUJBvMXzBxsFtXUjZ0u/zBEN2IlYHJNIQcnWLf.jH7BFxCEXLW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(749, '175314029', 'EZEKIEL JUAN FILIPPO CAPPI ARSYADI', '$2y$10$B68ugBhHlOGz2Kvo74ymf.RxegqixqWBsIVL5ufZK.SlFULjNUVvG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(750, '175314030', 'FLAVIANA ABRIANI HALIM', '$2y$10$9PNVaOEOU5hHicilYaGIve9GYC.e7c6lQ09wcH06B176d7FOMXkJu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(751, '175314031', 'WIRA DINATA', '$2y$10$qS.gN65Sn0vOz.x/wXrkUuxrAjDO7nQxr98RayaXP.nuw8jNDLgEW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(752, '175314032', 'GALIH PRASETYA JATI', '$2y$10$FPNT8sbJn9YlSezk9gU77uNN3ybj.aPwBYsqffwsYgMAaRvOV0xt6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(753, '175314033', 'RIVAN ANANDITYA PRADANA', '$2y$10$RZ2HMVphDeBWycG4XKzFWeSNjc/sPm0JRalhmiy0dXeHZHyfugi6O', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(754, '175314034', 'REENA SIMANIHURUK', '$2y$10$roG2QymGanFNCGQ0pRVfVek6w1dMm8zz.VPxapW4Ah/Tfpoa3GA6S', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(755, '175314035', 'WIBOWO CAHYONO', '$2y$10$9HbCf.Ss..c4lpnv0iZoLuS4430CnPF0.kM4lRoL8ON0Nl.y49E0W', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(756, '175314036', 'NOVI FITRI', '$2y$10$rRMMM8uP.aQ/HSjEPggMROBP4yWXihsdTl.cXxPR2TkVSIGTQ/b3e', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(757, '175314037', 'SAFIRA NURTANTIA WILOPOJATI', '$2y$10$eZhKu018ul3VtT6DadV4auAByrv/bJ4BHeLrebWmrtRDYwWs4hJsC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(758, '175314038', 'JOSE PEDRO FEBIAN', '$2y$10$ma5W3Gl/Aj9KiEwc6xsbnehytY4dJzGpxqNoj6SDjxibKrL.SVhPS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(759, '175314039', 'ANDRI PRASETYO WIBOWO', '$2y$10$0L8/KtP2m0rl9sN2CuEtiuz8SP4mTIXa1ilV7fqxnIBoposSqwp7S', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(760, '175314040', 'MARIA SIMPLISIA WEA LAJA', '$2y$10$0UTCKvgrvCUdu16n/4z9cO5SxDU4QyaDxtmgJaqCAfbGaL3R4GneS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(761, '175314041', 'ADVENTUS DIO', '$2y$10$q.2drg1VAO91NiK9m2Y77eJ44piqusgzCX2eIJ.U6JOVgH0ZyYwCe', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(762, '175314042', 'DANIEL FREDERIK', '$2y$10$/y8IvLDb13jFfxrEhuW3gelOO2BFhw0udNWDBknEdYfoIy2ld3OdO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(763, '175314043', 'MIKHAEL SURYA PUSPITA JAYA', '$2y$10$kN04hizYUi1ZdKIZWOuwPugfWIHMWZDuvmLniKdmB/PhAkSeum9AW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(764, '175314044', 'YUSUP HARIS PURNOMO', '$2y$10$.4OKVHz2mOGTUAJh1YxPU.4r08s34FokLXFQC1mzQUTIgQw5RnU5m', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(765, '175314045', 'JOSEPH RIANDY PRATAMA HUTAGALUNG', '$2y$10$kw6bRiDi2QN3ZQqE3C7lYeOL8CAdkWGtovDukAofQ8pVmPhJajIa6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(766, '175314046', 'M.IKHSAN ABIMANYU', '$2y$10$7PNGc1wloJGfmJ8MU8SiluSJPLRoRY17AoArJNRnSfENTGAkZg4R.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(767, '175314047', 'FRANCISCA INTAN BERTIN', '$2y$10$nDhGimqY/j0jTeTDFvTs8u.BM1iPVR1j5j9m8yf7Bai83rfTvwULK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(768, '175314048', 'RENELDIS PUTRI TANGGU', '$2y$10$FLR/hwn.s2rKz3pcIq65ROzJH2HvtNPShXxVOCgsxDjRwQP0IEfbq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(769, '175314049', 'RIVALDI ATMA DHINATA SEMBIRING', '$2y$10$eI6mXfeOF2pZytYdrBFLK.v8AX5XAAZ8Qp8HybnaPGKW/j2g2sFnm', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(770, '175314050', 'ANDREAS ALDYANTO NURA', '$2y$10$Es2L1LUSadX.90iR8GsAKuqyhSsa7Y3fchBF5PuxvYWky6ddej86C', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(771, '175314051', 'SENDHY JAYA RAHARJA', '$2y$10$5YINtlpc4.PiWoHt9qcEp.PA5Lh7nCBj9hn6PbP4wRB5qtr4vHZ0K', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(772, '175314052', 'AGUNG KRISTANTO', '$2y$10$M9hZJzsC3BQpHQOQyFkZqeEd7bpdZNMlOejehPjQzdJZsu4gUM1Ru', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(773, '175314053', 'MARSELINUS BAGAS PRIMADITIA', '$2y$10$NpHbwrJ0PzlK/ilJfDmvV.glAoozk3RDLLAPhBe6MovoISdao4WmK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(774, '175314054', 'GEORGIUS FEBRYAN PRADANA', '$2y$10$4917EOdrfCOG6QIqEsidnOnlNFnkExyxUpifBZkPllFbQZShmcE6G', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(775, '175314055', 'CLARA ANGGITA AYU SETYANINGRUM', '$2y$10$20OZvDt/ub77WrtIfmGKvOfGYu4t8RAkuzdfJv20Gv69GT8vouKCO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(776, '175314056', 'OKKY YODI DWI PURWANTO', '$2y$10$b.06DjLo0nsRF4HB4zzaGuenpPz9b7X0oZ6xz8p1zaAfh8PCy5soe', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(777, '175314057', 'VIINCENTIUS HENDRI KURNIAWAN', '$2y$10$D2yVip7mvWlEnsQzWwlWXOHACzinDEJ2Em69OG0NLoSAydmxGfIBS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(778, '175314058', 'ZEFANYA DEVENDRA PUTRI NGGANGGUS', '$2y$10$MynZtWaocggcaeUIw3ntmu6qVMHmDcyQh4.xFLJl1BAUyPgRHwRdm', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(779, '175314059', 'FRANSISCO DIAZ ATMARESTANTO', '$2y$10$4tJ4bjMF2OhEfWeX0x2z0.WWymITC.L0dQsoBQ99gqM9WbNhaSTyG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(780, '175314060', 'ATANASIUS IVANNOEL RIO AJI', '$2y$10$gmwC844SVEJbUNenYQspru0CdIqDjd8Dh7tpLkqL4th/2V4E5fHcq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(781, '175314061', 'BERLIN RAVELINO HUGO PADANG', '$2y$10$BqWTf30WMWTmjYfmRH3B2uvDbSeDJhBYVpq57tUQxDEk7rZcPczSS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(782, '175314062', 'AROOM PUTRI ISWARI', '$2y$10$26AtYAtcQ.RoLKrdgWfIEeqmcD0nAC.3dVO0u.Q0g4WwlRlP7kzj.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(783, '175314063', 'RIO PRADANA', '$2y$10$D4LB4.qa6cvoB1lHNe19q.EBT6BlW1LRJv42qIwvhYK7G8uWigX8m', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(784, '175314064', 'STANISLAUS INDRO KENAA TUKAN', '$2y$10$zAUFfawa30scAfQ2X4E1xuSbRoBZa6641h4NBZiNDxXlc9B1JDb9W', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(785, '175314065', 'SIGIT PAMUNGKAS', '$2y$10$9TSdLIOZNO2hlAYcfqlUnOakTla1DxdoVMA5X2uraqHxEiD6FwPVm', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(786, '175314066', 'BIONDI ADHITYO PRABOWO', '$2y$10$yP.iVfHjOM6hkde8hAfrp.jklKXs6EWJd1IcHgIYXs6PUXLP8ZljS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(787, '175314067', 'YOHANES KEVIN WIJAYA', '$2y$10$j1ryA00zzwf6osN/1ZOsaO4VNeAYimAV.9EdjtVbDbfYW9oNNWKEm', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(788, '175314068', 'YOSEF GANJAR WICAKSONO', '$2y$10$CusmbfIci91LT6mEBC3KEe42nPqnzwGdQ1WavYG8SzTfJprIOcRI2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(789, '175314069', 'ERLYN AVIANDRY', '$2y$10$MIcLL3sAnrAg4aK7FpwU5uKupDhcKwX5odn69q9DlP/TPKDMOEGk2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(790, '175314070', 'YOGA JUSTISIO HARLEAWAN', '$2y$10$RGSTFh2gEYlsGTEhMY62P.y6OwSrLIXHyLN20wBlVfWW8BBPGHpIi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(791, '175314071', 'EFRIYANI W. TARIGAN', '$2y$10$MDMAysvMnz3nfosQlf4q9OM3gXt7ocTbDde1hJB6vlkE6tKFxprwK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(792, '175314072', 'INGGRID JAHA', '$2y$10$lh7HyQDLZn0/ZwAriO3m3.OpcBBC4YggebN4tassa1RBbE5eP0/8e', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(793, '175314073', 'WISNU SETYAWAN', '$2y$10$l/lPGro3F0GFOKA0uPvjFOhaOovAFwWcfNMkgRHXonTXg7.bvG3/O', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(794, '175314074', 'DIONISIUS NOVEN JUANDIKA BINTANG', '$2y$10$XwFb3XQ2MLDGm5imXqNZJupJE4tV66pyUSRdCVymQOty/8KOXUhFC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(795, '175314075', 'RAFAEL PASOPATI KRISNADWIPAYANA', '$2y$10$sLLimh5LqYkHysSTPIB5YucL.PMS/lPOgdqiaHCawWfhoa67ZLuiC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(796, '175314076', 'FRISKO ADRIAN', '$2y$10$j2IUg5spdSVy.6Z9Xq.jmuQCoDr0anmKYlM8pn6yF5qvIpCjwjeau', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(797, '175314077', 'RICHARDUS ALGA ADMAJA', '$2y$10$Dzodc8OkP6wtzcQ9cjaSD.uUwYUha97kCe5TiJPXa0UioA6IMR5qO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(798, '175314078', 'GUIDO DIKA FIRGUSTON', '$2y$10$20eqST.szRCXMmz3whNn3uJeqfdnlfIvyHRiwEAUDYQho4ZUPXGAu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(799, '175314079', 'MADE ARIVANDEGA WARNAWAN', '$2y$10$1.Eg3zs4YE1soXbt/MZHP.Aj81ed1hPnkSTnrJOj67dI1M0mckhmu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(800, '175314080', 'HIERONIMUS FREDY MORGAN', '$2y$10$jWibBcpDiiSaWdEUcchh0ek0f.xtDvdknE4nBpf6l135sGP2pMTOq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(801, '175314081', 'IGNATIUS BENNY CHRISTIAN', '$2y$10$Y8/0mzaPyMgku9z9QobLaORxR9bMGp47.BghY26e/L0OiRh515D4G', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(802, '175314082', 'ALBERTUS SATRIO BAYUAJI', '$2y$10$KeahAjVw6mRDS94MHEyDvuwTFWSCIowUbnF8v6gD7bjX/h1eMytXu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(803, '175314083', 'IDA BAGUS YUDISTIRA PRAMA PUTRA', '$2y$10$peZT2efAWVlvJ.rwF/m/DOmqRVr6MuuRDTsbv8buXrxmxpy8yorTy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(804, '175314084', 'GABRIEL RYAN PRIMA ADETIKA', '$2y$10$bBUH0f.TCttIh46v8JtfE.E8/R06GBcAxqgKJt2yxxUYGr3H7MZoK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(805, '175314085', 'ALOYSIUS ADYTYA ENDRYANA PUTRA', '$2y$10$1pXI80cUJplH8cOfSV/RPee6NfL..GdSi0g24DstSmMFtTMSyk.KO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(806, '175314086', 'ROBERTUS YULIANTO', '$2y$10$h05AOYAkoj3zxwScQrhHi.0AoWEjPLd0Oup4v3Pt9WCl0GJVddLqC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(807, '175314087', 'ABRAM', '$2y$10$3bwK3WHv4xANj4xV1RKZpeaYt3u5RnMK3tVe03Xu/mL3Xji4Qo.cu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(808, '175314088', 'HARNITA DWI OKTAVANI', '$2y$10$bm6qzGsgyIzXkQFN3vFiF.pCzi8DM5Q3Q5JbLTw/EYM0Ydog7MRMu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(809, '175314089', 'ELLEINA RETRI WAHYU PUSPITASARI', '$2y$10$RkYtlLlSWLurMMdolhsoZ.o0ccrheBR1hOwQhlR8Gqzx74Yeu9rpS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(810, '175314090', 'MARTIN PARAMARTA', '$2y$10$VytqVdzWGk/iVSyf5nmwWuPtc3out8A1ugC2Z.xzoxaES.ompvtIW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(811, '175314091', 'ALDY PAMUNGKAS', '$2y$10$3hpqAx1Ygeo.XFYe.FwB0uMhFHsZFjgCbqzMP916DqdlHaKFy0FhS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(812, '175314092', 'MAHENDRA AULIA RAHMAN', '$2y$10$nXLQ/pwnUH/IIJLlx1JJeOZ67wgab1B9DCwjq.OV/Kl/H2oKGIbxS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(813, '175314093', 'DAMARIO ADITAMA NAVYLIO', '$2y$10$rT2rRvAyNFi7iV5qmimJl.F0zyO44LQ98osc4PNfj/oQBtMJRGc3W', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(814, '175314094', 'CHRISTOPHORUS ARLENDITO DANOR SAPUTRO', '$2y$10$YvtLHN0vtjF5zqL9KNe4juq.1renf4MPkE3iPvjN7Hyvu/6eCqNmu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(815, '175314095', 'FRANSISKA ANNALISA CHRISTIANA HOLLY', '$2y$10$83ukbCS2tC4DR9fcQkCZYO8kz6YXvNoBMIcuSlowPPh95pkV8K40W', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(816, '175314096', 'AGUSTINUS HANDAYA AJITAMA', '$2y$10$uGt80GXJpGaQ7DHmWB/eh.uiYhS8FD4VapDCmlrYDDWkMYhINQvqa', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(817, '175314097', 'BENEDIKTUS RONY AGUNG KUSUMA', '$2y$10$I7ZBE8qBYLUdZ.hOWplSVevi2bVVl8NZfVhr8iyIuOznr9nMQInZa', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(818, '175314099', 'YOSSA ANDIKA LAKSANA', '$2y$10$.rc91mlV7DW9mQgkRX53E.GFx6hcolV6a9GOSb4oW6bD7fB5dKEkC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(819, '175314100', 'THOMAS CHRISTIAN WICAKSONO', '$2y$10$l2er83BMsRb0xcB766xKVu1iRhzPxdk0tb.dkgwW/4fMeAIJcHbI2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(820, '175314101', 'ERWINSYAH RICO AGUSTA', '$2y$10$fzZFKYEky3Sjx/0vnKCxCuNekoZn04zgRhQfB8Yq4C7QYb4IfkVWm', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(821, '175314102', 'AMELIA PARAMITA INDAH PAKARTI', '$2y$10$.gSdBjd9O95KfBUKWVqRz.1/hnkHM3ODEf.ZggnyMBEbO5g.ad8PO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(822, '175314103', 'SYELEN KRISNANDA', '$2y$10$COtuCoMK7lfWlSnkkNmqfe/E/VtnRuVMU0wwIEMpHa4wsTogPrNdW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(823, '175314104', 'YEHEZKIEL PURNOMO AJI', '$2y$10$LRLHgT0gBOsN7NkIgson1eHs2rRi0Rw30hd5nsuRoLM6FZgRD9UwC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(824, '175314105', 'KAREL ARISTO', '$2y$10$RkYIHcG09seemKdV3znTpO88jCKgaU1ppEIjxURFdKrgM9EckBHfm', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(825, '175314106', 'SANDRA YOSEBA SIBI', '$2y$10$YnBcWWcWBQciv4F5X59tJO9Y9uvvPGHu6zLXfoZ/35C4074kr/XGy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(826, '175314107', 'OKTA VADINDA PUTRI', '$2y$10$CdeY9B55RjRUU1sDgezWxe8KhCry5uYOO9OhOjAOodVLZT12TSjYm', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(827, '175314108', 'KRESENSIANA PRISKALIA', '$2y$10$ar8Jm3CicgfaV7ojw10GNOkCcAWiAIqcTTMRgaLllWE1fdMCTEAe2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(828, '175314109', 'GAGAS SAMPURRANA DAYA HEDOH', '$2y$10$tRR60H8IFHjREFCx6bn/rOEj1X0zXow6bl0K766t1rd8titTACnQW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(829, '175314110', 'CLAUDHEA ZITA LEGINA', '$2y$10$5/vXhMWb5IkH6HrUyH.Ace/dj9Crglp6QvygthP3MGdZz9Zyk83ou', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(830, '175314111', 'GREGORIUS BRYAN OSALDI', '$2y$10$egTcctXAvLoWadvoYKumGucEz8C5tMfvuVQ5E671DM/sqj.3oyoBm', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(831, '175314112', 'FANI TRI HARSONO', '$2y$10$Gsnz7FdD31FLaUcfYGFPSOKywwi4etUqU8j7r9db/bpciEoizmvXK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(832, '175314113', 'REYNALDI RAMADHANI', '$2y$10$xrdIOpkrWqnLvsbPUpcKouYYrMoBjgzLkBwqjrvhjPGhuxfHvhbfS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(833, '175314114', 'JUANITA LISANDA', '$2y$10$J9B0PwrkmzO1C9/FFPXXyenxxChqyx0lQIF5q0g.x1j9/SjcGGQ22', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(834, '175314115', 'PERDAMAIAN HIA', '$2y$10$XJQ8IWZDFZ6SgTWIjroCbOYMtxSCnm.f.QIelIyWVm8Y.OGvsV0CC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(835, '175314116', 'ROSA TIRANDA', '$2y$10$7sJQL9Y3FJmZLXhJvCh3oOyG4u4UOI/JZxIseYufHLG1/yZAVrp1C', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(836, '175314117', 'KATRINA NI LUH ARIYANTINI', '$2y$10$qt5msJJYVqHRGefNRu10SeJJ4r0Waqd5CTcz80coD5u1Ev.7/Cl/.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(837, '175314118', 'TONI TUMPAL SIMANULLANG', '$2y$10$OviBIQ7G59qLb4Zf55IhCej7AKUVWCu6OKVHAdASChigRy7RsZNDi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(838, '175314119', 'JESSYCA NOFANTY HAHURY', '$2y$10$lIRhu/9eb3VT/qCx3RZ8K.BKO0YF4gAxmWBhFGDSRTA3B54YVT0MO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(839, '175314120', 'SATRIO DANURDORO', '$2y$10$OFn8Ci59DU42xQFtTWK4POStmX6FE3erv1Sy90mP2ATrro8H0PCd.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(840, '175314121', 'RAMA EKA PUTRANTO', '$2y$10$hKC/D6d2xJe03lURPGJiNOL5YInSaw.xmrto1T/gb07hYxdmtbm4G', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(841, '175314122', 'AMELIA PUTRI CENDRAKASIH', '$2y$10$n2MGeE0OFGtasDoYfeIr2.hWb1zNRY6FXwPtiglHpxUWpcaXiTfZK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(842, '175314123', 'KATARINA HARYANINGTYAS', '$2y$10$Vs0.gurXbvWpYitmo.jiDecJlcB.Ko8wQZlbt2XKiJuObeQKLGj82', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(843, '175314124', 'FRANSISKA APRI WULANDARI', '$2y$10$fdK46fRaIBWt.GHAXgj7/.FtZEtP7wuevmpLmXu0OKQoAcLp.o1gS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(844, '175314125', 'ARNOLDUS JANSSEN YUFIANTO', '$2y$10$sqgq6vLtQ2Hwq4MWnR2LdOp38n0vdbSbnQOlHOSSUaL6hgp2e/.JO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(845, '175314126', 'THOMAS DANI KURNIAWAN', '$2y$10$p3lTJ34qhhVZB1hr0AEsSO3OaNJZopJCyfUz9KgIZJgS2hvnkeXSa', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(846, '175314127', 'ALEXANDER ADAM BAGASKARA', '$2y$10$X3LcKSyWlwTRGfMF/Vs3ceSdPFUgXbdtTjNr.QSwLRUBJgxum0VF6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(847, '125314033', 'ARLEANDO MANGARA SIAGIAN', '$2y$10$GQpJADZ7Cp.BEk4SBQdc3.0m.PHo5OQiztQBh39kZtBTo8bhJAF7S', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(848, '125314088', 'JULIAN DWI ROSANTA', '$2y$10$gRWzz86FcPZlX5k12KCGauso556v9e58lPcIMMAf8hyJTyeSMcvPO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(849, '125314092', 'LAURENSIUS ANDIKA NOVEMBRI', '$2y$10$d9kgjJSGxnBnrq7IuqPoCe7dKd86Ptfu26Gs65J/Ey5e.y0yk4/5K', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(850, '125314129', 'FEBRY RHENALDY', '$2y$10$76Mmi7ddrgn22332BqaBzOwOQ2tml0dUNCvNp7nAEOgE/251AbdJC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(851, '125314134', 'FAJAR SETYONO', '$2y$10$TMa/E5zoBjZy8kKog.MBw.ZVig7tH6DoJfokWK95GcQ1xeaMIjO2S', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(852, '135314014', 'YOHANES AGUNG NUGROHO', '$2y$10$Ns12KVQzAEaqWYlCFTsSZue6PyMfEhsanWq9StKTck1CiusIrjpQm', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(853, '135314045', 'STANISLAUS ADRIAN CHRISNAMURTI', '$2y$10$r7SH8FAE6ICYFaYkKTUGmufdJEDNYdD2aVhXnFTlHoJJ6YppKvtQy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(854, '135314105', 'AMY THEODOSIUS NAINGGOLAN', '$2y$10$yxR.TNOJGt8qBuoMmX73qO4B3GQPtH7HR7RXaT2kCTPowFK.Rx7oW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(855, '145314015', 'ANGELA RINTAN NIRMALASINTA', '$2y$10$MmEcZM4xrNmg3reA9NnQN.52W7Ue1.auijY7SnvhiOrCtjWf0eQ7a', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(856, '145314055', 'CHRISTO TRI ADI KARA TJAHYA ALAM', '$2y$10$3BAsdzu34iIHqWKfCJUUD.zfSBFywnz.15ivXgyU6xkI818tsqbbe', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(857, '145314071', 'NIMAS AYU TIARA PERMATASARI', '$2y$10$Hd9Cgl3icUgfiSRv9wlr3.YoZfQjUXRvjwMqaywBbqrrTKbUQurUO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(858, '145314079', 'GUNTUR AJI PAMUNGKAS', '$2y$10$BImZiecudRMS/6RYuZ6uQeF2t1i1QyRhjmYPG/Z8tLu0eHpkkb.gK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(859, '145314083', 'WAHYUNING NDARU TEJOKUSUMO', '$2y$10$aC5Wl/0KNo7TMg0MRkHBP.Zjgvz2wIaoA6tRV.EmiF7N7w/Sa89Ku', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(860, '145314085', 'BAGAS TRI JUNIANTO', '$2y$10$jbEbb7g2dEF59Fci.4vZMeDNCcmnGu0rtatkk1wo7H/2FFV6RmvCu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(861, '145314089', 'ALFRIAN FERNANDO LAMAWURAN', '$2y$10$Ehycw24Fr5oJjL34UZF02OdrM5mFNjFtJkDJ0UQWMf.yiC/8KclKa', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(862, '145314091', 'YOSEP TEKI NUGROHO', '$2y$10$bvyNp.nuu2cv/sDObTNuleW8h4C6aRI6RWrE8qOpQnvnJ5hjnWzvi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(863, '145314092', 'YOHANES DICKY MAHENDRA', '$2y$10$LI9ZGGGCXCd/eCJ6GBjzBevrd7GL50RUm5XOmDLhS1DzAGWmTofVi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(864, '145314094', 'JUNANDUS SIJABAT', '$2y$10$VH.C2rtZVHfXznithK3HHut4E6SIch8NCrdEM8DWS06M/xSaqV6hS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(865, '145314110', 'MULIADI MARPAUNG', '$2y$10$TbbpTLieTBVa.FR4ld8mZuzXsGMGLO3zGnWw8rfqWS/o/URMkRNH6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(866, '155314002', 'ASIH SULISTYANI', '$2y$10$amwpwfMpoIF2lxygo37czOfjgXVBxdhebUjTmDU.67M9e1nXQFs2e', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(867, '155314003', 'PRADHIKA DWI YULDANIA', '$2y$10$TMqv/I6RIWUqDg8OHeUYvu8Z9fPSmAGVOyh6GV5w4/mw3zPok/tZC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(868, '155314004', 'YOHANA MUSTIKA RINJANI PUTRI', '$2y$10$JAM.gE1hHI8EEKIINVF.2ee.Mj4WyCt23VS8tLCTnZXTurGGj45dS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(869, '155314005', 'NOVA NIATI', '$2y$10$xPmPIeivVNE5XCovzqNEqutkc.tDFa3/FCz2xQH0y/1AeTc5wS792', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(870, '155314007', 'YESY MAYANG SARI', '$2y$10$KWfSEdQA7rZuZj06ZOOWnulN9sx3MWJQ7PfcjQ62VegvnPWsERTka', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(871, '155314008', 'ADRES KUSUMAWARDHANA', '$2y$10$bBEuNC8hu6n1RxdYTfA3B.WMaZpTylpTOVL47AIsCX/8Ddzt9WBFW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(872, '155314009', 'JAVA SINDHARA', '$2y$10$s52COLIUli.5ljCZXfcoBOvaNGEUzWaAg0.bA03rXPrbn7nHK0DOG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(873, '155314012', 'MIKHA ADMAWIJAYA', '$2y$10$QAW0Yp5wV4iNjwY19TgUgu1ihNcdBETXgTAK8zuUvBPqIx65Cjgke', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(874, '155314013', 'LAYUNG INDRA APRILIA', '$2y$10$TzR6m1UHCAHVYwqYoy3tceqV1whXz6qbqrO.iQWwoOnjUhCMXT.hS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(875, '155314014', 'EVANDER JULIANSYAH H', '$2y$10$pionD0fF1OV0tlyTFdMiYu2zKRMizQ9XZ3LsTqwKCboOvUl2MU8PO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(876, '155314015', 'GERALDEV MANOAH', '$2y$10$U/k9NLUIP/tcUmIRKO0lMOisTp6xRoenpAqQdhu57hSmLJNCCCw.6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(877, '155314017', 'ALBERTHUS PRAMUDITO PUTRA BERNANTO', '$2y$10$5mmNL8IzpqYsxgblNSVQFe/aka5YChvuhREbs8.nZGI6H7fiGyytC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(878, '155314019', 'STANISLAUS RAFAEL BHAYU NUGROHO WIJANARKO', '$2y$10$66rWjlM.hFnwvFCa.S/Umu47I9Fp3ULrqnJ6gC1dBzyXU8uyl4Xly', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(879, '155314020', 'DIONISIUS TAUFAN ENGGAR INDRAJAYA', '$2y$10$bnGOldtjyEtgZL/b.rjJm.lrCLaIEUOiTC0sYDjxkq6IPegKg8EEy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(880, '155314021', 'WENTRI FEBRIASIE', '$2y$10$DrGpnDM.mmr.1CW/8rxGYONJA84xmlbwnCjoBWHmCxGJRS1aoz12G', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(881, '155314022', 'WINDI TRI APRILIANI', '$2y$10$HS3TC3yEggp8VwGVAjgGj.Aupr1YcQCets1P/HCN1KUe1jiWRyq/2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(882, '155314023', 'OKTAVIANUS ZENGGI SURYA PUTRANJAYA', '$2y$10$fqH7lwnDFP4.Lk5DTDs09ukpuHfFzZBslRpDC3To5C60q4kCwWyQ2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(883, '155314024', 'OSMOND GIOVANNI INDYAPUTRA', '$2y$10$SL8zbl846Tb2Sko3qIcVPO7i0ic/2gf1zRNo1V2yf7oeU3qf3aelK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(884, '155314025', 'AGENDA YUDHA SAMUDRA', '$2y$10$qYvfZ2I3PO35KCms6BoCGeVwOZ9oLjhK3Dmi/M7JMVXNQZ5GBlfhC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(885, '155314026', 'CHRISTIAN CAROLUS BAGAS PRADANA', '$2y$10$C765bgw0vQNk166An.bjlOiZ4Dpx2NZ/Oh973DObaa42afOktZUmO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(886, '155314027', 'PETER GIGIH TRIMULYO HADI', '$2y$10$AUhQ8MJI8m4C8eA5ugRKwOpWf7rxq.IaVy1VtNUsgeoqatES5p6ha', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(887, '155314028', 'YUNUS IHSAN SETYAWAN', '$2y$10$gRI5AGAFi6c32iUle9bIqeu/PNl0NpKDo5Rt2zPW22Fm0Z7fHq9XO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(888, '155314030', 'MARIA DAMAYANTI', '$2y$10$DpkOALHhYW/eHcCx/18UO.svngESlqut3IjRl66ukUxzEO6hcm.KS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(889, '155314031', 'ANDREAS FEBRIANTO', '$2y$10$gXca1BVOwGBZVPGpX0zuCOMAEVPgxBNoZNK5ALWwfkKDD5sRz9SV.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(890, '155314033', 'GREGORIUS BIMA KHARISMA WICAKSANA', '$2y$10$SeMf1Iug9cDxGPDUleFn6.z/JBi9twi2B0NEEeOoh5gb8AvgxHFeK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(891, '155314034', 'ANTONIO KENNY SETIAWAN', '$2y$10$85Wt7Lvrc6/U1h3MicQXouJnZmLCGKBDLnoP6x4sf7wUbFb2/NcEO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(892, '155314035', 'MARIA REGINA CELISETYAWATI', '$2y$10$x3VpoO/MwT7C3xG5Qk9BUOJz1C0ZGabeLJgAquqYOxU63k2Vbe1si', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(893, '155314036', 'ANDITIO KURNIA WIJAYA', '$2y$10$R01eeD2bofKEpBkAJIxVs.BdS.PfZdV72PbPHZVK7EPqthpwNBh0m', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(894, '155314037', 'ROBERTUS GARIN PERMANA', '$2y$10$2zLg2oQiuNjBuWsrSyvx.upuvgoXge6w.cvQMunmRSlnk1uLbUp9G', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(895, '155314038', 'MARTINUS TRI NUR CAHYONO', '$2y$10$wdI0je6343HdicxEJakSh.B4qJhHE1ucbk0POMr4n9JSlrUcYZvJO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(896, '155314040', 'YULIUS ELFRISA DESANCOKO', '$2y$10$R9CfvINMoyyT7f/pYYUw9eHTaJ/VXMGx2zJKTzbF.88WuzvilIOsC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(897, '155314042', 'ANINDYA SABRINA PANGESTI', '$2y$10$NG29alUljHM36T5HOS3u2u57/J4YYWFkOTlg35Ax/BNqxdYfkHeFe', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(898, '155314043', 'IGNASIUS GAYOH ADI JAYA', '$2y$10$QjrrcMSp2lGpw4s5E98TEu8NaFpWoLdVCpTgZHt.ezSuRFLtscqHu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(899, '155314044', 'YOSAFAT WILLY CHRISTIAN', '$2y$10$89hTwDvjFtgLPjz6WItbk.IS60xAJ8chULS4sK0OIFVg0NRBgUOUy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(900, '155314045', 'MONICA RINDA CHRISTANTO', '$2y$10$FHn0KZ6ETtposGqS900R5OBmTHlo8dBcr/2YaKhK0Y8c2ETeR4ws.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(901, '155314046', 'FELLIA FEBRIANI', '$2y$10$BhOX5dDkcqTaUIGzpNqHUunO8izyyICwj90.h03ClC9sy.mguS52e', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(902, '155314047', 'NOVRI KARYADI SAHPUTRA', '$2y$10$Q4VfSWA3x/CZDJtYEb8GBu7Oq9WyBAApbcpd3pdNle6NCJEQZEUEC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(903, '155314048', 'YASINTHA PUTERI LARASATI', '$2y$10$fO7hslU8N3JcOfdwztiUq.5zmcbPoVSkK/0/XPn1i1Jf8Td.MeUS6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(904, '155314049', 'SALVATORE KIDUNG SIMADANU', '$2y$10$bftcNna9l3r/HPz.XlbRHepBnPMhrNyBHgyp9yXZR5AUDRO1G5J6y', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(905, '155314050', 'BILY LESMANA', '$2y$10$Wd7UoD7Rsz9IdCaK46I9Mecx26yPNulnganhRXZmfHVBglnR35d8W', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(906, '155314051', 'RIRIN DWI WIJAYANTI', '$2y$10$UmTVIiUImoYUC65Df0Zks.jQTEe64PXnXv6bbCxdcdb73vRwkSgSK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(907, '155314052', 'ANDREA SETYA DEWA', '$2y$10$oeIhVWyJKlvGqM/tXI55eOukOa409ty/YkTLgMg8NG8M8fIOrhYV6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(908, '155314053', 'STEFANUS DWI RIARTO', '$2y$10$g.FqGQejruZ7/orHozSXju.bEyBmh809JOLWIu/qTnf6AF1QPlORi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(909, '155314054', 'NATALIA AMBARWATI', '$2y$10$39tBtXUvYE6CuTjbHOOKYuzP0.gOt9t2WMORNRZC6adWQXAIIn9we', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(910, '155314055', 'YOHANES PUTRANTO SURYO KUSUMO', '$2y$10$ExGqS3lOBBnbwwUCiB0dhOfq1wlacU2.dWBj1LadF4s6C4a.udeqm', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(911, '155314058', 'THEODULUS TITHO', '$2y$10$Zt96OWo.8YZpM6WxUC89OOdx7QZpRd0q2JDfCqyNXWKiecA4.de5K', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(912, '155314060', 'PETRUS AGUNG WICAKSANA ENJANG GUMELAR', '$2y$10$8MusYUzO1jkWUKTUZjS9ve6XzfmqcNdGM7CIl4xlIMYzYjtfmUTBO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(913, '155314061', 'GALIH SUPRAYOGO', '$2y$10$R93zIPoP6YDmfuMx/ccbNOpL3O1EG9NzOAEdqIuSo5fxjwNQMPNyC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(914, '155314062', 'JERI FERDIANO', '$2y$10$BjTBRz3290NXdvwWGOzOXuvGCifMRE5IZmneKRAz89doqoTrYK4v2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(915, '155314063', 'NANDIEL DESEA ANDANA', '$2y$10$plRIBKrNKQTvtzxUNiSHT.B3BBBXXxCg6hi3q731eC1i.EckTaq3K', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(916, '155314067', 'MEGA ANINDITA', '$2y$10$4nL/JJc2bZVwgx7BgUGKau3qVBtfwf85PRbxeXQeQzk/NGyjZKkbG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(917, '155314068', 'TUBAGUS RENDY SURYA NEGARA IBNU RAHMAT KARTAWIJAYA', '$2y$10$vQdsqD.adl2gPqOhbMHK2eSTqknBXbLIvPu.9Wsrpy4Ajy48/rsKu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(918, '155314072', 'MARIO AGUSTORIUS LIODA GHETA SEDA', '$2y$10$7CR6.RuWvqq8MmUjBFyMCujgWOPEQy6STuRGn8FOtiXUonZ4WCGiK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(919, '155314073', 'BASTIAN CHANDRA KUSUMA', '$2y$10$iLNFhKOdlpWDEwCQJILi/uackWRFP4ijN1nLhjn/fXC0W.vpS1RtG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(920, '155314074', 'RENTAH ASIH GALUH DEBORA ISSADHA', '$2y$10$eB0p0mutWW9LumHXhFO6Suc2uKLvhPkRziHpVSpXrMa4RORY0vwcW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(921, '155314075', 'ANDREAS KEVIN FEBIANTO', '$2y$10$MD3C22lFGX/Lgung/417IuQL837FEvWPOeTOWOJY0DdNmzDqqbV/S', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(922, '155314076', 'DAVID PRASETYA ADI', '$2y$10$K4mofgqg76CoGGcr5dKBHOO.wHl/Zp6Fuh/D1KkubJO5fV.1O1Ip.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(923, '155314077', 'ORNANDO TRIHANDARU SETIAJI', '$2y$10$dKoG3X0r73tqMfaoEOVVgebOdtdr7DehVrtdaJztGkm3oCQZf6CdG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(924, '155314078', 'JOEVIAN CAESARIO JUHARDI', '$2y$10$ZbhCxwgqt8X8unjnCPwn2eCXkhpXXNOvlRX9cBO4PX556q7p67pSi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(925, '155314082', 'ANDREAS CHRISANTO LALO NUSA', '$2y$10$zX4zQDY.AxBx5DHPWc9tWeGmrH/sUWuaQQFc9Oq9jNmfHqTDbcdAK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(926, '155314083', 'KALORINDA', '$2y$10$NqX5x4IdhFAG64..if8Vk.lieo/Q8sr8sQyuf7M3lFpwrz5Mt5K0G', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(927, '155314084', 'THEO BUANA PONGSUMARRE', '$2y$10$lSNhD1vuAnKuh9aS/.eoueCHkGXl9xzEjHoleQXO.YDhJVW3gJOWG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(928, '155314085', 'VINCENTIUS BAYU FAJAR KURNIAWAN', '$2y$10$5Bi5m1x4Mi9iaBCLWajJIOutdGfFMmS7TcYM8PXYVaDqcvtBOhbdG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(929, '155314086', 'Y. ADVENSIUS PUTRA PAMUNGKAS', '$2y$10$rPVx2/tqfJ6u5KN2mcBfR.kLyqaMnRfwuyVgdDi5DAGH2SlIWbDqy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(930, '155314088', 'VENTYA FERNITHA', '$2y$10$0GUbM6qqI2dHSP71xox.B.w4bBND/KqjNimdT9Ejxqr5Z0uVf83Ym', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(931, '155314089', 'GHERALDO SARANGNGA\' BENDON', '$2y$10$KbHIeQDoOLY4v.r7oXvhlOHBa778aAi0TvO1Hvq0bcgpuOHL9SSCa', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(932, '155314090', 'REINARDUS AJI HARISTU', '$2y$10$lvcZkLF6BKPOVlZ.chn07.h11IjZvu/3LomyySqjOrLThllHXC0QS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0);
INSERT INTO `user` (`id`, `nim`, `nama`, `password`, `fakultas`, `prodi`, `status`, `statusBEMF`, `statusHM`, `role`) VALUES
(933, '155314091', 'ANINDIA ADYUTAWATI NUGRAHENI', '$2y$10$nvABgsnQppwCDiMFAMmFn.N3i/T/PqzC10KYlf9bWRzu9e69qrynG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(934, '155314092', 'LENDRA RIADY', '$2y$10$k.rt7YX.xVQUfEmG0Zais.33mZ7GW1DffEByMinumacyU22JKkCz.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(935, '155314094', 'JOSHUA BOANERGES TAMPI', '$2y$10$vR4DtwG8nWCMztC3I51u7eyRIT195cuFmDPsDTE1JXEi/pW.2UWbO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(936, '155314095', 'YOHANES ADI PURNOMO BATLAYERI', '$2y$10$W08JvY08LOOmvXFWG.zo1eYABeQBEZQpBaBcJSXiLITqned1uJi6W', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(937, '155314097', 'TIMOTIUS AQUINO FEBRI WIDYASETYANTO', '$2y$10$2rhzXpJqzZKF6yz/Bf8X6eH.FVxnP3Bd0yjQHg9sy4Vx72B4m1Xea', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(938, '155314099', 'SULISTYO ATMOJO', '$2y$10$ci9613nbH4e/4o8aeCeADeUaoVoWzi4aAAga50bEBgD4s71WshzY2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(939, '155314100', 'RISKY SIMAREMARE', '$2y$10$.m8aQs.Wnv1GF1eq/UQ9fOJPlmM2.FKdYlbvYi/AN5hqWARonCmSO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(940, '155314101', 'CAHYA WICAKSANA', '$2y$10$aomT28ADGjIDCwaboS6huuEk4dQQT2GXVDQopji3w7QdBeZEkx5IK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(941, '155314102', 'SEBASTIANUS RECZY.S', '$2y$10$cMLQlze58sRpKSVOVyg0.uipjnRUu0uQXKzohJugNUovCpQvPxzLe', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(942, '155314103', 'RUTH HANSELIANI', '$2y$10$UrO/pxU7S8gnna/Wp8bYlOotU3InCsMFRtQSg//9q00hY3Ab1uWkK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(943, '155314104', 'RENALDI', '$2y$10$4snfu7/YROGRp6f0AwJlVevfg6FZfjhu/lGlXrJc03TBX9dZI9/zW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(944, '155314105', 'ARVIN ADITAMA SANTOSO', '$2y$10$dJ.MKVkwDG.E52j0y38s4.2VOtOnTRb4fkmlYeLkTgdQNsdthqixq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(945, '155314106', 'LEONARDUS PITER MAHENDRA', '$2y$10$jPGIQd/GyrA.vAaBLerTpuYMphj7ayUpd.KmfhJfGLJ5I0BzWLlri', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(946, '155314107', 'CLEMENT ABRAHAM SIDOMULYO', '$2y$10$8ulebgsVw5WjI4dq8QkDM.hVsf95metSRkMnG03I0mw8nFVzFjUd6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(947, '155314108', 'PAULUS BREMA HUTAGALUNG', '$2y$10$jm9R9FD1qujhTK.D/EwSvuTSZlZC8SPlRsZqod4HhC810DHQpxyg.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(948, '155314109', 'ELFRIDA AFENTRI MANURUNG', '$2y$10$XNZ8/Ti2zIKGXr6COMK2W.3SMnFmFC/lAZ1QYSO/u7lGq4YFkdzwG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(949, '155314110', 'JULIANA ENGELINA MANULLANG', '$2y$10$tOPqFfZ6B1haxZKIhXldqekvqaKhCdp7Wy0kI0ZMwiFc6qtdLNgi6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(950, '155314112', 'IMANUEL MOSES SETYARTANTYA', '$2y$10$vDfZ3OMWfn76zz3vxn53pezBr0CN/U4rdnBcOjNTJoG/YWmqfm7m.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(951, '155314113', 'GISKA CLAUDIA SINULINGGA', '$2y$10$v8yOff.9bYsRuERt9oCgU.50Ogy9BLympsUKDlnfp2qgJB1Zuq/nq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(952, '155314114', 'BAGAS AJI WICAKSONO', '$2y$10$0HGZBTXwmERvcVa7XvFVIuS3MBX.jVTpYKg0rvTaZXU/uUmQTs4nS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(953, '155314115', 'CLARA MARIA DE ROSARIO TAEK', '$2y$10$iqVpl9EPmUoJQ7fo6Gnjv.hkUohZhQIynj1EO/qUXnHnLQp/vpkCC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(954, '155314116', 'GRACE MARSELA HILDA PATTINAMA', '$2y$10$t.SSH4PYFAZAZ9zgOdQzaeBvqwvWPvKA/.95N0UBfAkdoj3cItsee', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(955, '155314117', 'GREGORIUS MAGNUS MEGA SANJAYA', '$2y$10$ItStyvKBGDAboTMZWwrws.rLoVnSZa5Livde.RyY1tm6RVI6DT7b.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(956, '155314118', 'ABRAHAM LOEDWIJCK', '$2y$10$K5ofl3wPK3CVon24UZpYkeCntjiHNEr0is.O//wFHCpkGg6kYWsfK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(957, '155314120', 'KARAN AGUS PUTERA', '$2y$10$731TylYYw.s8Kd2L3knX/.9guXYgAZMrXFyzOUMsTLL/Bv6fb756O', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(958, '155314121', 'REDY RENNO IRIANTO', '$2y$10$lFUnzYk4VDUPFf/.5tzlB.HWX.RfEZqs9qFUH9g33R1DhJKpkXIti', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(959, '155314122', 'GRASFIKA APRIANI SIHITE', '$2y$10$48t7JP5itOon2V5lTgQR0ugAmZ84qwbSK9VEeR/9SCHkfI/0Wl/SW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(960, '155314123', 'BALTASAR YANUARIUS S. SUDJONO', '$2y$10$QI6ikmgXgaIKmiJHGKeo6OQtPw6EQvCNPjKqi7RLl7Pu7IM/J.6Ve', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(961, '155314124', 'MARIA CHRISTIN SIMANJUNTAK', '$2y$10$yzqgw9kQP8FEbv2YlyoaMeYk.sfv1lF9wCS0jVB457BcloXKcZW46', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(962, '155314125', 'JAN WILLIAM SIANTURI', '$2y$10$iFLq8a7TbvHhRqxOFZc7keqsDHgAomLUg/IIFF4KsB6hpg9ZfCq5a', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(963, '155314126', 'YERNI MEI SULASTRI BAPTISTA SITORUS', '$2y$10$buOaSA8ko3lltrd4UbC3aeRschyOOtdI7gz0Qu1b3jUX.bMgjYs5.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(964, '185314001', 'ARYO NOVIANTO NUGROHO', '$2y$10$UvRJq2kB6BYTAwPaTC/bR.LRaochp3/Li0sZfIppvDjCcdKYxa3y.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(965, '185314002', 'MILSYEL HARYANTO', '$2y$10$Tcl4vZZ262vliTLCIsC.jOjf4LcXP/B8BwdTRoQm/CBrJ5/0PZZpe', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(966, '185314003', 'YUSUF FERLIAN ADITYA', '$2y$10$HZgPMvsMupDywik9kIZNUOmoAZqWvt5lpEydqlWvRrBlnSK1mcRpK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(967, '185314004', 'CALISTA OMEGA MARELLA', '$2y$10$KO00PRCTwaveiOVY02uIyeXwhwmVHbBFF1MdczW2Oz2ia75m8BO2a', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(968, '185314005', 'DENNIS BONARDO SIMATUPANG', '$2y$10$pn8kTtP9ostTdpEp3YDuOOBCnxrIM0bpk.643t5ZVnJbBhQNo4dgG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(969, '185314006', 'CAECILIA MITA TENOWANI', '$2y$10$se774YIuHAhoU.TnlYMy9OYEukX0f2mxYeNNgB6gKuKtRd3AQzX6.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(970, '185314007', 'GRACIA STEFANI PUTRI', '$2y$10$Bzdl0zQw/mO33oa0rgis0e040Tl1JoO69JANelOG2I7RQlg9OJf0K', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(971, '185314008', 'ATANASIUS DEO FIRMANDA', '$2y$10$y/ZCknSMWlqMhdsbet99TeMoFuz/wdSgJHMEx0SqaNq6AOb.IW7ha', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(972, '185314009', 'NIKOLAS SATYA SUDIBYONO', '$2y$10$vdWKZVNVbjtL3sHmQSu50urI6T.VJBQ9ASeJMLVKjymRDZrbNdAL.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(973, '185314010', 'HERIBERTUS ARGANA RAJENDRA IVANTO', '$2y$10$wn4XEVJE0UX8yKTCzh41RuVAwCQNk3/gS4cbVRLVdla6/Hq3MVNU6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(974, '185314011', 'PRATAMA BEKTI KRISTANTO', '$2y$10$CKgs2gggFkCEMQ2SVf.oB.T0Xf4E5OkGbG739HFyiYw4V60G686xW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(975, '185314012', 'YB DAVID RAHARDITYA', '$2y$10$dozLwdPj5t1BVI3sy7WfjOdFEFa4VDEKQKD8NKRyXvlrV9yU3.QZi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(976, '185314013', 'B VIRGIAWAN CHANDRA KUSUMA', '$2y$10$eMnX2lRaH2h7SVbjhktPWu4OBUDSw8PSKN0X5H40rYLEcqI0EDzXu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(977, '185314014', 'MATIAS SETO PRAYOGO', '$2y$10$TOE6dzQF7AUpKDuZb201Ju5zgFW/n6zjFhi7/ZQ.IvyXnUMsiLGQK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(978, '185314015', 'DOMINIKUS DWIKA HARYO YUWONO', '$2y$10$dfxVXkd2r5Sh6SvIEIsMc./SUpLNbURZre2GGrNkVyYRW8tv/wrV.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(979, '185314016', 'IGNATIUS OBED TITO ASMODITOMO', '$2y$10$Q4362uh5e/NF72ojm.Ggpu0NqMMqHlvdlvA5o7puhH4dXn/0jZu8m', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(980, '185314017', 'CHRISTIAN HERDANIO HADINISWORO', '$2y$10$s8SR./MBl89BezpGJMdQCufofO9q52vX4RO.aXaHFppv9WtBWNT8y', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(981, '185314018', 'JUAN HENDRY ARTARICK', '$2y$10$WIZsyEbjTk4jOKMPZL9l5edUrHuKf8BLA1AvMHewMqe4/bosjgj6u', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(982, '185314019', 'MARTINUS TRIWAHYUDI SUYANA', '$2y$10$CZLR3tyb5opNJ5OYN6PLgedWMLIA832IgVd8mlU2Ie7GAkCKlFvym', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(983, '185314020', 'RAFAEL NANDA WIBISANA GOTRIE', '$2y$10$zsWYFvgyZyE.UpTG8jTHNOhyK1Wkf5DmeuwohNCErznCd2BUJCjQS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(984, '185314021', 'RYAN HERMAWAN', '$2y$10$kz4gRpt5ti9ydQYPubOOmucmVlf7m/wrgocNeSjtVNJb1aLGiwf1i', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(985, '185314022', 'YOGA PUJA ARITAMA', '$2y$10$TL1ZB6PQ2khEp36l6XbDz.jWeFmnxpX7pDdS/Uij41Vz8HFchB3L6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(986, '185314023', 'VINCENTIUS DEOGA YOBE CHRISNATA', '$2y$10$PLZq0SVZ.tWkFAROwdogxO.5TV.ZFAJWeyPidlvmD2kbKvHhtkvvC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(987, '185314024', 'I GUSTI BAGUS ARI SIDI MANTRA ARSANA', '$2y$10$43hMC8BLocP8FvG0kQpczOU0sO68OcAP.FOR5SOTFczQYOS9szIZ.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(988, '185314025', 'ANDIKA BAGUS SANTOSO', '$2y$10$.FUktWcC3.kxPAZtQAFDc.B/JAk2WLIPOGEhOryLxCAEnKFS.aDB6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(989, '185314026', 'GERDARISTA G URSULA ANOFA', '$2y$10$.xA7DH0iIR0EfVNlo1fkdOk1my3oJPKbqrTWdKsNMy..Wsw1AYQGq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(990, '185314027', 'BERLIANA RESHITASWARI', '$2y$10$VVG/WarG80MpwPwt6Yppi.eW7Dss3Z4kcFGCdxiFm0klFxqxyS4z.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(991, '185314028', 'MARCELINA ROSA MILLEONITA', '$2y$10$DQbOAM9H3XufjuUXAAQzheQWjTvPOlkn7Em8wDMhgTYTIdBTANKh.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(992, '185314029', 'MARIA FELICIA', '$2y$10$IkB0rpd.bxmavjTZmtoyI.LH2oGLH7BeGoURbzy8a1r805zdpzVqi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(993, '185314030', 'ANTONIUS DIGYO HENDARTO', '$2y$10$9iwSRviL/TC.ZDlW.Pk/5eyTzQOKXb7I9aWw344ZLhRsLngXwTnjS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(994, '185314031', 'R. BINTANG YUBELLA HEMAS MURTONO', '$2y$10$p/gynbuFXn5FxzrgDGYa1euGvSyeg.knUvr63vm54qZNjrsd6B4e6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(995, '185314032', 'SISILIA TRI AGUSTINA', '$2y$10$9Ser/wVenYy6NXI0WEIeEOb5ekaco.KNN2Apncw98B78xxsZ6P/yy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(996, '185314033', 'F. VIVIAN PRASKA WANDITA', '$2y$10$rxOyZE1/SyIsO2z.Bd9/K.CeRYU2sbQEogxpSPDQKSKceeub9Xajq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(997, '185314034', 'YOHANES WICAKSONO ADI', '$2y$10$Q0ZNUpw4rT4FlLV.6AZMeusesbo2Bl6YeaFSTrlogR8spwAosALSm', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(998, '185314035', 'MARSHELLINUS GALUNG PRATAMA', '$2y$10$YC6uhhiNmKmhBqa91zJPbO0cCDy5OD9IeX5zmwM3VFcZiz.1NXeRu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(999, '185314036', 'RICHARDO SAPUTRA YOEWONO', '$2y$10$9vS1NopXbWGRDIM2eSLvf.012hoZaiGaSddIHB2TwTGRFRgFZlaFi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1000, '185314037', 'MARIA CHRISTINNE APRIJANY TJUNG', '$2y$10$/kQugXzjcWYgpOPz82xhhuIh.qxkNBwDaJcG5tr2uX.GkWx6h5.si', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1001, '185314038', 'MAURICE ELANG BRAMASTA', '$2y$10$n8cEck4QmQ.LrCo7.Ni7ru22Mg78IBat70JyqUDXdYDjwWfT2dLUS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1002, '185314039', 'EMILIANA SALDIOSTRI', '$2y$10$3KyE8887E62gBysSs71sx.u6lA4VW84fmZxNuKOxMQEFH34NyiKy6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1003, '185314040', 'INGOEL KRISTIANI', '$2y$10$XR6DJ9GLilNgOqZE7gvrk.vqGpu59QN8zakcz4ZlLyrTe1deT8VNi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1004, '185314041', 'BAYU RESTU ADJI', '$2y$10$fjYNZYp0C5NlhpFaKsLH5OPbKSMfjGLt7pqKCkvlOHUJ6JDlLnq2e', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1005, '185314042', 'IVAN KURNIAWAN', '$2y$10$0u64ZnpCkl6sNxKdDr1mqOWHqVv.YqSxbe2ligdH58EL1s2UsiPxG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1006, '185314043', 'BERNADS BAGASKARA WAYANTO', '$2y$10$sFNabwpXckoQ4qbTcaZMlOy7LoCAFSkJiowv.nl57CLDaoy4f2Suu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1007, '185314044', 'WAYAN EGY MARTEJA', '$2y$10$otmIBJrCeuZdL8leuXqv9.263dOOgxiVQgosZl0HMDlRYhnLc651C', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1008, '185314045', 'RAJENDRA LUBDHAKA MURTI', '$2y$10$FOAs29r3LEI40rGwIw1nQOlQe0.dGm1SIaBWcZlFj3bQLIorg2HJm', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1009, '185314046', 'JODHI ADI MAHENDRA', '$2y$10$S9Wsl0yQQhqFkFraFaYiZOGA.ZZ9MX3j.oVskmC32FUKV5n7Uj.su', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1010, '185314047', 'ANDREAS EVAN SANTOSO', '$2y$10$ubMbhdfxcN3KCiC7tevvtu5hLK9zM4Up4AJN8ybaKSQGmhIc5r6fG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1011, '185314048', 'STEPHANUS FELIX SURYANTO', '$2y$10$UtbfPPgruOPoDpepY.6/eOV4F4CFhYG20kenVwRJqFkRKz0gNSA4.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1012, '185314049', 'MARINA SUPPU LANGI', '$2y$10$ZA7uM7ofGC.2KqqIzEuetuWKO0yUxzLtlaUh.jyiIilLnEeJbqLcm', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1013, '185314050', 'BIONDY TIMOTHY', '$2y$10$PfVZlgBsKnfNxdGXUAEyYeA.Ru5rfz5uyANBalWGv6VhLhfVcgoeG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1014, '185314051', 'BAGUS TRI GULARSO', '$2y$10$2/AbwPUueM4EAmSx7RHnv.InKrW5q.9v7vM2Gspw1tqetB0Jcai56', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1015, '185314052', 'FERNANDO LISTANTOKO', '$2y$10$hIpPtSMh9ebF/l6v015CG.Fh2xJD4TCv6ISBiSTuYEsCaGxx3TTkq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1016, '185314053', 'IGNASIUS TAGAST KRISNAPUTRA', '$2y$10$3MJ0njblsrQ6Dto6lBAr7edt8Rzs2jz6Bt3ss5x/y0dU2WImRlgfq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1017, '185314054', 'DRAJAT WIDYA KURNIAWAN', '$2y$10$zuQgGar6ggJh3WBQxhlRVuIAoS/Nz22iV241i6ESDsHxY1LQatmVS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1018, '185314055', 'HIERONIMUS ANGGIT TABA', '$2y$10$xhnp0CFd8GUEu9jdo32KAOmAfZKgFMlfogfDWs5bYd1z3W5dEhcTq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1019, '185314056', 'YESAYA RAHUTAMA SATRIA JATI', '$2y$10$moXBsE3Pn0dqSc0eSfIcSuzRYIwdiIQkRIN3FlXER3TTc9PlaRBU.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1020, '185314057', 'ROMANUS DARMA', '$2y$10$Q6CPy64u7v7XEz7mABo8IeJOp0oYONcpkdj4xD3KR4Gd0xCFEo6dy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1021, '185314058', 'YOHANES DANI PRATAMA RAHADIANTO', '$2y$10$HLOXUxCI3EwsbJc8iLcdx.BqEjK0Y/W0CjCeJboBJeyOtqOllfvHG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1022, '185314059', 'GRACELLA ANGELICA EKARIATI PATIUNG', '$2y$10$2bY.21HaGQwUasmjKjXsT.M/VLJPmVnswBIfbFtwycyK0KIyTSKEy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1023, '185314060', 'WAHYU GALANG ARLIANSYAH', '$2y$10$gp/D43QgM1zYPmOSIMsOkOhzFstCbZXjUDs1u6Ctevw7IWo7UrH8m', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1024, '185314061', 'DIAN PUTRA ANUGRAH S.B', '$2y$10$4P7bLPwan1bXfpAsZsF5Ve35L.IkZJ.qUVgUOByyEzPJR7ulowVxG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1025, '185314062', 'LIDWINA RATIH TRI WULANDARI', '$2y$10$sEe9FD7KgO1BiGTO3zjHr.RwKKdB/7OtiHJ77fXsLKtWWgXI1nNm.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1026, '185314063', 'EVARISTA IRIANTI', '$2y$10$nrtc0tZWwDVSyKHXylnW2OHYc.QQJmcBRI1DDpYsPbfTLYeY5qOe6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1027, '185314064', 'CINDY YUDHITA MASSUDI', '$2y$10$ARnLXbOWCdoSB4NvIdtTge6t8D1cLRaalYlx6yqLwyWP/fZmNNVT.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1028, '185314065', 'YOSEPH ARGA BAGASKARA', '$2y$10$mclJF9FA7LFabNmyju37zOQLe8qDVvohBmYIqNDlgU/Cdf8C7buNu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1029, '185314066', 'ROY GABE SITOMORANG', '$2y$10$.WjQBhZS2C/ObfI2jO4qE.FJtRUYpcuZ6UYKW2WoeqGG8b3YSssQO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1030, '185314067', 'FELISITAS GEA NANDA ELVIONA', '$2y$10$RMQjmpAd8/s7ySEvLzhqHOiwaQabxkjNbMX6LdGe8rgsbdJy53D4u', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1031, '185314068', 'DANIEL DEWANTO', '$2y$10$yCULd2BZAFhoFgOIFIgD8uHk3wa0PwVLIAnyhqmzorWobf4TktUvi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1032, '185314069', 'YOLENDES HERMADI DANDI', '$2y$10$8SnZhVVKZn0YsuJFExdlxeyCj3gP4rfmtNUrxCFxjlLn.RyM5qO.i', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1033, '185314070', 'PETRUS GALANG ANDRIANTO', '$2y$10$XOjMlTKO01xnjDi0qlyhhOfqfM99jZ2v6EstxIONnBemJcpqjKin6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1034, '185314071', 'RESKY NOVALIANDY', '$2y$10$ZUiqhby7u9m34rOa8YLCh.iNt2BPmiG04eC2boy3hn3WoZK6i.UVq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1035, '185314072', 'GEORGE JUSEN', '$2y$10$uMPkRQLlFSevgCSsCh6TMOCv1kovoH/yzZDl7Bk2IE8P22gkCPaJe', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1036, '185314073', 'KAROLINA NOVERISKA', '$2y$10$o7bF6P1bsXNOh18dhTJTuOdzchOhXkwkQxSOcReRBun/ohWVJV9UW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1037, '185314074', 'MONICA YESONIA', '$2y$10$hv1zoZpzAGZd6ozvGKrlpeyJClClKplNoXPSANzVBNQ6VxAlNJjYi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1038, '185314075', 'RAMOT YUSTIAN HALIM PASARIBU', '$2y$10$hKulxaWGlKzgOlQXlfRzGeJy99LOW7DgLSHevJrEFLFDkS1II6PMW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1039, '185314076', 'CORNELIA NAYKIM', '$2y$10$k/5h8tsJF/HKz5Aqbk8rmOj4t1z4RK8o85fRSy7Ik0uUA3shJqWSi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1040, '185314077', 'DEWI', '$2y$10$u4FAaXl.BLZTmpeBPyMRbeeAJF3s09HQ76CyUeXtzS9zgoHVhFl5i', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1041, '185314078', 'PUTU DIKI CHANDRA', '$2y$10$IfXmgYuROMTCpOJId1fSOOawQtkLWtJnwsIykZvFM8P4SZxq6wnvy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1042, '185314079', 'GERARDUS ARLY SETIAWAN', '$2y$10$qpza4bRAMdMMeVSFcoV4y.pIycgtle.Dx7qYprrbr8N840T3UvJFG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1043, '185314080', 'CINTYA CLAUDYA', '$2y$10$iqTTqOmQHfXhfHRjs3Sj6uQ.FyVjNCgaZxR63Kw.62RKH5srfogy.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1044, '185314081', 'ANASTHASYA MILLENIA PULUNGAN', '$2y$10$CWtfuCgU1N3wSk/KyzGDueD2ai4jM4/mKh3IBf2/.sU4MhNTMBUSe', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1045, '185314082', 'MICHAEL DANI KOGOYA', '$2y$10$LHKnbLP7ahe40qkjQO.M2uyASTm5ZlnVTqL4jfB4ww1bSoP3/eP1S', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1046, '185314083', 'BONIFATIUS CHOSHE MANGGALA PUTRA', '$2y$10$84.U0sttQ6rOegqa0XNrKeQtPFPNq/bMI5j8bf/Q.QU/FrK6AdPeC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1047, '185314084', 'YOHANES DEMAS ZANDRO NOVANTA', '$2y$10$jiUsvJ.3Dm4ZuNEmTG4RauAmTWvHY8RzDbkaKTVOjKfRLJ40qsjgy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1048, '185314085', 'EDUARDUS ERIK', '$2y$10$dXq8n.CZhHqHY7Z/TW3qdeKXMUgI2LAIbtSaO0zG0cbYwyQ6SczGu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1049, '185314086', 'DAMIANUS HALILINTAR', '$2y$10$dPHYuOacpDSBeUGaFbTUcOWqRxgHX01jNj7kYgnmbd3R1/.uV98cK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1050, '185314087', 'ROBERTO DANIEL PASARIBU', '$2y$10$0os21dYphDxWde1XodptWuWkMuV7tk8DBNmcACKWBKsgyz6nlvEUy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1051, '185314088', 'STEFANUS HARDIKI KARDOS', '$2y$10$iXli1dyslf/SEhq4ylh4funJYcXCecTeRFrU3V12LUM4ZNsa0XOAm', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1052, '185314089', 'DESY RAMADHANI RUMBOU', '$2y$10$J4wCoVOlnXSRxBzzxkJtnuA53Qp4EqRyzkNxmD.rpitclme0bMg2i', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1053, '185314090', 'VITUS DAMA JIVANOV', '$2y$10$wXQb3pUf4twbXWni9.ne2.5/Ew0mnoHt.qLlRrlJd7v8zVy/ZQsb.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1054, '185314091', 'SHINE CROSSIFIXIO SIANTURI', '$2y$10$7SNj2c74EY35QJS7uV91HO78NrNzFbAwlddgEdx5Ij48J0wXP0v2e', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1055, '185314092', 'NESTA LAKSANA DANISWARA', '$2y$10$1bFcya86ljgXWe5lEK.0s.ximGA1H9kx7q4QnEwqfSAiMmfkXxbwC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1056, '185314093', 'KRISTIAN ARYANTO WIBOWO', '$2y$10$PZi74k2xiontH05XVjtzkOElnxbuoQ1wbv4o5gkWLRp0rDlxu8bxe', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1057, '185314094', 'ALEXANDRA VELMAS DUMATUBUN', '$2y$10$VzeyVoMmIfIJNUv1pXoarue5AYDMgUuH/EePtvvIaC8Ty.hqrfIwK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1058, '185314095', 'ANTONIUS BAGUS HENDI SAPUTRO', '$2y$10$DY8/Upnop8jm0cSyO2HiUuv64xB.48ywEv2le3D4E13PC6QN3Aotq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1059, '185314096', 'TIANSI MIRANDA SITINJAK', '$2y$10$TM2Aat3KsKVo6EeHDXC5GOtC41Pvg/VOadCPiySislWQuvs.SbQBm', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1060, '185314097', 'YOGI ERNESTO SIREKEN', '$2y$10$wv4ynUj3BUfUoF53ry4arOD/mgct90b6sG4eAPLGdB0EV43o1/U7W', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1061, '185314098', 'FAJAR WASKITO', '$2y$10$IEB9UaDJlDVxVN0jVs47fe9UPzs.SHKVN6QGAXP36fQYHx7rw55T2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1062, '185314099', 'RIZKY STEVANUS HAMONANGAN BUTAR BUTAR', '$2y$10$/HbonOtFS4RzSWZarOJ9B.omnKxG4hdYyVmVOdJsWJLGq1OKcCEE6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1063, '185314100', 'SANGAJI IHSAN NURKHOLIS', '$2y$10$y/MYdmGjz.PnEcMcK.Ct2.b0V9DoJ1TZOx5J49S6bMXTbgh9eKNN2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1064, '185314101', 'YUDHA ADHI PANGESTU', '$2y$10$Vzo5cmLBQf7UbRZbgiiSpuOe4bmelxofMV067.0X9UBY/zmEXQ0/S', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1065, '185314102', 'NUR WIKAHA MEIDY BROMOZA HS', '$2y$10$7iKvRGobWmCl47oXWj4zAu1JSVghVYXydR2Ndg4GzJo4UW/w7eCuK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1066, '185314103', 'AGUSTINUS DENISIUS YEUYANAN', '$2y$10$8zbcDnmLfvKjICDgiCswhOzWjaCfT0SkNuxVaHIFCc0uhruI4Cawu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1067, '185314104', 'YOLANTA NASTASIA NOU DOPO', '$2y$10$5r7hCWn3EOWjqw6tV5CY0elj1FzDlyRbSUbqwccfvgxD8KJI1SEXW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1068, '185314105', 'TEOFILUS ALFANO DESWANDA', '$2y$10$kP9Ff491lK5UKLLFbyrc5ePvo8OxdYJ4/76YNVqeW2QC10c4O8dKu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1069, '185314107', 'CALVIN EKAYANA', '$2y$10$w4qfuXizbCOlQyE8JmvdkuoFwdP855WhxXfzDjMVvOSmJ/ReKXJWS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1070, '185314108', 'PHILIPUS AGRI ADHIATMA', '$2y$10$IOjx6gpRepRv.5a.l5FVxuDEJ7q38MicwyvldQGL0gwGgdkHyJtym', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1071, '185314109', 'PRISCILLA ANGELLA INDRIANI.T.DERU', '$2y$10$C1/mCuLs/FrjxYbmW3ykru900VzErMCcetOTBGvj.Z8yL/QEN7rYC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1072, '185314110', 'NIDYA MUFLIHASARI', '$2y$10$2ksrL/hTVJN53LOUOqSks.YlyVfjgifvYyVsVawSiFjrb1jzF7Hxq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1073, '185314111', 'KENNY GILBERT', '$2y$10$9SG/vdLbKwqj1R1C1b/rCuCCxgTNS0fFzOWYtQODvo8c3unpI3a4e', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1074, '185314112', 'BANU NAI NGALIS', '$2y$10$eevmNifKL2LLNcJUgw2HY.h1ezXO3j3lxFN36GE7eIzG1LLFSyvsa', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1075, '185314113', 'ANDRIY GABRIELO BASTIANTO', '$2y$10$oudIBCa4Ozrj6BDrGdeQeuV7H1.EGnX3O8Q6hAJbFYPUa9kSoN18K', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1076, '185314114', 'AGUSTINA BUDI STEVANI', '$2y$10$yhv/WlhbxzjW2rNWF8Gwg.z2oR7UjAXu1ha/eNiOUBpLvAPmzbw4O', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1077, '185314115', 'GERARDUS MAJELLA HANGGER ANOM KASWOROJATI', '$2y$10$Q0/AULUG9s/WcbuSHIYAtuUORyMU2cS0RZ1Chj6ogFtmKVmWqPQyq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1078, '185314116', 'D. AGUNG DANARIYANTO', '$2y$10$LELtfdiGaZtWgerP3DVo/eLGWFXsfagfGSUp/U0Z4rsxrjCi5RQY.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1079, '185314117', 'DESI DERIUS MILLENIYO ROWANDA', '$2y$10$tom.Eb03zPNgVjZ3WVlpb.YhoRwnOQ/p/x3jOLSz5L8EmAfZ9MOGW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1080, '185314118', 'RADIT AGATHA PRAKOSO', '$2y$10$qg2ShpH/WpGIWJMTDlSzkuAyc3iEN8au7b0dIJu77FXLjwIcKzBB.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1081, '185314119', 'OKTA SETYA PUTRA AGUSTIN', '$2y$10$U8A8hI6u8FSE.8Gy7kM99.d.bTz1LSPqEl6R2cMNYQD2hG31lHlLS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1082, '185314120', 'NOVIYAN IMAM ARIFIN', '$2y$10$CYHzUncshkSGgpMoUgEIbOP7rAHFNPCyVapouKOJPE5bJIJzI1cVm', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1083, '185314121', 'FRANCISKUS HENDARDI', '$2y$10$GolfnOc3WTVTOJ2SJjnGKOBicuKND6yG27/2q4qxs6rDhD3LtEVam', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1084, '185314122', 'LAURENSIUS FERDINAN PUTRA NUGROHO', '$2y$10$ksycPXHT0Ul/V9Ap51OmfuAHKY0FrI2hN2GX3GLHgdQjpeStfMjhy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1085, '185314123', 'YULIA ARTHA ROSARI', '$2y$10$2.joGmFLLOIqQVwCEs7JA.DH7Q8lPmyB0xgjRbVU1r5dIK85bKwsi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1086, '185314124', 'GREGORIUS YURISTAMA NUGRAHA', '$2y$10$8asydFKBjla9kgWVMV9K8uOz5rxNiugOLQZNa0Tm5/NY4wK5maD6i', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1087, '185314125', 'DYLINE MELYNEA FERNANDEZ', '$2y$10$ntHDECwUBzd37lmKmdJ49et3k5YZhjVOZL6/T2Lcxa1EbAmEJCcIq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1088, '185314126', 'RAKA PRIMANDA PUTRA', '$2y$10$II.lnoA3CpY17el2MS3bbucX6J03gi/lu5bFa3DO/x215ip/kEBn6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1089, '185314127', 'DEAN CHRISTIANANDA ALFA WIBOWO SILITONGA', '$2y$10$k1gAf6IAnCpNZhAVwBYpMuxsh/0nQNz2NZepN0mwPxHLuQsEWZERu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1090, '185314128', 'LAURA FALENCIA OKTAVIA PANGARIBUAN', '$2y$10$4NaXPdkGA0SvGV4RqUnB7.zmTdoXNiHYtcTXbF.wHnUxetnXkGNqO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1091, '185314129', 'PRILY ADISAPUTRA RUBAKLANGI\'', '$2y$10$DwxHhLQYdxFoJCag8a58FuaJuNpIlk9Cs17qfysYIaMaMrHzs1gSO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1092, '185314130', 'GREGORIUS ARYO DWIATMOJO', '$2y$10$HPqtnlKINIriFw/DurvhVed8rMod5cdqiSCfcd8EYvRkH/qRkJh1a', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1093, '185314131', 'ARNOLDUS HARYANTO GARUM', '$2y$10$4uJ.bta0l6lHAqV2bySTvewi3.WeR3DvqQltXQ0ll8oyjKj38Slt6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1094, '185314132', 'STEVANI MARIA MEILISSA SAPCA SAGURUNG', '$2y$10$F9hlky7p1RwEDfx4eNGixOPkx1FZ8RCB4o8txK.0g2jfevnAxDGc2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1095, '185314133', 'NATANAEL LUMEN CHRISTY', '$2y$10$ZK1B2wNlMwo5YJOaTGPsOuzGpVR2BmY6ZEKteBJxo2K9Q3Vhyhk5q', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1096, '185314134', 'YOSAFAT YOAKIM KURNIA', '$2y$10$HxdqjDS4jn7RnYW64VY.MeITRuJKJOBfIv3DpmsMzUdQPvXjUGu.G', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1097, '185314135', 'DHARU JIWO PAMBUDI', '$2y$10$oOgXlEJ21pBGkOkvBoKK1edkpgT1E9aYHSVl0Oxhm8xOlKRAqnXU.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1098, '185314136', 'I GUSTI NGURAH ASTIKA PRADNYANA DALEM', '$2y$10$tHoFo3m35esBWTvWAyq2Ou8tJKS3mm2O3pe//09QKMxyRICNaxBn.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1099, '185314137', 'MARCHELIENE MIRYASTRI BOLO', '$2y$10$Jicbd06C4JUeerRW/5yypuqayMuiihUjFqyezzggj6SXhG23bCFZK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1100, '185314138', 'PRIMA ELISA SEGU', '$2y$10$AYMte2neH/0C22PaPeHw5OPT.V3T3aC6C.5/kXi1zvJSB555PnLFm', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1101, '185314139', 'RADEN MICHAEL MAHIRSYA UMBA HARDIPUTRA', '$2y$10$S0awD9NGRu8wWYXC3YxQNeeUVEQyK/otvS3Qr6UF/Tj2NlMP6mNXO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1102, '185314140', 'FEBIOLA FIRSTNANDA DAW', '$2y$10$oXViYPAeAZ.DF6FucwKVo.FJ0OCBXQIe5Jq4D.1nOyuTuMEXczOYK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1103, '185314141', 'ALLYSA AMEIDYA SEKARANI', '$2y$10$Fr21JkMUpaw9IW1OO51VaefiqT5oi6nGw.NE5GuW4xSB2qx40XEeO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1104, '185314142', 'DIMAS RESTU PAMUNGKAS', '$2y$10$tEAjiplW3KtHyhlv2TNmseinmjBPKK7rE8udqJCB3eEd2Mw4ri4Me', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1105, '185314143', 'HERMINA DAI WADAN', '$2y$10$XpBKIb1GC8MQdPi0QcgcF.Xm5As7JA0loOV6rdItkLWFdteUc6lzS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1106, '185314144', 'ELFAN IOBINA VISKI PURBA', '$2y$10$PH9mz86EYsUAz1puOgIfOOBU9NqLk0/r94hY4rWwz/GzCrnu1Rsfu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1107, '185314145', 'PASKALIS MELONIUS MOLO', '$2y$10$QGGNYgffuNryDv6gUPDEcuqhXvqOYvMxmpBktzzNC0QH0aPToOzYe', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1108, '185314146', 'KATHYCIA', '$2y$10$1tLjhzu5UZId602KaFoJUuULAPEQHgpWYfCueYW7CyvGkCNAyiQDi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1109, '185314147', 'CHORNELIA CHRISENTYA DEVI', '$2y$10$DNZ6ps4R80TgRczmcjfsre9u3II2j.2SDOiDiWGXGLUtEIOB0WUUe', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1110, '185314012', 'YOHANES BABTISTA DAVID RAHARDITYA', '$2y$10$yTBeKHiLhg9ty9FyJOx6EOZiE2vFo/OLovPswxCrG07DUXzISoKYu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1111, '195314121', 'FELIX ALDEN NUGROHO', '$2y$10$1wfU.QFy9k5ygRWYxMDK/uKmkmeK3B4EYvUgra4RHFxRPYjr8slEm', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1112, '195314122', 'VIRGINANDO KEVIN BON', '$2y$10$0/VazV10NmyWx4G4F5AALeE6wtUoITp7OAI3CVnGYahmaWnq.w.U6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1113, '195314123', 'HENDRA DARMAWAN SELOKOPUTRA', '$2y$10$bqVUouwZqrWcY96mOXvcmOOu9xSBhfo6LqGCYd/2z6WYLSL26Cvr2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1114, '195314124', 'OKTAVIANUS ARISKI', '$2y$10$QELiAJoUUXS.stUYy0l8GOPFF1bFEnPcs4GKgAQSp5F9Ku6eFkHaG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1115, '195314125', 'YOSEFINO MARIO FERNANDO WITIN', '$2y$10$85rklNR8HwWCpIEjGEf2.e.56J3D6ppL6cUgrSOyTgQ53izPyRqma', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1116, '195314126', 'DESCHA REGINA CAELI', '$2y$10$PcL2gs2jSf/HRSoGqQ0nIOJOcW3fhNVGIPLvn325Mt2ez1wcI4N1O', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1117, '195314127', 'CHRISTOFER', '$2y$10$g5I5J4Ce3Fwph48OJ6sb/OlmnAg8sDOYOdoyyLeGJeywy0bEzyGMS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1118, '195314128', 'NI PUTU SANTI TAMARA TITI KENCANA', '$2y$10$IRmgrr4H/OWWFxygbD2LdO0iSeCbY5/KlUJv9XSpe0y8rhfWBOqhi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1119, '195314129', 'MODESTA YOLANDA CHRISTI', '$2y$10$hbHDJAJTQ0fpD7agMNBYSui/gYfOnwkjdZyT6a..5c4jH.XBsGP0O', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1120, '195314130', 'ALFRIDO MARIO MANIKIN', '$2y$10$TWjMGySZsALOaEkPpABrU.jXzBiFV9u/MnpsIuE13riLaFlHLk6K.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1121, '195314131', 'MICHAEL DIMAS SURYA ABDI', '$2y$10$u682S04M8Gp0HXEha3DuouJ97aHxluDxd9kcQPSJ8VzqRu3XtXuMK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1122, '195314132', 'AURELIUS ARIA BARAS PANYAPA', '$2y$10$xuFv/4bsEZ3IaFT7CjUDzOW9ljIULENDG5JXejeoM6mB4e0t.4LVK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1123, '195314133', 'BARA SUKAMADEWA', '$2y$10$z/TFEelIK6aenDrzrVvoy.u4zBjI4hkrVmWLEFgBLUQ.rBmp0ojoC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1124, '195314134', 'LIDYA VEBIOLA ADA\'', '$2y$10$Z68SN4wAszkdN/I4dmSjf.q4z/4222NaRYW/AZxm3HrNVER5I2/wu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1125, '195314135', 'JERICO MULIA PATEBONG', '$2y$10$lGo56Nk1A.pbNyUMIpjnAOs8blPvqphSr8A499GxR7/wWPgI6/V5G', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1126, '195314136', 'ANGELA MERICI FEBRINADIA', '$2y$10$4auE4DSK/DXAtcP.QtoOKurqrt7tZ0Lphory/juzYccXrvzEf5JYO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1127, '195314137', 'JONATHAN KHOBARAJI WICAKSONO', '$2y$10$kh3/8EPLNiHC0/s.tAqhl.tyhnmci7WphV0qe9NpeLoDUxDbUIZMW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1128, '195314138', 'ADRIANUS PANJAITAN', '$2y$10$WsmdYH2LKFpTdj6k/wwM.eO8D2ecuc0bML2dM3IV2a7anoLaVPLG2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1129, '195314139', 'ARY MAHOT TUA RUMAPEA', '$2y$10$iVDjeGU.zhXbZLcK8TyXquRZmT/AAtXFqwkf6ce1SPHDr3SuxUhWy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1130, '195314140', 'RICARDO CLINTON SIHOTANG', '$2y$10$rSH5A9lKuQ.81/oaSxTgi.4n/3IeePWs8aouEGb8lraBgqceppl5u', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1131, '195314181', 'FEBRINA DAYANTI SIHOMBING', '$2y$10$2ldQNfyJBTbwpbWm3AUSju31.8HAXtHJUpLCp1iNX4Q20OB7qA2FC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1132, '125314129', 'FEBRY RENALDY', '$2y$10$dRNbnX3QbSd.3xhDCPXGI.8ZRHpA22xDarb0GPDhhF/3HI6r8NxSy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1133, '195314141', 'SEBASTIAN IRVANDO TULUS. S', '$2y$10$0JH3Hu5cHxLWPNfZtsP5uOpwh5IkXtIwI2N0gL7uhczx.Nlj1K2MS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1134, '195314142', 'AUDY VALENTIANO', '$2y$10$y3UR4FZqgtDOSxpDcOMhCeM8sVguWxo3jVpA5TAxJ7pD5s8D49tuu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1135, '195314143', 'QUIEDO RAFAEL BILLIK', '$2y$10$Wt52MmAilNqSbJaDsK23IuVeCkVTFjRVPRbXr4jhguCkJFp9kKib6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1136, '195314144', 'AGRY GRACEL LOLONGAN', '$2y$10$Zzbwyf3TtssvDVm6wKoreuNMPfy0Y91mf6hQcq39WW2RrgGAOJEUC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1137, '195314145', 'MUHAMMAD IMAM SYAHPUTRA', '$2y$10$o//cacpp5eUkO6imKqUmqOEmiB10scM44Kz137IhVx/ZVXHz3eAXW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1138, '195314146', 'PAGUH ESATRIO', '$2y$10$nnBGmsWOa5BnNZaX.BmweOHAeuh64L.d0iENtqeuZKhfapBibDyI6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1139, '195314147', 'ANDREAS SITINJAK', '$2y$10$3LQMlH0OVejyeAGLnEWJGefr9Z.7GYIBKqs0EJ0ILuryvzKJpHafu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1140, '195314148', 'GABRIEL KRISETYANTO WICAKSONO', '$2y$10$cpk8s8dW6MpuedgnNCUNFuIIkXoZPeeFuqBXAnt9O2xBjbNSFI9be', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1141, '195314149', 'MARIA OKTAVIANI', '$2y$10$67yepBc/Vcq6pDPZoyFco.QgV4HKs9RZdasz/CECCCujXUj2tEZGS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1142, '195314150', 'RIFENIGEL MAHENKA NARAHAWARIN', '$2y$10$CxFGaEOA6FeTw6QhR4jzeOim3ZA0Q/2EBE/s1ZdPXMvNvKj5YKYRS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1143, '195314161', 'VIRGINIA SEPTRINITA ISABEL GINTING', '$2y$10$YzQrbUCL71t/1gc6sNnBMu6uU9iRZkhdts1toONo5kz1JGvsOJU/O', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1144, '195314162', 'GITANJALI MAYRA EKARINI', '$2y$10$hn.Ag.DHtWmADfg6dXEl8uO35BLMBEXtwSAtyWat4Fdg2ywcasQpa', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1145, '195314163', 'WILKY ADITIA PRATAMA PASANG', '$2y$10$1YBUSVZy5e6HnkZVtlhEReZleHInOcKlfJsoCU0jaNUN9WijJVSce', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1146, '195314164', 'NOVITA AYU DWI NUGRAHENI', '$2y$10$WxrJi1QF4f4wt5WnKyE3iOQAP6ptpWqqpt.nee/Q51.63j6.dh3OG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1147, '195314165', 'MICHELL ANGEL PATRICIA', '$2y$10$7yxuVI3JvtK1hbMRRdc8meviKNyEKjEXkwSzwf9U7ASvtI0MiFTIG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1148, '195314166', 'KEVIN APUL MARSAGU LBN. GAOL', '$2y$10$2VjhI0ozHmqnhMv1.1xNouPLcLAlsIvUi1ziNmtzzRMDA2PcXgXXe', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1149, '195314167', 'AXEL FRANS SILALAHI', '$2y$10$2JXNJ3UrYbd8UIn2iHhBm.TT4peqdC5TV7ONYUyRP8mKCt.TGBVd6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1150, '195314168', 'MARIO YULIANTO SETIADI', '$2y$10$13chWs1oEg/5l4QQQq2XrOpDhpmeLzCD3oXnPwIsCoZ0vxOnXEuIO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1151, '195314169', 'DANIEL SAITULUS MARBUN', '$2y$10$4hA3sxFNPO3kXE5CjmjTwOC.RTLIBtxwEdU7fwT.wwYso0Vgunx/i', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1152, '195314170', 'S. RAJA NATAL P. PURBA', '$2y$10$RWJ5RiC.hCSkRqaOXqF0NO7/mAes/7mGgYjZxXXRvl9TeIg1Bget.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1153, '195314001', 'PAULUS EDWIN FERDIAN TRIPUTRA ISWARA', '$2y$10$3598My2teMg1SUeJ0E78nuSy6htFp4yOaLRWek4TCasW1iuhN7X7S', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1154, '195314002', 'LOUIS JOSEPHUM PINASTIKA', '$2y$10$SAniDL2GbWn9ntM1cH/pTuCKGxTvVgCF6NmrC9aSxJwusNVUQ7Fd2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1155, '195314003', 'ARIEF PARULIAN NADAPDAP', '$2y$10$F9I1R7NYkxnnbR/jwRAQTOXdms6rzo9.hmnY5h9emq3txMefHWazC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1156, '195314004', 'PASCALINUS FERNANDO WIDYATAMA', '$2y$10$H749AzCsfUAe3G1PXLsrJuBQnyAnCgKLHkBsZ.vKWNwFkEUZxAbae', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1157, '195314005', 'YOSEPHINE YESTIA DIANA', '$2y$10$RmnEsV6gSPProulONqgowexxuIUoylQy8WCC0uLLOCJPD5S/P4X02', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1158, '195314006', 'GUIDO MARIO ENNO EPRILIANO', '$2y$10$N26IOa0ZVS8LvgvFiIs8ZeDfM6EbdPbxEQd3OiTRpRMA9/muiHD7e', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1159, '195314007', 'I MADE PARAMARTHA SATHYA', '$2y$10$ZavBFliUCJiBlkJALvi9suDU/g3s2y4pX1gv2ysYL6GOpX48PmdJG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1160, '195314008', 'GENESIS AKAR', '$2y$10$Wxd9FLiajzR0nG6vV4lIeeFetQ4yEe3e1XirIv8xr3hJED1rtL0.a', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1161, '195314009', 'MARGARETA NAVI PRIMADANI', '$2y$10$dFaOqoAY8NtU/umBtayFquXIKdQcdj8M/DMZo/ga75FcT3GjKNco6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1162, '195314010', 'FRISTA DEA', '$2y$10$Mj2Sw9J/Z.9wmTb3/rehMer0924HoCnfR3rw4QIrQHJ8XyU34eZPa', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1163, '195314011', 'RICHIE SURYA WIJAYA', '$2y$10$r.MsGxNTOsiISePH6E0Go.ui458/zlGJzEJTCgFku5h5xo.BBM4Py', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1164, '195314013', 'EDWARD WIJAYA', '$2y$10$fjGsnFEZhCoqtN6qDsHuweNqiwL.lF5iZr7GPrbE5VZaxfN5ufkdq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1165, '195314014', 'STEFANUS REFI WARDANA', '$2y$10$mJUv2v4/keNuK4LKAC6xZODeRK6PcB/sq3lnpv6.eq1sn2AFDuX6y', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1166, '195314015', 'MARIA INA MARAN', '$2y$10$q9Dv/JXfY.rGXoR1ebkDXOfHouqgYfR3PToYxEmM4HJIDSgsFXbpa', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1167, '195314016', 'HIERONYMUS EMILIANUS KURNIAWAN KARTIKA KUNCORO JATI', '$2y$10$DtyvA9v8lYKGHkegBm5Mh.oW3Qx1FwpMUjSBuhV7SHqXFrmHP4Pjq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1168, '195314017', 'ROSALINA WINDA PRATIWI', '$2y$10$afPhvf1PXdQdVCylMy9CveBpJqtPL2NmbDzu8noclIznykRdo3Z9m', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1169, '195314018', 'TIMOTIUS MARISJOY PANDAPOTAN MARPAUNG', '$2y$10$ujU7NT48Fx/.Aoq.nxyNG.JjgbABRsHSuxEGGPtmLEbTJ/tmgOkeq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1170, '195314019', 'YULIUS ARIAN TRI RAHMAPUTRA', '$2y$10$FpM3xgzFSKqHmaxBxh9lbubbwoTZ41wx.bio53uTniB5sRryYGEyC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1171, '195314020', 'DIONISIUS GIGIH SANGKESWARA', '$2y$10$4lQKeQ7wno3Qeya5NwQBfOEmmtZMbw6WhFju0HhYsbHKmLTeUWmt.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1172, '195314021', 'VICKY DINI PRAKASIWI', '$2y$10$MlssGZYVZpK8F1HCvNEzBuOKuHV82KOQ8zaBTz0dcXTfhg9gytZHG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1173, '195314022', 'ARIYADI VINO', '$2y$10$7EsIBvEFOirqPX04O3.xd.hzcZ1fWYJ4cuOs4uhq0A9.vouQUekMe', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1174, '195314023', 'FABIAN ANDRE FAJAR HERMANTO', '$2y$10$8BbUA69dI/rk1GreavCfbeJx4fUSbXjikyK1eVJ.jhJmQZvODLk6a', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1175, '195314024', 'MARIS RIEMANA', '$2y$10$sRMeRLWFDwLxw6imHSywNuQ7tNJZoA4LMvVf8PJVaBrtkDZw2sjhS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1176, '195314025', 'KENNY ARIADI', '$2y$10$EvNNI3fDt9IUt65MJRFUiuHVg1jOcB7o15h4s3thwN0eXnb2sv5YC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1177, '195314026', 'PATRISSIO AGUNG WISANGGENI. S', '$2y$10$gPzf.cEhf7EABJyQ3DQN2eIweXt8hjT9AniGjwSxuwMhMEWvAD946', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1178, '195314027', 'DEUSDEDIT PIERE PRATAMA BETANG', '$2y$10$S/YbQXp1NoRO6GOglzFWNOVWUq54XGtHM8po5okDNbRlEUd0kfg8m', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1179, '195314028', 'DARIA WOJTYLA PERADA ATULOLON', '$2y$10$BgtQpewdM9WYgxG//O.lyOWo7tuTak3vBFfJ4UCu.PsmLRzNmiM7K', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1180, '195314029', 'JESSICA JULIANI GIHARTO', '$2y$10$CPyMwHjSELXgU9hX/h1GauufCm8mAcefoRVZWA2d5dPER3uxBjmKq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1181, '195314030', 'KORNELIUS THEOSAN WIJAYANTO', '$2y$10$J7uth5a456sRcpGm4keR0ODmfvNmmBtbu.rW3BID6ZCPkYsALBjJC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1182, '195314031', 'KATHARINA TYAS APRILIA', '$2y$10$j9FRn19Gw3gsT2GQlRO6tescDu94TsLRZca3KLxohHfBKATuZ.mse', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1183, '195314032', 'STEFANUS NOTARIO CHRISTIANS', '$2y$10$atTq.IGZhNcGLSHn/UUywuut8F/nNoHkN9MzfsHl4OEoiNnKYpaue', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1184, '195314033', 'MARCELLINUS FAJAR ADI NUGRAHA', '$2y$10$5JsvBJJF7UfmNyBLitqsG.UPTByHjxQtDV.CZmCjSZDDlBjjaLGjK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1185, '195314034', 'ANDREAS GUSNAFREDO NUGRAOKTA', '$2y$10$0EtZoVKRI0ELEe1UJH5JNuaSfFAMQDZsHXXJF25Rtt7bqsr8a2fRG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1186, '195314035', 'BELLA RODEWANI RAHAYU PURBA', '$2y$10$Zpqn6mSm33tMuJVeJeYWV.Hglnr8y2Pvi198zSEei7MUl7cfFfnoe', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1187, '195314036', 'MARGARETA SELVIA', '$2y$10$BgL82SJVgaJSIO5s2D5pQuhgwqW9gCF2eI/6VENbSLjDrAK8T9R12', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1188, '195314037', 'YOHANES KALISJATI WIJAYA KUSUMA', '$2y$10$w4KaMtscDrAW4cjuBUwfK.AjUpdhacKh46cyVer85n5IkZuE3xWvi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1189, '195314038', 'WILBERT CHRISTOPHER', '$2y$10$dshxX1Ka6ppUqATdxcxsa.oy65.smp66RPIhGSp6rGzM669w3H/tW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1190, '195314039', 'BERNARDUS ENRICO GIOVANNI PRABASWARA', '$2y$10$J1Rmhz5xANn5.lwfRHHme.oyW5fElI6MJ0hh16ECekUbdaGEVM/sS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1191, '195314040', 'MARIA YASINTHA BETAN', '$2y$10$zxHTH.5twZdmlYSTRV48vuzde45DFmle5tPNcDZvQhOXPOT3SR9.q', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1192, '195314041', 'KEVIN CASTIGLIANO AIPASSA', '$2y$10$ERjl.uOHeI1HO.wj2oKsJ.eQmx./wkAv9Soa/Xq6sy2Eg/gmhGcWe', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1193, '195314042', 'DIONISIUS ANDREAN SIHOMBING', '$2y$10$RWrE7ZFpBHYzHD57smSMHuuwFt9TWXbtRPqpmovC/bu7/YoFenlRu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1194, '195314043', 'EVAN CHRISANDYA NUGROHO', '$2y$10$3RjhmBjvT239A3lyAHX4TuF4pF04PrvooB38KC/xbBIIFNVcGuRVi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1195, '195314044', 'REVIANDY NOVAN TIKUPADANG', '$2y$10$e6IEUeAsqaEmND/8MH.KdOgxwX2b/Sgg7Zhp.8NzKnrsXV9rSp3My', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1196, '195314045', 'VISTA TANDIRERUNG', '$2y$10$6GUHbxoaLRNkCQgcQJsue.7OwgoFI32f8RVTRME7ddE0DjgJhsty6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1197, '195314046', 'RINARDI BAGE LEMAU', '$2y$10$isT25t2DLZDXvXx8ODZQyOn5Glo6Rb6s14PYUDr1LbmBVktVb7D3K', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1198, '195314047', 'SURYA VALENTHYNO MALLISA', '$2y$10$AepJfBE8uS5kmFW/r3eHJOv8A/XKYjmle/HSw45I6OhQGZWvze24C', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1199, '195314048', 'STANISLAUS SURYO ANGGORO NUSWANTORO', '$2y$10$1y.8no9w4wuTi1LwcK11lu9IrISq6V6prZBA7GEmYN9EW83kxuxaK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1200, '195314049', 'KEVIN ALBERT NATH', '$2y$10$7jVp/PfDnkOmN.pl.IQwLO27WLtncHKxP4uTgE0mXwgXDk/iEw2P.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1201, '195314050', 'SERAF NOFRIAN LAMBEY', '$2y$10$mwliLw0HQe3tZI2/nGnS7u05KDBDVpuctr9qtyKlzobhwZ8bPIP46', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1202, '195314051', 'FRANKLIN HIZKIA ROOROH', '$2y$10$sN39w/M7oD2.yewqh5eb1ebyjueRdiHUBMtZvyFcltUrtT6hvxQWC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1203, '195314052', 'NATANAEL AUSTIN AUGUST NUGROHO', '$2y$10$aI7Y7PTxhIgZnlKnjwdDVu.9g2Rt6xQkfNSw.SzjMBOEA3BTpGuF6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1204, '195314053', 'DAVID WIJAYA', '$2y$10$qi6XAAB6bOf3iHQLKZuL8eOgtR/nb438SZmuXDPF/aJmfhEmXdCAm', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1205, '195314054', 'PASCALIS PRADANI SINDHUNATA', '$2y$10$gfPHOlZTE2qdojyGdYOEyuvNsXr8XjoJ3XITj6V/hJ5086PE.gHmO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1206, '195314055', 'DOMISIUS ADVEN PEMANDI', '$2y$10$LXTZt4wzjqjf3IS4Ua.l5.57IsVeXKmwuJXpm0zHyXIO7V3csi8Am', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1207, '195314056', 'STEFANUS DAMAR PUTRA FAJAR BAGAS PRASETYA', '$2y$10$BxS9ifrMxTNQDlBDaNi89OJ5u/Pt8xLi/wYahyA5FAXPulhBXpF5S', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1208, '195314057', 'MARIA YUBELA CHELSEA', '$2y$10$JeumGQW6kMw6MNJfB2BAcOchg24F0GZWuF0uexxgp0579wvZQikjK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1209, '195314058', 'BERNADETHA MEGA DEVINA AYUNINGTYAS', '$2y$10$pHv0VH6V1Oaae8R.1MJLDeCGUr4QNTX2.3So/QtPd1ijrzyFFrxOq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1210, '195314059', 'ANGELA ASSETA PROFITASARI', '$2y$10$MfRQG1HW7mkutofiobMi9.a0OmGOtRJStMOlf2A9DIUei76twUcCy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1211, '195314060', 'MARIA GORETTI ONI SARAS WIDYAS', '$2y$10$Lj.ixmcJqGyh55s4hEuEueRJcM5WUcFydu1J90kRmqlzcMw1oPUk2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1212, '135314071', 'DANIEL CRIST ANDRE SAPUTRA NYAMPAI', '$2y$10$0tUCqRWRs243Cil/Q7KF5eIbmBZEBos.SgUyHYveHSNjfrsSvX/Tm', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1213, '195314061', 'CRISTIANSEN GENARO', '$2y$10$cKlnsZBEFaLm5EIj.lK.MOB4j7oafvGRaGcFEJ.susK/MTyRGdsm6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1214, '195314062', 'KRISNA GEOPAMA', '$2y$10$d5h6KKKvj39Rpyi9cKtzl.v7IsRjy52A5.FISiTHioTEyMLIR8XSW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1215, '195314063', 'DWI OKTA PRINASTI', '$2y$10$72669wN6kUslubC3N7awIucAdz38kzmcAO93m6FcwNJ0YQEFWGFge', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1216, '195314064', 'KEVIN SILVANUS HUTABARAT', '$2y$10$87SB9CPGEfr2AZTOMssUfOCWV8ZYmEr9xVhEl4sH65K8S3IzKfVjm', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1217, '195314065', 'PASKALIA STEFANIA GELU SOGEN', '$2y$10$DHlQAlbLPH1aL39c/wGKhOVWgl5KF8rPpRnFEKjdJlyno3wfz0eOG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1218, '195314066', 'CHRISTOPHANY REPTI SEKARSARI', '$2y$10$q6.XX.kl3dsMSBAl1ZNVc.ypTEEVa0h2zBUO1zQ3waog1VegouMqy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1219, '195314067', 'SHANDRO MARCELINO', '$2y$10$dxUCZ7cbzu9zVX3ZRkUbOeMhpCxMDcjmhxppgOwf07EA2eDh2Tk12', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1220, '195314068', 'YOHANES HADI PRADITYA', '$2y$10$bBgup1lpPjTo2q0plinF1uDrgkF1HugNMW1TeSU/yyYfSe8XC5kU6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1221, '195314069', 'GENIE YOEL SIAGIAN', '$2y$10$lbsdGeHh9wKWrBWNGdSEVuj5NvgUEy3YRk6RWj25lVJZFmgBE6z2.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1222, '195314070', 'ERNESTUS EPI SERAN', '$2y$10$k5rBCYqAW6N6X367VdPY/ORMJwwgQhHckAM5qsyhSs3HnL5Hfy.UO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1223, '195314071', 'REZA ADI SAMPURNA', '$2y$10$GocnbGLGU3CpFaBmVb9.8OguHjLSEoki5n/8MXQmj5KAA.z45Zno.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1224, '195314072', 'EUNIKE QUEEN KRISTANTI PRANANINGTYAS', '$2y$10$ruegbJYiLGeaOc.2udoe/eD57jonJPQGiA7DPRe86H2M3jlXgeR22', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1225, '195314073', 'YOSEPH LANDUNG RESI SANGADA', '$2y$10$Gj/FnLoBcCP0mst4MhSOt.FEaAsof/LsGRDYmc5dDldkdwYtAjQ8C', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1226, '195314074', 'DIAN ANGELINA TEACHER', '$2y$10$okV2Gcr5TdWVAyUTB1GNweZDfpGTgH/KpLReCdlohK2/3Cux6CT3m', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1227, '195314075', 'MARGARETA ROSMEINI NANGUR', '$2y$10$37sE055ieQAMdSERXxEwpuua/fnpncVtzDXyXeDI0NEMqHyga2Af6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1228, '195314076', 'PUTRA TIMBUL SASONGKO', '$2y$10$ytO01TOX6yBeVQZ2gaz98emtFboFTBRQRInVn0D0c6Z60tCLZTwDC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1229, '195314077', 'SESARIA WINANDA TITIS RANI', '$2y$10$U4n6o.OLAkVPzowFQlokOuBAfA5l9rbgGFp0I8/2qKBAsqFhgQHVG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1230, '195314078', 'MARCELLINUS R. K', '$2y$10$TYJJBQplyxDmg4rO5Pj44u0/t5QBzXJWedmKdXUrNuzdq2GBGYNM6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1231, '195314079', 'JUAN VETRIC CHRISTIAN ARITONANG', '$2y$10$RqFg4IWdcXYHeJoKfiaVze76kFLV5u04weuZ7ohrIMTccJTLahWRe', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1232, '195314080', 'ELKANA KRISTUADJI', '$2y$10$RKXlP19Fzv0yp8gxEJy90OTGpJLk8xb7hGfxcf0606lJxup1ymNW.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(1233, '179114096', 'ARIO DOMINIC', '$2y$10$VYjwIkna8cPyDJ6BUPH8oe/jAzKeUVmgvbBVX5QVbH0Fat5xTRuwK', 'Psikologi', 'Psikologi', 1, 1, 1, 0),
(1234, '181214048', 'Maria Agustin Putri Mathilda', '$2y$10$2quP2R6kJv8h63Uq1kJ9Tujwduk2rZ4.c0zdIKLPh9gnSwK1vbv2C', 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Bahasa Inggris', 1, 1, 1, 0),
(1235, '178114037', 'Margharet Tia Florensia', '$2y$10$KII765aPcLp3mk./85Brh.8ccrFxTsZBhy83tBl0UqrOQSRKrKZQ6', 'farmasi', 'farmasi', 1, 1, 1, 0),
(1236, '171444014', 'angela seriang', '$2y$10$onVSRPBtN.4q7TmeaetIPuxh6dsLG7a4JS5EsRHbB5UkzMPwtmurW', 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Kimia', 1, 1, 1, 0),
(1237, '171334003', 'Maria Prabawati', '$2y$10$jH.uyxVFKAofWgeAD7BWcenl5iW8BEKWprLYtmi2BqLIhOk.YFoGO', 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Ekonomi Bidang Keahlian Khusus Pendidikan Akuntasi', 1, 1, 1, 0),
(1238, '181214047', 'Ikananda Salfa Khoirunnisa', '$2y$10$YwVgOwvNcoZji7BtCYRGF.XmL9862tjdLSQvHyK4kXLJUht62rCia', 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Bahasa Inggris', 1, 1, 1, 0),
(1239, '179114014', 'prasetyo chandra', '$2y$10$YTe5zirCR/JPWn3sUBWJkuhCyoylzUHT5i9Zv0rek5oD5EVgPyu8u', 'psikologi', 'psikologi', 1, 1, 1, 0),
(1240, '181324010', 'Nathalia Anggun Pratiwi', '$2y$10$5s7YMCSGIHGyX3yp0DzAT.KQBd.IFklCnutOIS4xdYeFvYxoFs8Jm', 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Ekonomi Bidang Keahlian Khusus Pendidikan Ekonomi', 1, 1, 1, 0),
(1241, '171444001', 'Maria Imaculata Rupa', '$2y$10$ZKtveu8r1HOXfk1RhOTGO.bsE9UJ/SI/ee9CvE4mT06iXqLef6aZy', 'Keguruan dan Ilmu Pendidikan', 'Pendidikan kimia', 1, 1, 1, 0),
(1242, '193114019', 'Gabriel Christino', '$2y$10$8JWJ.fwZ7WqQKREOHdgSH.8ifWhpI36PIdH2499Wss05ByDskRgMa', 'Sains dan Teknologi', 'Matematika Murni', 1, 1, 1, 0),
(1243, '194214122', 'Anastasia Srikandi', '$2y$10$fYKJR8SSFrOgjUmvGr.ZCOPu1IHfvXn6syDgY9g5bfA6iT.bYWr4O', 'sastra', 'Sastra Inggris', 1, 1, 1, 0);
INSERT INTO `user` (`id`, `nim`, `nama`, `password`, `fakultas`, `prodi`, `status`, `statusBEMF`, `statusHM`, `role`) VALUES
(1244, '182114078', 'Giovanni Medianto', '$2y$10$Zb1m1zGcHJuJXJ3J/EZRUO6WkPBIOxNeBINxUJXlmXXu2ilidfUvq', 'ekonomi', 'akutansi', 1, 1, 1, 0),
(1245, '186114021', 'Felix Kris Alfian', '$2y$10$5ktiLEHYa/eggY1lqj32fOLeHVM3FG7nZYK5H6BIv6YXP3D5klidC', 'teologi', 'Filsafat Keilahian Program Sarjana', 1, 1, 1, 0),
(1246, '182114071', 'Nicolas Jemi Priangga', '$2y$10$hjEiC.jDUK1j6o19zwqGFeLREs1VjBCzOg7BxQMhj2ChKq7aDZIle', 'ekonomi', 'akutansi', 1, 1, 1, 0),
(1247, '182214210', 'Albertus magnus aditya nugroho putra', '$2y$10$KbU4GJfL7ktt7eec2df8vuptQWTsg83nf.rlE0Jlo3TWpry2Lm09C', 'ekonomi', 'manajemen', 1, 1, 1, 0),
(1248, '181434070', 'Intani Nindar Ayu Yogatri', '$2y$10$ajfa284pPJiDnMOkM6L.WusAV8cRudZyd3zP1XF24eBhh/y/c0Nfm', 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Biologi', 1, 1, 1, 0),
(1249, '191224085', 'Georgeius Aditia Suryaputra Hardhani', '$2y$10$4tdQqtEsUudwvlamSzstzOZ1hTVpOILJXjeVXJbWWhxMyq4W4/H1y', 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Bahasa dan Sastra Indonesia', 1, 1, 1, 0),
(1250, '188114161', 'Katharina Tekawita Kristianti', '$2y$10$KLKiUzV.3opoAjpbZ.ob9eftlcRfrV3oPXbmeNwKzXMwZh7XhBfXq', 'farmasi', 'farmasi', 1, 1, 1, 0),
(1251, '172214098', 'nina ariani', '$2y$10$5aPE0fH7VmUK64Iv2jszRehTKfwObamF2JG.QR448bS1e.Gm.HMMu', 'ekonomi', 'manajemen', 1, 1, 1, 0),
(1252, '189114014', 'Patricia Sabrina Amarta', '$2y$10$QGgePOSMcpcmlMKP0157yeaP5rbcoSHZl6.SVUWB6X4uVxaLAr5vq', 'psikologi', 'psikologi', 1, 1, 1, 0),
(1253, '188114171', 'Vinsensia Nalita Maharani', '$2y$10$2wpwNK7fH.BOqkYgToFKHe/cfNpOqfbfg.EHWiaEHLi26dD/CfQ.6', 'farmasi', 'farmasi', 1, 1, 1, 0),
(1254, '171424014', 'Clara Cindy Claudya', '$2y$10$4qJj4eDXOnT5DA9plQUV/.PEeOC/04HkqbJm9.If95EVyO9mf5Dae', 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Fisika', 1, 1, 1, 0),
(1255, '176114058', 'William Christopher Hariandja', '$2y$10$8eUOvzC3MPvUiHFvRwE5oOVD2.peaFK9ed12isjYgiHoecrhe4cgS', 'teologi', 'Filsafat Keilahian Program Sarjana', 1, 1, 1, 0),
(1256, '171114057', 'Andreas Setyawan Adi', '$2y$10$1M2MHH31xCbioYItxLZgeuH0SUZe8HhfU2Kiw8YwuQzo2IkZeyDRO', 'Keguruan dan Ilmu Pendidikan', 'Bimbingan dan Konseling', 1, 1, 1, 0),
(1257, '181114046', 'Gisela Masta Stella Renata', '$2y$10$mdyTITB71f6CwY2AEeEHWOzzFZcA/Q5GZp9af3C3mI1QD/0VPiHlG', 'Keguruan dan Ilmu Pendidikan', 'bimbingan dan Konseling', 1, 1, 1, 0),
(1258, '189114162', 'Kadek Lastri Windarini', '$2y$10$nk2.UPm22aOLwnJXnaHonuK0K3Ul1WveCj1YFumup6XUyeOoTzl/m', 'psikologi', 'psikologi', 1, 1, 1, 0),
(1259, '181124004', 'Veronika Setya Atmaja', '$2y$10$yCsU4xWdfJWrEMYc6XBAdeODpJUuMwp897NIpcB52G9gTEo0ZZADy', 'keguruan dan Ilmu Pendidikan', 'Pendidikan Keagamaan Katolik', 1, 1, 1, 0),
(1260, '184214065', 'Albertus Sri Dewa', '$2y$10$rHZ7EAQSFMoiCEaPsKILJOoIK6Up7aaKF.MzXzKJ.blHjP2TDRv..', 'sastra', 'Sastra Inggris', 1, 1, 1, 0),
(1261, '182214111', 'Cecilia Ayu', '$2y$10$LoNVPkmzWbJWZ2VjgQiql.Mu9ofghX65/yK6rXdFYD1UiQhAh/PA2', 'ekonomi', 'manajemen', 1, 1, 1, 0),
(1262, '186114061', 'Gaudensius Januarius Redemptus Umbu', '$2y$10$BjIBiDrMV.4C0DVVCJLrteGJfIJXrqzrD56Og4aJ9Z0VHULTOYM7G', 'teologi', 'Filsafat Keilahian Program Sarjana', 1, 1, 1, 0),
(1263, '184214049', 'Theresia Benedikta Laksya Tri Satya', '$2y$10$tcucckpTlskU/svWSbiQg.WeHhgKKG1ZtkhO.NxvVEj.gS6a1Puhm', 'sastra', 'sastra Inggris', 1, 1, 1, 0),
(1264, '182114025', 'Anton Setiawan', '$2y$10$l6Dz7YV3HLCIwHzdbct2euZrO0NO1TymDn/xvczIfN7aW8hornwe.', 'ekonomi', 'akutansi', 1, 1, 1, 0),
(1265, '185214127', 'Andreas Agung Nugroho', '$2y$10$J5hNpMGdZvk01OMcgRxZFun5qY/VKHHEixvs53ajwy69maJccEwVy', 'sains dan Teknologi', 'Teknik Mesin', 1, 1, 1, 0),
(1266, '195214130', 'kadek aditya wahyudi', '$2y$10$fPc/1iQkz9JHdGa/a6gYMeBgejV8k3kv/Fe1/sa/9gNhJOhy53Fr6', 'sains dan Teknologi', 'Teknik Mesin', 1, 1, 1, 0),
(1267, '179114055', 'Thomas Dwi Januar ', '$2y$10$uZWi4lp5T5PK9hV86xf/zOy5mIifDrQNMg/TCXeZ3th4tHZRarq3G', 'Psikologi', 'Psikologi', 1, 1, 1, 0),
(1268, '179114057', 'maria etha', '$2y$10$BJjpo28Q36oaHRLEvhdqZuXjj2NMo3uy/sDPrkm3AWDINyyfoUfKW', 'psikologi', 'psikologi', 1, 1, 1, 0),
(1269, '188114177', 'M. M. Gerharda Pata Haghu T.', '$2y$10$VsukdIqJfeE0KvjXD3nuvOMn/yCDCQbYHMpskwCfy3plMeMbnwW9i', 'farmasi', 'farmasi', 1, 1, 1, 0),
(1270, '178114081', 'sofia amelya iriani parera', '$2y$10$RfZypKPO1PW75pAnjMVEoO/e9ZYqTd00BZ1kmkFgoIprGpEP.tEFS', 'farmasi', 'farmasi', 1, 1, 1, 0),
(1271, '179114069', 'Finny Marcella Kusuma Dewi', '$2y$10$CR0N.KV/v.E.2yoGqYc45utGJnJir.5yWIr07/U2UW4QjYYOs8R8i', 'Psikologi', 'Psikologi', 1, 1, 1, 0),
(1272, '181434018', 'Agnes Whilis Susanti', '$2y$10$3zscER32qlzUIbOpiP/P4uklWUWSzH1nScokZLhcej3iIu6qxqGV2', 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Biologi', 1, 1, 1, 0),
(1273, '188114022', 'Benedicta Vincent Shinta Erlinawati', '$2y$10$RDNMJYZlLm9SZLkAaQsyvuZQfVDCOIHLmbWA4tiUlEEatSnELC82q', 'Farmasi', 'farmasi', 1, 1, 1, 0),
(1274, '171324017', 'Irene Aningtyas Wardhani', '$2y$10$W2oxbDABAgfTuh1v.C0TT.mM1C42yDRL5yA4pl2wrXYoneotiYjNy', 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Ekonomi Bidang Keahlian Khusus Pendidikan Ekonomi', 1, 1, 1, 0),
(1275, '181434059', 'Scholastica Susanti', '$2y$10$LaunLaCAg6AbAeSXIxpY/OmgRzUtU.27ErcjjgiSwc9P4c/qq4DCi', 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Biologi', 1, 1, 1, 0),
(1276, '181444025', 'Lusia Inviolata', '$2y$10$PmONFbCvwFnQMFBCxU3/2uC2wPYBgcMKT2B601Swd9o1RxMc..TIO', 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Kimia', 1, 1, 1, 0),
(1277, '171424041', 'Magdalena Ferlina Rere Djogo', '$2y$10$ZqoL95P5yFaQ9GgREHO8ueys24X.6Sb0SJLRGVJHneS4d9Km1SlGO', 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Fisika', 1, 1, 1, 0),
(1278, '189114055', 'Yohana Ralinia Kusuma Hariningsih', '$2y$10$gNt0AKbn/NGyh7jAH8vQo.Nwh0M5nnGqmamnJRfjcgShEM15T7ezm', 'Psikologi', 'Psikologi', 1, 1, 1, 0),
(1279, '181424010', 'Antonius Pietajati ', '$2y$10$6RjoIgSTYcpuhWtQxnkvreHhBlBDyZAExtcnuzXy0.ENdlHGUfSFW', 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Fisika', 1, 1, 1, 0),
(1280, '181424024', 'Eman Patie Gulo', '$2y$10$.UYWRwr9639faclVjSjPo.Eq5EmVaiYXLT0iqGZ9I1COSX/7RIy9.', 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Fisika', 1, 1, 1, 0),
(1281, '181444009', 'Sesari Tifa Anindita', '$2y$10$CrKuqiNjuRJ9xI7Fjg5vvuEklYQuNdBwPR2m1Wbqa/uF.zw24gnZW', 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Kimia', 1, 1, 1, 0),
(1282, '181214096', 'Klarisia Favaronalig Kilaola', '$2y$10$nWons8570ITHRm2lipvbaeYbNNltPv4EQ7ZBzKYwJhdo/dUlbkHuO', 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Bahasa Inggris', 1, 1, 1, 0),
(1283, '189114051', 'Cornelia Abigilia Edelon', '$2y$10$0UDTuSblP8NTjs40FBoWO.dcdq3h8EivYJdXPEEO62p6/cFkoMF76', 'Psikologi', 'Psikologi', 1, 1, 1, 0),
(1284, '171324034', 'Benediktus Adven Dwi Atmojo', '$2y$10$U30dhRihL31OyqJeHeYEmuVexGcfjQ1quvQemgtQcJ5kUUR1bq7Da', 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Ekonomi Bidang Keahlian Khusus Pendidikan Ekonomi', 1, 1, 1, 0),
(1285, '171334052', 'Dain Heriadi ', '$2y$10$fIqbuEsmf7cZkeAurLDu3uy52GVrrz7WGKIDL4aD7gUSVGTMGzn06', 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Ekonomi Bidang Keahlian Khusus Pendidikan Akuntasi', 1, 1, 1, 0),
(1286, '185214092', 'Willie Sanjaya', '$2y$10$JPyV1FiuofQx2fYHq1YP5OD3ZTU5whGHmIGMMimrGPTzNoKVuMdo6', 'Sains dan Teknologi', 'Teknik Mesin', 1, 1, 1, 0),
(1287, '178114077', 'Phingkan Alamanda Suhendra', '$2y$10$BFeypZoQi2uP4eF3Bdfzquqfxq15zjqwY3XPpx6.8BBz.UAee9Jpm', 'farmasi', 'farmasi', 1, 1, 1, 0),
(1288, '181414090', 'Vera Sutriani', '$2y$10$yh3ZBMsicILIG/nbPpVHueLwrlXLaDSSvqJsjH3T7/Pkqjndrm1yW', 'Keguruan dan Ilmu Pendidikan', 'pendidikan Matematika', 1, 1, 1, 0),
(1289, '185214412', 'Putut Bramanutrias', '$2y$10$EHqRNFlN2R0ln4KAKm9bL.yVns.9mu37c9R7Bdtyms350BgPeMNVC', 'Sains dan Teknologi', 'Teknik Mesin', 1, 1, 1, 0),
(1290, '185214155', 'Dewi Santika', '$2y$10$jYZgBPKGTycDVR6zpQImMOmj98BYwqflOk12UfzM0TeF17mvseUxy', 'Sains dan Teknologi', 'Teknik Mesin', 1, 1, 1, 0),
(1291, '181334004', ' FX Raditya Binawa Ranang S.', '$2y$10$hFJdxZAlSCEtjimb4onRGubNNuaWadZHHrNcXNmuAkZOz50Mk4MaO', 'Keguruan dan Ilmu Pendidikan', 'pendidikan Ekonomi Bidang Keahlian Khusus akuntasi', 1, 1, 1, 0),
(1292, '188114095', 'Antonia Brigita Putri Lefanska', '$2y$10$WUHia2nxqoQOEDUIR7FbgOis3qnms1sXrTTKC3zwk09czr4lWgfBK', 'Farmasi', 'Farmasi', 1, 1, 1, 0),
(1293, '181214041', 'Maria Grasia Widyaningrum', '$2y$10$C5V7zYnMxnodVx03bJrmSOmG8JRvkusWJxl2Dz2WBUj5VB7Vt249y', 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Bahasa Inggris', 1, 1, 1, 0),
(1294, '171424047', 'Annavia Sukma Junita', '$2y$10$MH0QxTiMerYxpq9PMgSEneWJimsO/FwNPslIGTZHqNY7B4L73ewkK', 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Fisika', 1, 1, 1, 0),
(1295, '171424048', 'Dina Lorenza Sri Hayati', '$2y$10$/YL9tQT6Duharsf/VMODHOdTm2Xjz/BjKFeC7UzXtOU7.URmAspEO', 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Fisika', 1, 1, 1, 0),
(1296, '171424013', 'Veronica Aprilia Sri Wahyuni', '$2y$10$9s0ZBEUqHbFfBJRhyuAzhuyEZ2AprG2PJbs1PPJEOnB6l8g/sI3eS', 'Keguruan dan Ilmu Pendidikan', 'pendidikan fisika', 1, 1, 1, 0),
(1297, '171434029', 'Kresensius Ericson', '$2y$10$NZ4VjjMJ96Lp6fcEStbNCOGDxGPIvoB6cHxuuI4nHVbNNbyTHOLwW', 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Biologi', 1, 1, 1, 0),
(1298, '176114014', 'Chrispinus Erwin Kellen', '$2y$10$Fsp9lXN5URy9wXrjowpq.eYwOwwPtSGpoxpAEnC6iWVnFg20kxAF2', 'teologi', 'Filsafat Keilahian Program Sarjana', 1, 1, 1, 0),
(1299, '182214100', 'Anindito Enggar Tyasto', '$2y$10$bajs1V1sdIGu7DEiODpRv.ImFun9GPzPB4plIUFkUvGP8pHxIBf8u', 'ekonomi', 'manajemen', 1, 1, 1, 0),
(1300, '189114139', 'Jeanetta Gabriella Bangun', '$2y$10$x7wNURGnTP4LZOFVhRoaDO87HsahlUlTb/FyVJxrRU1nKLVqLiK6a', 'Psikologi', 'Psikologi', 1, 1, 1, 0),
(1301, '182114011', ' Lukas Riyannako', '$2y$10$Cgy.xmkdlFpJP/28.Rk8Y.KFIBsxtenu1vzyqXi5YPcjaXJSkTTMK', 'ekonomi', 'akutansi', 1, 1, 1, 0),
(1302, '171214086', 'Saka Adjie Cakrawala Timur', '$2y$10$CGTDCMhSTN5MryeVIo9OFOE8QEtUI/ndetaMoWczFcljuUJPER6mK', 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Biologi', 1, 1, 1, 0),
(1303, '171214050', 'Salsabila Anindya Safira Adhyaksa', '$2y$10$yRD5qfjBc/UQd1jdsyntfuCTypkToZnNO3yH.M8LlC..IQ1M5BRm.', 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Biologi', 1, 1, 1, 0),
(1304, '181434057', 'Komang Wisnu Andika', '$2y$10$htvgn1Xcvs48znfGGHgCY.fjBjuY1gQ3u/mbGrT7E5lD8KkQmRql.', 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Biologi', 1, 1, 1, 0),
(1305, '184214050', 'Ervina Aimee Liann', '$2y$10$.Z/9KaW48nfOz5/tp9jYF.VhZFTni9c3/2Toho510zdn9fbmqOMOq', 'sastra', 'Sastra Inggris', 1, 1, 1, 0),
(1306, '182114156', 'Louis IX King', '$2y$10$gEZCYQtigAJNYGpHRHyDIuKzlh5EvZBHOhoiFhOPGnJmp97YqcLnC', 'ekonomi', 'akutansi', 1, 1, 1, 0),
(1307, '179114137', 'Martha Eliza Sellyn', '$2y$10$kz5cV9Q9be2L2eoCNy1yjOJlMpeQiRIBhGHTdbwvx3F1LK0QnQp5O', 'Psikologi', 'Psikologi', 1, 1, 1, 0),
(1308, '182114036', 'Anggita Dwi Ardani', '$2y$10$VqlkS3CmnPkXKxnAzDQdP.XBT5BpyW8cPNyV4EY.36j8VKjQyJY0y', 'ekonomi', 'akutansi', 1, 1, 1, 0),
(1309, '184214012', 'Adriyan Frediyanto', '$2y$10$ovtbySmRXXWz0jWodlQx9OHXkK1WtNCyN1JGyI7abR4aniJpvETzy', 'sastra', 'Sastra Inggris', 1, 1, 1, 0),
(1310, '182114153', 'Kasiano Vitalio Paulino Wissang', '$2y$10$rJ23rv4QP2GP1e/40ELh8OesO90y1GBJcL3dSkXDzg/PQBlKq6eha', 'ekonomi', 'akutansi', 1, 1, 1, 0),
(1311, '181124087', 'Ronaldo C.P Turnip ', '$2y$10$MUDRC9EMIS4E1vRSVCAaxeK58uVq7n3f1eXdi9Hfwf7FMKE/zFAN6', 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Keagamaan Katolik', 1, 1, 1, 0),
(1312, '171224035', 'Regina Gabriela Sulung', '$2y$10$w3A1yiYiT9z61rn6V/n/uOIKKcxwuq3joH7LpAsQboG/pYO5b4eXa', 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Bahasa dan Sastra Indonesia', 1, 1, 1, 0),
(1313, '189114154', 'Samuel Brahmantia Nusantara', '$2y$10$F05KH5rmE2ti5odEdrqHM.4cExaevZ.na029om8pPchsTLrp4NNDy', 'Psikologi', 'Psikologi', 1, 1, 1, 0),
(1314, '185214148', 'Fernando Haudiyen', '$2y$10$1dyXztXqeQL4FgIL3d017uR/sI2OJHG2f5bkRSS8hTOxhU/ZKIgUG', 'Sains dan Teknologi', 'Teknik Mesin', 1, 1, 1, 0),
(1315, '189114019', 'Angela Ratna S', '$2y$10$y1Ao5sjr.E7uZ3l19wmY9.4oV5qhZvRfKjHfoUHVwrOXpn7B2O/0O', 'Psikologi', 'Psikologi', 1, 1, 1, 0),
(1316, '171214075', 'Anastasya Putri Krisdayanti', '$2y$10$2iYTW4eWbT6SOZyGAZlNmeLB0TbsFy1uxhyuJoBCUP8vg6LnJvUny', 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Biologi', 1, 1, 1, 0),
(1317, '181334041', 'Dominicus Restu Ganang Arvianta', '$2y$10$zsUWQh6ad0IDUnvQwJTFL.R2XDl/aRL8ffKKhxgc2A1Hvw5jiOxfu', 'Keguruan dan Ilmu Pendidikan', 'pendidikan Ekonomi Bidang Keahlian Khusus akuntasi', 1, 1, 1, 0),
(1318, '189114125', 'Ancer Matasak', '$2y$10$BL071EeEatOQX.VB5Rg4aeclLaESBoIkWZ9csiqV6.xSnJ4b3PKa6', 'Psikologi', 'Psikologi', 1, 1, 1, 0),
(1319, '181444015', 'Royce Nafelino Swanoto', '$2y$10$eCCxeDzro2iGhi1ZYhn/6e91ctSi5SsEAaM39Td4aqVsjkCzPr39i', 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Kimia', 1, 1, 1, 0),
(1320, '181444001', 'Marcellysa Teofania', '$2y$10$8DsB4q3CnUInsOSZxTEpzOGI0Qe8NwMpX48euSHFtrLwUDTBmnASe', 'Keguruan dan Ilmu Pendidikan', 'pendidikan kimia', 1, 1, 1, 0),
(1321, '175214047', 'Eric Mahia Dama Sembiring', '$2y$10$5szDhBgO7zBFvJvQXq.hQOXqa2Cnj2GmF/qFnTllfopk9s.rvTPdy', 'Sains dan Teknologi', 'Teknik Mesin', 1, 1, 1, 0),
(1322, '179114012', 'Anggi Kurniawati', '$2y$10$rjq7bhvCBslTeyux2acya.1jwDKjUSZ.m1EdqWQfVUK/5iHmyjBBq', 'Psikologi', 'Psikologi', 1, 1, 1, 0),
(1323, '181334031', 'Yohanes Nugroho Octovertanto', '$2y$10$Tjv3KuWqWWVvVTNIvQ36i.h1Kv8avKB7FfpXUKfOFUaEqsq/SwtCa', 'Keguruan dan Ilmu Pendidikan', 'pendidikan Ekonomi Bidang Keahlian Khusus akuntasi', 1, 1, 1, 0),
(1324, '179114066', 'Brigitta Globin Angela', '$2y$10$0kFyy8RRhG6oTiBAHikFL.o6NN.GVJg5x5rSHp1bwAQzcS1Ezn/ZS', 'Psikologi', 'Psikologi', 1, 1, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calon`
--
ALTER TABLE `calon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dt_kandidat`
--
ALTER TABLE `dt_kandidat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`id_fakultas`);

--
-- Indexes for table `gubernur`
--
ALTER TABLE `gubernur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `himpunan`
--
ALTER TABLE `himpunan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `presiden`
--
ALTER TABLE `presiden`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id_prodi`),
  ADD KEY `id_fakultas_fk` (`id_fakultas_fk`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `calon`
--
ALTER TABLE `calon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dt_kandidat`
--
ALTER TABLE `dt_kandidat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `fakultas`
--
ALTER TABLE `fakultas`
  MODIFY `id_fakultas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `gubernur`
--
ALTER TABLE `gubernur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `himpunan`
--
ALTER TABLE `himpunan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `presiden`
--
ALTER TABLE `presiden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id_prodi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1325;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `prodi`
--
ALTER TABLE `prodi`
  ADD CONSTRAINT `prodi_ibfk_1` FOREIGN KEY (`id_fakultas_fk`) REFERENCES `fakultas` (`id_fakultas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
