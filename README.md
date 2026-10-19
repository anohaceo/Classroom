# 🎓 X.Klover Reminder — Classroom Management & Reminder Portal

Aplikasi web manajemen kelas modern dengan pendekatan **Bento-Grid Dashboard**, estetika **Neo-Brutalist Soft Pastel & Clean Scandi-Tech** (terinspirasi dari Linear, Notion, dan Apple Dashboard), serta dilengkapi sistem **Role-Based Access Control (RBAC)** penuh.

---

## ✨ Fitur Utama (Versi Full Produksi)

1. **Halaman Login Minimalis & Bersih**
   - **Tampilan Terpusat**: Form login minimalis, bersih, dan fokus hanya pada input **Username/NIS** dan **Password** tanpa tampilan mapel atau shortcut demo yang mengganggu.
   - **Fitur Form**: Toggle tampilkan/sembunyikan password (`Eye`/`EyeOff`) dan opsi *"Ingat saya"*.
   - **Autentikasi Nyata**: Memvalidasi akun terhadap database pengguna kelas di `localStorage`.
   - **Akun Bawaan**:
     - 👑 **Admin**: Username `admin` (atau NIS `24101`), Password `admin123`
     - 🎓 **Siswa**: Username `siswa` (atau NIS `24104`), Password `siswa123`

2. **Kustomisasi Nama Website & Identitas Kelas (Khusus Admin)**
   - Admin dapat mengubah **Nama Website / Portal**, **Nama Lengkap Kelas**, **Nama Sekolah**, **Tahun Ajaran**, **Nama Wali Kelas**, dan **Motto Kelas**.
   - Tombol edit (✏️) dapat diakses langsung di header Sidebar atau melalui panel aksi cepat Home Dashboard.
   - Perubahan langsung memperbarui seluruh antarmuka dan judul tab peramban (`document.title`).

3. **Role-Based Access Control (RBAC) Penuh & Proteksi Menu**
   - **Admin / Pengurus Kelas (`ADMIN`)**: Memiliki hak akses CRUD penuh di semua modul, termasuk akses eksklusif ke menu **"Kelola Pengguna"**.
   - **Student / Siswa (`USER`)**: Akses **Read-Only** murni. Menu **"Kelola Pengguna" disembunyikan secara total** dari sidebar dan diproteksi dari akses URL/tab. Siswa tidak dapat menambah/mengedit pengguna lain maupun data kelas.
   - **Status Akun Resmi**: Header menampilkan badge resmi pengguna aktif (`Admin / Pengurus Kelas` atau `Siswa`) dan tombol *"Keluar"* (Logout).

2. **Modul 1: Home Dashboard**
   - Sapaan dinamis berdasarkan waktu (*"Selamat Pagi / Siang / Sore / Malam"* & *"Holla, [Nama]!"*).
   - Kalender & jam real-time digital (JetBrains Mono).
   - Banner Gelap Elongated Pill: Menampilkan mapel saat ini / berikutnya beserta status langsung (*"Sedang Berlangsung"*).
   - Bento Summary Cards:
     - 🟨 **Kartu Tugas (PR)**: Soft Butter (`#FEF9C3`) dengan alert deadline terdekat.
     - 🟦 **Kartu Mapel**: Soft Sky (`#E0F2FE`) dengan guru, ruangan, dan seragam.
     - 🟩 **Kartu Piket Tanaman**: Soft Mint (`#DCFCE7`) dengan counter siram hari ini & tombol quick action.
     - 🌸 **Kartu Piket Kelas**: Soft Rose (`#FCE7F3`) dengan daftar petugas hari ini & status pelaksanaan.
     - 🔮 **Kalender Bulanan Artistik**: Widget mesh gradient dengan penanda hari ujian (PTS) dan event kelas interaktif.

3. **Modul 2: Info Board (Papan Pengumuman Digital)**
   - Kategori: *Semua*, *Penting*, *Acara*, *Ujian*, *Umum*.
   - Filter & pencarian real-time.
   - Sematkan pengumuman (Pin to top).
   - CRUD pengumuman via Modal interaktif bagi Admin.

4. **Modul 3: Schedule (Jadwal Pelajaran Mingguan)**
   - Tab filter hari (Senin – Sabtu).
   - Indikator ketentuan seragam resmi sekolah per hari (dapat diedit oleh Admin).
   - Slot jam pelajaran dengan ruangan dan guru pengajar.
   - Fitur Admin: Tandai *"Jam Kosong / Tugas Mandiri"* beserta catatan tugas guru.

