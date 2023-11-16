INSERT INTO `fakultas` (`kode_fakultas`, `fakultas`) VALUES
(1532, 'fasilkom');
INSERT INTO `prodi` (`id_prodi`, `PRODI`) VALUES
(1101, 'Teknik informatika'),
(1102, 'sistem_informasi');

INSERT INTO `dosen` (`nik_dosen`, `nama_dosen`, `pendidikan`) VALUES
(2201, 'Jeffry sunupurna M.kom', 'Binus University'),
(2202, 'Badie udin M.kom', 'ITB'),
(2203, 'Binasetya anggara M.kom', 'ITB'),
(2204, 'Suryani M.math', 'Universitas brawijaya ');

INSERT INTO `mahasiswa` (`Nim_mahasiswa`, `First_name`, `Last_name`, `TTL`, `fakultas`, `Prodi`) VALUES
(2022080151, 'arhan', 'malik', '2023-11-01', 1532, 1101),
(2022080152, 'Rizki', 'Wahyu', '2023-11-04', 1532, 1101),
(2022080153, 'Fajri', 'Dzul', '2023-11-02', 1532, 1102);

INSERT INTO `mata_kuliah` (`kode_mata_kuliah`, `mata_kuliah`, `pengajar`, `jam_Perkuliahan`, `kelas`, `hari`, `prodi`, `SKS`) VALUES
(1141, 'Basis_data', 2203, '07.30 - 10.00', 'CR.A 405', 'Senin', 1102, 3),
(1142, 'pemrograman berorientasi object', 2203, '10.00 - 12.30', 'CR.A 401', 'Senin', 1102, 3),
(1151, 'Basis_data', 2201, '08.00 - 10.00', 'CR.A 302', 'Senin', 1101, 3),
(1152, 'Kalkulus 2 ', 2204, '13.00 - 15.30', 'CR.A 305', 'Senin', 1101, 3),
(1153, 'Pemrograman berorientasi object', 2202, '10.00 - 12.30', 'CR. A 304', 'Senin', 1101, 3);

INSERT INTO `jadwal_perkuliahan` ( `id_jadwal_to_mahasiswa`, `id_jadwal_mata_kuliah`, `pertemuan`) VALUES
(2022080151, 1151, 1),
(2022080152, 1151, 1),
(2022080151, 1153, 1),
(2022080152, 1153, 1),
( 2022080151, 1152, 1),
(2022080152, 1152, 1),
(2022080153, 1141, 1),
(2022080153, 1142, 1);