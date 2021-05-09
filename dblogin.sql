-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Bulan Mei 2021 pada 01.27
-- Versi server: 10.4.10-MariaDB
-- Versi PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dblogin`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_penjualan`
--

CREATE TABLE `barang_penjualan` (
  `no_faktur` varchar(10) CHARACTER SET latin1 NOT NULL,
  `kode_barang` varchar(10) CHARACTER SET latin1 NOT NULL,
  `nama_barang` varchar(255) CHARACTER SET latin1 NOT NULL,
  `harga` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang_penjualan`
--

INSERT INTO `barang_penjualan` (`no_faktur`, `kode_barang`, `nama_barang`, `harga`, `qty`, `total1`) VALUES
('F0001', 'K002', 'Kopi Luwak', 1000, 3, 3000),
('F0001', 'K002', 'Kopi Luwak', 1000, 3, 3000),
('F0001', 'K002', 'Kopi Luwak', 1000, 3, 3000),
('F0001', 'K002', 'Kopi Luwak', 1000, 3, 3000),
('F0001', 'K003', 'Masker', 10000, 5, 50000),
('F0001', 'K003', 'Masker', 10000, 2, 20000),
('F0001', 'K003', 'Masker', 10000, 2, 20000),
('F0001', 'K001', 'Mie Sedap', 2500, 1, 2500),
('F0001', 'K001', 'Mie Sedap', 2500, 1, 2500),
('F0002', 'K001', 'Mie Sedap', 2500, 1, 2500),
('F0003', 'K001', 'Mie Sedap', 2500, 1, 2500),
('F0004', 'K001', 'Mie Sedap', 2500, 1, 2500),
('F0005', 'K001', 'Mie Sedap', 2500, 1, 2500),
('F0006', 'K001', 'Mie Sedap', 2500, 1, 2500),
('F0007', 'K001', 'Mie Sedap', 2500, 1, 2500),
('F0008', 'K001', 'Mie Sedap', 2500, 1, 2500),
('F0009', 'K001', 'Mie Sedap', 2500, 1, 2500),
('F0010', 'K001', 'Mie Sedap', 2500, 1, 2500),
('F0011', 'K001', 'Mie Sedap', 2500, 1, 2500),
('F0012', 'K001', 'Mie Sedap', 2500, 1, 2500),
('F0013', 'K001', 'Mie Sedap', 2500, 1, 2500),
('F0014', 'K001', 'Mie Sedap', 2500, 1, 2500),
('F0015', 'K001', 'Mie Sedap', 2500, 1, 2500),
('F0016', 'K001', 'Mie Sedap', 2500, 1, 2500),
('F0017', 'K001', 'Mie Sedap', 2500, 1, 2500),
('F0018', 'K001', 'Mie Sedap', 2500, 1, 2500),
('F0019', 'K001', 'Mie Sedap', 2500, 1, 2500),
('F0020', 'K002', 'Kopi Luwak', 1000, 1, 1000),
('F0021', 'K003', 'Masker', 10000, 1, 10000),
('F0022', 'K001', 'Mie Sedap', 2500, 1, 2500),
('F0023', 'K002', 'Kopi Luwak', 1000, 1, 1000),
('F0024', 'K001', 'Mie Sedap', 2500, 1, 2500),
('F0025', 'K003', 'Masker', 10000, 1, 10000),
('F0026', 'K001', 'Mie Sedap', 2500, 12, 30000),
('F0027', 'K002', 'Kopi Luwak', 1000, 12, 12000),
('F0028', 'K002', 'Kopi Luwak', 1000, 12, 12000),
('F0029', 'K003', 'Masker', 10000, 10, 100000),
('F0030', 'K002', 'Kopi Luwak', 1000, 1, 1000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `no_faktur` varchar(11) NOT NULL,
  `kasir` varchar(255) CHARACTER SET latin1 NOT NULL,
  `diskon` int(10) NOT NULL,
  `total` int(50) NOT NULL,
  `bayar` int(50) NOT NULL,
  `kembali` int(50) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`no_faktur`, `kasir`, `diskon`, `total`, `bayar`, `kembali`, `tanggal`) VALUES
('F0001', '0000', 0, 2500, 5000, 2500, '2021-05-09'),
('F0002', '0000', 0, 2500, 10000, 7500, '2021-05-09'),
('F0003', '0000', 0, 2500, 5000, 2500, '2021-05-09'),
('F0004', '0000', 0, 2500, 10000, 7500, '2021-05-09'),
('F0005', '0000', 0, 2500, 10000, 7500, '2021-05-09'),
('F0006', '0000', 0, 2500, 10000, 7500, '2021-05-09'),
('F0007', '0000', 0, 2500, 10000, 7500, '2021-05-09'),
('F0008', '0000', 0, 2500, 10000, 7500, '2021-05-09'),
('F0009', '0000', 0, 2500, 10000, 7500, '2021-05-09'),
('F0010', '0000', 0, 2500, 10000, 7500, '2021-05-09'),
('F0011', '0000', 0, 2500, 10000, 7500, '2021-05-09'),
('F0012', '0000', 0, 2500, 10000, 7500, '2021-05-09'),
('F0013', '0000', 0, 2500, 10000, 7500, '2021-05-09'),
('F0014', '0000', 0, 2500, 100000, 97500, '2021-05-09'),
('F0015', '0000', 0, 2500, 10000, 7500, '2021-05-09'),
('F0016', '0000', 0, 2500, 10000, 7500, '2021-05-09'),
('F0017', '0000', 0, 2500, 10000, 7500, '2021-05-09'),
('F0018', '0000', 0, 2500, 10000, 7500, '2021-05-09'),
('F0019', '0000', 0, 2500, 100000, 97500, '2021-05-09'),
('F0020', '0000', 0, 1000, 10000, 9000, '2021-05-09'),
('F0021', '0000', 0, 10000, 100000, 90000, '2021-05-09'),
('F0022', '0000', 0, 2500, 10000, 7500, '2021-05-09'),
('F0023', '0000', 0, 1000, 10000, 9000, '2021-05-09'),
('F0024', '0000', 0, 2500, 10000, 7500, '2021-05-09'),
('F0025', '0000', 0, 10000, 100000, 90000, '2021-05-09'),
('F0026', '0000', 0, 30000, 100000, 70000, '2021-05-09'),
('F0027', '0000', 0, 12000, 100000, 88000, '2021-05-09'),
('F0028', 'dywen', 0, 12000, 100000, 88000, '2021-05-09'),
('F0029', 'dywen', 0, 100000, 1000000, 900000, '2021-05-09'),
('F0030', 'dywen', 0, 1000, 1000, 0, '2021-05-09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `kode_barang` varchar(11) DEFAULT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `stok` int(255) DEFAULT NULL,
  `harga` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_barang`
--

INSERT INTO `tbl_barang` (`kode_barang`, `nama_barang`, `stok`, `harga`) VALUES
('K001', 'Mie Sedap', 85, 2500),
('K002', 'Kopi Luwak', 73, 1000),
('K003', 'Masker', 88, 10000),
('K004', 'Pop Mie', 100, 6000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `name`) VALUES
(1, 'Wendy', 'wendy', 'dywen'),
(2, 'mutia', 'mutia', 'mutia'),
(3, 'bambang', '12345', 'bam'),
(4, 'eka', 'okeoke', 'kaeka');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang_penjualan`
--
ALTER TABLE `barang_penjualan`
  ADD KEY `no_faktur` (`no_faktur`),
  ADD KEY `kode_barang` (`kode_barang`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`no_faktur`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