5. **Modul 4: Piket Kebersihan Kelas**
   - Jadwal regu piket Senin – Jumat.
   - Checklist pekerjaan spesifik (Sapu, Pel, Bersihkan papan tulis, Buang sampah ke TPS, Kunci jendela & matikan AC).
   - Indikator persentase penyelesaian tugas hari ini.
   - Fitur Admin: Ubah anggota regu piket harian dan toggle status pelaksanaan.

6. **Modul 5: Tanaman Hias Kelas**
   - Monitoring botani kelas (Sansevieria, Sirih Gading, Monstera, Aglaonema, Sukulen).
   - Status kesehatan: *Sehat*, *Butuh Air*, *Perlu Pupuk*.
   - Counter siram minggu ini dan hari ini.
   - Log penyiram dan petugas harian.
   - Tombol interaktif *"+1 Siram Sekarang"* (otomatis memperbarui timestamp & log).

7. **Modul 6: Homework & Proyek Kelas**
   - Filter berdasarkan Mata Pelajaran dan Status (*Mendatang*, *Tenggat Dekat*, *Selesai*).
   - Countdown deadline, tingkat prioritas, dan metode pengumpulan (Google Classroom, Buku Fisik, dll).
   - Fitur Siswa: Checkmark interaktif *"Tandai Selesai Pribadi"*.
   - Fitur Admin: Tambah, edit, dan hapus tugas PR.

8. **Modul 7: Attendance (Rekapitulasi Presensi Siswa)**
   - Rekap 36 siswa kelas XII MIPA 1.
   - Kartu statistik: *Total*, *Hadir*, *Sakit*, *Izin*, *Alfa*.
   - Pencarian siswa berdasarkan nama atau NIS.
   - Fitur Admin: Quick status switch chips (H / I / S / A), edit catatan surat sakit/dispensasi, dan tombol *"Set Seluruh Siswa Hadir"*.

9. **Modul 8: Kas, Struktur Organisasi & Inventaris Kelas**
   - **Kas Kelas**: Transparansi saldo, total pemasukan/pengeluaran, buku mutasi kas, dan form pencatatan bendahara.
   - **Struktur Organisasi**: Bagan pengurus (Wali Kelas, Ketua, Wakil, Sekretaris, Bendahara, Koordinator 7K & Mading) dengan motto siswa.
   - **Inventaris**: Monitoring aset perlengkapan kelas (Spidol, Penghapus, Sapu, Galon, Remote AC, P3K) beserta jumlah dan kondisinya.

10. **Modul 9: Kelola Pengguna & Akun Siswa (User Management)**
    - **Tambah Pengguna Baru (+ Add User)**: Admin dapat mendaftarkan siswa atau pengurus baru dengan memasukkan Nama, Username, NIS, Password, Role (`ADMIN` atau `USER`), Jabatan, dan Email.
    - **Tabel Pengguna Lengkap**: Daftar seluruh akun pengguna terdaftar dengan avatar inisial, badge role, toggle lihat password, dan status aktif.
    - **Aksi Admin**: Edit data pengguna, Reset Password, Hapus akun (dengan validasi perlindungan akun aktif dan minimal 1 admin), serta fitur *Beralih Akun* instan.
    - **Langsung Tersinkronisasi**: Pengguna baru yang didaftarkan langsung dapat digunakan untuk login di Halaman Login utama.

---

## 🎨 Desain & Tipografi (Anti-AI-Slop Standard)

- **Font Heading**: *Plus Jakarta Sans* (Bold & tight tracking)
- **Font Body**: *Inter* (Keterbacaan tinggi untuk tabel dan form)
- **Font Monospace**: *JetBrains Mono* (Angka statistik, jam, NIS, tanggal)
- **Palette**: Warm Alabaster (`#F8FAFC`), Soft Butter (`#FEF9C3`), Soft Rose (`#FCE7F3`), Soft Mint (`#DCFCE7`), Soft Sky (`#E0F2FE`), dan gradient sidebar `#4A8CC7` ke `#7DAFDF`.
- **Ikonografi**: Konsisten menggunakan *Lucide Icons* dengan stroke-width 1.75px.
- **Persistence**: Seluruh perubahan tersimpan otomatis di `localStorage` peramban.

---

## 🚀 Cara Menjalankan

Aplikasi telah terpasang dan siap digunakan di:
```bash
cd "C:\Users\M S I\.gemini\antigravity\scratch\classroom-portal"
npm run dev
```

Buka peramban di: **`http://localhost:5173/`**
