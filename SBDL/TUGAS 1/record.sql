-- phpMyAdmin SQL Dump
-- version 2.11.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 21. Maret 2020 jam 22:41
-- Versi Server: 5.0.45
-- Versi PHP: 5.2.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `delia`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `Id` int(2) NOT NULL,
  `Username` varchar(15) collate latin1_general_ci NOT NULL,
  `Password` varchar(75) collate latin1_general_ci NOT NULL,
  `Nama` varchar(15) collate latin1_general_ci NOT NULL,
  `kode_barang` varchar(25) collate latin1_general_ci NOT NULL,
  `level` mediumtext collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`Id`, `Username`, `Password`) VALUES
(1, 'delia', '12345');
-- --------------------------------------------------------

--
-- Struktur dari tabel `arsip_keluar`
--

CREATE TABLE `arsip_keluar` (
  `Id` int(6) NOT NULL auto_increment,
  `Kode` varchar(50) collate latin1_general_ci NOT NULL,
  `No_agenda` varchar(7) collate latin1_general_ci NOT NULL,
  `Indek_berkas` varchar(100) collate latin1_general_ci NOT NULL,
  `Isi_ringkas` mediumtext collate latin1_general_ci NOT NULL,
  `Tujuan` varchar(250) collate latin1_general_ci NOT NULL,
  `No_arsip` varchar(100) collate latin1_general_ci NOT NULL,
  `Tgl_arsip` date NOT NULL,
  `Tgl_dicatat` date NOT NULL,
  `keterangan` varchar(200) collate latin1_general_ci NOT NULL,
  `File` varchar(200) collate latin1_general_ci NOT NULL,
  `pengolah` int(11) NOT NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

--
-- Dumping data untuk tabel `arsip_keluar`
--


-- --------------------------------------------------------

--
-- Struktur dari tabel `arsip_masuk`
--

CREATE TABLE `arsip_masuk` (
  `Id` int(6) NOT NULL auto_increment,
  `Kode` varchar(50) collate latin1_general_ci NOT NULL,
  `No_agenda` varchar(7) collate latin1_general_ci NOT NULL,
  `Indek_berkas` varchar(100) collate latin1_general_ci NOT NULL,
  `isi_ringkas` mediumtext collate latin1_general_ci NOT NULL,
  `dari` varchar(250) collate latin1_general_ci NOT NULL,
  `No_arsip` varchar(100) collate latin1_general_ci NOT NULL,
  `Tgl_arsip` date NOT NULL,
  `Tgl_diterima` date NOT NULL,
  `Keterangan` varchar(200) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

--
-- Dumping data untuk tabel `arsip_masuk`
--


-- --------------------------------------------------------

--
-- Struktur dari tabel `disposisi`
--

CREATE TABLE `disposisi` (
  `Isi_Disposisi` varchar(250) collate latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `disposisi`
--


-- --------------------------------------------------------

--
-- Struktur dari tabel `klasifikasi`
--

CREATE TABLE `klasifikasi` (
  `Kode` varchar(50) collate latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `klasifikasi`
--
--
--
	
	--
	-- Indexes for table `d_admin`
	--
	ALTER TABLE `d_admin`
	  ADD PRIMARY KEY (`Id`);
	
	--
	-- Indexes for table `d_klasifikasi`
	--
	ALTER TABLE `d_klasifikasi`
	  ADD PRIMARY KEY (`Id`);
	
	--
	-- Indexes for table `d_disposisi`
	--
	ALTER TABLE `d_disposisi `
	  ADD PRIMARY KEY (`Id`);
	
	--
	-- Indexes for table `d_arsip_masuk`
	--
	ALTER TABLE `d_arsip_masuk`
	  ADD PRIMARY KEY (`Id`);
	
	--
	-- Indexes for table `d_arsip_keluar`
	--
	ALTER TABLE `d_arsip_keluar`
	  ADD PRIMARY KEY (`Id`);
	
	/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
	/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
	/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
