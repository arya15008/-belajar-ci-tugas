# 🛒 Aplikasi Toko Sederhana (CodeIgniter 4)

Aplikasi web toko sederhana yang dibangun menggunakan framework **CodeIgniter 4**, dibuat untuk memenuhi tugas mata kuliah **Pemrograman Web Lanjut**. Aplikasi ini mendukung fitur manajemen produk, transaksi, diskon otomatis, dan API Web Service.

---

## ✨ Fitur Aplikasi

- 🔐 Login & Logout pengguna
- 👥 Role akses: **Admin** dan **User**
- 📊 Dashboard transaksi
- 🗂️ Manajemen kategori produk (CRUD)
- 🛍️ Manajemen produk (CRUD) + upload foto
- 💸 Transaksi pembelian & diskon otomatis
- 🧾 Riwayat transaksi pengguna
- 🙍‍♂️ Halaman profil pengguna
- 🌐 API endpoint (`/api`) dengan autentikasi API Key

---

## ⚙️ Cara Instalasi

Berikut langkah-langkah untuk menjalankan proyek di lokal:

1. **Clone repository:**

   ```bash
   git clone https://github.com/arya15008/-belajar-ci-tugas
   ```

2. **Masuk ke direktori project & install dependensi:**

   ```bash
   cd belajar-ci-tugas
   composer install
   ```

3. **Buat file `.env` dan atur koneksi database.**  
   Contoh pengaturan:

   ```
   database.default.hostname = localhost
   database.default.database = nama_database
   database.default.username = root
   database.default.password = 
   database.default.DBDriver = MySQLi
   ```

4. **Jalankan migrasi dan seeder:**

   ```bash
   php spark migrate
   php spark db:seed UserSeeder
   php spark db:seed ProductCategorySeeder
   php spark db:seed ProductSeeder
   php spark db:seed Diskon
   ```

5. **Jalankan server lokal:**

   ```bash
   php spark serve
   ```

6. **Akses aplikasi di browser:**  
   `http://localhost:8080`

---

## 📁 Struktur Proyek

```
belajar-ci-tugas/
│
├── app/                 # Berisi Controller, Model, View
├── public/              # Folder akses publik (CSS, JS, gambar)
├── database/
│   ├── Migrations       # Struktur tabel database
│   └── Seeds            # Data awal aplikasi
├── writable/            # Log, cache, session, dll
├── .env                 # Konfigurasi environment
└── composer.json        # Konfigurasi dependensi PHP
```

---

## 👤 Pengembang

- **Nama:** Arya Febi Prasetyawan  
- **NIM:** A11.2023.15008  
- **Mata Kuliah:** Pemrograman Web Lanjut

---

## 📌 Catatan

> Project ini masih dalam pengembangan tahap awal.  
> Silakan gunakan, ubah, dan kembangkan sesuai kebutuhan.
