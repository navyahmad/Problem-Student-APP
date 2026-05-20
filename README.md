# Front-End Flutter Problem Student APP - Aplikasi Pelanggaran Siswa 📱

Aplikasi **Problem Student** adalah aplikasi mobile berbasis **Flutter** yang dirancang khusus untuk mempermudah guru di sekolah dalam mendokumentasikan, melaporkan, dan melacak pelanggaran kedisiplinan yang dilakukan oleh siswa secara real-time. Aplikasi ini bertujuan untuk membangun lingkungan sekolah yang lebih disiplin, tertib, dan transparan.

---

## ✨ Fitur Utama Aplikasi

1. **Splash Screen & Onboarding:** Tampilan awal aplikasi yang bersih dengan logo instansi sekolah dan pengenalan singkat fungsi aplikasi.
2. **Sistem Autentikasi:** Fitur Login dan Register untuk guru, dilengkapi dengan opsi masuk menggunakan akun Google.
3. **Bottom Navigation Modern:** Menggunakan Google Nav Bar (`GNav`) untuk navigasi antar tab dengan transisi yang halus.
4. **Beranda (Dashboard):** Menampilkan sambutan personal untuk guru, bilah pencarian umum, dan deretan informasi/berita terbaru.
5. **Manajemen Kelas:** Daftar kelas interaktif (seperti X RPL 1, X DKV 1, X AKUNTANSI 1, dll.) dengan kode warna unik dan fitur pencarian kelas.
6. **Laporan Pelanggaran:** Halaman khusus untuk mencari dan melihat log/daftar pelanggaran kedisiplinan siswa.
7. **Rekapitulasi Data:** Visualisasi data laporan pelanggaran yang dikelompokkan berdasarkan tanggal (Hari ini, kemarin, dll).
8. **Profil Guru:** Menampilkan informasi personal guru yang sedang masuk (Nama, Email, Sandi) dengan opsi untuk edit profil dan log out.

---

## 🛠️ Tech Stack & Dependensi

Proyek ini dibangun menggunakan teknologi berikut:
- **Framework:** [Flutter](https://flutter.dev/) (SDK `>=3.0.1 <4.0.0`)
- **Bahasa Pemrograman:** Dart
- **Library Navigasi:** `google_nav_bar` (untuk Bottom Navigation Bar modern)
- **Library Aset:** `flutter_svg` (untuk mendukung rendering file icon SVG)
- **Desain & Tipografi:** Menggunakan font kustom **Poppins** untuk tampilan premium dan dinamis.

---

## 📂 Struktur Folder Proyek

```text
├── android/                 # Konfigurasi platform Android
├── ios/                     # Konfigurasi platform iOS
├── assets/                  # Aset eksternal aplikasi
│   ├── img/                 # Gambar logo SMK, ilustrasi intro, bendera, dll.
│   └── font/                # Font kustom Poppins
├── lib/                     # Kode sumber utama Dart
│   ├── main.dart            # Entry point aplikasi
│   └── pages/               # Halaman-halaman aplikasi
│       ├── component/       # Komponen UI global (form input, tombol sosial)
│       ├── akun.dart        # Halaman Profil Guru
│       ├── data.dart        # Halaman Rekap Data
│       ├── homepage.dart    # Halaman Beranda Utama
│       ├── intro.dart       # Layar Onboarding / Intro
│       ├── kelas.dart       # Daftar Kelas Siswa
│       ├── login.dart       # Form Login
│       ├── pelanggaran.dart # Log Pelanggaran Siswa
│       ├── register.dart    # Form Register Akun Guru
│       └── rumah.dart       # Shell Container dengan Bottom Nav
└── pubspec.yaml             # Konfigurasi dependensi Flutter
```

---

## 🚀 Cara Memulai (Getting Started)

Ikuti langkah-langkah berikut untuk menjalankan proyek ini di lingkungan lokal Anda:

### Prasyarat
- Pastikan Flutter SDK sudah terinstal di perangkat Anda (versi Flutter 3.x).
- Pastikan emulator Android/iOS aktif atau perangkat fisik sudah terhubung melalui USB debugging.

### Instalasi
1. Clone repositori ini ke komputer lokal Anda:
   ```bash
   git clone https://github.com/username/nama-repo.git
   ```
2. Masuk ke direktori proyek:
   ```bash
   cd nama-repo
   ```
3. Unduh seluruh dependensi yang diperlukan:
   ```bash
   flutter pub get
   ```
4. Jalankan aplikasi:
   ```bash
   flutter run
   ```

