CREATE TABLE Tamu (
    guest_id INT IDENTITY(1,1) PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    telepon VARCHAR(15),
    alamat VARCHAR(255)
);

CREATE TABLE Kamar (
    room_id INT	IDENTITY (1,1) PRIMARY KEY,
    nomor_kamar VARCHAR(10) NOT NULL,
    tipe_kamar VARCHAR(50),
    harga DECIMAL(10, 2) NOT NULL,
    status VARCHAR(255),
    kapasitas INT
);

CREATE TABLE Reservasi (
    reservation_id INT IDENTITY(1,1) PRIMARY KEY,
    tanggal_check_in DATE NOT NULL,
    tanggal_check_out DATE NOT NULL,
    status_reservasi VARCHAR(255),
    guest_id INT,
    room_id INT,
    FOREIGN KEY (guest_id) REFERENCES Tamu(guest_id),
    FOREIGN KEY (room_id) REFERENCES Kamar(room_id) 
        ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Pembayaran (
    payment_id INT IDENTITY (1,1) PRIMARY KEY,
    total_bayar DECIMAL(10, 2) NOT NULL,
    metode_pembayaran VARCHAR(50),
    tanggal_pembayaran DATE,
    reservation_id INT,
    FOREIGN KEY (reservation_id) REFERENCES Reservasi(reservation_id) 
        ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Layanan (
    service_id INT IDENTITY(1,1) PRIMARY KEY,
    nama_layanan VARCHAR(100) NOT NULL,
    harga DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Reservasi_Layanan (
    reservation_id INT IDENTITY(1,1),
    service_id INT,
    jumlah INT NOT NULL,
    total_harga DECIMAL(10, 2),
    PRIMARY KEY (reservation_id, service_id),
    FOREIGN KEY (reservation_id) REFERENCES Reservasi(reservation_id),
    FOREIGN KEY (service_id) REFERENCES Layanan(service_id) 
        ON UPDATE CASCADE ON DELETE CASCADE
);


