Disusun Oleh : 
Nama Aubrey Rayhan Firoz / 2211104010 
Se06_01
Asisten Praktikum : 
Muhammad Faza Zulian Gesit Al Barru 
Aisyah Hasna Aulia 
Dosen Pengampu : 
Yudha Islami Sulistya, S.Kom., M.Cs. 
PROGRAM STUDI S1 SOFTWARE ENGINEERING 
FAKULTAS INFORMATIKA 
TELKOM UNIVERSITY PURWOKERTO 
2024

SOAL 
1. Jelaskan secara singkat fungsi SQLite dalam pengembangan aplikasi mobile! 
SqlLite untuk mengelola database, CRUD
2. Apa saja yang dimaksud dengan operasi CRUD? Berikan penjelasan singkat untuk 
masing-masing operasi! 
create, untuk membuat suatu database
Read, membaca suatu database
Update, mengedit database
delete, menghapus database
3. Tuliskan kode SQL untuk membuat tabel bernama users dengan kolom berikut : 
• id (integer, primary key, auto increment) 
• name (text) 
• email (text) 
• createdAt (timestamp, default value adalah waktu sekarang) 


CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    email TEXT,
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

4. Sebutkan langkah-langkah utama untuk menggunakan plugin sqflite di dalam 
Flutter! 
ctrl + shift + p, add depenpdecy sqllite

5. Lengkapi kode berikut untuk membaca semua data dari tabel users menggunakan 
sqflite. 
static Future<List<Map<String, dynamic>>> getUsers() async { 
final db = await SQLHelper.db(); 
return db.query('users'); 
}