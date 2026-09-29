USE praktikum_web_2401020145;

INSERT INTO program_studi (nama_prodi) VALUES
    ('Teknik Informatika'),
    ('Teknologi Informasi');

INSERT INTO mahasiswa
    (nim, nama, email, usia, program_studi_id)
VALUES
    ('2401020145', 'Muhammad Alfikar',
     'alfikar@example.com', 21, 1),

    ('2401020146', 'Rizky Maulana',
     'rizky@example.com', 21, 1),

    ('2401020147', 'Fauzan Ramadhan',
     'fauzan@example.com', 20, 2),

    ('2401020148', 'Data Sementara Alfikar',
     'sementara.alfikar@example.com', 19, 2);

UPDATE mahasiswa
SET email = 'muhammad.alfikar@example.com'
WHERE nim = '2401020145';

DELETE FROM mahasiswa
WHERE nim = '2401020148';

SELECT m.nim, m.nama, m.email, m.usia,
       p.nama_prodi
FROM mahasiswa AS m
JOIN program_studi AS p
    ON p.id = m.program_studi_id
ORDER BY m.nim;