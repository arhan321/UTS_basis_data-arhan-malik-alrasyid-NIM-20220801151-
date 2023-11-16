SELECT
	mata_kuliah.kode_mata_kuliah, 
	mata_kuliah.mata_kuliah, 
	mata_kuliah.prodi, 
	dosen.nama_dosen, 
	mata_kuliah.jam_Perkuliahan, 
	mata_kuliah.kelas, 
	mata_kuliah.hari
FROM
	mata_kuliah
	INNER JOIN
	dosen
	ON 
		mata_kuliah.pengajar = dosen.nik_dosen