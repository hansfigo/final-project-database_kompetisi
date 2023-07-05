CREATE DATABASE db_kompetisi;

CREATE TABLE tim (
  kd_tim VARCHAR(4) PRIMARY KEY,
  nama_tim VARCHAR(255),
  asal_institusi VARCHAR(255),
  kd_kategori VARCHAR(255),
  kd_akun VARCHAR(255),
  FOREIGN KEY (kd_kategori) REFERENCES kategori(kd_kategori),
  FOREIGN KEY (kd_akun) REFERENCES akun(kd_akun)
);

CREATE TABLE ketua (
  kd_ketua VARCHAR(255) PRIMARY KEY,
  nim VARCHAR(255),
  nama VARCHAR(255),
  no_wa VARCHAR(255),
  kd_tim VARCHAR(4),
  FOREIGN KEY (kd_tim) REFERENCES tim(kd_tim)
);

CREATE TABLE anggota (
  nim VARCHAR(255) PRIMARY KEY,
  nama VARCHAR(255),
  kd_ketua VARCHAR(255),
  FOREIGN KEY (kd_ketua) REFERENCES ketua(kd_ketua)
);

CREATE TABLE akun (
  kd_akun VARCHAR(255) PRIMARY KEY,
  email VARCHAR(255),
  password VARCHAR(255)
);

CREATE TABLE kategori (
  kd_kategori VARCHAR(255) PRIMARY KEY,
  kategori VARCHAR(255)
);

-- menambahkan data ke tabel kategori
INSERT INTO kategori (kd_kategori, kategori)
 VALUES ('kt-01', 'AI'),('kt-02', 'Mobile App');


-- Menambahkan data ke tabel tim
INSERT INTO tim (kd_tim, nama_tim, asal_institusi, kd_kategori, kd_akun)
VALUES ('tim-01', 'Tim AI 1', 'UGM', 'kt-01', 'akun-01'),
    ('tim-02', 'Tim Mobile App 1', 'UNY', 'kt-02', 'akun-02'),
    ('tim-03', 'Tim AI 2', 'AMIKOM', 'kt-01', 'akun-03'),
    ('tim-04', 'Tim Mobile App 2', 'UNDIP', 'kt-02', 'akun-04'),
    ('tim-05', 'Tim AI 3', 'UII', 'kt-01', 'akun-05'),
    ('tim-06', 'Tim Mobile App 3', 'UGM', 'kt-02', 'akun-06'),
    ('tim-07', 'Tim AI 4', 'UNY', 'kt-01', 'akun-07'),
    ('tim-08', 'Tim Mobile App 4', 'AMIKOM', 'kt-02', 'akun-08'),
    ('tim-09', 'Tim AI 5', 'UNDIP', 'kt-01', 'akun-09'),
    ('tim-10', 'Tim Mobile App 5', 'UII', 'kt-02', 'akun-10'),
    ('tim-11', 'Tim AI 6', 'UGM', 'kt-01', 'akun-11'),
    ('tim-12', 'Tim Mobile App 6', 'UNY', 'kt-02', 'akun-12'),
    ('tim-13', 'Tim AI 7', 'AMIKOM', 'kt-01', 'akun-13'),
    ('tim-14', 'Tim Mobile App 7', 'UNDIP', 'kt-02', 'akun-14'),
    ('tim-15', 'Tim AI 8', 'UII', 'kt-01', 'akun-15');

-- Menambahkan data ke tabel akun
INSERT INTO akun (kd_akun, email, password) 
VALUES 
('akun-01', 'john.doe@example.com', '0c4fbcf2-8c1d-4b99-9b91-9e4d9f3f7e5c'),
('akun-02', 'charles.brown@example.com', 'f7f7d3e8-7a9d-4b7e-bf0e-dc8b8e9b1c9a'),
('akun-03', 'jane.smith@example.com', '8b2f7f1c-0e5e-4a20-8a8b-5d3d3d2f8f5f'),
('akun-04', 'michael.johnson@example.com', '1e0b5f6b-1c6b-4e7f-9e0e-4a0c1e2f3b5d'),
('akun-05', 'emily.davis@example.com', '6c8b1a8e-8e0f-4d5e-b5f1-b5e1d7d0a7f6'),
('akun-06', 'david.brown@example.com', '2f4d2d7c-8e0f-4e5b-9e3d-8d9c6c5f2f1f'),
('akun-07', 'olivia.wilson@example.com', '1c2d3e4f-5a6b-7c8d-9e0f-a1b2c3d4e5f6'),
('akun-08', 'james.taylor@example.com', '3f5f7f9a-1e3d-5e7a-9c8b-1e2f3a4b5c6d'),
('akun-09', 'sophia.anderson@example.com', '5a6b7c8d-9e0f-1a2b-3c4d-5e6f7g8h9i0j'),
('akun-10', 'william.martinez@example.com', '0a1b2c3d-4e5f-6g7h-8i9j-a1b2c3d4e5f6'),
('akun-11', 'isabella.thomas@example.com', '8e9f0g1h-2i3j4k5l-6m7n8o9p0q1'),
('akun-12', 'ethan.clark@example.com', '2r3t4y5u-6i7o8p9a-0s1d2f3g4h5'),
('akun-13', 'ava.rodriguez@example.com', '6j7k8l9z-0x1c2v3b4n-5m6q7w8e9r0'),
('akun-14', 'mason.lee@example.com', '1t2y3u4i-5o6p7a8s-9d0f1g2h3j4'),
('akun-15', 'sophia.hernandez@example.com', '5k6l7z8x-9c0v1b2n-3m4q5w6e7r8');

