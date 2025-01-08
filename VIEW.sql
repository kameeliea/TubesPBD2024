USE TUBES1;

-------------------CREATE VIEW-----------------------------

--SUM, COUNT, AVG, MIN, MAX--
CREATE VIEW TotalPembayaran AS
SELECT SUM(Total_Bayar) AS Total_Pembayaran
FROM Pembayaran;

SELECT * FROM dbo.TotalPembayaran;

CREATE VIEW JumlahKamarBerdasarkanStatus AS
SELECT Status, COUNT(Kamar_id) AS Jumlah_Kamar
FROM Kamar
GROUP BY Status;

SELECT * FROM dbo.JumlahKamarBerdasarkanStatus;

CREATE VIEW RataRataKapasitasKamar AS
SELECT AVG(Kapasitas) AS Rata_Rata_Kapasitas
FROM Kamar;

SELECT * FROM dbo.RataRataKapasitasKamar;

CREATE VIEW HargaKamarTermurah AS
SELECT MIN(Harga) AS Harga_Termurah
FROM Kamar;

SELECT * FROM dbo.HargaKamarTermurah;

CREATE VIEW PembayaranTerbesar AS
SELECT MAX(Total_Bayar) AS Pembayaran_Terbesar
FROM Pembayaran;

SELECT * FROM dbo.PembayaranTerbesar;

--FUNGSI JOIN--
CREATE VIEW TotalPembayaranPerMetode AS
SELECT Pembayaran.Metode_Pembayaran, SUM(Pembayaran.Total_Bayar) AS Total_Pembayaran
FROM Pembayaran
RIGHT JOIN Reservasi ON Pembayaran.ReservasiReservasi_id = Reservasi_id
GROUP BY Pembayaran.Metode_Pembayaran;

SELECT * FROM dbo.TotalPembayaranPerMetode;

CREATE VIEW JumlahKamarTersediaperTipe AS
SELECT K.Tipe_Kamar, COUNT(K.Nomor_Kamar) AS Jumlah_Kamar_Tersedia
FROM Kamar K
LEFT JOIN Reservasi R ON K.Nomor_Kamar = R.KamarKamar_id AND R.Status_reservasi = 'Confirmed'
WHERE K.Status = 'Available'
GROUP BY K.Tipe_Kamar;

SELECT * FROM dbo.JumlahKamarTersediaperTipe;

CREATE VIEW PembayaranPerTamu AS
SELECT T.Nama AS Tamu_Nama, AVG(P.Total_Bayar) AS RataRata_Pembayaran
FROM Pembayaran P
JOIN Reservasi R ON P.ReservasiReservasi_id = R.Reservasi_id
JOIN Tamu T ON R.TamuTamu_id = T.Tamu_id
GROUP BY T.Nama;

SELECT * FROM dbo.PembayaranPerTamu;

CREATE VIEW ReservasiPembayaranMin AS
SELECT 
    R.Reservasi_id,
    T.Nama AS Nama_Tamu,
    R.Tanggal_Check_In,
    R.Tanggal_Check_Out,
    MIN(P.Total_Bayar) AS Pembayaran_Minimum
FROM Reservasi R
JOIN Tamu T ON R.TamuTamu_id = T.Tamu_id
JOIN Pembayaran P ON R.Reservasi_id = P.ReservasiReservasi_id
GROUP BY R.Reservasi_id, T.Nama, R.Tanggal_Check_In, R.Tanggal_Check_Out;

SELECT * FROM dbo.ReservasiPembayaranMin;

CREATE VIEW KamarTermahalTamu AS
SELECT 
    T.Nama AS Nama_Tamu,
    K.Tipe_Kamar,
    MAX(K.Harga) AS Harga_Kamar
FROM Tamu T
JOIN Reservasi R ON T.Tamu_id = R.TamuTamu_id
JOIN Kamar K ON R.KamarKamar_id = K.Kamar_id
GROUP BY T.Nama, K.Tipe_Kamar;

SELECT * FROM dbo.KamarTermahalTamu;

--VIEW BEBAS--
CREATE VIEW Tamu_D AS
SELECT Nama
FROM Tamu
WHERE Nama LIKE '%D%';

SELECT * FROM dbo.Tamu_D;

CREATE VIEW TamuPembayaranLebihDari6Juta AS
SELECT 
    Tamu.Nama, 
    Tamu.Email, 
    Pembayaran.Total_Bayar
FROM Tamu
JOIN Pembayaran ON Tamu.Tamu_id = Pembayaran.ReservasiReservasi_id
WHERE Pembayaran.Total_Bayar > 6000000;

SELECT * FROM dbo.TamuPembayaranLebihDari6Juta;

CREATE VIEW Tamu_Menginap_Kurang_Dari_5_Hari AS
SELECT 
    Tamu.Nama, 
    Tamu.Email, 
    DATEDIFF(DAY, Reservasi.Tanggal_Check_In, Reservasi.Tanggal_Check_Out) AS Durasi_Menginap
FROM Tamu
JOIN Reservasi ON Tamu.Tamu_id = Reservasi.TamuTamu_id
WHERE DATEDIFF(DAY, Reservasi.Tanggal_Check_In, Reservasi.Tanggal_Check_Out) < 5;

SELECT * FROM dbo.Tamu_Menginap_Kurang_Dari_5_Hari;

CREATE VIEW TamuLayananYoga AS
SELECT DISTINCT 
    Tamu.Nama, 
    Tamu.Email, 
    Tamu.Telepon, 
    Tamu.Alamat
FROM Tamu
INNER JOIN Reservasi_Layanan ON Tamu.Tamu_id = Reservasi_Layanan.ReservasiReservasi_id
INNER JOIN Layanan ON Reservasi_Layanan.LayananLayanan_id = Layanan.Layanan_id
WHERE Layanan.Nama_Layanan = 'Yoga Class';

SELECT * FROM dbo.TamuLayananYoga;

CREATE VIEW TamuCheckIn AS
SELECT 
    Tamu.Nama, 
    Tamu.Email, 
    Tamu.Telepon, 
    Tamu.Alamat
FROM Tamu
INNER JOIN Reservasi ON Tamu.Tamu_id = Reservasi.TamuTamu_id
WHERE Reservasi.Tanggal_Check_In = '2024-01-17';

SELECT * FROM dbo.TamuCheckIn;






