# UTS_basis_data-arhan-malik-alrasyid-NIM-20220801151-
UTS_basis_data 
arhan malik alrasyid (20220801151)

database ini terkonsep untuk jadwal perkuliahan,

table transaksinya ada pada tabel `jadwal_perkuliahan`
nanti jika inging melihat data perkuliahan silahkan insert querry : 
SELECT
	mahasiswa.Nim_mahasiswa, 
	CONCAT(mahasiswa.First_name, ' ', mahasiswa.Last_name) AS Full_name, 
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



---- TERIMAKASIH ----