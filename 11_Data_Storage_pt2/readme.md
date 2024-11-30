TUGAS PENDAHULUAN
PEMROGRAMAN PERANGKAT BERGERAK
MODUL XI
FIREBASE NOTIFIKASI

Disusun Oleh :
Nama lengkap / NIM
Kelas
Asisten Praktikum :
Muhammad Faza Zulian Gesit Al Barru
Aisyah Hasna Aulia
Dosen Pengampu :
Yudha Islami Sulistya, S.Kom., M.Cs.
PROGRAM STUDI S1 SOFTWARE ENGINEERING
FAKULTAS INFORMATIKA
TELKOM UNIVERSITY PURWOKERTO
2024
TUGAS PENDAHULUAN
SOAL
1. Firebase dan Fitur Utamanya
a. Jelaskan apa yang dimaksud dengan Firebase.
b. Sebutkan tiga fitur utama Firebase beserta fungsinya masing-masing.
2. Notification Message vs. Data Message
Jelaskan perbedaan antara Notification Message dan Data Message pada Firebase
Cloud Messaging. Berikan contoh penggunaan untuk masing-masing jenis pesan.
3. FCM Token
Apa yang dimaksud dengan Firebase Cloud Messaging (FCM) Token, dan
mengapa token ini penting untuk mengirim notifikasi ke aplikasi?
4. Penanganan Notifikasi oleh FCM
Jelaskan bagaimana Firebase Cloud Messaging menangani notifikasi dalam
kondisi aplikasi berikut:
a. Saat aplikasi berada di foreground.
b. Saat aplikasi berada di background.
c. Saat aplikasi dalam kondisi terminated.


Jawaban
1. a. Firebase adalah penyedia back end yg di sediakan oleh google
   b. Firebase Authentication, Cloud Firestore, Firebase Cloud Messaging (FCM)

2.
Notif message : Konten pesan dikelola oleh Firebase Console dan dirender secara otomatis oleh perangkat
Data message : Hanya berisi data payload yang perlu diolah oleh aplikasi. Pesan ini tidak langsung ditampilkan sebagai notifikasi kecuali diatur oleh pengembang.

3. FCM token adalah  identifier unik yang diberikan oleh Firebase ke perangkat pengguna.

3. foreground : Pesan tidak langsung ditampilkan sebagai notifikasi.
   background : Ditangani oleh Firebase secara otomatis, ditampilkan di tray notifikasi tanpa keterlibatan aplikasi.
   Terminated : Firebase memastikan notifikasi tetap ditampilkan di tray perangkat.
