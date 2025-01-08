USE TUBES1;

---TRIGGERS---

--Trigger untuk memperbarui status Confirmed menjadi Occupied

CREATE TRIGGER UpdateKamarStatusAfterReservasi
ON Reservasi
AFTER UPDATE
AS
BEGIN
    -- memastikan status reservasi berubah menjadi 'Confirmed'--
    IF EXISTS(SELECT 1 FROM inserted WHERE Status_reservasi = 'Confirmed')
    BEGIN
        -- perbarui status kamar menjadi 'Occupied'--
        UPDATE Kamar
        SET Status = 'Occupied'
        FROM Kamar K
        JOIN inserted i ON K.Kamar_id = i.KamarKamar_id
        WHERE i.Status_reservasi = 'Confirmed';
    END
END;

UPDATE Reservasi
SET Status_reservasi = 'Confirmed'
WHERE Reservasi_id = 11;  -- id reservasi yang diupdate--

SELECT Kamar_id, Status
FROM Kamar
WHERE Kamar_id IN (SELECT KamarKamar_id FROM Reservasi WHERE Status_reservasi = 'Confirmed');

SELECT * FROM dbo.Reservasi;

--Trigger untuk mengupdate kamar yang available
CREATE TRIGGER after_update_kamar_status
ON Kamar
AFTER UPDATE
AS
BEGIN
    DECLARE @kamar_id INT;
    DECLARE @new_status VARCHAR(50);
    DECLARE @old_status VARCHAR(50);

    -- Mengambil nilai status kamar lama dan baru dari record yang diupdate
    SELECT @kamar_id = inserted.Kamar_id, 
           @old_status = deleted.Status, 
           @new_status = inserted.Status
    FROM inserted
    JOIN deleted ON inserted.Kamar_id = deleted.Kamar_id;

    -- Jika status kamar berubah menjadi 'Available'
    IF @new_status = 'Available' AND @old_status <> 'Available'
    BEGIN
        -- Menampilkan daftar kamar yang tersedia
        PRINT 'Kamar yang tersedia:';
        SELECT Kamar_id, Tipe_Kamar, Status 
        FROM Kamar
        WHERE Status = 'Available';

        -- Menampilkan pesan untuk konfirmasi
        PRINT 'Status kamar berhasil diubah menjadi "Available".';
    END
END;

UPDATE Kamar
SET Status = 'Available'
WHERE Kamar_id = '2';

SELECT * FROM dbo.Kamar;