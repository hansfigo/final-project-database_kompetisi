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

