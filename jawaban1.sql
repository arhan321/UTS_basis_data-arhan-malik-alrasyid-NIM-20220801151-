CREATE TABLE `dosen` (
  `nik_dosen` int(11) NOT NULL PRIMARY KEY,
  `nama_dosen` varchar(255) NOT NULL,
  `pendidikan` varchar(255) NOT NULL
);
CREATE TABLE `fakultas` (
  `kode_fakultas` int(11) NOT NULL PRIMARY KEY,
  `fakultas` varchar(255) NOT NULL
);
CREATE TABLE `prodi` (
  `id_prodi` int(11) NOT NULL PRIMARY KEY,
  `PRODI` varchar(255) NOT NULL
);
CREATE TABLE `mahasiswa` (
  `Nim_mahasiswa` int(11) NOT NULL PRIMARY KEY,
  `First_name` varchar(50) NOT NULL,
  `Last_name` varchar(50) NOT NULL,
  `TTL` date NOT NULL,
  `fakultas` int(11) NOT NULL,
  `Prodi` int(11) NOT NULL,
  INDEX (`fakultas`),
  INDEX (`Prodi`),
  FOREIGN KEY (`fakultas`) REFERENCES `fakultas` (`kode_fakultas`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  FOREIGN KEY (`Prodi`) REFERENCES `prodi` (`id_prodi`) ON DELETE RESTRICT ON UPDATE RESTRICT
);
CREATE TABLE `mata_kuliah` (
  `kode_mata_kuliah` int(11) NOT NULL PRIMARY KEY,
  `mata_kuliah` varchar(255) NOT NULL,
  `pengajar` int(11) NOT NULL,
  `jam_Perkuliahan` varchar(255) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `hari` varchar(50) NOT NULL,
  `prodi` int(11) NOT NULL,
  `SKS` int(11) NOT NULL,
  INDEX (`Prodi`),
  INDEX (`pengajar`),
  FOREIGN KEY (`prodi`) REFERENCES `prodi` (`id_prodi`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  FOREIGN KEY (`pengajar`) REFERENCES `dosen` (`nik_dosen`) ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE `jadwal_perkuliahan` (
  `id_jadwal_to_mahasiswa` int(11) NOT NULL,
  `id_jadwal_mata_kuliah` int(11) NOT NULL,
  `pertemuan` int(11) NOT NULL,
  INDEX (`id_jadwal_to_mahasiswa`), 
  INDEX (`id_jadwal_mata_kuliah`),
  FOREIGN KEY (`id_jadwal_to_mahasiswa`) REFERENCES `mahasiswa` (`Nim_mahasiswa`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  FOREIGN KEY (`id_jadwal_mata_kuliah`) REFERENCES `mata_kuliah` (`kode_mata_kuliah`) ON DELETE RESTRICT ON UPDATE RESTRICT
);