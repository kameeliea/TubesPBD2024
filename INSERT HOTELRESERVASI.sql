INSERT INTO Tamu (nama, email, telepon, alamat)
VALUES
    ('John Doe', 'john.doe@gmail.com', '1234567890', '123 Elm Street'),
    ('Jane Smith', 'jane.smith@gmail.com', '9876543210', '456 Oak Avenue'),
    ('Alice Johnson', 'alice.johnson@gmail.com', '5551234567', '789 Maple Lane'),
    ('Bob Brown', 'bob.brown@gmail.com', '4449876543', '321 Pine Road'),
    ('Charlie Davis', 'charlie.davis@gmail.com', '3335678901', '654 Birch Boulevard'),
    ('Diana Evans', 'diana.evans@gmail.com', '2223456789', '987 Cedar Street'),
    ('Evan Garcia', 'evan.garcia@gmail.com', '1112345678', '159 Spruce Circle'),
    ('Fiona Harris', 'fiona.harris@gmail.com', '6668765432', '753 Willow Way'),
    ('George King', 'george.king@gmail.com', '7779871234', '852 Ash Terrace'),
    ('Hannah Lewis', 'hannah.lewis@gmail.com', '8887654321', '951 Poplar Drive'),
    ('Ian Martinez', 'ian.martinez@gmail.com', '9991230987', '369 Chestnut Plaza'),
    ('Julia Nelson', 'julia.nelson@gmail.com', '1012345678', '741 Redwood Lane'),
    ('Kevin Ortiz', 'kevin.ortiz@gmail.com', '2023456789', '852 Cypress Hill'),
    ('Laura Perez', 'laura.perez@gmail.com', '3034567890', '963 Magnolia Circle'),
    ('Michael Quinn', 'michael.quinn@gmail.com', '4045678901', '147 Palm Avenue'),
    ('Nina Roberts', 'nina.roberts@gmail.com', '5056789012', '258 Fir Lane'),
    ('Oliver Scott', 'oliver.scott@gmail.com', '6067890123', '369 Holly Crescent'),
    ('Paula Turner', 'paula.turner@gmail.com', '7078901234', '951 Juniper Trail'),
    ('Quentin Adams', 'quentin.adams@gmail.com', '8089012345', '753 Dogwood Street'),
    ('Rachel Baker', 'rachel.baker@gmail.com', '9090123456', '852 Maple Court'),
    ('Samuel Carter', 'samuel.carter@gmail.com', '1101234567', '159 Elmwood Drive'),
    ('Tina Davis', 'tina.davis@gmail.com', '2202345678', '357 Oakridge Avenue'),
    ('Uma Ellis', 'uma.ellis@gmail.com', '3303456789', '654 Pinehurst Way'),
    ('Victor Foster', 'victor.foster@gmail.com', '4404567890', '951 Spruce Grove'),
    ('Wendy Green', 'wendy.green@gmail.com', '5505678901', '753 Willow Grove'),
    ('Xander Hayes', 'xander.hayes@gmail.com', '6606789012', '852 Aspen Trail'),
    ('Yvonne Jackson', 'yvonne.jackson@gmail.com', '7707890123', '159 Birchwood Lane'),
    ('Zachary Knight', 'zachary.knight@gmail.com', '8808901234', '357 Cedar Hill'),
    ('Abigail Lopez', 'abigail.lopez@gmail.com', '9909012345', '654 Redwood Court'),
    ('Benjamin Moore', 'benjamin.moore@gmail.com', '1010123456', '753 Oak Hollow');

	SELECT * FROM Tamu;

