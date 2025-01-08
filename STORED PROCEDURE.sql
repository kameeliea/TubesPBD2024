USE TUBES1;
---STORED PROCEDURE---
CREATE PROCEDURE AddNewTamu
    @p_nama VARCHAR(100),
    @p_email VARCHAR(100),
    @p_telepon VARCHAR(20),
    @p_alamat VARCHAR(255)
AS
BEGIN
    INSERT INTO Tamu (Nama, Email, Telepon, Alamat)
    VALUES (@p_nama, @p_email, @p_telepon, @p_alamat);
END;
GO

EXEC AddNewTamu 'Dillon Willend', 'dill.end@example.com', '1367827', '67 Seattle Street';
SELECT * FROM dbo.Tamu;

--

CREATE PROCEDURE MakeReservation
    @p_tamu_id INT,                  -- Guest ID (TamuTamu_id)
    @p_kamar_id INT,                 -- Room ID (KamarKamar_id)
    @p_check_in DATE,                -- Check-in Date
    @p_check_out DATE,               -- Check-out Date
    @p_status_reservasi VARCHAR(50)  -- Reservation Status (Confirmed, Cancelled, etc.)
AS
BEGIN
    -- Insert the reservation into the 'Reservasi' table
    INSERT INTO Reservasi (Tanggal_Check_In, Tanggal_Check_Out, Status_reservasi, KamarKamar_id, TamuTamu_id)
    VALUES (@p_check_in, @p_check_out, @p_status_reservasi, @p_kamar_id, @p_tamu_id);
    
    -- Optionally, you can update the status of the room to 'Occupied' after the reservation is made.
    UPDATE Kamar
    SET Status = 'Occupied'
    WHERE Kamar_id = @p_kamar_id;
    
END;
GO

EXEC MakeReservation 
    @p_tamu_id = 31, 
    @p_kamar_id = 30, 
    @p_check_in = '2024-02-01', 
    @p_check_out = '2024-02-05', 
    @p_status_reservasi = 'Confirmed';

	SELECT * FROM dbo.Reservasi;
--
DROP PROCEDURE IF EXISTS ReservasiLayanan;

---
CREATE PROCEDURE ReservasiLayananTamu
    @Tamu_id INT,                         -- ID Tamu
    @Kamar_id INT,                        -- ID Kamar yang dipesan
    @Tanggal_Check_In DATE,               -- Tanggal check-in
    @Tanggal_Check_Out DATE,              -- Tanggal check-out
    @Layanan_id INT,                      -- ID Layanan yang dipesan
    @Jumlah INT                           -- Jumlah layanan yang dipesan
AS
BEGIN
    DECLARE @Reservasi_id INT;
    DECLARE @Total_harga DECIMAL(10, 2);
    
    -- 1. Memastikan Tamu memiliki ID yang valid
    IF NOT EXISTS (SELECT 1 FROM Tamu WHERE Tamu_id = @Tamu_id)
    BEGIN
        PRINT 'Tamu tidak ditemukan!';
        RETURN;
    END
    
    -- 2. Memastikan Kamar yang dipilih tersedia
    IF NOT EXISTS (SELECT 1 FROM Kamar WHERE Kamar_id = @Kamar_id AND Status = 'Available')
    BEGIN
        PRINT 'Kamar tidak tersedia!';
        RETURN;
    END
    
    -- 3. Membuat Reservasi baru
    INSERT INTO Reservasi (Tanggal_Check_In, Tanggal_Check_Out, Status_reservasi, KamarKamar_id, TamuTamu_id)
    VALUES (@Tanggal_Check_In, @Tanggal_Check_Out, 'Confirmed', @Kamar_id, @Tamu_id);
    
    -- Mendapatkan ID Reservasi yang baru saja dimasukkan
    SET @Reservasi_id = SCOPE_IDENTITY();
    
    -- 4. Mengambil harga layanan berdasarkan ID layanan yang dipilih
    SELECT @Total_harga = Harga FROM Layanan WHERE Layanan_id = @Layanan_id;
    
    -- 5. Memasukkan layanan ke dalam Reservasi_Layanan
    INSERT INTO Reservasi_Layanan (Jumlah, Total_harga, ReservasiReservasi_id, LayananLayanan_id)
    VALUES (@Jumlah, @Total_harga * @Jumlah, @Reservasi_id, @Layanan_id);
    
    PRINT 'Reservasi layanan berhasil dilakukan.';
    
END;

EXEC ReservasiLayananTamu 
    @Tamu_id = 31, 
    @Kamar_id = 30, 
    @Tanggal_Check_In = '2024-01-01', 
    @Tanggal_Check_Out = '2024-01-05', 
    @Layanan_id = 21, 
    @Jumlah = 1;

SELECT * FROM dbo.Reservasi_Layanan;

--
DROP PROCEDURE IF EXISTS PembayaranTamu;