INSERT INTO ketua (kd_ketua, nim, nama, no_wa, kd_tim)
VALUES
('ketua-01', '22.12.2020', 'John Doe', '081234567890', 'tim-01'),
('ketua-02', '22.12.2021', 'Charles', '081234567891', 'tim-02'),
('ketua-03', '22.12.2022', 'Jane Smith', '081234567892', 'tim-03'),
('ketua-04', '22.12.2023', 'Michael Johnson', '081234567893', 'tim-04'),
('ketua-05', '22.12.2024', 'Emily Davis', '081234567894', 'tim-05'),
('ketua-06', '22.12.2025', 'David Brown', '081234567895', 'tim-06'),
('ketua-07', '22.12.2026', 'Olivia Wilson', '081234567896', 'tim-07'),
('ketua-08', '22.12.2027', 'James Taylor', '081234567897', 'tim-08'),
('ketua-09', '22.12.2028', 'Sophia Anderson', '081234567898', 'tim-09'),
('ketua-10', '22.12.2029', 'William Martinez', '081234567899', 'tim-10'),
('ketua-11', '22.12.2030', 'Isabella Thomas', '081234567890', 'tim-11'),
('ketua-12', '22.12.2031', 'Ethan Clark', '081234567891', 'tim-12'),
('ketua-13', '22.12.2032', 'Ava Rodriguez', '081234567892', 'tim-13'),
('ketua-14', '22.12.2033', 'Mason Lee', '081234567893', 'tim-14'),
('ketua-15', '22.12.2034', 'Sophia Hernandez', '081234567894', 'tim-15');


INSERT INTO anggota (nim, nama, kd_ketua)
VALUES
('22.12.3301', 'Ivan Petrov', 'ketua-01'),
('22.12.3302', 'Sergei Ivanov', 'ketua-01'),
('22.12.3303', 'Nikolai Smirnov', 'ketua-01'),
('22.12.3304', 'Dmitri Popov', 'ketua-02'),
('22.12.3305', 'Alexei Sokolov', 'ketua-02'),
('22.12.3306', 'Viktor Volkov', 'ketua-02'),
('22.12.3307', 'Yuri Kuznetsov', 'ketua-03'),
('22.12.3308', 'Andrei Fedorov', 'ketua-03'),
('22.12.3309', 'Mikhail Ivanov', 'ketua-03'),
('22.12.3310', 'Vladimir Petrov', 'ketua-04'),
('22.12.3311', 'Igor Smirnov', 'ketua-04'),
('22.12.3312', 'Sergei Popov', 'ketua-04'),
('22.12.3313', 'Nikolai Sokolov', 'ketua-05'),
('22.12.3314', 'Dmitri Volkov', 'ketua-05'),
('22.12.3315', 'Alexei Kuznetsov', 'ketua-05'),
('22.12.3316', 'Viktor Fedorov', 'ketua-06'),
('22.12.3317', 'Yuri Ivanov', 'ketua-06'),
('22.12.3318', 'Andrei Petrov', 'ketua-06'),
('22.12.3319', 'Mikhail Smirnov', 'ketua-07'),
('22.12.3320', 'Vladimir Popov', 'ketua-07'),
('22.12.3321', 'Igor Sokolov', 'ketua-07'),
('22.12.3322', 'Sergei Volkov', 'ketua-08'),
('22.12.3323', 'Nikolai Kuznetsov', 'ketua-08'),
('22.12.3324', 'Dmitri Fedorov', 'ketua-08'),
('22.12.3325', 'Alexei Ivanov', 'ketua-09'),
('22.12.3326', 'Viktor Petrov', 'ketua-09'),
('22.12.3327', 'Yuri Smirnov', 'ketua-09'),
('22.12.3328', 'Andrei Popov', 'ketua-10'),
('22.12.3329', 'Mikhail Sokolov', 'ketua-10'),
('22.12.3330', 'Vladimir Volkov', 'ketua-10'),
('22.12.3331', 'Igor Kuznetsov', 'ketua-11'),
('22.12.3332', 'Sergei Fedorov', 'ketua-11'),
('22.12.3333', 'Nikolai Ivanov', 'ketua-11'),
('22.12.3334', 'Dmitri Petrov', 'ketua-12'),
('22.12.3335', 'Alexei Smirnov', 'ketua-12'),
('22.12.3336', 'Viktor Popov', 'ketua-12'),
('22.12.3337', 'Yuri Sokolov', 'ketua-13'),
('22.12.3338', 'Andrei Volkov', 'ketua-13'),
('22.12.3339', 'Mikhail Kuznetsov', 'ketua-13'),
('22.12.3340', 'Vladimir Fedorov', 'ketua-14'),
('22.12.3341', 'Igor Ivanov', 'ketua-14'),
('22.12.3342', 'Sergei Petrov', 'ketua-14'),
('22.12.3343', 'Nikolai Smirnov', 'ketua-15'),
('22.12.3344', 'Dmitri Popov', 'ketua-15'),
('22.12.3345', 'Alexei Sokolov', 'ketua-15');



