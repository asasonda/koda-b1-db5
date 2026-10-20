-- db1-perpustakaan

-- CREATE DATABASE koda_b1_db1_perpustakaan

-- SELECT current_database()

-- CREATE TABLE users (
--     id serial PRIMARY key,
--     fullname VARCHAR(30),
--     contact VARCHAR(40)
-- )

-- select * FROM users

-- CREATE Table petugas(
--     id serial PRIMARY KEY,
--     fullname VARCHAR(80) NOT NULL,
--     contact VARCHAR(40)
-- )

-- CREATE TABLE kategori(
--     id serial PRIMARY KEY,
--     nama VARCHAR(80) NOT NULL
-- )

-- CREATE Table rak_buku(
--     id serial PRIMARY KEY,
--     nama_rak VARCHAR(100) NOT NULL
-- )

-- CREATE Table buku(
--     id serial PRIMARY KEY,
--     judul VARCHAR(120) NOT NULL,
--     id_kategori int REFERENCES kategori(id),
--     id_rak_buku int REFERENCES rak_buku(id)
-- )

-- CREATE Table peminjaman(
--     id serial PRIMARY KEY,
--     id_users int REFERENCES users(id),
--     id_petugas int REFERENCES petugas(id),
--     id_buku int REFERENCES buku(id),
--     tanggal_peminjaman TIMESTAMPTZ DEFAULT NOW(),
--     tanggal_pengembalian DATE NOT NULL
-- )


-- insert

-- insert into users(fullname, contact) VALUES
-- ('Afif sasonda', '081233445566'),
-- ('Rizal Kadamong', '085544667788'),
-- ('M.F.Zakky', '086655448899'),
-- ('Bando Kusuma', '082277889012'),
-- ('Alvin', '086655447890'),
-- ('Rifai', '082345231678'),
-- ('Chandra ardli', '081266778890'),
-- ('Bang Anggi', '081733561389'),
-- ('kak winda', '084567889900'),
-- ('Bang alwi', '081367893467')

-- select * from users

-- insert into petugas(fullname, contact) VALUES
-- ('Petugas A', '081290183766'),
-- ('Petugas B', '085549047788'),
-- ('Petugas C', '086000448899'),
-- ('Petugas D', '082000889012'),
-- ('Petugas E', '084455447890'),
-- ('Petugas F', '082345000678'),
-- ('Petugas G', '081200778890'),
-- ('Petugas H', '081733561000'),
-- ('Petugas I', '084567881110'),
-- ('Petugas J', '081367111467')

-- select * from petugas

-- insert into kategori(nama) VALUES
-- ('History'),
-- ('Isekai'),
-- ('Magic'),
-- ('School'),
-- ('Fantasi'),
-- ('Romance'),
-- ('Psikologi'),
-- ('Medis'),
-- ('Animal'),
-- ('War')

-- select * from kategori

-- insert into rak_buku(nama_rak) VALUES
-- ('A1'),
-- ('A2'),
-- ('A3'),
-- ('A4'),
-- ('A5'),
-- ('A6'),
-- ('A7'),
-- ('B1'),
-- ('B2'),
-- ('B3')

-- SELECT * from rak_buku

-- insert into buku(judul, id_kategori, id_rak_buku) VALUES
-- ('Black Clover',3, 1 ),
-- ('Naruto', 5, 2),
-- ('Classroom of the elite', 7, 3),
-- ('Boku No kokoro Yabai Yatsu', 6, 4),
-- ('Attack On Titan', 5, 8),
-- ('Re:zero', 2, 10),
-- ('Demon Slayer 1',3, 9),
-- ('Demon Slayer 2', 8, 5 ),
-- ('Attack on Titan 2', 9, 2),
-- ('Shadow Garden', 2, 6)

-- select * from buku

-- insert into peminjaman(id_users, id_petugas, id_buku, tanggal_pengembalian) VALUES
-- (1,4, 3, '2026-06-01'),
-- (2,1, 1, '2026-06-17'),
-- (3,2, 1, '2026-06-04'),
-- (4,2, 6, '2026-06-10'),
-- (5,9, 3, '2026-06-12'),
-- (5,5, 2, '2026-06-30'),
-- (7,8, 8, '2026-06-15'),
-- (1,10, 9, '2026-06-28'),
-- (8,9, 10, '2026-06-18'),
-- (6,5, 7, '2026-06-21')

-- select * from peminjaman

-- select u.fullname, b.judul, k.nama from users u 
-- join peminjaman p on p.id_users = u.id
-- join buku b on b.id = p.id_buku
-- join kategori k on k.id = b.id_kategori


-- select b.judul, k.nama from buku b 
-- right join kategori k on k.id = b.id_kategori

-- select u.fullname as Peminjam, b.judul, p.tanggal_pengembalian from users u 
-- left join peminjaman p on p.id_users = u.id
-- left join buku b on b.id = p.id_buku

