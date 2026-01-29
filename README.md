# Tubes-Pemrograman

## 📋 Tentang Project

**KosKu** adalah sebuah platform web yang dibangun untuk memudahkan pencarian dan pengelolaan akomodasi bertipe "Kos" (rumah sewa kamar) di Indonesia. Platform ini menghubungkan penyedia layanan kos dengan calon penghuni yang mencari tempat tinggal dengan sistem yang terstruktur dan user-friendly.

### Fitur Utama
- 🏠 **Katalog Kos**: Listing lengkap properti kos dengan informasi detail
- ⭐ **Sistem Rating & Review**: Penghuni dapat memberikan ulasan dan rating
- 💾 **Simpan Favorit**: Fitur untuk menyimpan kos pilihan
- 📧 **Notifikasi & Email**: Sistem komunikasi untuk update status dan verifikasi
- 📱 **Admin Panel**: Dashboard administrator untuk mengelola konten
- 📋 **Sistem Reporting**: Fitur laporan untuk masalah atau keluhan

---

## 🛠️ Tech Stack

### Backend
- **Framework**: Laravel 12 - Framework PHP modern dengan fitur-fitur canggih
- **Admin Panel**: Filament 3.3 - Admin panel yang powerful dan mudah dikustomisasi
- **Database**: SQLite / MySQL - Untuk penyimpanan data
- **Authentication**: Laravel Sanctum - API authentication yang aman
- **Email**: Laravel Mail - Sistem pengiriman email built-in

### Frontend
- **Templating**: Blade - Template engine Laravel
- **Reactive Component**: Livewire - Framework untuk reactive component tanpa JavaScript kompleks
- **Styling**: Tailwind CSS 4 - Utility-first CSS framework
- **Build Tool**: Vite - Next generation frontend tooling
- **UI Framework**: Bootstrap 5 - Komponen UI yang responsive

### Development Tools
- **Testing**: PHPUnit 11 - Unit testing framework
- **Code Quality**: Laravel Pint - PHP code standardizer
- **Package Manager**: Composer (PHP) & npm (Node.js)
- **Development**: Laravel Sail - Docker environment

---

## 📦 Bahasa Pemrograman

1. **PHP 8.2+** - Bahasa utama backend development
2. **JavaScript** - Untuk interaktivitas frontend dan Vite build system
3. **SQL** - Query database
4. **HTML/Blade** - Template markup untuk frontend
5. **CSS/SCSS** - Styling dengan Tailwind CSS dan SASS preprocessor
6. **JSON** - Konfigurasi dan data handling

---

## 📊 Database Models

- **User**: Model pengguna (pemilik kos, penghuni, admin)
- **Kos**: Model properti kos dengan detail fasilitas, harga, dan gambar
- **Review**: Model ulasan dan rating dari penghuni
- **SavedKos**: Model menyimpan kos ke favorit pengguna
- **Report**: Model laporan/keluhan dari pengguna

---

## 🚀 Getting Started

Untuk menjalankan project ini:

```bash
# Install dependencies
composer install
npm install

# Setup environment
cp .env.example .env
php artisan key:generate

# Run migrations
php artisan migrate

# Development server
npm run dev
php artisan serve
```

---

## 📝 Notes

Project ini merupakan tugas besar (Tubes) pemrograman yang menggabungkan berbagai teknologi modern Laravel untuk membuat platform yang scalable dan user-friendly.