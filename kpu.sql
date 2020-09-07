-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2020 at 06:43 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

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
(1, 'admin 1', 'admin', '$2y$10$AHsq/k5/lOY.NRGdPmOTq.kkunVBxnx1woyDdB9.koNNZrTi2srhm', 'mail@mail.com', 5),
(2, 'ican04', 'admin2', '$2y$10$pQaEup/795jaB/.uQQM01uQxcIFFENLxkTfi6iTDJYFLWwwv3aC2e', 'mail2@mail.com', 1),
(5, 'BEMU', 'bemu', '$2y$10$77qpnMZEVddH2vee3MGO5.pKLhOcrFprhp2TSduBpRko7SP9N0o0O', 'mail@mail', 1);

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
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `foto` varchar(100) NOT NULL,
  `hasil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calon`
--

INSERT INTO `calon` (`id`, `ketua`, `wakil`, `fakultasketua`, `fakultaswakil`, `organisasi`, `visi`, `misi`, `foto`, `hasil`) VALUES
(4, 'qweqwe', 'aadw', 'FST', 'FARMASI', 'BEMU', 'wewwe', 'qqq2', 'usd3.png', 1),
(5, 'qweqwe', 'qwe', 'FST', 'PSIKOLOGI', 'BEMU', 'qweqw', 'asdasd', 'FvitYG8_-_Copy_(2).png', 5),
(6, 'qweqwe', '213qwe', 'PSIKOLOGI', 'FKIP', 'BEMU', 'asda', 'qweqw', 'FvitYG8_-_Copy_(3).png', 3),
(9, 'Berlin', 'Ican', 'Sains dan Teknologi', 'Sains dan Teknologi', 'BEMF', 'libur tiap hari', 'mabok tiap hari', 'FvitYG8_-_Copy_(4)1.png', 2);

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
(1, 'HIERONIMUS FREDY MORGAN', 'Sains dan Teknologi', 'Informatika', '2018', 'sadasdasd', 184);

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
(1, 'BERLIN RAVELINO HUGO PADANG', 'Sains dan Teknologi', 'Informatika', '2018', 'werwerwr', 184);

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
(1, 'HIERONIMUS FREDY MORGAN', 'Sains dan Teknologi', 'Informatika', '2018', 'asdasasdas', 184);

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
(2, '165314002', 'ALEXANDER BERNADUS SUNGKONO', '$2y$10$lLTIiA9azkRSsWm5hbnBaeqWXGDo59FvhVKeQcmNexdfo0dxGpMZ6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(3, '165314003', 'NANANG HIMAWAN FAUZI', '$2y$10$uSakQVrRWvRfG1d.BIXcNuwvrfAyDBp8Zxugguj3FjZQB55j44DoW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(4, '165314004', 'GEDE RIZKY BELA DHARMA RUDYARTA', '$2y$10$y7t8vBKK3LvmhgVSRHngjOL.qRqCMgBi7JKGPcpDlMw4FmaZy9GTG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(5, '165314006', 'ANTONIUS YOGI PRIHANTORO', '$2y$10$MmhykqQxSE0ng9HWOqs/3OlL5BdOA6q4scA2WhyRxBUR3pts7JAu.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(6, '165314007', 'WIDI FIRMANSYAH', '$2y$10$9cJ0yaIwToMSskAwltRXfOkSFYR1ECqipl2MOU/aZc3JQTYDzHddu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(7, '165314009', 'EVANNOAH ROLIMARCH PRATAMA', '$2y$10$qHvTjOeRvzPoj.R7OhChGunW9X1BY7ZqmvvrFZozOsCHYyyfj.Y9G', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(8, '165314011', 'WENSESLAUS TYAS WICAKSANA', '$2y$10$1zffSCgMb0aWh3eoucQKhe.HRcrRCf7wX3astu5bWBiWBAGnPRXIy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(9, '165314012', 'BANYU WANA AJI', '$2y$10$jhqCf7mx/x8nq0hmNk/mhejn2xqof9vyQKuu/XCMMAQu3AC6QArzq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(10, '165314013', 'AGNES WIDIANINGSIH WULANDARI', '$2y$10$xOdGfLyftW4gdG22ftuK1eaZSetCanjLGn8N/Rrc68fT/pTOxb4VG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(11, '165314014', 'BERNADETTE CHRESTELLA', '$2y$10$0iWWm43GVsz0Kb7qI8KP0.LCWDQRPgphm2UekyM62ocycXGqduCJW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(12, '165314015', 'REYNALDI SETIAWAN', '$2y$10$n6JxtEBhxBKjfGtViKnNLO27AVSZ0m5/RDJTUEgAqlZ1hbMgWAtEq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(13, '165314016', 'WILLY FRANSCA', '$2y$10$lYv/tMuwsc2vrwCcJw47nu/Q6Sr79j7SZwpBIgsKILMrCPgRToefG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(14, '165314017', 'FRANSISCUS XAVERIUS DHIMAS DWI RATNANTO', '$2y$10$CPlwPPf6BArYitl6N5iZ8eWAig7GKbwhKO9oGtoYhA8U3iqt0YiM6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(15, '165314018', 'GESANG AGENG TRISAKTI', '$2y$10$E5ysJRTLd1M10vMWmk7iTOFVgxU9x.qpZPopSrlfugOIWme/vDY7C', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(16, '165314020', 'YOGA DWI PRASETYO', '$2y$10$j0Ynuw6hlg/aZhiJu1ZOFuJo73D/hxe2CZIl8UtvzJFo6/r35jF.G', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(17, '165314021', 'TATAG HARDOYO', '$2y$10$bvrvllipr0prJtOM0NNx2uZjn7A2s6ZSFEyOmTpYrte.3Mt96zHZ6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(18, '165314023', 'AURELI ISAIAS', '$2y$10$ShUt0xZGXf15QMZonHgBlecK5RFnMbFDe2IkFtkejo5/nmdEiYw1G', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(19, '165314024', 'CLARA RUMONDANG', '$2y$10$tlPXSH2TXhOFEsIfIq.2qOWpE1kUq0VfXdA2vOqd1xVmxEDgwI3he', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(20, '165314025', 'ANTONIUS BAYU ANGGORO JATI', '$2y$10$zWauZtnmU0o3JWYGj4LgV.mG1XBwUpKGjvkQj5po79MFw2n52Rarq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(21, '165314026', 'YOVANDA PRISCILLA', '$2y$10$ilhksKZ1pDlG3t8McBDqeudBMnjvlSqvDa/h7iVymqOf7g1gtdJQK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(22, '165314027', 'YUSTINA LYVIA VIOLITA', '$2y$10$pLz1ne.vW00oOMcFpUuwleiPlFREhPQbk0fUIDg.Nbj.f7VHsRmu2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(23, '165314028', 'WILLIAMS NICOSEN', '$2y$10$0Yngkn3KsNI4FOXLVXqE.ukew4b6NEbbOSLg7K2fRh3E0lYWnyHQ6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(24, '165314029', 'HADIYAN FAIKAR', '$2y$10$KHcJyiccMKmiyFADTIec8OPDKjXSGFtZzphSBshuKk2FEILuwYu66', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(25, '165314031', 'ADITYA GALIH DIKA SIWI', '$2y$10$X9paQLVdRjmA1KMi7znRH.dSWIPfHmYhQWIATP9CVZaPnJfw6TN8.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(26, '165314032', 'LAURENSIUS JENAR ARTYANDA', '$2y$10$q05FEE9cA1V1v9yP6.yhMOm8R3rWb7zx/4QXQhbot0z/.sddBg4mC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(27, '165314033', 'JOSPHINE WAHYU SURYAKUMALA', '$2y$10$1/2d2zUWKWx6lvvrDQcj5uceN3ZvGbcVnYVc4e/oZgaQ8tbSaqkvy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(28, '165314034', 'BERNADICTUS HERKULANTO HADISAPUTRA', '$2y$10$6prEpHcUHa.rCg.C6l7V1.9BbdRpe4Br5F71.iH4o3Bs0/19AeorK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(29, '165314035', 'VICKY DARMAWAN', '$2y$10$PYyLY96OhJDN.Ry8EBlzqO9UJUrd5A3hdQvysY.BxXT.AWbL9iLjG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(30, '165314036', 'MARIO ADITYA PRIMANDARU', '$2y$10$yzzhSVmG0HCfTD9HzWGnBOLLJP6/rFgWB9ndoaTLfmUQX7aHnajMS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(31, '165314037', 'VERONICA MEIDITA SETYANI', '$2y$10$eLpKxNDAEOxkVOHeWZM6XeU3kEoUPAYNBPG/a0m4q2mfRGgeR490e', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(32, '165314038', 'DANIEL JERIANSYAH', '$2y$10$giSgnnQO4DicCPrT8brDcOjjhAzKOFJe0NwditBva/LT6XgZE3RhG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(33, '165314039', 'ANDREAS BENY KURNIAWAN', '$2y$10$e2.YFbV3Z6iIKGjYITjwD.cbbfV17RhFOcsCj7IYs3vgJP1DuGIUW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(34, '165314040', 'MUNA ALEKTA TARIGAN', '$2y$10$Fe5P9m1buPMMwXLOMOaXguR.7JFTTmCU17RTvXMtPVPmdrTxjy3Z2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(35, '165314041', 'YOS RIO PURAGA', '$2y$10$5EUS3hofQzXbtVbZtnFobOF8SmgQJaZQLwQjhqk501v4fzBjnsTcy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(36, '165314042', 'FERDINAND ANDRE PASARIBU', '$2y$10$Hz9/f/rkrw/sh5RNFi08cejKuQPtxkLYhtO0BJVsaiR5usTEGVtfe', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(37, '165314043', 'RICKY FERDIAN', '$2y$10$zQKpNx.Cb1r7rceldjYYAeysK2r8QVGdEQcR9ZsjcIrZdvQYf7hLa', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(38, '165314044', 'KRISTOPHORUS ABEL PRIAMBODO LUMBAN TOBING', '$2y$10$SI88JeI5j3TemJwazihZSeu7N.1H99m9t4FK4QJscQhyM4PLHRLsS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(39, '165314045', 'JOHAN SATRIA KESUMA', '$2y$10$b3BLdPdBjEv4bLsZcUWwMutWc0pIGoFwWiRCgLyNc5LznTKUWJDuC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(40, '165314046', 'FERDINANDUS LEMBAMBANG SULA', '$2y$10$6cmAzC4CVusB2GIX78Lb5eqMRl2nG.Z/gMWtZdy17Y2u2vCgpOKJ2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(41, '165314047', 'YANUARIUS BASILIUS', '$2y$10$QceKJ.87/odH9kdbl77Oje1dIyotSQpROdPob7oYZYJIac/NYL.ha', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(43, '165314049', 'ANINDYAJATI', '$2y$10$oRq7N7J.FsJBcHa4X5EJdOokuZs.LpvHtMXaNhyhIntqSj/2M5dLy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(44, '165314050', 'KRISTIANUS YULI KURNIAWAN', '$2y$10$45meioh9jIsdA60YXXuAAevrUxVUsMy24.MA1KBWq4Yizernzvs6O', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(45, '165314051', 'CHRISTIANTO EGA PRASETYO', '$2y$10$HGcw8q/kxAHkd31NI2gRJuZjjCDMa6feKF5rEmD6.oYEoQjBsilvi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(46, '165314053', 'FINSA ABRAHAM ALBIYANDA', '$2y$10$KoZYAuWt4YSbpgfiweKbHeQ.LkmckkkbxnvKLQCGOHZvUntPgoj2G', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(47, '165314054', 'EZRA PETRA NAMSA', '$2y$10$7r3GCxb8yHHEulr5C1cC5.lDd9eBbF7Yuc6JEg.lQNmCJnsn/NfcS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(48, '165314055', 'ANATASHA OCTARIAMA RESPATI DEWI SIMBOLON', '$2y$10$WzWxtW30MeRT/fYA.Qr7oeLBoxfHQdKQiGEUiVj5lYldp.d7hijb6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(49, '165314056', 'DELVIANA SIAHAAN', '$2y$10$1EEWarVwnNWMjwLBtOgR3eRv7enC0MFNHwTU21YD83kuzknJlNwji', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(50, '165314057', 'BERNARD HATOGUAN SIREGAR', '$2y$10$ZV.s6XguyuIh1npPcQtPsuDhEF3/.hE0LGXziuiUVWgoMlRgWcALe', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(51, '165314058', 'HANDOKO PRASETYO', '$2y$10$89xy.Sbv9t78ybzkG/6Y8OTn2GFWNOeCrMK5itV7QT5gFUxQeRvbC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(52, '165314060', 'STEFANUS KEVIN WICAKSONO', '$2y$10$fo4hzlmm3UzyZt4iRvGMl.I/NjCWUuBBvsssdhJQIbrz4ipQJk5tS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(53, '165314061', 'NICODEMUS SEPTINOS PATI', '$2y$10$E/DYcCdulxmoYFEM1KpXZu4JGg0hS0vzsCP.UOkXrKJnKU1RhpkdS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(54, '165314062', 'KLAUDIA KISNODI', '$2y$10$LAh9H6kkGqbawFeiRIV5qu9SjCl0kyytNYsdsvUytOlxldkDCA1Ti', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(55, '165314063', 'YOSEPH GUSTI RANDA', '$2y$10$CszY8GbotCoGxXZohM7ihuW4eRMgNSAVBtc1ab/MGbFElpjKmBdJi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(56, '165314065', 'I KETUT MULIANA', '$2y$10$FS.jMGMH1CxcWfucBfRkVudlGxty6OGcaRoE8TFUzvn5IOY92CZ5O', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(57, '165314066', 'VALENTINUS ANGGA ANKRISNAR', '$2y$10$07s//5sx5BLg5WScDL119uiK8/sTF9rCcrUXhFpvF/SToQApw5Dvi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(58, '165314067', 'YOHANES MARIA VIANEY RUMA', '$2y$10$4JWeU1IdEuw1LGvz3Nf68ep1GIbwQ0jLoC9shjQwsODt.xf.iXrgu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(59, '165314068', 'MAKSIMILIANUS WILLIAM KAUS PUTRA', '$2y$10$01IgKEMlXqVU9q1ZE0nYxe0WP3I0eEWDOIG0icMPVLEa6IsX1jjQi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(60, '165314069', 'DESI RATNASARI', '$2y$10$.yJyDa4vnuwGm/aQt4djd.aR6MtdpCbgk6Rx6LcX2e64A00FljBza', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(61, '165314070', 'WAYAN SUGIARSA', '$2y$10$YJb8IxRhCdq1/hW.9fMRMeLeuOaQAdUbdM.KKSCr6DpF7SPXBJyfK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(62, '165314071', 'FRANSISCUS DWIAN ANUGERAH PRAMANA', '$2y$10$xjib4cyfhVXlZQw8jnXt2e9SVuYyMv0DPTbtgmhX8cSYXVltHfYku', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(63, '165314073', 'ARTHA DIAN SINAGA', '$2y$10$wMZsa6sNlKc9u3fIp9kuFeh0UqsJJcReihyxH/SDgj6naTooGxuEi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(64, '165314074', 'BERNARDUS GANDHANG PANJI WARDHANI', '$2y$10$0/.xqSRVev0I9F1.Kau3Me05jrPq0LE3SetPEiF0b/giR903es48O', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(65, '165314076', 'GALUH PINGKAN RAHMADANTI', '$2y$10$veiOktv6IWy9Qd0BL4.fne20Q9IG432AOFkaCgaSRwm6SYA//eOaq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(66, '165314077', 'YOLANDA EVELINE ARDININGTYAS', '$2y$10$pfR28yLNGcez8NEqHktQ5OPzo43EDjzO.q5WJxwXKzVnFm8rwnr/q', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(67, '165314078', 'DANIEL BRAM CHANDRA SAPUTRA', '$2y$10$72qwwoC77FNQ5TTxuw8Bj.hA8.C4WVeABnDZRVqO8GV6R2tpQZ5Wq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(68, '165314079', 'TOBBY ARIYANTO MANDOI', '$2y$10$hc5x5a.EGaOArMM0HvceSuub8U3jx7K6nTdhrx987p13/ml1K3tlW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(69, '165314080', 'YOHANES KAPISTRANO NANA', '$2y$10$SAzpSaMIhfBdX6ZTfOhgKOOX0R4aZqYHjvx/iNOiZl9KxJdNDCCXe', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(70, '165314081', 'NORBERTUS KHRISNA PRATAMA', '$2y$10$hZESm5WkxkoryCzk.XIE/.TfotMx.VKBAvVzfgpfWXsYmS8KrCcYy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(71, '165314082', 'KI TAE KWON', '$2y$10$xUjfNLvk8/ucMKL7Nxm9dOmVkIhAnw3x0paWE7pVDtx4RLP0pDRUi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(72, '165314083', 'HUSOR DAVID T PANDIANGAN', '$2y$10$Xjq6db2qSmWyzF0Wyax5h.3iRTnXVWuWzWeXijaXVHrmkewJKUNNy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(73, '165314084', 'ROMANUS HADYANTO ONGAN', '$2y$10$5qhNatyXRes7cNuAhKcFUec0U1l4u8UTe0On4kiMtNkN2M2WZ1X9y', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(74, '165314085', 'CLARA SANTA ANGKAMOR', '$2y$10$j9aRKU/Nom1trwb4r1MYd.dnNsyNOxxtIBEGAFE6IwlVRDun0kOra', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(75, '165314086', 'CAROLINE ASTERIA CAEZAR ARYANI', '$2y$10$nousv9RL.NOvrbD2z321oOP62JJbs8xOIgm/Bj50RcFlh.yGqOpYa', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(76, '165314087', 'ALBERT MATHIUN', '$2y$10$xCnANvRsO/vMwZ6PbzMfzuCTdnlxxccTCUU0kiBp97VFNT39wFtva', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(77, '165314088', 'CHRISTIAN IISVHARAPRANIDANA PARAMITHA', '$2y$10$n2xtTEKa/KmQEHyNjX3iHOEBAFGsTPIdUH05uEa2FAo9EtM2xMBPS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(78, '165314089', 'DAVID THANLIAN KURNIAWAN', '$2y$10$WxrMtOqU6tK.LOnSC5P6QuDJlFQ32I2nb5AAeP1aswNVgumTBrBv2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(79, '165314090', 'ANASTASIA NOVIA WINDRAWATI', '$2y$10$7sWDdkr24kIQNiLjUjNK7ePWJkp0vciu/fRKgR3tvgqHuIJmQuega', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(80, '165314091', 'DAVID ALMACESAR HABEKA', '$2y$10$UEAbsqUNAl64c3XRWUTlr.VydhERDlqWgoPuxY/e8eM4aeJK4/s..', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(81, '165314093', 'BAGAS DHITYA TAUFIQQI', '$2y$10$S1BKUb.vveiYEzW5GtAZ.uRi.JbatHHy2wjU0hmpulgRgr0PZ2/ye', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(82, '165314097', 'GANDHI NUGROHO', '$2y$10$ElmQ9iO9zYu4piMpqhecYerCZCchI1erRCCqqX9LmA9vCHIExDl62', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(83, '165314098', 'PAULINA MANGANDE', '$2y$10$lqkdFkiiluYBibk498TYdudoiDuFPVKGX2yF1lUyuoX92nR1l.Qiq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(84, '165314099', 'DIMA THOMAS REFANO', '$2y$10$AOPWu4Xa.HrNM43XtqKvNOpyjpUzKID2kKVFuCq5FWeNSGBhAED3u', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(85, '165314100', 'GEORGIUS I PUTU VANDI SETYAWAN', '$2y$10$AyVR8zstNzOGIYXwjNu.bugB0bIDUGoTTxXzfYzIrqRf7P7kILf5i', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(86, '165314101', 'ALFRIYANDI DWI PRADIPTA SINAGA', '$2y$10$ayHmVW/8CyvvAycRVkGDjeOlGUOrfOQu/BmLmGu6I8uGSde7a6iTG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(87, '165314102', 'RACHEL ELISA UTAMA', '$2y$10$oZL6bjv0ypzhkOhGwY1yZO4kpxQ9lOQE1s3ip/k33zgNbDETu9jdi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(88, '165314103', 'PUTU INTAN HASRI PUTRI', '$2y$10$zPX/1kzO1fKXZZZxznsbzeVtZBnRejkdr5vVFnsPytyQwBSkJUFeG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(89, '165314104', 'MAGNUS ABIYU', '$2y$10$4fs.fVDKljMkWEKFYsM3yebY8mI6BUvLBtS/r6/rM0zdzU32GjPcq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(90, '165314105', 'EKA PUTRA KURNIASANDY BENE DIKTUS', '$2y$10$rS85aHxR5SGjlG.MsbHRju0q.aYW4UVahvpHCW97dBUkswotvtayy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(91, '165314106', 'AFRA RIAN YUDIANTO', '$2y$10$3GmV.E/JP8yrUBzzVGwUHOA0dIDt46Wpz4cFyIntus5oFU9iLVV1e', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(92, '165314107', 'ALVA GRACEORA NUGROHO', '$2y$10$LXYVhqYTlBkmYdCERRQ2IOrr4sJhjm0nmlc.kEqzMZzxBKCNYw0FG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(93, '165314108', 'ROBERTUS BINTORO', '$2y$10$CE0SD5gxYXyChyGaB26iZ.rX0ZcYzJbFEVBxTEYOyGbDimdg2ftLK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(94, '165314110', 'MARETHA ELISTYANA', '$2y$10$kUcUnaoWeydQkXhHlOPFw.HO.Q9EL6EhCSiOoTba7UpUZV3zC1Wly', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(95, '165314111', 'ANDREAS YAN PRATAMA ADI PANGESTU', '$2y$10$oxZVGqKnBu4TBvk0h/iycOSog57RFm05LbQlmWTa/w1LfO9eyc502', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(96, '165314112', 'NINDA MAWARNI', '$2y$10$WztVNrfZUEv/Ln0SGVYR.em//xm2k6DeRKfPzSydrjYpzM/6a6tLO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(97, '165314113', 'INDAH PERMATA SARI', '$2y$10$Gh5JzAgnYqgjZ0G.ET/96uWHkCBojxbqobUVA3DBlHEFVPwMXxU6G', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(98, '165314114', 'LUDHGERUS HERVIN ETBY SAPUTRA', '$2y$10$rzdop3735a48Ck0RKnFhjefCS0H9ELkzHTG5mBfL0XXRE.KKZQhpi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(99, '165314115', 'DAVID PARSAORAN TAMPUBOLON', '$2y$10$4ng46uvwqfR1yAi7NiySq.FCLuBs964wLow9TZ5JF.elx138hdWy6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(100, '165314116', 'HANANTO WIDIGDO', '$2y$10$xFToDxCw0wi8pfaVvOsBFeKES5KxPYi7JeY6C74y3kL16YF0fIGGG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(101, '165314117', 'PAULUS LEONARDO SETIA PRABOWO', '$2y$10$TBqRnSzwDWPD4xmbT18hsezev8W9UktL20xMxPspRv4q2bbjwzMJS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(102, '165314118', 'EGIDIA YUNI SAVITRI', '$2y$10$tSoevTnIn9av.nE4gRRNT.jT0sncENUWfHsmZI1mLudhkm/8QNg9a', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(103, '165314121', 'VALENTINA YOHANA SENDUK', '$2y$10$TwFUl98g8RSMqKzjfZYM..RzKWo7lwJKJTScFmk4zCW9YE/4ozcCy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(104, '165314124', 'DODI FERNANDO TAMBUNAN', '$2y$10$XFaBIssBo3X1GRFIiOZQq.hTL2GOBGhencLgHKAXr0OdRUtlXvmpa', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(105, '175314001', 'STEVAN TIOVANDI', '$2y$10$QwCtCTMMZNNsDRwwMnVMBuMJBGZ/Wi2SjC5Zgt6fGiI7WaNdKkqAC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(106, '175314002', 'EDRICK HERNANDO', '$2y$10$5SE0BjgQW3Grc8KWjXE6O.PdIpzJ1DuBg0o8lidhKao5dWwAvrF3u', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(107, '175314003', 'MARKUS PATRIK SEKAITELES', '$2y$10$3m3w0Ndg6CQbSovlQFuN2uoNtYe1iGOlqislTBsoo1wuj7bfT3I1a', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(108, '175314004', 'CHRISTOPHER MATTEW HERMAN', '$2y$10$roGFP8f0sg1sTEJ0bh0Hy.NLcofMmtfEwJ2RVvoNs.ewRJpSYgkTW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(109, '175314005', 'NICHOLAS WIMBARA', '$2y$10$hfttHMkkD65ZLWn6Qqj4v.z2.K4QRxFcl5b9UdyPWQ04ukFHiZvcm', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(110, '175314006', 'AYUNA ARMONICA', '$2y$10$N8PFRutGmlEYJol2eBLwreVCRusnPlzvPDRB0nfpWkEFttnFG6gsW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(111, '175314007', 'IGNATIUS RIKO RINALDI', '$2y$10$jZb71QF.X27wBxsQtl4F3efmdnZCEvJlPFcDZq1c0VwTUHSKhYbX2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(112, '175314008', 'NIKOLAUS HOSEA', '$2y$10$PSbSnyu3POochEqWJfn3eul8KvnzTZuRBCexUt8UqYdciYCQ/z69e', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(113, '175314009', 'CHRISTIAN WIBOWO TRINUGROHO', '$2y$10$86DSgV6omyyRKfc8Ec1pYeBze2hY07Tj1Q/nJZclMFjbTTM56B9eS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(114, '175314010', 'GERVASIUS TARUSMAN', '$2y$10$rIDU7mrWZ2JQyHew/OAaZeuQ6RCjMJJq/5upXFmVvn2vmGlsT7X8i', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(115, '175314011', 'DESHA VIRIYA KSANTI PURNOMO', '$2y$10$MyQF05LQEU1Q6YaKvZF4s.ZgakGAhtOGiSaDXUptcKlxUvjCPKMii', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(116, '175314012', 'PHILIPUS CHEVIN JOANITO MAGAT', '$2y$10$b3d/OMqk3k/HvjZ4DI1P8.7Lb4ax1sBlUYb28olMVCmVkZO4JsaQq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(117, '175314013', 'ALBERTUS IVAN ADYATMA MAHESWARA', '$2y$10$eYL34AGGrpAkn2auUC/prOn/CnSX1yQaTZ2OaN8a/SuRyP7X1TitG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(118, '175314014', 'CHRISTIAN NARWASTU DELE', '$2y$10$eeyZMjHa/Lukr5/sVkMbtOoZ7WdC6./XaLSo1hcjHOo4YRUKii6nK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(119, '175314015', 'I GEDE DIPAYANA', '$2y$10$AL0.0Uj65f7V49R05JvrEe8HlIVXQMQULre7ecS88ZnvKIuH1v2R.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(120, '175314016', 'RENDY EKO PRAYOGO', '$2y$10$AXdb1zv6SSBL6JSFjnDlbOSOn8yURvdCiec0V0NlZ8t8GQVJQR58e', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(121, '175314017', 'PANJI LIBERTY PRATAMA HUAN', '$2y$10$vEHc5271EWM0mEVThZ42XeyY/MfxL3guP.F.9wchMBE8ncHovL.2i', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(122, '175314018', 'WIRYAWAN SETYA NUGROHO', '$2y$10$ScKj/fMatuMFW2fM08Cc3.Oll2gS6j8X8BpgKVJlVUpFVz.OPxbHu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(123, '175314019', 'REYN KEVIN KILA', '$2y$10$Wc7tmCd9rqUzhgSUpkascOoYqoV/aiCisGxUnZzQi9RG3pqv6FMBS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(124, '175314020', 'TANDRIANTO KOKO GUNAWAN', '$2y$10$QRU4MF.MZqDOBj6ep6h1FeORYhtL7iJyYlaI.ZOp3t.Xhug83UuB2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(125, '175314021', 'FLORIANUS SURYA KEVIN', '$2y$10$KaxKDLc7tTC7TnHiKs3JlO3TNfzLaAueyCN4UnMxOuXA..hG7Aug6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(126, '175314022', 'FX DONI WAHYU SB', '$2y$10$63/edMjacrLVnepHtWzeZ.V0vtu2EW6srbsfBjuwi0N55AinChA0O', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(127, '175314023', 'FELIX PRIHANTORO', '$2y$10$BRztfpQOYCocUkhVmRGpTu0UXGxUxcsJxkO2QhsJYJYb/7Mt5CXEi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(128, '175314024', 'DEVIDA AURELIA YACOB', '$2y$10$Muz8llnXzeWMJtYANvqXIuDsuJQuKWIfTQmORtJANKCLp08CNPTBW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(129, '175314025', 'TANGGUH PURWOAGIL', '$2y$10$75WegtA.FqmVw74EyP1OOOgQ8y5YqRDlPtsqrUQg4Tz2rDIbM78.G', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(130, '175314026', 'IKHSANUDIN NUGRAHA', '$2y$10$dDAvM3eS9tmrDDSZCq7WHuf9LwNPZ2H.eflM1lEyNz6kyvAKAnaxm', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(131, '175314027', 'MICHAEL ALVIAN DANISH PRASOJO', '$2y$10$iGEgxfXRZjy.wOf.PnT64eftSabJ49LktRGpdrYZsSv.aQuz3mGw6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(132, '175314028', 'WAHYU WIJANARKO', '$2y$10$ogzvmijGATDvXhwe3OdXAu93IrL29F9RpeOte1ixacP7BZB1vXQ8e', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(133, '175314029', 'EZEKIEL JUAN FILIPPO CAPPI ARSYADI', '$2y$10$yS/CUq0HLrygtUOtkdsECuJV05EBPJjubVnaLbTqF5lVyeA/ANVOq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(134, '175314030', 'FLAVIANA ABRIANI HALIM', '$2y$10$iQYHt0gQFti1cNCc/FO70OFT.bXeaEXADa5TWpEoqOPnyA.re88Om', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(135, '175314031', 'WIRA DINATA', '$2y$10$h17uv.XX7/is/NdGSDs9Ae0WVb6h/.DUEHhPxKa0S34Aekt6z1jb2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(136, '175314032', 'GALIH PRASETYA JATI', '$2y$10$H72Jq29OioTYZvHMRjbFW.gS5pUTkv6dbmCxXnEqZmY7GZUa4DNby', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(137, '175314033', 'RIVAN ANANDITYA PRADANA', '$2y$10$PQk8GtoBj5E3pPw2P3MbsOH.phyKUTEJt6b6vgNy7Bh1XL/VFm8kO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(138, '175314034', 'REENA SIMANIHURUK', '$2y$10$OSsO6hy8L2gzO0S50urdXOniK8fD/LpvuU/y5TaA0QwbsWCaOzksO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(139, '175314035', 'WIBOWO CAHYONO', '$2y$10$oaVzYhQculUhafBMj9KkcuFeV9romXTlr7ObvEt4Ij1TKWL88e7Kq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(140, '175314036', 'NOVI FITRI', '$2y$10$9nkexjn1uZ90hqYH.shsNOs.to2NdqyY3DwliyAN7flQnkriEPzXS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(141, '175314037', 'SAFIRA NURTANTIA WILOPOJATI', '$2y$10$LbqZV.wj6PMEz7XfTEW6iOyL.qTUdGT1OfCYXqQA7hpcnGhUqJXv6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(142, '175314038', 'JOSE PEDRO FEBIAN', '$2y$10$mmZnEW/fLZ2LYxB0dZYY0OlE.LJ98wLiE8HODGNpbUcjlNzgPhpAu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(143, '175314039', 'ANDRI PRASETYO WIBOWO', '$2y$10$4YON2ch9OdqYtkZrReGF4O8jr/W.ERQTICOPpTVXDG6eOnx3NixkO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(144, '175314040', 'MARIA SIMPLISIA WEA LAJA', '$2y$10$KRNvZSATKH7uDdcHEGsTzuP/ndSyb6N/LWsA5nmzS43MSu.r7Fpcu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(145, '175314041', 'ADVENTUS DIO', '$2y$10$EQtJ.WsP045q5O7FwFB9Tu4KSaGQNqjrSInPdaWvtS8nggcMPvXn6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(146, '175314042', 'DANIEL FREDERIK', '$2y$10$Tn7F8ncVuY/yRSzog.fiM.B86sfpPPlLN3Rn/l.jYSQv1EFMSV06K', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(147, '175314043', 'MIKHAEL SURYA PUSPITA JAYA', '$2y$10$0nh9WT1UaOIN5Pcb8gCYbOvrBCpjmI5nuj9atfitkbXn58hVSbp7K', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(148, '175314044', 'YUSUP HARIS PURNOMO', '$2y$10$oihByXi8bS7kcKUy3mJLke33zGpk3l.nMOShrSdAG2WnTqGGyh7JW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(149, '175314045', 'JOSEPH RIANDY PRATAMA HUTAGALUNG', '$2y$10$3P4QfEd.Bd.eb3NwHXWm6eeaQ6pDAlywK.b8Ca.nME8sdE3ZdUb7u', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(150, '175314046', 'M.IKHSAN ABIMANYU', '$2y$10$3g4qTECbtGdb7XITMZ5Z8.Rp8kqYmepIip7guHrgi18msXn0T/rLC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(151, '175314047', 'FRANCISCA INTAN BERTIN', '$2y$10$lSKBdztOE8vjpu8LiMbeg.yvU0pvExTa17KKu7sI5y7nG3P/O5pjK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(152, '175314048', 'RENELDIS PUTRI TANGGU', '$2y$10$42kz7vPXWpkCVJY8UR.HluLwRVx8mL5Vk3CyohSBAvVzgL2oWqE/S', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(153, '175314049', 'RIVALDI ATMA DHINATA SEMBIRING', '$2y$10$F5jb7JhjW0pG90MpOUlvOuV69iFrkRIleqggtOI7kPhTgDvxq6to6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(154, '175314050', 'ANDREAS ALDYANTO NURA', '$2y$10$LUsSWX08z0Y.4Vl2cz.D8eDIefDFxYCd4zlOCDvVronwykRxrgC1y', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(155, '175314051', 'SENDHY JAYA RAHARJA', '$2y$10$ilUR3esUeJk94fi80PswfOHbi/zeE299xnJD4EyYMqeo2Ki5WoAje', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(156, '175314052', 'AGUNG KRISTANTO', '$2y$10$PJOIS8eN5pGE2ddIrZr/9.qGZvpZrM8cFv2GyZDj0t7tw8Vfix8hW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(157, '175314053', 'MARSELINUS BAGAS PRIMADITIA', '$2y$10$Xu7rr9xYgEjSWedndlBaUedsukQkR3mDmDZlT7s/rqlaGXIYg0vT6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(158, '175314054', 'GEORGIUS FEBRYAN PRADANA', '$2y$10$XbU5TxpOjGow4dDCF5.ND.IjcxcISYz8x4U7vC0pTm/E4cYhge/Oa', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(159, '175314055', 'CLARA ANGGITA AYU SETYANINGRUM', '$2y$10$rqf6IArPmSy5ZPTRv38XdefB.9yudfxlt1kpEwWmimvFQA6grx7RO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(160, '175314056', 'OKKY YODI DWI PURWANTO', '$2y$10$cbYioo9.6T2d6IXEX5IkL.qTyokzGy4Ju2x/WfR78DsaPLix3dwyi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(161, '175314057', 'VIINCENTIUS HENDRI KURNIAWAN', '$2y$10$hnIa.nv21tshgvUuki8aTeHVaAz6iTkcCBo6QgeZHC8G/WrYW8LIy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(162, '175314058', 'ZEFANYA DEVENDRA PUTRI NGGANGGUS', '$2y$10$4Tk7ha0dxzLGDjlwVbT74uZUkinxCm044.LLzBYaGAhTrSRGGETUi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(163, '175314059', 'FRANSISCO DIAZ ATMARESTANTO', '$2y$10$Jw4Z.JJIrsffKy8srlG8BuFxcOG7KzqHvC9lUQobJkZvDPkQ15x5G', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(164, '175314060', 'ATANASIUS IVANNOEL RIO AJI', '$2y$10$z7SZnq0KdFVANQmkz2Gyyu9EuAdc3YOiHEIYnv/oVcuzSTBVhWNK.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(165, '175314061', 'BERLIN RAVELINO HUGO PADANG', '$2y$10$J.Klp.SINZ08Z4VJ4EAZS.CObvjearMOwsMEjNwuTOIBKJtiPqsuS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(166, '175314062', 'AROOM PUTRI ISWARI', '$2y$10$LlBVn4o0BfxBdH/47N7FH.B.On7yso0sfH3b1AOximW33XgqeOQue', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(167, '175314063', 'RIO PRADANA', '$2y$10$CIcYi6GCFEG0D1A.M/hVGeeRSNFfmPX43/LHRnMe/7QLZmEoMfYi.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(168, '175314064', 'STANISLAUS INDRO KENAA TUKAN', '$2y$10$An9Ts.hEArTeRkVIxPxvc.R1/GjXIIEM6zIMUefz78cIQ5WThSPQy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(169, '175314065', 'SIGIT PAMUNGKAS', '$2y$10$M2nIl40Hoeb5i7A0QL9sQOT61I8pkUhm0gZrdrd0Rviro0Do.Tg2.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(170, '175314066', 'BIONDI ADHITYO PRABOWO', '$2y$10$MWE7mwey9lKxzzt9PvyBAunpdQUxzjdmR33nJF3/awIIfFPU42Nsu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(171, '175314067', 'YOHANES KEVIN WIJAYA', '$2y$10$G8r11MZunbAwPLo1zUuW9OTGogkZ0hGF5b8Un2LvtiyFuWSAZAhJC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(172, '175314068', 'YOSEF GANJAR WICAKSONO', '$2y$10$8IdtrUWhdcI0QniJMXvU7OXxeob6IQpgqynMiM5oKnYKmwAUcNyby', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(173, '175314069', 'ERLYN AVIANDRY', '$2y$10$SXc7xitJQdbhYXgpM6kqAupEUSTwISBOEfmU2YjNtKU8oas5riyUO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(174, '175314070', 'YOGA JUSTISIO HARLEAWAN', '$2y$10$w/YT/61fR8IaTk/66jYtVOXW.KINZAHL0H.JlKjJNEeuPfg9cjZJq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(175, '175314071', 'EFRIYANI W. TARIGAN', '$2y$10$OVyOHW4ZR9fFvswVc8s6W.kV5OYkx7fUCyV22JqzHaqtAcmny.2ru', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(176, '175314072', 'INGGRID JAHA', '$2y$10$yNMC4vXobWCHlaa8MpjVC.ZIT6ITmzsttH0BfYX4c2DH8m0LrfcTW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(177, '175314073', 'WISNU SETYAWAN', '$2y$10$57n88lSRrJYD4d.UeWVBeu5ft81XiKL8rtLokXhVnygkQHhc65Kbi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(178, '175314074', 'DIONISIUS NOVEN JUANDIKA BINTANG', '$2y$10$A9gkWlJDMhoIwiZdpKMu6edheXqzt7zFxIE0SlyWVNiMinrGBcfMW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(179, '175314075', 'RAFAEL PASOPATI KRISNADWIPAYANA', '$2y$10$gebgUPCuOqJDogZCp1GdJ.x2v4wdwcyfaAwOnsQYVS3XDnbDwVRMa', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(180, '175314076', 'FRISKO ADRIAN', '$2y$10$9fK0coTjfYZUtMR0UlL0TObBIDKG7Nv/3Hvosq6Z2ZM1PmnkcYq3K', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(181, '175314077', 'RICHARDUS ALGA ADMAJA', '$2y$10$5Wnl2BRxno2i2jP1x2pglue9o8Q5W0FpJ9tA3xqDhbcqxCmLI/r0y', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(182, '175314078', 'GUIDO DIKA FIRGUSTON', '$2y$10$XyBWWq1J0qzDpUhiYsH42.zBfcHAMw560poDFqmmMwrpsTfHgGuCO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(183, '175314079', 'MADE ARIVANDEGA WARNAWAN', '$2y$10$VAh2U9Zh5UcDDndwrI7n4eeqmIsdh9CG17.qOgF0XDdNSsEf4sNpC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(184, '175314080', 'HIERONIMUS FREDY MORGAN', '$2y$10$mY8XJJvAmJrQiQK/2faBsOmMUGxdjMMGWJ0rsgoSfAxSfOvv7eh42', 'Sains dan Teknologi', 'Informatika', 0, 0, 1, 0),
(185, '175314081', 'IGNATIUS BENNY CHRISTIAN', '$2y$10$UmBqY5vFOzOBnmdqUsG9p.6A/gQQFf6Hn8vtAPlo3as6wvHoRZap2', 'Sains dan Teknologi', 'Informatika', 0, 0, 1, 0),
(186, '175314082', 'ALBERTUS SATRIO BAYUAJI', '$2y$10$Baut7kNKOIn9d6S0Qq7SAu1REWSz4zwmTOy3ms6GbFZjCehxP6hXu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(187, '175314083', 'IDA BAGUS YUDISTIRA PRAMA PUTRA', '$2y$10$KGl8qKnokgvp21L8y7LaguIfHza2yhFhbS7ETsewlMm/mP767PvPu', 'Sains dan Teknologi', 'Informatika', 1, 0, 1, 0),
(188, '175314084', 'GABRIEL RYAN PRIMA ADETIKA', '$2y$10$Qwxz2FEqi9X7zsApe6f6huLXBTAyJOoeB.r6Fsw4iSzUut7Lj5NY2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(189, '175314085', 'ALOYSIUS ADYTYA ENDRYANA PUTRA', '$2y$10$rQ8Q6K3kJzhcdkQlsDOHP.a9BgkEXfGospy3iSGsIl7KICKndvOd6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(190, '175314086', 'ROBERTUS YULIANTO', '$2y$10$X0xVAG.j9JuL2j9IjvZdoulfg0EhgLN7qQ/l2SKReKKmQsNThQkgS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(191, '175314087', 'ABRAM', '$2y$10$zP31ORmz5O0FlU5Ap1SSx.mUnQD2Rumixs5ErLCGT1aNC3ZIvAV2S', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(192, '175314088', 'HARNITA DWI OKTAVANI', '$2y$10$DJ4pIbQcZQCM2HM0dLE3W./wiWdu2pXq3h/kvAFctYvi7vC.LNsKq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(193, '175314089', 'ELLEINA RETRI WAHYU PUSPITASARI', '$2y$10$yElSCPv3kGjvQAAObejQTOKloNwTnkrzF/EHOl.qEjwvyCXCiR3ZC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(194, '175314090', 'MARTIN PARAMARTA', '$2y$10$dTUTBN2g1jBFE1T6BN1a5uQLQ5YN3VC238ZbvVD38YpNnJSmOQhaC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(195, '175314091', 'ALDY PAMUNGKAS', '$2y$10$iQY1xnhQsvuJo.C0sdIIAuW3mVz4gdISWQ80C4AwuoZD5JXaMk9L2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(196, '175314092', 'MAHENDRA AULIA RAHMAN', '$2y$10$EssNuTonUQGxYUL4uqRfQ.BwSjOalrCmjfiYhv8nZQs1OkgIDieGC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(197, '175314093', 'DAMARIO ADITAMA NAVYLIO', '$2y$10$IqUclC5Z8qcH8e8HQ5Mpc.QRLj/h6u5yqJ86Kv4q5n81eHeM7rB96', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(198, '175314094', 'CHRISTOPHORUS ARLENDITO DANOR SAPUTRO', '$2y$10$N3YW1qKnubqpOCDzM5Vo2uwQIQcpJA0fMdz.qXRsDBcyDJTr0/h/q', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(199, '175314095', 'FRANSISKA ANNALISA CHRISTIANA HOLLY', '$2y$10$OIOjJwCe6DsbSEzeka2laurqMlSujqhyWBVDz.qCntVkwu4wtkRJ.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(200, '175314096', 'AGUSTINUS HANDAYA AJITAMA', '$2y$10$bCHRlIu8MQTqON3k/LpvsOGK5yzPhTemzufqrtLpuT.0Kt7aIiPki', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(201, '175314097', 'BENEDIKTUS RONY AGUNG KUSUMA', '$2y$10$iccMbxmmszeqjNCA70yg6emAJiCUE.NDdvE2hvPZUfqxtEkuLD5Z.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(202, '175314099', 'YOSSA ANDIKA LAKSANA', '$2y$10$XILRrll4KxfEMesClv0ez.NSgYpi3U/xuhZ2GLCyIlzyVgTxCTkp.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(203, '175314100', 'THOMAS CHRISTIAN WICAKSONO', '$2y$10$Jf6SsAWS2OEaiHrRgA5aIuwjoxybhZ4esceOW96QuTWccIGOWHvzC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(204, '175314101', 'ERWINSYAH RICO AGUSTA', '$2y$10$d3qbLl6jmZfQd.T9rhN06utTPEQqkyoEMksHUkiZOG.lACxwH6nnW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(205, '175314102', 'AMELIA PARAMITA INDAH PAKARTI', '$2y$10$vvCvoG1ccodpt//6Awm/3uDeN6KV4Yi5y4WErcqm8fZm8JKrOM3HG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(206, '175314103', 'SYELEN KRISNANDA', '$2y$10$uD6/gjrx.ysTFfarawZmNu91/baiXaUW66JqE4FrhOqFQHRUIRNnq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(207, '175314104', 'YEHEZKIEL PURNOMO AJI', '$2y$10$FLPXLV/MZYaPvL.545g2pePPFCZ/TumilLjfULoFouJ0agezQdKkq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(208, '175314105', 'KAREL ARISTO', '$2y$10$uaBguXUNcmWTwxJsx6.8N.Y41DYpIPuXCCDtJYB1hW1XzHgPkifAy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(209, '175314106', 'SANDRA YOSEBA SIBI', '$2y$10$g8wxsk5aAYsAKgmG7MazM.1Rhu1SQW5B7Gck29zSiRIktt8IUpK72', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(210, '175314107', 'OKTA VADINDA PUTRI', '$2y$10$CrO.CsaHwmQv1jXS4pr9xO86O9aFDyYhVz5iCKLruiIC/doI20FeW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(211, '175314108', 'KRESENSIANA PRISKALIA', '$2y$10$uESLXt8VOhcpjpL3dl4mdezHMISP1/ou7yesa555cNaLfw2xqYBAi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(212, '175314109', 'GAGAS SAMPURRANA DAYA HEDOH', '$2y$10$Bc2GNN1oCBpU6Yr38IMs/OVYg3pmQhp/OItDZNI0/Zfy/2gMcep5O', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(213, '175314110', 'CLAUDHEA ZITA LEGINA', '$2y$10$ph/190tEK58N3stGl1dGIuPruPux7psvVIQPnqQ25bFqgguDBFUPq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(214, '175314111', 'GREGORIUS BRYAN OSALDI', '$2y$10$q.MpZ33vqnDdVgDgAVcgdeOWZuvMvCIrCcROqe3FgEvp7Uzwr1PL.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(215, '175314112', 'FANI TRI HARSONO', '$2y$10$Paga5vr.bpXZlW.UoBhVrew5NsJTwPq0kU5cTDSxC3I4vtjOEbom2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(216, '175314113', 'REYNALDI RAMADHANI', '$2y$10$iJpMqsHhX4fs4yqm.5C71ujYuTOgh39EhJfrzkJjOd4gbTRRPkTGW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(217, '175314114', 'JUANITA LISANDA', '$2y$10$8iYyp8Qoia/9c0m1KyRfwuYzd3HiSw.AqktuUEK52rwaW/82XHg2G', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(218, '175314115', 'PERDAMAIAN HIA', '$2y$10$fE2q4NxNmESJg6YnDxh81OAK3IAgbt6Ec/ggMDsdWQ3IuAW0giDFi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(219, '175314116', 'ROSA TIRANDA', '$2y$10$ohyJVTSNHRfLp66jo3paEurTaVUgxoxkoj4bNiav/SFPuL6LZcq8e', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(220, '175314117', 'KATRINA NI LUH ARIYANTINI', '$2y$10$UvZjQvmphmEZdxWTaCcI.eiAEut7zwlKL68T36yFWHjm13Ex9rkpC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(221, '175314118', 'TONI TUMPAL SIMANULLANG', '$2y$10$.vYMn2oSyysdTxuDgbzEsObGikyCP.39i1kzFsWcogsFol0tNsm.e', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(222, '175314119', 'JESSYCA NOFANTY HAHURY', '$2y$10$tNldkl6w3wwFMf5eF4UJnOMAWaFdgoMzYffncuPcnsJNGbupFOfPO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(223, '175314120', 'SATRIO DANURDORO', '$2y$10$UDy/kzVWbZ2IPBNftg/R3eJr0eDhvWH4YGujS2ZqLKqho0oaNsrg6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(224, '175314121', 'RAMA EKA PUTRANTO', '$2y$10$6ur6Ag8imJ7JmPON6wLGvu3wuZk8O1nhbTLiB.BOeV1jk81Uty2uO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(225, '175314122', 'AMELIA PUTRI CENDRAKASIH', '$2y$10$M4Wx.2Wxq4bfk/hfXEyjleOAs7hshN1izIQBbP9286OvH.CF0Nv9O', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(226, '175314123', 'KATARINA HARYANINGTYAS', '$2y$10$wNnphwuQIhrp9oOxfDaaFO.4lzdIfPWMC5/gOpjWFvSZc3j4lcCIy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(227, '175314124', 'FRANSISKA APRI WULANDARI', '$2y$10$lieKHtDv0chOyi9JoFQqd.IsC9jx46BRrsrQczLUqoJum.6fCsngq', 'Sains dan Teknologi', 'Informatika', 0, 0, 1, 0),
(228, '175314125', 'ARNOLDUS JANSSEN YUFIANTO', '$2y$10$IYzGmD/Gs7AUSZB0sR0uBeVk0cf82gi23Jy8PBYWrPp59AFSXR9y2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(229, '175314126', 'THOMAS DANI KURNIAWAN', '$2y$10$WqnXL/mhRAJqkDmDk46yKeseHwVKE2GMUBnj4t5et5uWRBNft6XEm', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(230, '175314127', 'ALEXANDER ADAM BAGASKARA', '$2y$10$ImlozaiNYtrChEOLHPk7ZOBKJ2wELPlWhVY4HVO9WXqF3l5/IBZTS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(231, '125314033', 'ARLEANDO MANGARA SIAGIAN', '$2y$10$tdT9kOxYSD6bxR6J.CunOOzRBluCGZ8LmvrKL2jrreHkIi.QLaeKq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(232, '125314088', 'JULIAN DWI ROSANTA', '$2y$10$g2MlUDlGUGpKp6IhCLx./eAkx5eVBQ7IPzbJwg.eTA/MtiKl0.jeK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(233, '125314092', 'LAURENSIUS ANDIKA NOVEMBRI', '$2y$10$.wXdOf0mUnAOXs6NJOM0gucawFg3PumHlNfqGDXpGEa6AulqfGgFK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(234, '125314129', 'FEBRY RHENALDY', '$2y$10$rwGpA04IyaoR5tt1zp8mYebM80v7bxVdHwlCWVPCzyKWFl3840Mum', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(235, '125314134', 'FAJAR SETYONO', '$2y$10$3dFMd.fiTgmD23hZpOOLFOmfNNzoNvX7YYiO6V6jsajWK3hZi2of.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(236, '135314014', 'YOHANES AGUNG NUGROHO', '$2y$10$wuSYtow/NMahH09K3LUe7.IQ8k.wWw4e/tUyWSxQWzGFNHeZDlmwm', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(237, '135314045', 'STANISLAUS ADRIAN CHRISNAMURTI', '$2y$10$MTokuwIzNttNiGmt1SgIl.hYZZTP11yxDHIgl8hJof0msYM6Vamh6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(238, '135314105', 'AMY THEODOSIUS NAINGGOLAN', '$2y$10$WGOuhcIS52D58fXmFl11wencMCC.2XVGnyaPNTVm5gJU35wQiQ7TC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(239, '145314015', 'ANGELA RINTAN NIRMALASINTA', '$2y$10$AFw4Q8ZOqI1DUuQQqiJMUej0wIa4XNxBVP1y5yxLz0XyEOqZpbSs6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(240, '145314055', 'CHRISTO TRI ADI KARA TJAHYA ALAM', '$2y$10$9AIj5nPYmx0QVqITlKnx9ebJ/1QVkEr/lgIejKdFNeOKRIJbVDzHO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(241, '145314071', 'NIMAS AYU TIARA PERMATASARI', '$2y$10$1Kq3HWa7HToHH7avlEiDXODehqa.AK6518XS5MtLD4n8buN8tZhMW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(242, '145314079', 'GUNTUR AJI PAMUNGKAS', '$2y$10$9WFlMNyshA9GM5GwtOTTAOq0MgokFlgsAGm7bPKXsqaLIjrvZrx/.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(243, '145314083', 'WAHYUNING NDARU TEJOKUSUMO', '$2y$10$v6E1mnCFLYPTxGcWooyp9exds8j35rNiXriC0iqcUiyS8GI6.wsii', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(244, '145314085', 'BAGAS TRI JUNIANTO', '$2y$10$R4trZjuI8/NDsnudjpMWoOI6vD/oHZ0l5830YAio/iPLEu5814Iqa', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(245, '145314089', 'ALFRIAN FERNANDO LAMAWURAN', '$2y$10$ySo83073syMPgatOxpVE3e5DjsWolE0aPpn07.lbzEI3a0A524aJ6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(246, '145314091', 'YOSEP TEKI NUGROHO', '$2y$10$vCC2fr03/qLppOL76Bp10ejDQIS8vjjwMbsJuhPPcZC.J4w1x0ZUe', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(247, '145314092', 'YOHANES DICKY MAHENDRA', '$2y$10$QnpwzyQusqyxtPOuw4MAL.mXNf2qubRG7oV/szmTBdFCuFGqkPfZe', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(248, '145314094', 'JUNANDUS SIJABAT', '$2y$10$7jT8ZN4BX3iV9iIHmI7nOujlibqBKkImNhq2ukGYLJskhHkVmQehq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(249, '145314110', 'MULIADI MARPAUNG', '$2y$10$nfRIv3LuJ7ZAtWXhgiOSVOPUuV0YqxidWBeKR6jDyHvwmRT9o5FvW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(250, '155314002', 'ASIH SULISTYANI', '$2y$10$yac6T.9742TBBqKyzZFqa.mQqLF.tB5StnEZAs.oQX8sNZcf/XiL6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(251, '155314003', 'PRADHIKA DWI YULDANIA', '$2y$10$uRgy75D6bCueErwUZGeeBeHdtduOMXSeoVV/n4QKzFjrVGnhsHO0i', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(252, '155314004', 'YOHANA MUSTIKA RINJANI PUTRI', '$2y$10$C5iS.toC.KtlmCUG9/9/m.A8Ev2J92z2gf7dAPyaOoqe.cwIe2wYW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(253, '155314005', 'NOVA NIATI', '$2y$10$msjkN2UQyPpYkTanpg7.SeqkZPDGruMGBIpVoVKTFtYXXz2E4LPVK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(254, '155314007', 'YESY MAYANG SARI', '$2y$10$nuFhXPflSwamVCgp.Spcmu9gCmjlumSri1xFp/aUwVzosoqt9luBK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(255, '155314008', 'ADRES KUSUMAWARDHANA', '$2y$10$fsxGa9bb.5ztsOUQM5iUve0.GXtQ1yxaFEXlxcalso7d9WmQaEX.m', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(256, '155314009', 'JAVA SINDHARA', '$2y$10$y57.ab1yhLRSkPw32xeTIu9nbZ2dy5ybMekLQeMAw4b3hZu8INgkK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(257, '155314012', 'MIKHA ADMAWIJAYA', '$2y$10$dDI225qFJFWDktLKaajZAuWVW3kDQiVn3OK22ybtWvo7nFWx9IKJq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(258, '155314013', 'LAYUNG INDRA APRILIA', '$2y$10$cy2.31B1glrISNSAMLPKs.23s9m7a9JLx8WtkHB1u1oakAW.HLKO6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(259, '155314014', 'EVANDER JULIANSYAH H', '$2y$10$P28DQHROWRtDfvNlRw78F.7AQ0F90aGL9AkAgBNqaDiAysb1qJ/b6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(260, '155314015', 'GERALDEV MANOAH', '$2y$10$c9TRgOAEr3YJXzuhv7G8Y.Yx8m.4tA2ZZ0Lgl0fD.UOPHyRGCXLui', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(261, '155314017', 'ALBERTHUS PRAMUDITO PUTRA BERNANTO', '$2y$10$pweMM.FStl7gBMT45IM/SecaNwrr9D.Ppbq1gQhpRTTEBx.7A30gK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(262, '155314019', 'STANISLAUS RAFAEL BHAYU NUGROHO WIJANARKO', '$2y$10$meWfXhlidsqvGHv18xkFrOJKx8UAQS/0gjHOfVgaWLWE4pr58hpCe', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(263, '155314020', 'DIONISIUS TAUFAN ENGGAR INDRAJAYA', '$2y$10$KgU/htDYHTY0YoXcqdgGA.lu5Qu61ozkb8Jb.GA9bur7yLk0FuHqO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(264, '155314021', 'WENTRI FEBRIASIE', '$2y$10$01ElcMarBIUv/9KOYbd0S.9Meo/md9EmcSPQpOeNifGixLQfBPQri', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(265, '155314022', 'WINDI TRI APRILIANI', '$2y$10$8sLpQEjJu9rBV.Q/iA1znOwFknRM2dDF1QNqlDcLDYWSyJ1swCiN6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(266, '155314023', 'OKTAVIANUS ZENGGI SURYA PUTRANJAYA', '$2y$10$DaH5NTJsjPXNnsRdN/1cHuSjnfdL5iJzSlNB17N9jLWBKc7AF9Yjy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(267, '155314024', 'OSMOND GIOVANNI INDYAPUTRA', '$2y$10$HTfwaJmVb.GFwoa0M263sO1RcOYe1totw6iKFMjrF.IpfIx.S2Dse', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(268, '155314025', 'AGENDA YUDHA SAMUDRA', '$2y$10$XAehzUoi4Ju3DI1EwEKJ5u1OI0rrRQMX0ttMzSZoSaeBtbHdPmNPe', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(269, '155314026', 'CHRISTIAN CAROLUS BAGAS PRADANA', '$2y$10$wloHVlF50kWg4c7PR5VZmuja6JVSODm4CF5t0K1lK1ANgW81OX/sO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(270, '155314027', 'PETER GIGIH TRIMULYO HADI', '$2y$10$HUgfHtjtZNEik2k7q.9UHOigGExYRh7.B2ItXiHYsJaX6xXmjAmrW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(271, '155314028', 'YUNUS IHSAN SETYAWAN', '$2y$10$YjXK1GICkx.qfZIEgwHXDuRU1C7BpQ3cB6MiDItIdlSErGBv1guii', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(272, '155314030', 'MARIA DAMAYANTI', '$2y$10$DNR0lgq1qP5eL5R1RFgNHuSZT1jN3At8vUjsOzr2POLnanGlE7FES', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(273, '155314031', 'ANDREAS FEBRIANTO', '$2y$10$z.g6j76IWRBYTsCAfOcKHuRAHT1KlOa0EHgR/wzSHla/v8TTVTsca', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(274, '155314033', 'GREGORIUS BIMA KHARISMA WICAKSANA', '$2y$10$4HEp3zHhvaMuHaxL8.kQZuLdwU9tTeNBNAQuZMOhI4ea7mYcnMn0a', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(275, '155314034', 'ANTONIO KENNY SETIAWAN', '$2y$10$8rddAgG32TaBkXzpTYBQpusbj78e3euIYsiNPa70.X00hS1gqwy6S', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(276, '155314035', 'MARIA REGINA CELISETYAWATI', '$2y$10$6itmPVyHn4giM1pim76hhuB1Txd.fOjphu.nhVbPiiMqW9Zcxg0BS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(277, '155314036', 'ANDITIO KURNIA WIJAYA', '$2y$10$WGZXmrIS0O8mhIXFKrH6ie2qnUfgxq.aVNnYZbYpc/6MO2aSnCrIq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(278, '155314037', 'ROBERTUS GARIN PERMANA', '$2y$10$nO2nuzVmmHo/H2fXtYUExOcU6qGJebsYUaV9vL38D8UGR8oa2GDlq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(279, '155314038', 'MARTINUS TRI NUR CAHYONO', '$2y$10$2pBzagarGcKZ8l9g1yxhBOMDF.5zut.m1EnOxSqo6gWeiF/XDHo9y', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(280, '155314040', 'YULIUS ELFRISA DESANCOKO', '$2y$10$xlC5ebQeZw6IjqdBpjZEC.vz5/SAq3EuQ3bQ3l4rY.pxcd.ZnP6qa', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(281, '155314042', 'ANINDYA SABRINA PANGESTI', '$2y$10$8zSb5qDgnqZdVnV5LOg2seBpSqOGNMbeqLma65nySFaEsJmG/zll.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(282, '155314043', 'IGNASIUS GAYOH ADI JAYA', '$2y$10$Fx4VuC62hXKsmkgrJac9GevYU26r4lle3FVP0k8wih7Q0lncrUjYq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(283, '155314044', 'YOSAFAT WILLY CHRISTIAN', '$2y$10$nEPothRzLr9WK/C9kOlnNe5Jip6aNK3iQdfQEEoRKX1Kjijq0KSwG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(284, '155314045', 'MONICA RINDA CHRISTANTO', '$2y$10$NQXiWunEvolpwxatZ53KX.OCqvoxHGSniU/fUGYSBaKCBYxF84Sdm', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(285, '155314046', 'FELLIA FEBRIANI', '$2y$10$.6kmgtUe7Ty3.21CyqLS3epBnKl1CrxyMOa416Zrls2gmAZet9oZ6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(286, '155314047', 'NOVRI KARYADI SAHPUTRA', '$2y$10$ae9MuzGoGQ4/xueSyjbNQ.zgJGzy8jJoTZ5Krxd9qTjjGLDFGuLRS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(287, '155314048', 'YASINTHA PUTERI LARASATI', '$2y$10$oQ6ZmNf2eUvRRbR7kK2i7ugQT/8nVYgyDN2rnoi.siX6JiRbsWoSO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(288, '155314049', 'SALVATORE KIDUNG SIMADANU', '$2y$10$Ir4O22kkP/8rvOQNjZUFKOQsmT2FtnTurPaF7wbe7I.h17qRhMzGm', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(289, '155314050', 'BILY LESMANA', '$2y$10$exApjJo.wEpneUBbrRHV.u6DXcEBS93rd4hBP6HGSkDsgkpWpbyRG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(290, '155314051', 'RIRIN DWI WIJAYANTI', '$2y$10$cdoAsTp1l/9640Ih0mr6M.GyZhUI1EjTUv1OoJta8Dh4Tp10Cf1Fu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(291, '155314052', 'ANDREA SETYA DEWA', '$2y$10$a4SvnJ3bq6KrPFBZ/9OAn.UjqKl32pkecXRLwZ8PBKa8aa1UPlrlW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(292, '155314053', 'STEFANUS DWI RIARTO', '$2y$10$RZ.VPsi6gUC3c/OKF/kaK.EmlRNxIjfi5oDj16DGjVQyMpWO87VkS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(293, '155314054', 'NATALIA AMBARWATI', '$2y$10$P6JLNuSYeuQiEaXyE8zw7uoeHPu25TJ571xEDV6CAAs.YsO.jEgVy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(294, '155314055', 'YOHANES PUTRANTO SURYO KUSUMO', '$2y$10$XiXWdJTLyApnWozDVYlDHuPVxoFTNFy5yf6TDhNs4sKmjY2KhriJK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(295, '155314058', 'THEODULUS TITHO', '$2y$10$ldRgwIEJykfdrpoPEd6.N.3h3QCE8oBeJXU0weiCPSENuSiOgiuU6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(296, '155314060', 'PETRUS AGUNG WICAKSANA ENJANG GUMELAR', '$2y$10$xR.TzjcQvqWPS6i0FprJm.XB3RiHP5xs6SEgSlR2ZPKstirCc57Pq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(297, '155314061', 'GALIH SUPRAYOGO', '$2y$10$pe/kz9lrze54fn2/GftwyuNY6CiaBIQK2un0cN8Zl3looWs2fy8fG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(298, '155314062', 'JERI FERDIANO', '$2y$10$AB2fl1NfNlQO9agKFVgcsOu4GD0nN2up53pk074VQPDuJprbByijm', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(299, '155314063', 'NANDIEL DESEA ANDANA', '$2y$10$k1JSkiYUZQuHbGPHIT70AuYkerlyxi6FaNmdkPfRXDgfjKxrOxANm', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(300, '155314067', 'MEGA ANINDITA', '$2y$10$dMe8JuLb2jVFIBk/8VV61uvY0l5Tdvbvln6PzIw0lLW9tgfJ52Cs.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(301, '155314068', 'TUBAGUS RENDY SURYA NEGARA IBNU RAHMAT KARTAWIJAYA', '$2y$10$Sl6W4skVDZqyKGNrOrZ4P.DBkeHqkTRxZZ1.VzgnM6RrnWX5N5LFm', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(302, '155314072', 'MARIO AGUSTORIUS LIODA GHETA SEDA', '$2y$10$Ix3N5L4owLhvI79b4lw2l.mnpTYtdB1xUSOUP7Jx3H2xGBg0a8Pi2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(303, '155314073', 'BASTIAN CHANDRA KUSUMA', '$2y$10$r4MaEw3a1HogUj6zmeII0e5GA0a0EwzZyxKbmvEekPuyzetStdsjq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(304, '155314074', 'RENTAH ASIH GALUH DEBORA ISSADHA', '$2y$10$JyjDlhJZC9zsmWcu.JIH0exPvhTfuHAbqFaz38kM1sTv6yROn3UvK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(305, '155314075', 'ANDREAS KEVIN FEBIANTO', '$2y$10$AU9csq1VcypOwx6zRTdeROvYr5yvRLExfqSgGZPhsWKPlSMl69RYu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(306, '155314076', 'DAVID PRASETYA ADI', '$2y$10$yK7GXHCxkrh4025Sd.V/heDWV1ETtkapqtdaohWyIBV7JGijMuiMi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(307, '155314077', 'ORNANDO TRIHANDARU SETIAJI', '$2y$10$ldhUFaUAR9kk4j6mgf8O1.XCTR5LsfJku2indCa62hDOq9FPAcm1e', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(308, '155314078', 'JOEVIAN CAESARIO JUHARDI', '$2y$10$kW6J85GP20LedhsbV4mv8u0sDjekKmeKYUhf1Ws2pQqQz708wlEDO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(309, '155314082', 'ANDREAS CHRISANTO LALO NUSA', '$2y$10$buUya0bq8vL9OSwG4PHc5.E/mDOeq0LCrenbZBS29oO4UGse7DNJi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(310, '155314083', 'KALORINDA', '$2y$10$xxnMYYZns65sQaip/kewEOPF/iRQ7A.dhE3ZRgmH911TgOa9sTYJq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(311, '155314084', 'THEO BUANA PONGSUMARRE', '$2y$10$cQPBcCpKXRrQYD2nDPwTUeSoW637gdT3dVkUPFi1eM6N0KBV..9.a', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(312, '155314085', 'VINCENTIUS BAYU FAJAR KURNIAWAN', '$2y$10$kBqB4/d4fnxaz57a.v6m/Oq/bMjS/T7NAkl9Zwlmk2ycweFbjZFse', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(313, '155314086', 'Y. ADVENSIUS PUTRA PAMUNGKAS', '$2y$10$7/M49gCIoX0s4DfxAndMuOyVvdUFoshJTmirJmcMUnuqPg/XMAR6G', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(314, '155314088', 'VENTYA FERNITHA', '$2y$10$jDg6DuQoHNkV3ubPzczdQOo6jzXY/UCeUNwwCjIeLuIz2vMVNt.36', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(315, '155314089', 'GHERALDO SARANGNGA\' BENDON', '$2y$10$Pv6eIO4raWY.PBh3vEGi.OA1UbtFvSg.TqGQ.EsqzJr8FVRgcBt9G', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(316, '155314090', 'REINARDUS AJI HARISTU', '$2y$10$LDZYQl5nr2B0AWbTCXXU3uM0iXK2GbKr9h3gWo4n1zEmevhy.wtbW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(317, '155314091', 'ANINDIA ADYUTAWATI NUGRAHENI', '$2y$10$E0eoEWjAODDM1T4qGKE61ecp9hvWnEDoWThd1KD1.Kopm6wLGBHgK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(318, '155314092', 'LENDRA RIADY', '$2y$10$LHqM3O9C.LVdhq3OdDIJouRppX4a0byXE5Tbblbn5bBjV28cc1LMO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0);
INSERT INTO `user` (`id`, `nim`, `nama`, `password`, `fakultas`, `prodi`, `status`, `statusBEMF`, `statusHM`, `role`) VALUES
(319, '155314094', 'JOSHUA BOANERGES TAMPI', '$2y$10$bsbo6HvhgvGdgt8cckK6nOBl4u5ynljg2w8kDt74V5uPMtQwx4lDC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(320, '155314095', 'YOHANES ADI PURNOMO BATLAYERI', '$2y$10$ntQzOitA1e22b9nJx/dqoe1E4IjAZQG7.s0YpuXJkoLfUtvykXDnO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(321, '155314097', 'TIMOTIUS AQUINO FEBRI WIDYASETYANTO', '$2y$10$wBMr9SDge3dMzKojcma8uuk648Ot0t1N9Riuvpk/C6MixCrqkav9S', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(322, '155314099', 'SULISTYO ATMOJO', '$2y$10$OKdDCYOdkTwosPZ8LzjGOezaJzkyP2TVbBG7us3mfTKiomMjJ2r9S', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(323, '155314100', 'RISKY SIMAREMARE', '$2y$10$ZkD3J/qdjPFjoDvg7UIAUulNzVbPH15zmsU74u1cDJa6M2wv/ky9W', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(324, '155314101', 'CAHYA WICAKSANA', '$2y$10$pG7zQIS1j2u8X8BCqXmtJ.M6.YfvUtqgfPUlZeOo7thhJev2Ntbay', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(325, '155314102', 'SEBASTIANUS RECZY.S', '$2y$10$xJIuxcbPvEke1vJZbZnJAeRe7krr.En9HRJBhc/rVzeCVAooqxqMG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(326, '155314103', 'RUTH HANSELIANI', '$2y$10$N9jt51d2rGG8NcuoU6o.O.AB6zm3n0/89ksn5N5oHP0TDKYOWxYv.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(327, '155314104', 'RENALDI', '$2y$10$82lKorvWchl91H5ABQCwUel4Jd7ggUbMa6kWz.w55yucZjEagtjxO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(328, '155314105', 'ARVIN ADITAMA SANTOSO', '$2y$10$u1Xc0w8uG6czVp/4d2DwAehkodj.WExs8Pad3i8/wm0UBTVehYKFW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(329, '155314106', 'LEONARDUS PITER MAHENDRA', '$2y$10$ToRv4c5qPr7pO/a5LTsqTOdYvhXxIiP7Ql5SRcACHpUYG3efmAkyi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(330, '155314107', 'CLEMENT ABRAHAM SIDOMULYO', '$2y$10$Tyv4ibkDZmTZFCkA7p1yE.JCpnzLhfANilqp7Sy8h8WZhCgTY4Iu2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(331, '155314108', 'PAULUS BREMA HUTAGALUNG', '$2y$10$WyeLdPqsqDRj9.aSvaUuA.q5a56PdTs8pAJliHz/dOM2ryUVa4kD6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(332, '155314109', 'ELFRIDA AFENTRI MANURUNG', '$2y$10$/CM8L1jZ8yJvhIW1ae6dseEeCKENyoueeKUFqzY/8UodeeBuI4vpi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(333, '155314110', 'JULIANA ENGELINA MANULLANG', '$2y$10$JSIeX8tUxzlWrkgZZ/fJLeA7nyFJmE3NZe4RyhhMnbKFip/0BL2pC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(334, '155314112', 'IMANUEL MOSES SETYARTANTYA', '$2y$10$NqFeh4xwFpET4jiYcTVlLujOLg14HzbBuCQwvY8iG9j0Ml2PwXTg.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(335, '155314113', 'GISKA CLAUDIA SINULINGGA', '$2y$10$klfGH0QgoucImiLDZOMtL.Qiku1PoCSpdTCIA6bh2y5BqUNju6DB6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(336, '155314114', 'BAGAS AJI WICAKSONO', '$2y$10$qyoc4YlklLtFr0fVM5UWKeLW3LMp1LUcltCviUUtuzt8ucYiItHgq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(337, '155314115', 'CLARA MARIA DE ROSARIO TAEK', '$2y$10$qcV5aSPYWbuGr.ONHZbX3OoUACut5XzsIbAaTK5ZSnLqgFyG4sOXq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(338, '155314116', 'GRACE MARSELA HILDA PATTINAMA', '$2y$10$.4nLsWFWo2KPeputYyB6l.21GVHkKlLuAPE8Fi7qcEcm.HR70Tymq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(339, '155314117', 'GREGORIUS MAGNUS MEGA SANJAYA', '$2y$10$cEdooLH83ze290CJ/gXiNuR6t0jD1GfsMHSrgyvYtUcnf3ujaPuUu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(340, '155314118', 'ABRAHAM LOEDWIJCK', '$2y$10$B/bwgbWddkkg2nfu0vxPsOSG2H/QXrG2d3GqJKevFlodpCGGbmYJ6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(341, '155314120', 'KARAN AGUS PUTERA', '$2y$10$z7rIiye/joC3r8PEWO.TE.EE/pUogD480qPJSrRd0ErUF2./8/vWu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(342, '155314121', 'REDY RENNO IRIANTO', '$2y$10$IKbDThOFBzZcxclH/TQSnOq3zt6uF.5Z6o2vR6mAg5ZBfuz7jiUye', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(343, '155314122', 'GRASFIKA APRIANI SIHITE', '$2y$10$tNicm4bXMxmiEPKh9M4YYudBwxlr8X62rCeqvWUcuNftTvLi6ggDu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(344, '155314123', 'BALTASAR YANUARIUS S. SUDJONO', '$2y$10$uthIf/pW/g3AP/XkFnsZn.nTLDbkFGdqxRrbKfFjT.PNNbDK634am', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(345, '155314124', 'MARIA CHRISTIN SIMANJUNTAK', '$2y$10$FheZ/RxfSqqI5K1OT3mxv.53BTyRvYCv1wyhpp5lJ.YNmo8DPvqv6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(346, '155314125', 'JAN WILLIAM SIANTURI', '$2y$10$Go9DqlvGTQ8gx5mo7iDR7uvnohTZpnxqAIpVLIMZ4W0VU2dYm.vgK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(347, '155314126', 'YERNI MEI SULASTRI BAPTISTA SITORUS', '$2y$10$p0jHtUP1vZVbZJ0UWz8nIeuzwjNtZDlRphHAmZ4e3KIc4j1jLAHGO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(348, '185314001', 'ARYO NOVIANTO NUGROHO', '$2y$10$kixzcFLBDGL9oaH6OV3aBefOpQkkRYB7NRNiHAKcv3rnjmXK/rLrG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(349, '185314002', 'MILSYEL HARYANTO', '$2y$10$29Fh.ivy1PPNw76BtManPu6V6r8AzXw//4sku2gSl/iD3NDM7SXni', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(350, '185314003', 'YUSUF FERLIAN ADITYA', '$2y$10$t7WLEzhIotpuih1h1zZ0d.6QLBJ0uYTyG9a6PruQFH7CKCju/rn0m', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(351, '185314004', 'CALISTA OMEGA MARELLA', '$2y$10$3.apjQ4akJGC9vOj117iL.xc0BnvEAVZpOQMcVHcFm654Qz8HWOt6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(352, '185314005', 'DENNIS BONARDO SIMATUPANG', '$2y$10$zObhLBGbFeEbd.N36Fc9H.hci9/1ve72KG4inEJQFTZmWxKxE.Tya', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(353, '185314006', 'CAECILIA MITA TENOWANI', '$2y$10$C58ni5HzAjeoBWLoqKeCmuwye79NMwKDObcjXGr/cXUT1WYSDfZ5W', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(354, '185314007', 'GRACIA STEFANI PUTRI', '$2y$10$l8NTnEtjS7yBSZ1xoyIPa.cihwr7aGkGFRpzwzK3Pd/b4LgfntGIa', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(355, '185314008', 'ATANASIUS DEO FIRMANDA', '$2y$10$osxyLKILE0IHV4rw2tDbvOyPb2p.FUjiv6IHratzuAZPX.SccOKN.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(356, '185314009', 'NIKOLAS SATYA SUDIBYONO', '$2y$10$r.rewEPVEZYF5JA0Tg0daujNDSPtbTsKXRGTnTxtjQ.s/SORowcJe', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(357, '185314010', 'HERIBERTUS ARGANA RAJENDRA IVANTO', '$2y$10$Ogy3F1MVGG7NRXV1OY2ZXuJGI9ovu1.AMIwDUx6EAhGzx/osEUdCq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(358, '185314011', 'PRATAMA BEKTI KRISTANTO', '$2y$10$OoMxjL824mOGkyIEkI8zNOzClz0cEg1CUgQLx7pNJm6ck8LR6OIt6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(359, '185314012', 'YB DAVID RAHARDITYA', '$2y$10$837vwJnJjYnyRoXBdZh4w.DfZMS4i2EVYWruOykVQph02JHIgDY3S', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(360, '185314013', 'B VIRGIAWAN CHANDRA KUSUMA', '$2y$10$xuLz3VkmKTjbD9lXbX5y/elHU6HJQvLGYa78yHw1wscv/KVyiMUSW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(361, '185314014', 'MATIAS SETO PRAYOGO', '$2y$10$bgeUSl5lMZgjLybZsnsAT.dSoz.YgmACgW3DtQoq2HcxVvuk/CX6K', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(362, '185314015', 'DOMINIKUS DWIKA HARYO YUWONO', '$2y$10$Su1oUPfMBy2/JMY53qyoWO3Q0B/KRO6HyEAV11aTSauWD3RNlq59O', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(363, '185314016', 'IGNATIUS OBED TITO ASMODITOMO', '$2y$10$eHiTYBpEuiZ2ra2P3UtpJuNjBpDgq4XRJkZXWgQCsl2KFUuVQ9OYK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(364, '185314017', 'CHRISTIAN HERDANIO HADINISWORO', '$2y$10$LFuBOtZrTpXZNAIllrNheeb4BXyawdPHfSBg.UAxe/YxIxiwszVpq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(365, '185314018', 'JUAN HENDRY ARTARICK', '$2y$10$nQW4nMwO4virNenYkoRicecnQ3LZQfioxuGpnXLi4TKtuZnkZm2ay', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(366, '185314019', 'MARTINUS TRIWAHYUDI SUYANA', '$2y$10$clj03b4Rz31sj0kMz/LaFuNnAosPy0wZ5tlA6YvCGvvgF5EMNfrUa', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(367, '185314020', 'RAFAEL NANDA WIBISANA GOTRIE', '$2y$10$/sbZKj.awkf/j5XUcmj8zOIbvdqNLEndr9CbgmrYUnGJnxhKxLPNC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(368, '185314021', 'RYAN HERMAWAN', '$2y$10$vNHwQHYh3dGV2en4fds5Pup0qGBHpEjMPauY.g/gXvJUNdqS79CP.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(369, '185314022', 'YOGA PUJA ARITAMA', '$2y$10$qaoBQK5P83GDgcIBrmv4Mub7rmVPPNypS7NMcJ7b6u5JnmSfZDh3G', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(370, '185314023', 'VINCENTIUS DEOGA YOBE CHRISNATA', '$2y$10$yoQ2nhdajXlb9kyoyjE17um1QpIDA2pvmQIL2CYhQ9aN.scPMbuh2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(371, '185314024', 'I GUSTI BAGUS ARI SIDI MANTRA ARSANA', '$2y$10$1SIq4NKv3d.SAht2A0rueuIiC2K60G5U4TTSxR9.BUIBz1XBBXRe6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(372, '185314025', 'ANDIKA BAGUS SANTOSO', '$2y$10$Jq0XAnFMbX17ghibl9yRSO1nL1TZ8oZhdsd0deHBRCbmNumkqfhjy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(373, '185314026', 'GERDARISTA G URSULA ANOFA', '$2y$10$SDvmqK0bchUsWDwX2Fy85ufgI6Wn5BuESnk6ACcW4yhqshgPec5Ty', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(374, '185314027', 'BERLIANA RESHITASWARI', '$2y$10$Tdl6Pj0iNBuVwBL6BfWslOmTFYy/w0AIDzEtWMmcll9PM2FYrJemK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(375, '185314028', 'MARCELINA ROSA MILLEONITA', '$2y$10$DEQ9gHACVbnOczUXcROdYe5Hq0taMHwkUW6wI8.2zR1WjZQLtYwr.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(376, '185314029', 'MARIA FELICIA', '$2y$10$4pBvtg8eFXiqBhePnXbRcO78zfGMvFBD6uOoMieulcmELbzEqQrH2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(377, '185314030', 'ANTONIUS DIGYO HENDARTO', '$2y$10$/xW/GBCsGMIHk0qoKEnTyuh2tKwwdBz3krkUz5z7/1uq51yE7zNke', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(378, '185314031', 'R. BINTANG YUBELLA HEMAS MURTONO', '$2y$10$nVI3D36hunlxKgQ0nCaQjubQbFfI8FImYgRc9U1VuTb9Xd00Trzt2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(379, '185314032', 'SISILIA TRI AGUSTINA', '$2y$10$cBdKEkg/unyef2IKDCpXG.Lis3dSr.pzRE2aLZGucLeGNkyaCWMDu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(380, '185314033', 'F. VIVIAN PRASKA WANDITA', '$2y$10$m0U25aegG.0vqOdad87mVe8eSTvnTJddlJhQO2D6sX73YezYMoiUa', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(381, '185314034', 'YOHANES WICAKSONO ADI', '$2y$10$JoCDcqcXGFmdmYmWD/fQ3e.i503uoSWbJyNXVLgS6m.jSVTcr8536', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(382, '185314035', 'MARSHELLINUS GALUNG PRATAMA', '$2y$10$0G4K21c.YWFkULC79uQQM.Ohg7NSJkPe5sR1W8/f4s3mpzgHRtmMO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(383, '185314036', 'RICHARDO SAPUTRA YOEWONO', '$2y$10$9011f8bVhDGlkIHcm55ncO0VQfetmjQb9uevzUCCEyo8UrDEpD46i', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(384, '185314037', 'MARIA CHRISTINNE APRIJANY TJUNG', '$2y$10$oPKRgwPukVhnezikHTDXEeTcqhTE9A17/vKCI.y8s4Nwdpmc7YhoW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(385, '185314038', 'MAURICE ELANG BRAMASTA', '$2y$10$TCF92lei3aKbij6nh34ej.dbPmoUVGy4gbSLP5F8lvmzGXfP0l6Bq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(386, '185314039', 'EMILIANA SALDIOSTRI', '$2y$10$mzj58AJErvRKLYqarz0/ze29a5nT2PlVTdCGjlbYyC5qj.PhKsLS.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(387, '185314040', 'INGOEL KRISTIANI', '$2y$10$LACFnogr4HPoFjlrmbrucOHmx9UoAMEINmnDFbTNgfb8uI5SNkbXy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(388, '185314041', 'BAYU RESTU ADJI', '$2y$10$2KhsoXrK4zJ2fDEfxCiTy.L4x4HMsVVqTv975YRibHP7aiwzlFMh6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(389, '185314042', 'IVAN KURNIAWAN', '$2y$10$.V.IIjOf9zotEEAtizA25.ZTUnF2VSpAK0kkO5Z3JTODtrBUvlEqS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(390, '185314043', 'BERNADS BAGASKARA WAYANTO', '$2y$10$I5d/hTXEeOoPxELGFLr7zONljQlscXAIwZsMd.Mz.J8ru2ETk2Nny', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(391, '185314044', 'WAYAN EGY MARTEJA', '$2y$10$IM/wgVvTEgcpmyVVNO0xRe2dXPcjdWQUbk9EPOoNvJNCXN/cgwsM.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(392, '185314045', 'RAJENDRA LUBDHAKA MURTI', '$2y$10$7nOlTHr/QjEWptNC3SJOzenPueWXXIWkZPGd3wItp4L1Yanf.BoCS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(393, '185314046', 'JODHI ADI MAHENDRA', '$2y$10$x5IiLvT/htn4ubf82J72deFoH/EsxbXTyCJ/Y1FGe477qsFF..lgG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(394, '185314047', 'ANDREAS EVAN SANTOSO', '$2y$10$SswZlH66Sl8Y9odlQnDGOeNMeZan5KY562VCqdC7Vpc60hRkY.X56', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(395, '185314048', 'STEPHANUS FELIX SURYANTO', '$2y$10$s.LfbEtkxLlv6b9BnUtSPOzbwxB1/WTIMhrjFADHTWlqg2t/V7h6W', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(396, '185314049', 'MARINA SUPPU LANGI', '$2y$10$nr.iPWfK9mSfNA77EDHNd.8VT25Jv3IHUmeLN.rKDFnzIUiyrIsVW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(397, '185314050', 'BIONDY TIMOTHY', '$2y$10$6CKcfKgxpXLcsFidhf0lleogt7./moIVrENhz.0r7JG9Jb6qWc7uy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(398, '185314051', 'BAGUS TRI GULARSO', '$2y$10$UrnPRoobIGEWuUgyvMmg8u91EWwbMhB3zNBBxKA6aIy8/vXalqxqu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(399, '185314052', 'FERNANDO LISTANTOKO', '$2y$10$twXVRl0PWazcAnVCYZB0auKWaECQtZUVbAE1zvmCthgWDILbYc5UG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(400, '185314053', 'IGNASIUS TAGAST KRISNAPUTRA', '$2y$10$pWxv0UwPseVY1xb5zOhkVejxVujuPlQt2i9JI3SqbILODciohnanG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(401, '185314054', 'DRAJAT WIDYA KURNIAWAN', '$2y$10$urXnq1NKsR96lgSD7VYjGu/mmn.edK.fvXIn/hUEOuRZPQX8cw0ii', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(402, '185314055', 'HIERONIMUS ANGGIT TABA', '$2y$10$W7btRkrpyF5sggXZKV4KJODpxVAy53SlbKHrkyk3RSAtuoQfq6K3u', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(403, '185314056', 'YESAYA RAHUTAMA SATRIA JATI', '$2y$10$SjCmUVMVgTnDaA2eJt3OXu3238mHx/SzVHs0XxWtUeRKcbtiKjqiW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(404, '185314057', 'ROMANUS DARMA', '$2y$10$u9o4r7BL9dZwLW74FuH2cOgmeYazqKbxPzzz4IWfma66buA5TpS8K', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(405, '185314058', 'YOHANES DANI PRATAMA RAHADIANTO', '$2y$10$VbG.jr2jsCoZKZfo2cwdsOu1O2beY6u592IVdn1Iwbq4yMr.p8QQS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(406, '185314059', 'GRACELLA ANGELICA EKARIATI PATIUNG', '$2y$10$kbKliCWuvzsg7zwd4.1FQuIzKmTcJ4JEkbvtXpmlHRB1QWRKBlN6a', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(407, '185314060', 'WAHYU GALANG ARLIANSYAH', '$2y$10$HTxUuZpVFhgHRDE8VgR3jebuA9d9sNyTP.PAHK31lPftidFiKf9hm', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(408, '185314061', 'DIAN PUTRA ANUGRAH S.B', '$2y$10$1cM/UCLfXxAXplA3ckgUq.vmrtjfq.mDsRnd8KrzeAxZuJgo/liB2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(409, '185314062', 'LIDWINA RATIH TRI WULANDARI', '$2y$10$w.NppllN3QGezfolzgWe8eNCx.4b2Nq1G3DPJOo5iZdRNLPt8/cxu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(410, '185314063', 'EVARISTA IRIANTI', '$2y$10$SwIP8HHvFTbWxQNFEyzxsuFLja1KWILaUNHj8FB3MR4FVYx1P.EM6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(411, '185314064', 'CINDY YUDHITA MASSUDI', '$2y$10$PL7/xJaeQ6FiRnQlE5xGNOD6.7IR7zo0dJyqE.5r8desyOxBLB1u2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(412, '185314065', 'YOSEPH ARGA BAGASKARA', '$2y$10$lzBAcszVcJvXLrrhNIIgn.BmaRQQcieWj51eQBCD0bjVz1PUMbRXS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(413, '185314066', 'ROY GABE SITOMORANG', '$2y$10$kKX6mlSsiWa4B98pmokx2ul7eFqWZl227XGZX7.u5JtRBvSAXKxc.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(414, '185314067', 'FELISITAS GEA NANDA ELVIONA', '$2y$10$mU/N4mqR5FTJlmplWT8GM.8qgjIWKLuBoq3C94MAOZpTQWE8V23V2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(415, '185314068', 'DANIEL DEWANTO', '$2y$10$SGreki/5ja5qibQifp23a.S9/WKommCdbuNvLM.e1Noan.hQXA2.C', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(416, '185314069', 'YOLENDES HERMADI DANDI', '$2y$10$EVmsN1xtMHU5gh9PyXarT.elLi.bFp2nnUDQg/1IOkm1YZ7kw7n5a', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(417, '185314070', 'PETRUS GALANG ANDRIANTO', '$2y$10$QQGQnmSpWd.02hO7VHHEs.IN3M/t6P./l/UinQOtVzH7cl8nHxKJ2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(418, '185314071', 'RESKY NOVALIANDY', '$2y$10$rc9HFjiXgQKXmxWBqOQJHumkppdwBBB9qymdJ1.ujcwAKpJ8pDVL6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(419, '185314072', 'GEORGE JUSEN', '$2y$10$E43o.0h88.X6xXVXzfkAP.Gu7ykEB2l5iNPSxAlVgOHke/BU8DN9u', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(420, '185314073', 'KAROLINA NOVERISKA', '$2y$10$Xi2c.g9wIdEu44I6ZLhmZuexc.wSglI.dUAkA480CbUpWSRqGPO8C', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(421, '185314074', 'MONICA YESONIA', '$2y$10$WtBSpSJqIRoBGxbPX8t16OlBCccIzZN92djZkG0cHRvNEI7lChmpS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(422, '185314075', 'RAMOT YUSTIAN HALIM PASARIBU', '$2y$10$fn.pgjyaJZegIBTQ4.ZLSucYEow6f/SQLvCeofQ01jUs6YiiPmLMG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(423, '185314076', 'CORNELIA NAYKIM', '$2y$10$dokDpwv6mU.a7CRNA8CtIOB6aWkKnW6p.36dlW1AXlnIWGCIM6CR6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(424, '185314077', 'DEWI', '$2y$10$BdL7ELyauq8k042QekKlG.yVI/5mfIQpH3H9oRNu3vovJ7izOazOG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(425, '185314078', 'PUTU DIKI CHANDRA', '$2y$10$Wmis3bjvKKUR1niH.mv14OLFTepvI5YnoOYsHIlqyzMhUzYUOMpru', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(426, '185314079', 'GERARDUS ARLY SETIAWAN', '$2y$10$zHOY96CtZCVUt098Fhci3.5y8modLYqZIE1MBn/mdoVoI.MKF2COi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(427, '185314080', 'CINTYA CLAUDYA', '$2y$10$C37xS4UfuMFXJw/VAeLRg.H.VsXE2Jnz/C1In1FTEAzm/jS6QX...', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(428, '185314081', 'ANASTHASYA MILLENIA PULUNGAN', '$2y$10$a1dL6lPK21nw5bPu0fvT8eBdlaxlQZWqxFGv.D2l2aZBvET30xLGO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(429, '185314082', 'MICHAEL DANI KOGOYA', '$2y$10$ce2ui2e2.xmCYTrNDyx8u.DfvRd6SWdeKLwYYUZFvPQxlivF7Bi26', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(430, '185314083', 'BONIFATIUS CHOSHE MANGGALA PUTRA', '$2y$10$4XowIH78C9bhQzggpgGbIe/nM5nKJUogo2U7EBl34.hY1/h5rq1se', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(431, '185314084', 'YOHANES DEMAS ZANDRO NOVANTA', '$2y$10$0rXIeASd/1oJgFNjWMYn0OZzYOeQ3/U9gTEjtwtFf4VuIk7WT5Qni', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(432, '185314085', 'EDUARDUS ERIK', '$2y$10$PtAfbRibttOhKDsOnqYYQOJLKnJMyd7rJV7132y6r.SAwCLWjGXom', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(433, '185314086', 'DAMIANUS HALILINTAR', '$2y$10$Je1s.EZvdFyogsWSpqzqGe1o2n2vKZUlvdyOXvlvSvrVSlV5c6uSi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(434, '185314087', 'ROBERTO DANIEL PASARIBU', '$2y$10$nfeQRubOkOTtV5QksG28EOzRLYfc48FrJQKfvBRWbivTaaUmHYyHW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(435, '185314088', 'STEFANUS HARDIKI KARDOS', '$2y$10$NVL6cjLCHvV2h0qZbLBSFeabx1ThNBXk3g9Pxe7u2onblC7GWTX.i', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(436, '185314089', 'DESY RAMADHANI RUMBOU', '$2y$10$jfCk9nMEgE2SHyll1fdjHOAZwc2cNETvlAsSx.7uErEpl0gy22ml2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(437, '185314090', 'VITUS DAMA JIVANOV', '$2y$10$61crjrR6RWUhzH/JnKrY4O5Omj0brPxLJpMFeT6NcnOh789LJNBwy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(438, '185314091', 'SHINE CROSSIFIXIO SIANTURI', '$2y$10$yaRcEu/WnwdjyhTxvaGSu.BBUNXAjVEKJJdKFmEKO.di.6VwJU0S6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(439, '185314092', 'NESTA LAKSANA DANISWARA', '$2y$10$i2ILCl4DNw/PKl5Riy4auOwO7bKqZhaLeqRyXAwkAldPwwuo8tuYa', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(440, '185314093', 'KRISTIAN ARYANTO WIBOWO', '$2y$10$EYN62Xjy2TfFIJ5aEXU9VeDStPGTxSkks88aNe4QLddfhfwKXVJau', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(441, '185314094', 'ALEXANDRA VELMAS DUMATUBUN', '$2y$10$xdAnyIEeTZNgw.Jj1elg5Om1uzp6ALAKC7JlNWT8UWhsYJgNepsEu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(442, '185314095', 'ANTONIUS BAGUS HENDI SAPUTRO', '$2y$10$AIQwWUYd6Qa0GwecbkuDP.ZWRVO1FIuZjSfyoEysykeEacmSD1t46', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(443, '185314096', 'TIANSI MIRANDA SITINJAK', '$2y$10$GmoP5PPRY1iTp1yoDiB2lOqQr9U1RWgpwLXlhStu0Q7yXA35lLPhe', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(444, '185314097', 'YOGI ERNESTO SIREKEN', '$2y$10$O8lkkHKuHIoT6eiOV1BcJepmLP6bbdAPEs.MhPlI8yR7NAJaCAcVm', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(445, '185314098', 'FAJAR WASKITO', '$2y$10$iPVpTUapUrDrJfL6ONUlFeZ6pnu3M4h7HsIJEDzwujCArShJUWSym', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(446, '185314099', 'RIZKY STEVANUS HAMONANGAN BUTAR BUTAR', '$2y$10$fEL02X8I6hdDCVYe1v4Fn.YHlWmcksCsJivmZ5.tJ/4si8lB3X5se', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(447, '185314100', 'SANGAJI IHSAN NURKHOLIS', '$2y$10$3/mw0BkbKBF4618MjWM./.CKpXajUDveXUXMEO1XJLf1GJQslZeWe', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(448, '185314101', 'YUDHA ADHI PANGESTU', '$2y$10$uJu7/YNID335vN62zqmzCeJyWqJ3qN9EyUtCUR/WVKPzvp/1b6DgC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(449, '185314102', 'NUR WIKAHA MEIDY BROMOZA HS', '$2y$10$.tmZUJorRUgq5Ck/.2UswemXo4IdWorCo9/q7VtQj5rKe5nvVlbHW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(450, '185314103', 'AGUSTINUS DENISIUS YEUYANAN', '$2y$10$2krvRlCQU6L1.RtYJVs4L.2RM.eh4ZJ21e3AJSQK50N0E8N.K3PiS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(451, '185314104', 'YOLANTA NASTASIA NOU DOPO', '$2y$10$Vi3D0xWSsRQ2P5RZTljikufCs7vhoJ0LjiMR//MNZLp/yGmnBjSRa', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(452, '185314105', 'TEOFILUS ALFANO DESWANDA', '$2y$10$zMoVf6rXbfKjsgEI6kRKcujjDkWEeD.8olFePSxWwUmRWAw0hfZ4W', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(453, '185314107', 'CALVIN EKAYANA', '$2y$10$2H/debLlfwr8aoSElFITm.dhqDajXCTrjDDB7Dr2U8W3zQzV2IsCy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(454, '185314108', 'PHILIPUS AGRI ADHIATMA', '$2y$10$yoZi4pX7jXECSocKWHYBEegj1Jew5fy1s.xcyJ1ETqk2Hk4zgEBMq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(455, '185314109', 'PRISCILLA ANGELLA INDRIANI.T.DERU', '$2y$10$J5R9Lg/1AM6dGw9/9KPiBeKKrSUpGvsC45CcoJhwnN/0DyOWKmFU.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(456, '185314110', 'NIDYA MUFLIHASARI', '$2y$10$Hm6b9JS5RkP0aGC3epmeiO/eUBE80FAL3lphbXaiQHgF7Aep0aNVS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(457, '185314111', 'KENNY GILBERT', '$2y$10$c43v34F/xblBuqnO/4Tgke4u9kIZAaknMbM4Tcc4yYrJvckV.rmvG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(458, '185314112', 'BANU NAI NGALIS', '$2y$10$hvHfphbBpA83lcVMo4Uktew/BP9ZVltvUiQeQkCui1EJRRE2OmyZu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(459, '185314113', 'ANDRIY GABRIELO BASTIANTO', '$2y$10$a72NLkVNfYw/RVqp9onMl.tPkHL1jAj7PzLdcUnQV1wdC1U1b4zoC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(460, '185314114', 'AGUSTINA BUDI STEVANI', '$2y$10$MsxcLrKiRBx9sJEguAA8aOsg2fkmPhIaq9cstEpP6sye1VX/s8hDS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(461, '185314115', 'GERARDUS MAJELLA HANGGER ANOM KASWOROJATI', '$2y$10$4H3b8i/OVRoEnN0Y01UneerODI0mrLaO658UPrigpTyLqXaSdqUDS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(462, '185314116', 'D. AGUNG DANARIYANTO', '$2y$10$rke/LaPVUnmm3Rlx7iN8OOUxOmHO4IuFvwoz2EvkIYt0oq3gZmyIS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(463, '185314117', 'DESI DERIUS MILLENIYO ROWANDA', '$2y$10$/o96bHApboeiEWmk1KHV5OScOBUhaNfPRhD4DH35jUWa.aUj4FdP6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(464, '185314118', 'RADIT AGATHA PRAKOSO', '$2y$10$no5SR8lKqljD5BbGxQV7GuNpl094nezblt.19qivYBo/Ei4ijM9qS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(465, '185314119', 'OKTA SETYA PUTRA AGUSTIN', '$2y$10$eytzheM.qztmXivzZpAyyeU1DZcqn.7a7pkYpz/.MBe3IU9qTg6z2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(466, '185314120', 'NOVIYAN IMAM ARIFIN', '$2y$10$Iyp17VGlTkqUzxGgcoTfY.HsCP9j/dcImZUZrespVuW2J.aIXQG0.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(467, '185314121', 'FRANCISKUS HENDARDI', '$2y$10$QxF4ZTeUEqWRfuK2rK5iv.Egs63Vymh/uScHsUoXoIuAfXH4gJ52a', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(468, '185314122', 'LAURENSIUS FERDINAN PUTRA NUGROHO', '$2y$10$wJkAfAqeE6QSUkC33nHGQucqArXJ4qUUV7lwX73T2fYaDBtHAmtve', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(469, '185314123', 'YULIA ARTHA ROSARI', '$2y$10$NNury0u4vf.yErs982S5ZeVJ9BOsA3PkWOu5jDvygJuwsHNxVAawq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(470, '185314124', 'GREGORIUS YURISTAMA NUGRAHA', '$2y$10$AswftUHBEMvURGd6k3gEUu29oHosXUflnwg0IaKPfVWr.MIoAzoju', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(471, '185314125', 'DYLINE MELYNEA FERNANDEZ', '$2y$10$1QWjIK9boklO/0ouHbMmNOvGE4vb3RL0WfUUpudELKGpYwesFsTCy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(472, '185314126', 'RAKA PRIMANDA PUTRA', '$2y$10$aGT6B9wmmNDwuscUV7SB3OZ6XEMmha0w0yw0UyAShl2xeYISJnd2q', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(473, '185314127', 'DEAN CHRISTIANANDA ALFA WIBOWO SILITONGA', '$2y$10$uyuSvI7vWc4nFF/8081iROxz7AKiJfzBQSfwu7l6qgjnyDiF4.Kdu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(474, '185314128', 'LAURA FALENCIA OKTAVIA PANGARIBUAN', '$2y$10$i0mHGC8Vih9ExkS/UFM6eeCdYzvl2/5eapLqL31tDpLng7zEuytSW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(475, '185314129', 'PRILY ADISAPUTRA RUBAKLANGI\'', '$2y$10$oHy5PIVu961wHX6YRL4SueotvzUdZ1UXtqdcmhxvEnepuxYWPbD9K', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(476, '185314130', 'GREGORIUS ARYO DWIATMOJO', '$2y$10$CRb83gH9zF7js6Txd9O8NukOoIM1rOQj58byqbTjY6hNZynyZSMn6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(477, '185314131', 'ARNOLDUS HARYANTO GARUM', '$2y$10$Ff9drQOhkqz2rbWD.Usg8e5mj31XpQwdrHjmkoIpCv66I5bdUavZK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(478, '185314132', 'STEVANI MARIA MEILISSA SAPCA SAGURUNG', '$2y$10$yievtdgykMEjzbwHkduBp.8enV3qx4kOlx.x0VNiNY0gbNxuASNru', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(479, '185314133', 'NATANAEL LUMEN CHRISTY', '$2y$10$vKU0IMB0KoZE3jS2ruy3WeCWjw.xdw0/GVfWdGt8aFRE4D3K78A6y', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(480, '185314134', 'YOSAFAT YOAKIM KURNIA', '$2y$10$W7w5FNwEorSJOM6KFOdpgOq.FVV3lkKWQNNVykx.PUWEMIyE1qfla', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(481, '185314135', 'DHARU JIWO PAMBUDI', '$2y$10$xTErw2IYHeoKvKkKI/IT9uhOHgX6bgQc/c5MOYX70zaQaPX.sRJkW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(482, '185314136', 'I GUSTI NGURAH ASTIKA PRADNYANA DALEM', '$2y$10$Hk1KpatOPzYTlsReDf.W8OrHegqjUq/3CJDNWy9nlsTW3wgXnopHS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(483, '185314137', 'MARCHELIENE MIRYASTRI BOLO', '$2y$10$DYvZAplgNWW657jeAa6NQemvU6yJCjSk.aTbsTtHdkqPAyHnqGLXa', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(484, '185314138', 'PRIMA ELISA SEGU', '$2y$10$ZrEHPnNpTaPRV9/zl/FiLeXWlHFRj8SuFruKOqTNfc1r7lvY7xC5a', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(485, '185314139', 'RADEN MICHAEL MAHIRSYA UMBA HARDIPUTRA', '$2y$10$l65i1nbLWl3bqox1Fg9Ps.2T.mLaBozJq0RyTYowHWOeFSfTbFSPC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(486, '185314140', 'FEBIOLA FIRSTNANDA DAW', '$2y$10$6eBAM6HUT.zGkSqonWu3seCV4T/Bp4zIJ4WNx3bOTxeC3u4rbu0iq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(487, '185314141', 'ALLYSA AMEIDYA SEKARANI', '$2y$10$XE3gW9zDNCDDNys4AxdgOe0VJZ.wl6hObUqnqmEClNpQZOvVK2kUK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(488, '185314142', 'DIMAS RESTU PAMUNGKAS', '$2y$10$dt7wL/rohK4QvCA3jeiL2ewmkQuzw0joqugqH6jmzcNBL7FkalxUS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(489, '185314143', 'HERMINA DAI WADAN', '$2y$10$fWFS3nOuMivTu/vNsVmdc.06XuH1ml4LMaIFlag8Emzb702GSrYJm', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(490, '185314144', 'ELFAN IOBINA VISKI PURBA', '$2y$10$RYbjPG/eCbojRUKmfmA//e/LslA.JUt.J8nbmykV5rSfiY1DpK8Zy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(491, '185314145', 'PASKALIS MELONIUS MOLO', '$2y$10$8swXsEuy3S6V6rPwGsZ0OO10tX6aqHo38GB1IJU1GfshwrSsf2vLy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(492, '185314146', 'KATHYCIA', '$2y$10$il3LmhOtHRp38Z7vp.geD.Y0yS6CyhgyS7M6OvjFuU8c.pxXsgmyW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(493, '185314147', 'CHORNELIA CHRISENTYA DEVI', '$2y$10$L4GT4dRhJ8e/rMh1NRTAIuiJd10QQnW6nOIQIWCQvi5R0PWsgjc7e', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(494, '185314012', 'YOHANES BABTISTA DAVID RAHARDITYA', '$2y$10$PiH8ja.7RGQRzJtl2rO7NONwGYNj49PkjWx5bxAjgqBzHPpRZFd9e', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(495, '195314121', 'FELIX ALDEN NUGROHO', '$2y$10$pnXoaOLsA.OjHuRdGy6jYO08KXS9RV7DfRt3rEOzseMOAN8Ti8twW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(496, '195314122', 'VIRGINANDO KEVIN BON', '$2y$10$HZGlZX2wFfmMUw.XwfBuv.fVK2RRTGlGRjnoBR6ywZqY4ky2bkw7y', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(497, '195314123', 'HENDRA DARMAWAN SELOKOPUTRA', '$2y$10$Et9QZ1maytwP0mv2IqVOD.8.dQ3OnCtJnJLbjIr0oYAoykBrv8xmS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(498, '195314124', 'OKTAVIANUS ARISKI', '$2y$10$QQmRmVTze1v6OjiVKC9a0.Wwui6wW2HBZatEe6J9eBjwyQUJq6QIe', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(499, '195314125', 'YOSEFINO MARIO FERNANDO WITIN', '$2y$10$ROTQka0WxIYJR7oxxVxrQOY1/kJmTiM/O.kDkhdP/3vkGfYq/y9sW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(500, '195314126', 'DESCHA REGINA CAELI', '$2y$10$qeXH6iLtw49C97biKcearuuPcSuLeBsfaO4iwfmDwzoJIdXBIjquy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(501, '195314127', 'CHRISTOFER', '$2y$10$ZcNC/kdy6CdKPGDqkOLDYO0UQ4Kzvy1rAMRj6nAKJqrtfVkOmxLWu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(502, '195314128', 'NI PUTU SANTI TAMARA TITI KENCANA', '$2y$10$zD529LcXSGUdWzPUZaD2geGar0GvLPnfhQsnjuMQPBrBRg7TW8UJ.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(503, '195314129', 'MODESTA YOLANDA CHRISTI', '$2y$10$hMnPktehulXsXkbZsJRGzuQSK/ZLFHQwVKF/sdOtZ25bFrIernzI6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(504, '195314130', 'ALFRIDO MARIO MANIKIN', '$2y$10$8ILRbXIZLLczppkM6Xok9.oSKgwEXq2RA8w2q0NYeW6BmmbFK4Ore', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(505, '195314131', 'MICHAEL DIMAS SURYA ABDI', '$2y$10$FxUo9A2PiZa7rdjNZEV.x.JyoHv2luMUfBroTChc5NszdOVGB1kCi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(506, '195314132', 'AURELIUS ARIA BARAS PANYAPA', '$2y$10$VdWXVPmgfV1jpLIsHIXBT.LsTzDGT/4GpI8tBErQvpJj.jVVNvUJS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(507, '195314133', 'BARA SUKAMADEWA', '$2y$10$jcsDjLnXE.VH4TW1IneGq.NI6CI8LHO2BipUBBHhPrK18iHm36./S', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(508, '195314134', 'LIDYA VEBIOLA ADA\'', '$2y$10$E/glofmJTHVJBzyVm4ww7OVYu4Jmk4TTi1bmsZe/7NF3jMAc.61NO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(509, '195314135', 'JERICO MULIA PATEBONG', '$2y$10$0BVD6SlVRtAUWpsDj9lUQOSbZBrw1qZOnXhhAJ9JWCjWwt4irIYCm', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(510, '195314136', 'ANGELA MERICI FEBRINADIA', '$2y$10$8Xdrx5IRFtC6XCqLSvx16O3feDg1bWhP/7j/wpsXVm5ckV.cxdEIi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(511, '195314137', 'JONATHAN KHOBARAJI WICAKSONO', '$2y$10$klE02.GON8J8JGFIWT18fuRmTc9MiWqjvOJKTceLPt16c4luDy03e', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(512, '195314138', 'ADRIANUS PANJAITAN', '$2y$10$1Q5QVvu/5lPW71h.vcRQUO.InSEHtoY7z2wj1R90nQ8hsSXPZzpO2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(513, '195314139', 'ARY MAHOT TUA RUMAPEA', '$2y$10$VR5WKxEiCO.HGCfRkqYAH.deVigVHkBvYoBlKxpR6rSVx569MxCW.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(514, '195314140', 'RICARDO CLINTON SIHOTANG', '$2y$10$lJHPwC.GBb9Qio0.FWmDBe6omOLcgDPj4x0oMZiwEw7NzaDZUgD3G', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(515, '195314181', 'FEBRINA DAYANTI SIHOMBING', '$2y$10$FEFASwZfs/x7A5CaTkqRwuFXaHSCrWCVjSqCY2vQYxaOw5i9v0sX2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(516, '125314129', 'FEBRY RENALDY', '$2y$10$mu2zvSqZ.5rJWTF3dZYRKeae0izgQE8YIy3LoAFWuz/CydXGsl4yu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(517, '195314141', 'SEBASTIAN IRVANDO TULUS. S', '$2y$10$DT.Ore1v7NYlyQgBEZ4IGurdD91rZRc5PsOCt8MtrqU.7RDcCyu0e', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(518, '195314142', 'AUDY VALENTIANO', '$2y$10$vsiH0T6bgQZ.4/Pi8tjIjOgCnx5gKkZYKOri.0CVAt6hw5fJiTTSy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(519, '195314143', 'QUIEDO RAFAEL BILLIK', '$2y$10$gmxT9y9J7rx85KuQ0w33jupkpx9H3bAhgQLyhdqge1VxcLaNShANO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(520, '195314144', 'AGRY GRACEL LOLONGAN', '$2y$10$ecIHEdGehYzzeLp2fPE3DeYTFmMXgKfaCZSlpp/1yAYQ0/Og5RNDW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(521, '195314145', 'MUHAMMAD IMAM SYAHPUTRA', '$2y$10$o0uvV9cRD8LSBMdS5x0gPOG0b7DNySHG8UDSRZv7kt0HCxnNOQV7C', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(522, '195314146', 'PAGUH ESATRIO', '$2y$10$268K7NWgW6Km6LQ0WKB8p.qWZyb2LgIfXPUJb3SiBHvVrCobJ/6zq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(523, '195314147', 'ANDREAS SITINJAK', '$2y$10$MgJURQMQteIOAJtl7efXLeWH/in/AtAa/LmHG38XCqGODaZCqV79q', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(524, '195314148', 'GABRIEL KRISETYANTO WICAKSONO', '$2y$10$09BHA6G0JymMi2Yizctri.UARRJrQ4IJRcJCofSwhJzc09Ow.9g1e', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(525, '195314149', 'MARIA OKTAVIANI', '$2y$10$FTVmzu4n2uJQV8Uw93C6VuWr0PSm.x3ztdieY9RCPBkzfuHGDL6Oq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(526, '195314150', 'RIFENIGEL MAHENKA NARAHAWARIN', '$2y$10$Hg6Ty1xnJke8dsduZxw82.GQZQjjjAcIqjGYPBG6Kda85OOOjD7rG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(527, '195314161', 'VIRGINIA SEPTRINITA ISABEL GINTING', '$2y$10$NzIOJ1HU3RYMwJsymFNEg.SuEIcCYhuBvQGT20OZUQWbwfdYoTKqC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(528, '195314162', 'GITANJALI MAYRA EKARINI', '$2y$10$qXCbGoSD5HdiO4CKaCSF4e5.2OfxfNoyC3k2OCCHy5yCZoVc5UKUi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(529, '195314163', 'WILKY ADITIA PRATAMA PASANG', '$2y$10$IaNJJ2i.pSn6vD2KMIILwOK6nnlig3C9odNwEDAEDTZct8dgPsi2u', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(530, '195314164', 'NOVITA AYU DWI NUGRAHENI', '$2y$10$xEJi4KZ8br74znycUalnYuCCKp2E9gLHvwcVpsuwip/AbRMotQU.6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(531, '195314165', 'MICHELL ANGEL PATRICIA', '$2y$10$bK9eGN2suNFY.6xkd.oJN.PfPgbdKzhlc9Smtg1Rm/.YR5.s4gCzW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(532, '195314166', 'KEVIN APUL MARSAGU LBN. GAOL', '$2y$10$XRJQa5e3PsD2ixs2MrZeVeoR8OiWqoFyCnUyKVMfrjgz2CwLt5ydS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(533, '195314167', 'AXEL FRANS SILALAHI', '$2y$10$3HWbP68PRjTyzDP/gHcF2Ozrk/l7xdgaW3LMIRayc/ua0JscmxMum', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(534, '195314168', 'MARIO YULIANTO SETIADI', '$2y$10$KBXVP0MeVOVtmlqs2zJ5o.WnplaFLAU6VvKTjL1KpSlsHHWWp1xfK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(535, '195314169', 'DANIEL SAITULUS MARBUN', '$2y$10$jgs.zoq3EvzVZkVvGps1xeh/IAuPbiK3bH8pz7jWfFYXcxOdlIE5e', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(536, '195314170', 'S. RAJA NATAL P. PURBA', '$2y$10$hf3HsmwA46jLy0DSUoc0Oe/SO3g6Xjh4t.6UPmzDc7SbGyaJZid7K', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(537, '195314001', 'PAULUS EDWIN FERDIAN TRIPUTRA ISWARA', '$2y$10$rs5QqdYMT8RnStqhXkQcEeWVHkMlXpJ2Do6inf1hg31QFjvf3c9GC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(538, '195314002', 'LOUIS JOSEPHUM PINASTIKA', '$2y$10$j43YZxYCEGmNBldnYe8U3uz6JNeLnATtB3jPN2BnIknoG3Ln6fupS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(539, '195314003', 'ARIEF PARULIAN NADAPDAP', '$2y$10$l4pQDD1I5zlyZssFHpjXaugJbJPUBWU8gCBsk9Ao/PdNLxFtTZRha', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(540, '195314004', 'PASCALINUS FERNANDO WIDYATAMA', '$2y$10$5tz2OlHETtjYU.DHBs4pOulxkcIyoxraDX2nL/1YPYwcJeEROhHsW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(541, '195314005', 'YOSEPHINE YESTIA DIANA', '$2y$10$oJ3/ChW8sOKZLXxCyNHOcey8nKAASxgOw9cUXorQLJb5eGq686szC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(542, '195314006', 'GUIDO MARIO ENNO EPRILIANO', '$2y$10$HIrgWuU8BZ7.LLSfH75N4.h1K0SSZ0OSa07XB08GcpJny3Y4c9iuy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(543, '195314007', 'I MADE PARAMARTHA SATHYA', '$2y$10$.O.j8KLZEFpxC95.qavwDuJym4RToUyRrgiJyoAa2Ix0LRdqNABCy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(544, '195314008', 'GENESIS AKAR', '$2y$10$GqsFhpITTr43V8/w8VNA9uoBO1atEDX7IFhvCYGhUE7FfWw8C6gI6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(545, '195314009', 'MARGARETA NAVI PRIMADANI', '$2y$10$kIVKltIr0D2DZVKyhKR6bOTQjRzTvZ3ohx0d1J6NDxd96ecMrx8JK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(546, '195314010', 'FRISTA DEA', '$2y$10$pd1crdunlHLucyNYizWXz.0U2b8/1UpdV0atBq4sxVzubUAgopKbm', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(547, '195314011', 'RICHIE SURYA WIJAYA', '$2y$10$qYs/ldZ3hl.IQW6iGa8GCejWG5ZEMr49chP8/pO1Wcg/IKlFCuJL.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(548, '195314013', 'EDWARD WIJAYA', '$2y$10$Exdb0nqho/M3a8j.mkbdMOyop6RByxA./RGH2SVBw7l6A7lhk/qGS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(549, '195314014', 'STEFANUS REFI WARDANA', '$2y$10$WmPnttfLh4FdfF08sGsV0ede4s66s6uYjB1ie/Z6vAs1q2Wb9HcUS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(550, '195314015', 'MARIA INA MARAN', '$2y$10$Vrn03zYS0EkVkA0evzE/EOTDkKinyhuvLUr8.dgShH5Hwt.RhbMl.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(551, '195314016', 'HIERONYMUS EMILIANUS KURNIAWAN KARTIKA KUNCORO JATI', '$2y$10$IZgOTn4I4bv847jSD5Xj3OXJ0Xr9oASHp70.lsO/6A1waJ2SPHyTK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(552, '195314017', 'ROSALINA WINDA PRATIWI', '$2y$10$qpRoHrEOPgQhZhywPifZouO8jSiyTdl19BlvkhiA73nzrXtu71Kgm', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(553, '195314018', 'TIMOTIUS MARISJOY PANDAPOTAN MARPAUNG', '$2y$10$Eu5GT8dKdBdtZywyMQFrgO2Y6d2K9DCAU85bMSkRd5BxWkYGfA.LS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(554, '195314019', 'YULIUS ARIAN TRI RAHMAPUTRA', '$2y$10$s0Ju0YtEezuCqDX/gREQNuC8a1/GpRTmv1uU6EIbcYz2UW45loI/a', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(555, '195314020', 'DIONISIUS GIGIH SANGKESWARA', '$2y$10$o6v0UAtnVcCcWPsWxlM5KeWuJ5vEu8ldyl.NanESym.m5erWj9vVO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(556, '195314021', 'VICKY DINI PRAKASIWI', '$2y$10$H1pPmzTLxPbiGuWkzREQOOMIvbVQKdVyFUeCOSep300VCOKjiB6rK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(557, '195314022', 'ARIYADI VINO', '$2y$10$1xp6uD0WsbXkMgRc.J3VVe5elW8b4UjOe//uLjomCQzfzH04XNY8i', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(558, '195314023', 'FABIAN ANDRE FAJAR HERMANTO', '$2y$10$ZW0oJKcHX3SjMuPMWdF/qulDOCKXrpkbCfzci60OxGKKjSs.yp5WS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(559, '195314024', 'MARIS RIEMANA', '$2y$10$ltI/pzldPE3LGxWozZz/.OUxv5CwDnMDsXe6UU1.nT9cPkrVank0C', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(560, '195314025', 'KENNY ARIADI', '$2y$10$MCTXOF3Rosa0eN.iQNiFVuUyefGrzwcdQjCA4woeMIcJDMLIKes1q', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(561, '195314026', 'PATRISSIO AGUNG WISANGGENI. S', '$2y$10$p8bbfuafGpe3FHy8vJBM6ewl1n/icsjqSuisPC7TaF3Nrzq.uwX8q', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(562, '195314027', 'DEUSDEDIT PIERE PRATAMA BETANG', '$2y$10$sYlyrm9LqYewYpgIiC483Oigv.jyYBCWZx6tRqWWgFNO4UW6oeVc6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(563, '195314028', 'DARIA WOJTYLA PERADA ATULOLON', '$2y$10$ZaVu4EGeTD7A5W5HVRTx2eBVMP.d579QCCHWiPF6mBsOdlUbSdl.e', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(564, '195314029', 'JESSICA JULIANI GIHARTO', '$2y$10$X2XHWgV4I.ZIjQFMw9sUfOrhAqUwwrMug50hhbtnjqecmIoHFVoqO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(565, '195314030', 'KORNELIUS THEOSAN WIJAYANTO', '$2y$10$a7BYGDG5U2KVmK/zIRUNt.O29equD2uAeJo/6v.rJvUmwDKF1FLfm', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(566, '195314031', 'KATHARINA TYAS APRILIA', '$2y$10$XZELJBdDK7EJB1ETpbfC8u8Rh9330aJJWgFjfUxk.qZVwvWetv1T2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(567, '195314032', 'STEFANUS NOTARIO CHRISTIANS', '$2y$10$ZMwY7ChqaUQa40brNUs7ueJU5.8qdZpiT/YNwLzdtFAroDxCmpoNS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(568, '195314033', 'MARCELLINUS FAJAR ADI NUGRAHA', '$2y$10$2p0W7RXSQT2b57P.ndjbJ./iNlnuwhfqF3OHzmNvrlNr3C75YwGfq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(569, '195314034', 'ANDREAS GUSNAFREDO NUGRAOKTA', '$2y$10$KE3szNysaYia8Cv/jToJT.OIJ0A5m52w/n4t1SwJ2j3mhocOkWrN2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(570, '195314035', 'BELLA RODEWANI RAHAYU PURBA', '$2y$10$BEArt78SXuDPUHoj4v20ieCO5Engbv0JbVTqfIhiCEzgVuOpfuVbK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(571, '195314036', 'MARGARETA SELVIA', '$2y$10$ahyRCF4Tq5NuS84DZMlk6OgS27MNAFIrL0YOp3Lh8defI/.FxYAcO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(572, '195314037', 'YOHANES KALISJATI WIJAYA KUSUMA', '$2y$10$kxKx0dimxg2jqiHnnMyDIuIINPp0oYzbCuqDD0wCGrri6Eav8Qsra', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(573, '195314038', 'WILBERT CHRISTOPHER', '$2y$10$Mjf0dD2rTAtwh44PK.wnUO8bfBuZTxdd1DN9Q1vTYWw6fFMltavmq', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(574, '195314039', 'BERNARDUS ENRICO GIOVANNI PRABASWARA', '$2y$10$S6nLP.yk8LK2/ShidQffcuLUxhE7D3ndlpnClRmVjhs25ZwXz3sWy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(575, '195314040', 'MARIA YASINTHA BETAN', '$2y$10$xeLZ1Zqha38euEdU9B9QF.qsC6uZpK2aMZ380hZtIB34n89fsyOlC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(576, '195314041', 'KEVIN CASTIGLIANO AIPASSA', '$2y$10$UF3GcrJaUURG/KfrrHUY2OtMX9u3G8xRReShEr.3ULlZu8rj12Pvu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(577, '195314042', 'DIONISIUS ANDREAN SIHOMBING', '$2y$10$1qmqWOwdJUu6I.zEIctPYeeofaPQfoc2SmCjOaEx0uXLgDvSF4S.O', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(578, '195314043', 'EVAN CHRISANDYA NUGROHO', '$2y$10$EOZSaSFV8W0aY8oSNpOWbOlbavt0ZF9/bzgvfveSoYMuu7mFGOtg.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(579, '195314044', 'REVIANDY NOVAN TIKUPADANG', '$2y$10$zh1dd2aH3gpPKZnOSggD6ugcurin7Ytsi87FfT6y6dY7Dh23BSGMS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(580, '195314045', 'VISTA TANDIRERUNG', '$2y$10$mD8ZZWFEyXdmJasoGoa9UufUsXmFaSGN7u5F1O2FMlfh079.TdjeW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(581, '195314046', 'RINARDI BAGE LEMAU', '$2y$10$OXDu1a.ybcUfeGIsob4MUuBoz72lVZoq2A.zimnfGtH.dbEM/5uQy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(582, '195314047', 'SURYA VALENTHYNO MALLISA', '$2y$10$9jfBUn5wI/Dct7JvyOIRq.TNmViwNRNgrzOuidQlmH9Y/0CuQSvxO', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(583, '195314048', 'STANISLAUS SURYO ANGGORO NUSWANTORO', '$2y$10$GwKQ6NrwQctuzc71029I..tsJApodN7vWj8.BWo8YK3Yi3GB8FH0G', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(584, '195314049', 'KEVIN ALBERT NATH', '$2y$10$gvnnuzVBhPvqtkKRNO.ZZeWIT1k8RvbnjeA8XSJ4zwY2JvgZaVXbW', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(585, '195314050', 'SERAF NOFRIAN LAMBEY', '$2y$10$FK1aU9501VvuhzP/30kuZORFgY4RSO0JU6GwSA4Q/bITL5RscJB56', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(586, '195314051', 'FRANKLIN HIZKIA ROOROH', '$2y$10$9LwabQgjMepmcrtWrQ/i9OvRvxxk0J0KOWiOsAzuXW4IocBEl1VPC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(587, '195314052', 'NATANAEL AUSTIN AUGUST NUGROHO', '$2y$10$YAfi5CDAla/XBTyBSi75eObGV8QUeqYDzl7EABHrVz6GAokRs/mM6', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(588, '195314053', 'DAVID WIJAYA', '$2y$10$UG1dxnXiiJ8viuo5uenqSO6fLjwt.PReMUmWugp0L.mg6FEJkjtz2', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(589, '195314054', 'PASCALIS PRADANI SINDHUNATA', '$2y$10$3/./mee1ZyRrqCqOP9Apx.q.NNojddmQGdPWgGPN1WVJWuwV9a0Gy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(590, '195314055', 'DOMISIUS ADVEN PEMANDI', '$2y$10$FRWiV/An7kJf3txOUlV/Ceh6Itr5g.p1rmbaof5sTmfrRbG82c866', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(591, '195314056', 'STEFANUS DAMAR PUTRA FAJAR BAGAS PRASETYA', '$2y$10$V68af5w2ooumehaTOAzECOrHB0SuTqePc4.IR0fmAEXDMoDmA690W', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(592, '195314057', 'MARIA YUBELA CHELSEA', '$2y$10$Jh6gWEO5ur/KseS4a5UtgOAIHpxPvcDoPnsL4ssoJ1w8fkpKHcGrS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(593, '195314058', 'BERNADETHA MEGA DEVINA AYUNINGTYAS', '$2y$10$DryDY0.jFp1uxq1huZ6dz.dxbhH57VfcvDKtJNxWnmYMezgXsL4Ti', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(594, '195314059', 'ANGELA ASSETA PROFITASARI', '$2y$10$lew.ZKvbL/Rnw5aWmXggmeFIhzvwg/PIWrV3ECUpOVn4vI7ZUl3b.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(595, '195314060', 'MARIA GORETTI ONI SARAS WIDYAS', '$2y$10$mdGrZUpZNl3Molq0q1cy.ewt9mlFkjQ5uepwqhj57ZNweADf2XZgu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(596, '135314071', 'DANIEL CRIST ANDRE SAPUTRA NYAMPAI', '$2y$10$DrxOm1AG5dOSDTD6FAMwg.H5reZ/WJ6wTAQyrQjcCDbUjf.o6Tnue', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(597, '195314061', 'CRISTIANSEN GENARO', '$2y$10$LsGbVTQi8//AYCS/nuVsvuUgGRlcaCnXKFGd9qJQP1vbIgmxyb4VC', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(598, '195314062', 'KRISNA GEOPAMA', '$2y$10$h2V4BF3tTxvdbMW3PhVSV.D/4LbBM3tzl3NOPI.g9lEJ/x365sEsu', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(599, '195314063', 'DWI OKTA PRINASTI', '$2y$10$oqPIa5MPNNnk701rSmiE0.qim0beS274/UJjIjqJbA1r60GokxIRe', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(600, '195314064', 'KEVIN SILVANUS HUTABARAT', '$2y$10$c0v9IpjNRMkLZ2sDz04uWOvfnFhYBs/Vtxt91TOvd8VmRMgrURVLm', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(601, '195314065', 'PASKALIA STEFANIA GELU SOGEN', '$2y$10$X7ZgA6kzz9O/y3HVjdNhq..iP3aP9FL/FVUmRPU0k7LGaAdk9rS16', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(602, '195314066', 'CHRISTOPHANY REPTI SEKARSARI', '$2y$10$BQCO8tf72lkQUUtYw.Dc3.NMP0PooRh099.35yMrwYCE16dnlCiIi', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(603, '195314067', 'SHANDRO MARCELINO', '$2y$10$DhLl1CXrs8Jf5henehQgPuyJns/1q2m6lVGkMJyXbCZP2hjXF4snG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(604, '195314068', 'YOHANES HADI PRADITYA', '$2y$10$jgwPEL4jPy03.om4bRggMeHgaMYBdGIuoe/IqZ8p6lF.I/kBUKP1q', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(605, '195314069', 'GENIE YOEL SIAGIAN', '$2y$10$gHCJGKSSS7zjsuiuXScFW.k8vkYrcvhbCp8bsqt0nirjtGPu.Kr5C', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(606, '195314070', 'ERNESTUS EPI SERAN', '$2y$10$lIWGXxUDCiDsU2PR.3Q28eG2ckNUMKlFn1Iy9.1SQgYUsiXrRhm76', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(607, '195314071', 'REZA ADI SAMPURNA', '$2y$10$WBD9Sb.kUVDT6bTbyFLN1eMvUVNL7z0l9GKgZ2wgbkvCkltenD1ZG', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(608, '195314072', 'EUNIKE QUEEN KRISTANTI PRANANINGTYAS', '$2y$10$yHlmIArj1wXjof8CiUhxdeVXjs4qO5NFMR1W3ojXMtQnTEgmBjCTS', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(609, '195314073', 'YOSEPH LANDUNG RESI SANGADA', '$2y$10$8WL/nzNeHegIxXJRGuotUubcS4ZHuNPBBh0EmoJ9RHe0wbX4yqDdm', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(610, '195314074', 'DIAN ANGELINA TEACHER', '$2y$10$hwFAT9FHGCJdILwOAGaZXup9XwLU5fAhXe8r4rfBsihSJZx15lF6.', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(611, '195314075', 'MARGARETA ROSMEINI NANGUR', '$2y$10$koazFjBzVaa.s2Tqkb0URedvWgk4lRo62nqRD1HtjFSgmeCGGqe6e', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(612, '195314076', 'PUTRA TIMBUL SASONGKO', '$2y$10$.5mN/UCEvrnuu9XxMF.nHeCu0I8aEShziID86jLA9en5bdpuWfFbK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(613, '195314077', 'SESARIA WINANDA TITIS RANI', '$2y$10$4RuJxUU0Rcz3rDvGUu9M2OI01a6sK0hWZGU.vL39HjBHqAqNeISyy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(614, '195314078', 'MARCELLINUS R. K', '$2y$10$0d6sCRqe..V5SLVon61yTuehMgGvAxhZ0XMX46Uet/KXO0HWi8xfy', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(615, '195314079', 'JUAN VETRIC CHRISTIAN ARITONANG', '$2y$10$PQsL0EQ60uRCtLkhhG4SG.fcyuV58ADuh1g4iTxnZ1jDaTt3SysuK', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0),
(616, '195314080', 'ELKANA KRISTUADJI', '$2y$10$EsFPhrkxxW.dnV2dPY9S5.PoFLjkITqxPBl1OT46fPLTUdNcKFuPe', 'Sains dan Teknologi', 'Informatika', 1, 1, 1, 0);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `calon`
--
ALTER TABLE `calon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `dt_kandidat`
--
ALTER TABLE `dt_kandidat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fakultas`
--
ALTER TABLE `fakultas`
  MODIFY `id_fakultas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `gubernur`
--
ALTER TABLE `gubernur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `himpunan`
--
ALTER TABLE `himpunan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `presiden`
--
ALTER TABLE `presiden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id_prodi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=617;

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
