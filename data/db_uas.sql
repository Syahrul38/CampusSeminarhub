-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jun 2023 pada 14.08
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_uas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `registrasi`
--

CREATE TABLE `registrasi` (
  `id_registrasi` int(50) NOT NULL,
  `id_user` int(50) NOT NULL,
  `id_seminar` int(50) NOT NULL,
  `waktu_registrasi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `registrasi`
--

INSERT INTO `registrasi` (`id_registrasi`, `id_user`, `id_seminar`, `waktu_registrasi`) VALUES
(23, 7, 43, '2023-06-09 06:48:50'),
(24, 7, 44, '2023-06-09 06:48:53'),
(25, 7, 45, '2023-06-09 06:48:56'),
(26, 7, 46, '2023-06-09 07:22:23'),
(27, 7, 49, '2023-06-09 07:42:49'),
(28, 7, 45, '2023-06-09 19:16:21'),
(29, 7, 52, '2023-06-11 03:53:42'),
(30, 0, 0, '2023-06-11 06:24:09'),
(31, 0, 0, '2023-06-11 06:25:24'),
(32, 0, 0, '2023-06-11 06:27:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `seminar`
--

CREATE TABLE `seminar` (
  `id_seminar` int(10) NOT NULL,
  `poster` varchar(100) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `deskripsi` varchar(1000) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu_mulai` time NOT NULL,
  `waktu_selesai` time NOT NULL,
  `lokasi` varchar(500) NOT NULL,
  `pembicara` varchar(50) NOT NULL,
  `ket` varchar(10) NOT NULL,
  `waktu_persetujuan` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `seminar`
--

INSERT INTO `seminar` (`id_seminar`, `poster`, `judul`, `deskripsi`, `tanggal`, `waktu_mulai`, `waktu_selesai`, `lokasi`, `pembicara`, `ket`, `waktu_persetujuan`) VALUES
(43, '../data/seminar/seminar5.jpg', 'Seminar Falak Internasional', 'Penetapan 1 Ramadhan, Syawal dan Dzulhijjah di Indonesia, Malaysia, Singapura, dan Brunei', '2023-05-19', '09:00:00', '10:30:00', 'Zoom Meeting', 'Prof. Dr. Hj. Imam Taufik M.Ag', 'online', '2023-06-09 07:19:20'),
(44, '../data/seminar/seminar2.jpg', 'Creative Entrepreneurship', '\"Jalanin Aja Dulu\"', '2023-06-24', '08:00:00', '12:00:00', 'Zoom Meeting', 'Dr. H. Muhammad Saifullah, M.Ag', 'online', '2023-06-09 07:19:20'),
(45, '../data/seminar/seminar3.jpg', 'Seminar Nasional Kimia - Pendidikan Kimia', 'Penguatan Peran Kimia dan Pendidikan Kimia dalam Pembangunan Berkelanjutan untuk Kemanusian dan Peradaban', '2023-10-20', '08:00:00', '12:00:00', 'Zoom Meeting', 'Prof. Drs. Sri Rahayu, M.Ed.,Ph.D', 'online', '2023-06-09 07:19:20'),
(46, '../data/seminar/WhatsApp Image 2023-06-08 at 22.55.22.jpeg', 'Workshop Data Analyst 2023', '\r\nHalo sobat analis!\r\n\r\nTak terasa acara yang kalian tunggu-tunggu segera tiba. Workshop Data Analyst HIMA ILKOM UNNES yang bertema \"Develop Your Practical Skills And Prepare To Become A Pro Data Analyst\" akan diselenggarakan pada 17-18 Juni 2023.\r\n\r\nOh iya sobat analis, workshop ini open for public ya!\r\nsobat analis akan mendapatkan ilmu dan pengalaman yang menarik loh!\r\nJadi, yuk buruan daftar!\r\nDon\'t miss it and see you guys! 😉 ', '2023-06-17', '08:00:00', '12:00:00', 'Zoom Meeting', 'Niam Yuhdi Yuliarto', 'online', '2023-06-09 07:21:55'),
(48, '../data/seminar/WhatsApp Image 2023-06-05 at 16.52.08.jpeg', 'SEMINAR: SELF - PREPARATION FOR SOCIAL MEDIA', 'Hallo, everyone 🙌\r\nDepartment Medinfo dari HMJ Sosiologi akan melaksanakan seminar ni yang bertema :\r\n“Kupas Tuntas Peluang dan Strategi Menjadi Sukses pada Era Digital\".', '2023-06-09', '08:00:00', '12:00:00', 'Gedung Teater FITK UIN Walisongo Semarang', 'Imam Syafii, S.Sos', 'offline', '2023-06-09 08:10:06'),
(49, '../data/seminar/WhatsApp Image 2023-06-09 at 14.40.02.jpeg', 'Seminar Kesastraan', '\"Saarnya menulis : Goreskan tintamu disetiap lembaran kertas yang bernyawa.\"', '2023-06-09', '13:00:00', '16:00:00', 'G. Teater Syariah UIN Walisongo Semarang', 'Gunawan Budi S.', 'offline', '2023-06-09 07:42:13'),
(50, '../data/seminar/WhatsApp Image 2023-06-05 at 08.46.09.jpeg', 'Personal Branding and Self-Improvement', 'Peluang dan Strategi Membangun Personal Branding di Era Digitalisasi 5.0\r\n\"Merek hebat adalah kisah yang tidak pernah berhenti terungkap\"', '2023-06-07', '15:00:00', '17:00:00', 'Zoom Meeting & Live Youtube', 'Khofifah Indah', 'online', '2023-06-09 07:47:36'),
(51, '../data/seminar/WhatsApp Image 2023-06-09 at 14.57.43.jpeg', 'Webinar Biologi Laut', '\"Merawat Ekosistem Lamun: Ikhtiar Menjalin hidup yang Berkelanjutan\"\r\n\r\nAssalamualaikum warahmatullahi wabarakatuh, all! Kami dari Kelompok 5 Biologi laut berkolaborasi dengan Kelompok Studi Botani mengundang kalian untuk lebih menyelam lebih dalam tentang ekosistem lamun yang ada di lautan.', '2023-06-11', '09:00:00', '11:00:00', 'Zoom meeting', 'Raynazza Anditra K.', 'online', '2023-06-09 08:02:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `unseminar`
--

CREATE TABLE `unseminar` (
  `id_seminar` int(10) NOT NULL,
  `poster` varchar(100) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `deskripsi` varchar(1000) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu_mulai` time NOT NULL,
  `waktu_selesai` time NOT NULL,
  `lokasi` varchar(500) NOT NULL,
  `pembicara` varchar(50) NOT NULL,
  `ket` varchar(10) NOT NULL,
  `waktu_pengajuan` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `unseminar`
--

INSERT INTO `unseminar` (`id_seminar`, `poster`, `judul`, `deskripsi`, `tanggal`, `waktu_mulai`, `waktu_selesai`, `lokasi`, `pembicara`, `ket`, `waktu_pengajuan`) VALUES
(57, '../data/seminar/WhatsApp Image 2023-06-11 at 09.50.11.jpeg', 'Digital Storytelling untuk Melawan Hoaks', 'Join us for an exciting event on Thursday, June 22nd, 2023, at the American Corner UIN Walisongo Semarang, where we ll be exploring the power of digital storytelling in combatting hoaxes. ', '2023-06-22', '09:00:00', '17:00:00', 'G. American Corner UIN Walisongo', 'Grace Wangge', 'offline', '2023-06-11 11:48:33'),
(58, '../data/seminar/Screenshot 2023-06-11 185333.png', 'Corporate Governance', 'Leadership Club Pascasarjana FBE Proudly present!!\r\nWebinar online “Tantangan Praktik Tata Kelola di Perusahaan Keuangan Terbuka - Memainkan Peran antara Batasan Regulasi, Kepentingan Pemegang Saham Kendali, dan Akuntabilitas Publik\"\r\n\r\nDisini kita akan mendiskusikan bagaimana tantangan yang dihadapi oleh perusahaan dalam pengelolaan tata kelola perusahaan👍👍.', '2023-06-27', '18:30:00', '20:30:00', 'Zoom Meeting', 'Ir. M. Pujiono Santoso, M.M.', 'online', '2023-06-11 11:55:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` enum('admin','user') NOT NULL DEFAULT 'user',
  `no_telp` varchar(20) NOT NULL,
  `foto_profil` varchar(200) NOT NULL,
  `bio` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `email`, `password`, `level`, `no_telp`, `foto_profil`, `bio`) VALUES
(1, 'admin', 'admin', '', '123123', 'admin', '', '', ''),
(7, 'User', 'user123', 'user@gmail.co.id', '123123', 'user', '0812345678910', '../data/foto profil/WhatsApp Image 2023-05-08 at 09.47.49.jpeg', 'gg gaming njay');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `registrasi`
--
ALTER TABLE `registrasi`
  ADD PRIMARY KEY (`id_registrasi`);

--
-- Indeks untuk tabel `seminar`
--
ALTER TABLE `seminar`
  ADD PRIMARY KEY (`id_seminar`);

--
-- Indeks untuk tabel `unseminar`
--
ALTER TABLE `unseminar`
  ADD PRIMARY KEY (`id_seminar`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `registrasi`
--
ALTER TABLE `registrasi`
  MODIFY `id_registrasi` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `seminar`
--
ALTER TABLE `seminar`
  MODIFY `id_seminar` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT untuk tabel `unseminar`
--
ALTER TABLE `unseminar`
  MODIFY `id_seminar` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
