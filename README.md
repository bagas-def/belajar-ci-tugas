# CodeIgniter 4 Application Starter

## What is CodeIgniter?

CodeIgniter is a PHP full-stack web framework that is light, fast, flexible and secure.
More information can be found at the [official site](https://codeigniter.com).

This repository holds a composer-installable app starter.
It has been built from the
[development repository](https://github.com/codeigniter4/CodeIgniter4).

More information about the plans for version 4 can be found in [CodeIgniter 4](https://forum.codeigniter.com/forumdisplay.php?fid=28) on the forums.

You can read the [user guide](https://codeigniter.com/user_guide/)
corresponding to the latest version of the framework.

## Installation & updates

`composer create-project codeigniter4/appstarter` then `composer update` whenever
there is a new release of the framework.

When updating, check the release notes to see if there are any changes you might need to apply
to your `app` folder. The affected files can be copied or merged from
`vendor/codeigniter4/framework/app`.

## Setup

Copy `env` to `.env` and tailor for your app, specifically the baseURL
and any database settings.

## Important Change with index.php

`index.php` is no longer in the root of the project! It has been moved inside the *public* folder,
for better security and separation of components.

This means that you should configure your web server to "point" to your project's *public* folder, and
not to the project root. A better practice would be to configure a virtual host to point there. A poor practice would be to point your web server to the project root and expect to enter *public/...*, as the rest of your logic and the
framework are exposed.

**Please** read the user guide for a better explanation of how CI4 works!

## Repository Management

We use GitHub issues, in our main repository, to track **BUGS** and to track approved **DEVELOPMENT** work packages.
We use our [forum](http://forum.codeigniter.com) to provide SUPPORT and to discuss
FEATURE REQUESTS.

This repository is a "distribution" one, built by our release preparation script.
Problems with it can be raised on our forum, or as issues in the main repository.

## Server Requirements

PHP version 8.1 or higher is required, with the following extensions installed:

- [intl](http://php.net/manual/en/intl.requirements.php)
- [mbstring](http://php.net/manual/en/mbstring.installation.php)

> [!WARNING]
> - The end of life date for PHP 7.4 was November 28, 2022.
> - The end of life date for PHP 8.0 was November 26, 2023.
> - If you are still using PHP 7.4 or 8.0, you should upgrade immediately.
> - The end of life date for PHP 8.1 will be December 31, 2025.

Additionally, make sure that the following extensions are enabled in your PHP:

- json (enabled by default - don't turn it off)
- [mysqlnd](http://php.net/manual/en/mysqlnd.install.php) if you plan to use MySQL
- [libcurl](http://php.net/manual/en/curl.requirements.php) if you plan to use the HTTP\CURLRequest library




## DESKRIPSI

# Toko Bagas - CodeIgniter 4

Aplikasi toko online sederhana berbasis web menggunakan framework **CodeIgniter 4**. Proyek ini mendemonstrasikan bagaimanaa membangun sistem e-commerce kecil lengkap dengan manajemen produk, keranjang belanja, diskon, dan fitur checkout.

---

### Fitur

1. **Home**
   - Menampilkan daftar produk yang tersedia
   - Terdapat tombol **Beli** untuk menambahkan produk ke keranjang
   - Menampilkan diskon aktif jika ada

2. **Keranjang**
   - Menampilkan daftar produk yang ditambahkan ke keranjang
   - Dapat mengubah jumlah produk atau menghapus produk dari keranjang
   - Fitur **Checkout** dengan pengisian alamat dan perhitungan ongkir otomatis via API RajaOngkir

3. **Manajemen Produk**
   - CRUD Produk: Tambah, Lihat, Edit, Hapus
   - Upload gambar produk, input harga dan jumlah stok

4. **Manajemen Kategori Produk**
   - CRUD kategori untuk pengelompokan produk berdasarkan kategori

5. **Manajemen Diskon**
   - CRUD diskon berdasarkan tanggal
   - Diskon otomatis diterapkan saat tanggal berlaku dan produk ditambahkan ke keranjang

6. **Profile (History Pembelian)**
   - Menampilkan riwayat transaksi pembelian user
   - Detail item pembelian, ongkir, total bayar, dan status pesanan

7. **Halaman Kontak**
   - Informasi kontak toko

8. **Halaman FAQ**
   - Menampilkan daftar pertanyaan yang sering diajukan pelanggan

9. **Dashboard Monitoring (Web Service)**
   - Menggunakan API Key untuk akses data transaksi
   - Menampilkan data pembelian beserta jumlah item tiap transaksi


### Instalasi
Ikuti langkah-langkah berikut untuk menjalankan proyek toko online ini secara lokal:


## 1. Clone atau Download Proyek
`git clone https://github.com/bagas-def/belajar-ci-tugas`
`cd belajar-ci-tugas`

Atau kamu bisa download file ZIP, lalu ekstrak dan buka folder-nya.

## 2. Install Dependency dengan Composer
Pastikan kamu sudah menginstal Composer. Jalankan perintah:
`composer install`

## 3. Salin File .env dan Atur Konfigurasinya
`cp .env.example .env`
Buka file .env, lalu sesuaikan bagian database dan API:

`database.default.hostname = localhost`
`database.default.database = db_ci4`
`database.default.username = root`
`database.default.password =`

`COST_KEY = [API_KEY_RajaOngkir]`
`API_KEY = random123678abcghi `

Ganti [API_KEY_RajaOngkir] dengan kunci API asli dari layanan ongkir yang kamu gunakan.


## 4. Buat dan Import Database

`Buat database baru di MySQL, misalnya: db_ci4`
`Import file SQL = db_ci4.sql` 


## 5. Jalankan Server
`php spark serve`
Buka browser dan akses aplikasi:
`http://localhost:8080`


### STRUKTUR PROYEK
Struktur folder dan file utama dalam proyek ini:

belajar-ci-tugas/
├── app/
│   ├── Config/
│   ├── Controllers/
│   │   ├── Home.php
│   │   ├── ProdukController.php
│   │   ├── produkKategori.php
│   │   ├── DiskonController.php
│   │   ├── TransaksiController.php
│   │   ├── ApiController.php
│   │   └── AuthController.php
│   ├── Models/
│   │   ├── ProductModel.php
│   │   ├── ProductCategoryModel.php
│   │   ├── DiskonModel.php
│   │   ├── TransactionModel.php
│   │   ├── TransactionDetailModel.php
│   │   └── UserModel.php
│   ├── Views/
|   |   ├── lauout_clear.php
│   │   ├── layout.php
│   │   ├── v_login.php
│   │   ├── v_home.php
│   │   ├── v_produk.php
│   │   ├── v_produkPDF.php
│   │   ├── kategori_produk.php
│   │   ├── v_diskon.php
│   │   ├── v_keranjang.php
│   │   ├── v_checkout.php
│   │   ├── v_profile.php
│   │   ├── v_contact.php
│   │   └── v_faq.php
│   │   ├── welcome_message.php
│  
│ 
├── public/
│   ├── index.php
│   ├── img/
│   │   └── (gambar produk & user)
│   └── assets/
│       └── (CSS, JS, Bootstrap, dll)
├── writable/
│   └── logs/
├── .env
├── .gitignore
├── builds
├── composer.json
├── composer.lock
├── README.md
├── phpunit.xml.dist
├── preload.php
├── db_ci4.sql (database)
└── spark
