-- phpMyAdmin SQL Dump
	-- version 4.5.1
	-- http://www.phpmyadmin.net
	--
	
	SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
	SET time_zone = "+00:00";
	
	
	/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
	/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
	/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
	/*!40101 SET NAMES utf8mb4 */;
	
	--
	-- Database: `arsip_informasi_manajemen_arsip_desa_berbasis_web`
	--
	
	-- --------------------------------------------------------
	
	--
	-- Table structure for table `d_admin`
	--
	
	CREATE TABLE `d_admin` (
	  `Id` int(2) NOT NULL,
	  `Username` varchar(15) NOT NULL,
	  `Password` varchar(75) NOT NULL,
	  `Nama` varchar(15) NOT NULL,
	  `Kode_pegawai` varchar(25) NOT NULL,
	  `Level` enum(0) NOT NULL,
	
	) ENGINE=InnoDB DEFAULT CHARSET=latin1;
	
	-- --------------------------------------------------------
	
	--
	-- Table structure for table `d_klasifikasi`
	--
	
	CREATE TABLE `d_klasifikasi` (
	  `Id` int(4) NOT NULL,
	  `Kode` varchar(50) NOT NULL,
	  `Nama`  varchar(250) NOT NULL,
	  `Uraian` varchar(0) NOT NULL,
	  
	) ENGINE=InnoDB DEFAULT CHARSET=latin1;
	
	-- --------------------------------------------------------
	
	--
	-- Table structure for table `d_disposisi`
	--
	
	CREATE TABLE `d_disposisi` (
	  `Id` int(6) NOT NULL,
	  `Id_arsip` int(6) NOT NULL,
	  `Kpd_Yth` varchar(250) NOT NULL,
	  `Isi_Disposisi` varchar(250) NOT NULL,
	  `Sifat` enum(0) NOT NULL,
	  `Batas_Waktu` date(0) OT NULL
	) ENGINE=InnoDB DEFAULT CHARSET=latin1;
	
	-- --------------------------------------------------------
	
	--
	-- Table structure for table `d_arsip_masuk`
	--
	
	CREATE TABLE `d_arsip_masuk` (
	  `Id` int(6) NOT NULL,
	  `Kode` varchar(50) NOT NULL,
	  `No_agenda` varchar (7) NOT NULL,
	  `Indek_Berkas` varchar(100) NOT NULL,
	  `No_Arsip` varchar (100) NOT NULL,
	  `Dari` int(250) NOT NUL
	) ENGINE=InnoDB DEFAULT CHARSET=latin1;
	
	-- --------------------------------------------------------
	
	--
	-- Table structure for table `d_arsip_keluar`
	--
	
	CREATE TABLE `d_arsip_keluar` (
	  `Id` int(6) NOT NULL,
	  `Kode` varchar(50) NOT NULL,
	  `No_Agenda` varchar(7) NOT NULL,
	  `Indek_Berkas` varchar(100) NOT NULL,
	  `Isi_Ringkas` mediumtext NOT NULL,
	  `No_Arsip` varchar(100) NOT NULL,
	  `Tgl_Arsip` date(0) NOT NULL,
	  `Keterangan` varchar(200) NOT NULL,
	  `Tujuan` varchar(250) NOT NULL,
	  `Tgl_Dicatat` date(0) NOT NULL
	) ENGINE=InnoDB DEFAULT CHARSET=latin1;
	
	--
	-- Indexes for dumped tables
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