INSERT INTO Kamar (nomor_kamar, tipe_kamar, harga, status, kapasitas)
VALUES
    ('101', 'Standard', 500000.00, 'Available', 2),
    ('102', 'Standard', 500000.00, 'Occupied', 2),
    ('103', 'Standard', 500000.00, 'Available', 2),
    ('104', 'Standard', 500000.00, 'Maintenance', 2),
    ('105', 'Deluxe', 750000.00, 'Available', 3),
    ('106', 'Deluxe', 750000.00, 'Occupied', 3),
    ('107', 'Deluxe', 750000.00, 'Available', 3),
    ('108', 'Deluxe', 750000.00, 'Occupied', 3),
    ('109', 'Suite', 1200000.00, 'Available', 4),
    ('110', 'Suite', 1200000.00, 'Occupied', 4),
    ('111', 'Suite', 1200000.00, 'Available', 4),
    ('112', 'Suite', 1200000.00, 'Available', 4),
    ('113', 'Standard', 500000.00, 'Available', 2),
    ('114', 'Standard', 500000.00, 'Occupied', 2),
    ('115', 'Standard', 500000.00, 'Maintenance', 2),
    ('116', 'Deluxe', 750000.00, 'Available', 3),
    ('117', 'Deluxe', 750000.00, 'Occupied', 3),
    ('118', 'Suite', 1200000.00, 'Available', 4),
    ('119', 'Suite', 1200000.00, 'Occupied', 4),
    ('120', 'Standard', 500000.00, 'Available', 2),
    ('121', 'Standard', 500000.00, 'Available', 2),
    ('122', 'Deluxe', 750000.00, 'Occupied', 3),
    ('123', 'Deluxe', 750000.00, 'Available', 3),
    ('124', 'Suite', 1200000.00, 'Available', 4),
    ('125', 'Suite', 1200000.00, 'Available', 4),
    ('126', 'Standard', 500000.00, 'Maintenance', 2),
    ('127', 'Deluxe', 750000.00, 'Available', 3),
    ('128', 'Suite', 1200000.00, 'Occupied', 4),
	('129', 'Standard', 500000.00, 'Available', 2),
    ('130', 'Deluxe', 750000.00, 'Available', 3);

	SELECT * FROM Kamar;

INSERT INTO Reservasi (tanggal_check_in, tanggal_check_out, status_reservasi, guest_id, room_id)
VALUES
    ('2024-01-01', '2024-01-03', 'Confirmed', 1, 1),
    ('2024-01-02', '2024-01-04', 'Checked-in', 2, 2),
    ('2024-01-05', '2024-01-07', 'Cancelled', 3, 3),
    ('2024-01-06', '2024-01-08', 'Confirmed', 4, 4),
    ('2024-01-09', '2024-01-11', 'Checked-out', 5, 5),
    ('2024-01-10', '2024-01-12', 'Confirmed', 6, 6),
    ('2024-01-13', '2024-01-15', 'Confirmed', 7, 7),
    ('2024-01-14', '2024-01-16', 'Checked-in', 8, 8),
    ('2024-01-17', '2024-01-19', 'Confirmed', 9, 9),
    ('2024-01-18', '2024-01-20', 'Cancelled', 10, 10),
    ('2024-01-21', '2024-01-23', 'Checked-in', 11, 11),
    ('2024-01-22', '2024-01-24', 'Checked-out', 12, 12),
    ('2024-01-25', '2024-01-27', 'Confirmed', 13, 13),
    ('2024-01-26', '2024-01-28', 'Cancelled', 14, 14),
    ('2024-01-29', '2024-01-31', 'Checked-in', 15, 15),
    ('2024-02-01', '2024-02-03', 'Confirmed', 16, 16),
    ('2024-02-02', '2024-02-04', 'Checked-in', 17, 17),
    ('2024-02-05', '2024-02-07', 'Checked-out', 18, 18),
    ('2024-02-06', '2024-02-08', 'Confirmed', 19, 19),
    ('2024-02-09', '2024-02-11', 'Cancelled', 20, 20),
    ('2024-02-10', '2024-02-12', 'Confirmed', 21, 21),
    ('2024-02-13', '2024-02-15', 'Checked-in', 22, 22),
    ('2024-02-14', '2024-02-16', 'Confirmed', 23, 23),
    ('2024-02-17', '2024-02-19', 'Checked-out', 24, 24),
    ('2024-02-18', '2024-02-20', 'Cancelled', 25, 25),
    ('2024-02-21', '2024-02-23', 'Checked-in', 26, 26),
    ('2024-02-22', '2024-02-24', 'Confirmed', 27, 27),
    ('2024-02-25', '2024-02-27', 'Checked-out', 28, 28),
	('2024-02-26', '2024-02-28', 'Confirmed', 29, 29),
    ('2024-03-01', '2024-03-03', 'Checked-in', 30, 30);

	SELECT * FROM Reservasi;

