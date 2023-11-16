SELECT
	dosen.nama_dosen, 
	dosen.nik_dosen, 
	mahasiswa.Nim_mahasiswa, 
	CONCAT(mahasiswa.First_name, ' ', mahasiswa.Last_name) AS mahasiswa, 
	mahasiswa.Prodi, 
	mata_kuliah.kode_mata_kuliah, 
	mata_kuliah.mata_kuliah, 
	mata_kuliah.pengajar, 
	mata_kuliah.jam_Perkuliahan, 
	mata_kuliah.kelas, 
	mata_kuliah.hari, 
	mata_kuliah.prodi, 
	mata_kuliah.SKS
FROM
	mahasiswa
	INNER JOIN
	jadwal_perkuliahan
	ON 
		mahasiswa.Nim_mahasiswa = jadwal_perkuliahan.id_jadwal_to_mahasiswa
	INNER JOIN
	mata_kuliah
	ON 
		jadwal_perkuliahan.id_jadwal_mata_kuliah = mata_kuliah.kode_mata_kuliah
	INNER JOIN
	dosen
	ON 
		mata_kuliah.pengajar = dosen.nik_dosen
