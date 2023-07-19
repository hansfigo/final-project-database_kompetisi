-- Membuat database db_kompetisi
CREATE DATABASE db_kompetisi;

-- Tabel 'tim' untuk menyimpan informasi tentang tim
CREATE TABLE tim (
  kd_tim VARCHAR(10) PRIMARY KEY,       -- Kode unik untuk setiap tim
  nama_tim VARCHAR(50),                 -- Nama tim
  asal_institusi VARCHAR(50),           -- Asal institusi tim
  email VARCHAR(50),                    -- Alamat email tim
  password VARCHAR(50),                 -- Kata sandi tim
  kd_kategori VARCHAR(10)               -- Kode kategori tim
);

-- Tabel 'peserta' untuk menyimpan informasi tentang peserta
CREATE TABLE peserta (
  nim VARCHAR(10) PRIMARY KEY,          -- NIM (Nomor Induk Mahasiswa) peserta
  nama VARCHAR(50),                     -- Nama peserta
  posisi VARCHAR(50),                   -- Posisi peserta dalam tim (Ketua/Anggota)
  kd_tim VARCHAR(10),                   -- Kode tim yang peserta ikuti
  FOREIGN KEY (kd_tim) REFERENCES tim(kd_tim)  -- Foreign ke tabel 'tim'
);

-- Tabel 'kategori' untuk menyimpan informasi tentang kategori
CREATE TABLE kategori (
  kd_kategori VARCHAR(10) PRIMARY KEY,  -- Kode unik untuk setiap kategori
  kategori VARCHAR(50),                 -- Nama kategori
  golongan VARCHAR(50)                  -- Golongan kategori (Mahasiswa/Pelajar/Umum)
);

-- Tabel 'juri' untuk menyimpan informasi tentang juri
CREATE TABLE juri (
  kd_juri VARCHAR(10) PRIMARY KEY,      -- Kode unik untuk setiap juri
  kd_kategori VARCHAR(10),              -- Kode kategori yang di-juri
  nama VARCHAR(50),                     -- Nama juri
  FOREIGN KEY (kd_kategori) REFERENCES kategori(kd_kategori)  -- Foreign ke tabel 'kategori'
);

-- Tabel 'project' untuk menyimpan informasi tentang project
CREATE TABLE project (
  id INT PRIMARY KEY AUTO_INCREMENT,     -- ID unik untuk setiap project (auto-increment)
  nama VARCHAR(50),                      -- Nama project
  deskripsi VARCHAR(255),                 -- Deskripsi project (opsional)
  kd_tim VARCHAR(10),                    -- Kode tim yang project-nya terkait
  FOREIGN KEY (kd_tim) REFERENCES tim(kd_tim)  -- Foreign ke tabel 'tim'
);




INSERT INTO tim (kd_tim, nama_tim, asal_institusi, email, password, kd_kategori)
VALUES
  ('T001', 'Tim 1', 'UGM', 'tim1@example.com', 'password1', 'AI'),
  ('T002', 'Tim 2', 'UNY', 'tim2@example.com', 'password2', 'MobileDev'),
  ('T003', 'Tim 3', 'AMIKOM', 'tim3@example.com', 'password3', 'AI'),
  ('T004', 'Tim 4', 'UNY', 'tim4@example.com', 'password4', 'MobileDev'),
  ('T005', 'Tim 5', 'AMIKOM', 'tim5@example.com', 'password5', 'AI');

INSERT INTO peserta (nim, nama, posisi, kd_tim)
VALUES
    ('22.12.2220', 'Ivan Ivanov', 'Ketua', 'T001'),
    ('22.12.2221', 'Maria Petrova', 'Anggota', 'T001'),
    ('22.12.2222', 'Dmitry Smirnov', 'Anggota', 'T001'),
    ('22.12.2223', 'Natalia Sokolova', 'Ketua', 'T002'),
    ('22.12.2224', 'Sergei Popov', 'Anggota', 'T002'),
    ('22.12.2225', 'Elena Kuznetsova', 'Anggota', 'T002'),
    ('22.12.2226', 'Alexei Volkov', 'Ketua', 'T003'),
    ('22.12.2227', 'Olga Voronina', 'Anggota', 'T003'),
    ('22.12.2228', 'Igor Ivanov', 'Anggota', 'T003'),
    ('22.12.2229', 'Ekaterina Smirnova', 'Ketua', 'T004'),
    ('22.12.2230', 'Nikolai Petrov', 'Anggota', 'T004'),
    ('22.12.2231', 'Tatiana Sokolova', 'Anggota', 'T004'),
    ('22.12.2232', 'Mikhail Ivanov', 'Ketua', 'T005'),
    ('22.12.2233', 'Anna Popova', 'Anggota', 'T005'),
    ('22.12.2234', 'Yuri Kuznetsov', 'Anggota', 'T005');
    

-- Masukkan data juri
INSERT INTO juri (kd_juri, kd_kategori, nama)
VALUES
  ('J001', 'AI', 'Juri 1'),
  ('J002', 'AI', 'Juri 2'),
  ('J003', 'AI', 'Juri 3'),
  ('J004', 'MobileDev', 'Juri 4'),
  ('J005', 'MobileDev', 'Juri 5'),
  ('J006', 'MobileDev', 'Juri 6');

INSERT INTO kategori (kd_kategori, kategori, golongan)
VALUES
  ('AI', 'AI', 'Umum'),
  ('MobileDev', 'Mobile Dev', 'Mahasiswa');

INSERT INTO project (nama, deskripsi, kd_tim)
VALUES
  ('Interview AI', 'Deskripsi Interview AI', 'T001'),
  ('Movie Mobile App', 'Deskripsi Movie Mobile App', 'T002'),
  ('Speech Recognition AI', 'Deskripsi Speech Recognition AI', 'T003'),
  ('E-commerce Mobile App', 'Deskripsi E-commerce Mobile App', 'T004'),
  ('AI Chatbot', 'Deskripsi AI Chatbot', 'T005');


SELECT tim.kd_kategori, tim.nama_tim, tim.asal_institusi, kategori.kategori FROM tim
INNER JOIN kategori ON tim.kd_kategori = kategori.kd_kategori
WHERE tim.asal_institusi = 'AMIKOM';

SELECT tim.nama_tim, kategori.kategori, kategori.golongan FROM kategori
RIGHT JOIN tim ON kategori.kd_kategori = tim.kd_kategori
WHERE kategori.golongan = 'Mahasiswa';

SELECT tim.kd_tim, tim.nama_tim, kategori.kategori, kategori.golongan FROM tim
LEFT JOIN kategori ON tim.kd_kategori = kategori.kd_kategori
WHERE kategori.kategori = 'AI'

SELECT tim.nama_tim, COUNT(peserta.nim) AS jumlah_peserta
FROM tim
INNER JOIN peserta ON tim.kd_tim = peserta.kd_tim
GROUP BY tim.nama_tim;

SELECT kategori.kategori, COUNT(tim.kd_tim) AS jumlah_tim
FROM kategori
LEFT JOIN tim ON kategori.kd_kategori = tim.kd_kategori
INNER JOIN peserta ON tim.kd_tim = peserta.kd_tim
GROUP BY kategori.kategori