INSERT INTO Pembayaran (total_bayar, metode_pembayaran, tanggal_pembayaran, reservation_id)
VALUES
    (1500000.00, 'Credit Card', '2024-01-01', 2),
    (2000000.00, 'Debit Card', '2024-01-02', 3),
    (1250000.00, 'Cash', '2024-01-05', 4),
    (1750000.00, 'Credit Card', '2024-01-06', 5),
    (2200000.00, 'Bank Transfer', '2024-01-09', 6),
    (1800000.00, 'Credit Card', '2024-01-10', 7),
    (1900000.00, 'Debit Card', '2024-01-13', 8),
    (2300000.00, 'Cash', '2024-01-14', 9),
    (2400000.00, 'Bank Transfer', '2024-01-17', 10),
    (1600000.00, 'Credit Card', '2024-01-18', 11),
    (1700000.00, 'Cash', '2024-01-21', 12),
    (1500000.00, 'Debit Card', '2024-01-22', 13),
    (2000000.00, 'Bank Transfer', '2024-01-25', 14),
    (1900000.00, 'Cash', '2024-01-26', 15),
    (1800000.00, 'Credit Card', '2024-01-29', 16),
    (1250000.00, 'Debit Card', '2024-02-01', 17),
    (1750000.00, 'Cash', '2024-02-02', 18),
    (2200000.00, 'Bank Transfer', '2024-02-05', 19),
    (1900000.00, 'Credit Card', '2024-02-06', 20),
    (1800000.00, 'Debit Card', '2024-02-09', 21),
    (2400000.00, 'Bank Transfer', '2024-02-10', 22),
    (1500000.00, 'Credit Card', '2024-02-13', 23),
    (1250000.00, 'Cash', '2024-02-14', 24),
    (1700000.00, 'Debit Card', '2024-02-17', 25),
    (2300000.00, 'Bank Transfer', '2024-02-18', 26),
    (2200000.00, 'Credit Card', '2024-02-21', 27),
    (1800000.00, 'Cash', '2024-02-22', 28),
    (1250000.00, 'Debit Card', '2024-02-25', 29),
    (1750000.00, 'Credit Card', '2024-02-26', 30),
    (2000000.00, 'Bank Transfer', '2024-03-01', 31);

	SELECT * FROM Pembayaran;

INSERT INTO Layanan (nama_layanan, harga)
VALUES
    ('Spa Massage', 500000.00),
    ('Room Cleaning', 150000.00),
    ('Airport Pickup', 300000.00),
    ('Laundry Service', 100000.00),
    ('Gym Access', 250000.00),
    ('City Tour', 750000.00),
    ('Breakfast Buffet', 200000.00),
    ('Dinner Buffet', 350000.00),
    ('Pool Access', 150000.00),
    ('Car Rental', 1000000.00),
    ('Yoga Session', 300000.00),
    ('Private Chef Service', 2000000.00),
    ('Baby Sitting', 500000.00),
    ('WiFi Package', 100000.00),
    ('VIP Lounge Access', 500000.00),
    ('Golf Package', 1500000.00),
    ('Business Center Access', 200000.00),
    ('Conference Room Rental', 1000000.00),
    ('Personal Assistant', 750000.00),
    ('Photography Service', 500000.00),
    ('Hair Styling', 400000.00),
    ('Makeup Service', 600000.00),
    ('Pet Care', 300000.00),
    ('Valet Parking', 150000.00),
    ('Cultural Workshop', 700000.00),
    ('Luxury Dinner', 1000000.00),
    ('Wine Tasting', 800000.00),
    ('Scuba Diving', 1200000.00),
    ('Horseback Riding', 900000.00),
    ('Helicopter Tour', 5000000.00);

	SELECT * FROM Layanan;


SET IDENTITY_INSERT Reservasi_Layanan ON;

INSERT INTO Reservasi_Layanan (reservation_id, service_id, jumlah, total_harga)
VALUES
    (2, 1, 2, 1000000.00),
    (3, 2, 1, 150000.00),
    (4, 3, 1, 300000.00),
    (5, 4, 3, 300000.00),
    (6, 5, 2, 500000.00),
    (7, 6, 1, 750000.00),
    (8, 7, 4, 800000.00),
    (9, 8, 1, 350000.00),
    (10, 9, 2, 300000.00),
    (11, 10, 1, 1000000.00),
    (12, 11, 2, 600000.00),
    (13, 12, 1, 2000000.00),
    (14, 13, 1, 500000.00),
    (15, 14, 3, 300000.00),
    (16, 15, 1, 500000.00),
    (17, 16, 1, 1500000.00),
    (18, 17, 2, 400000.00),
    (19, 18, 1, 1000000.00),
    (20, 19, 3, 2250000.00),
    (21, 20, 2, 1000000.00),
    (22, 21, 1, 400000.00),
    (23, 22, 1, 600000.00),
    (24, 23, 2, 600000.00),
    (25, 24, 1, 150000.00),
    (26, 25, 1, 700000.00),
    (27, 26, 1, 1000000.00),
    (28, 27, 1, 800000.00),
    (29, 28, 1, 1200000.00),
    (30, 29, 1, 900000.00),
    (31, 30, 1, 5000000.00);

SET IDENTITY_INSERT Reservasi_Layanan OFF;

	SELECT * FROM Reservasi_Layanan;