-- a. Inner Join
-- Query:

SELECT tim.nama_tim, ketua.nama
FROM tim
INNER JOIN ketua ON tim.kd_tim = ketua.kd_tim;

-- Penjelasan:
-- Query ini menggabungkan tabel tim dan ketua menggunakan INNER JOIN berdasarkan 
-- kolom kd_tim yang ada di kedua tabel. Hasilnya adalah daftar nama tim beserta 
-- nama ketua tim yang memiliki kd_tim yang sama.

-- b. Right Join
-- Query:

SELECT tim.nama_tim, ketua.nama
FROM tim
RIGHT JOIN ketua ON tim.kd_tim = ketua.kd_tim;

-- Penjelasan:
-- Query ini menggabungkan tabel tim dan ketua menggunakan RIGHT JOIN berdasarkan kolom 
-- kd_tim yang ada di kedua tabel. Hasilnya adalah daftar nama tim beserta nama ketua
--  tim yang memiliki kd_tim yang sama, termasuk tim yang tidak memiliki ketua (jika ada).

-- c. Left Join
-- Query:
SELECT tim.nama_tim, ketua.nama
FROM tim
LEFT JOIN ketua ON tim.kd_tim = ketua.kd_tim;

-- Penjelasan:
-- Query ini menggabungkan tabel tim dan ketua menggunakan LEFT JOIN berdasarkan kolom 
-- kd_tim yang ada di kedua tabel. Hasilnya adalah daftar nama tim beserta nama ketua 
-- tim yang memiliki kd_tim yang sama, termasuk tim yang tidak memiliki ketua (jika ada).


-- Query 1:
SELECT tim.nama_tim, COUNT(anggota.nim) AS jumlah_anggota
FROM tim
INNER JOIN anggota ON tim.kd_tim = anggota.kd_ketua
GROUP BY tim.nama_tim;

-- Penjelasan:
-- Query ini menggabungkan tabel tim dan anggota menggunakan INNER JOIN berdasarkan
--  kolom kd_tim dan kd_ketua yang ada di kedua tabel. Kemudian, menggunakan fungsi 
--  agregasi COUNT, kita menghitung jumlah anggota untuk setiap tim. Hasilnya adalah 
--  daftar nama tim beserta jumlah anggota di setiap tim.

-- Query 2:
SELECT tim.nama_tim, MAX(ketua.no_wa) AS kontak_terakhir
FROM tim
LEFT JOIN ketua ON tim.kd_tim = ketua.kd_tim
GROUP BY tim.nama_tim;

-- Penjelasan:
-- Query ini menggabungkan tabel tim dan ketua menggunakan LEFT JOIN berdasarkan kolom kd_tim 
-- yang ada di kedua tabel. Kemudian, menggunakan fungsi agregasi MAX, kita mencari kontak
--  terakhir (no_wa) dari setiap tim. Hasilnya adalah daftar nama tim beserta kontak terakhir 
--  di setiap tim. Tim yang tidak memiliki ketua juga akan ditampilkan.