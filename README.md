# 🐾 PetStay Manager
## 📖 Deskripsi Aplikasi

PetStay Manager adalah aplikasi mobile berbasis Flutter yang digunakan untuk mengelola data penitipan hewan. Aplikasi ini memungkinkan pengguna untuk: Menambahkan data hewan yang dititipkan, Melihat daftar hewan yang sedang dititip, Mengubah data penitipan, Menghapus data penitipan.

Aplikasi dibuat menggunakan konsep StatefulWidget dan setState() sebagai implementasi state management dasar serta menggunakan navigasi multi halaman (Multi Page Navigation). Aplikasi ini dibuat untuk memenuhi mini project 1 pemrograman aplikasi bergerak.

# Fitur Aplikasi
## Fitur Wajib

- Create (Tambah Data)
Menambahkan data penitipan hewan melalui form input.
- Read (Tampilkan Data)
Menampilkan daftar hewan yang dititip dalam bentuk list dan juga detail.
- Delete (Hapus Data)
Menghapus data penitipan hewan dari daftar.

Minimal 3 TextField
Form input memiliki field:
- Nama Hewan
- Jenis Hewan
- Nama Pemilik
- No HP (opsional)

## Nilai Tambah

- Update (Edit Data)
Data dapat diperbarui melalui halaman Edit.

- Multi Page Navigation
  
  . Home Page (Daftar Data)
  
  . Add Page (Tambah Data)

  . Detail page (lihat Data)
 
  . Edit Page (Ubah Data)

# Widget yang Digunakan
## Struktur Dasar
- MaterialApp
- Scaffold
- AppBar
- StatelessWidget
- StatefulWidget

## Layout & Tampilan
- Column
- Row
- Container
- Padding
- Card
- ListView.builder
- ListTile
- Icon

## Input & Form
- TextField
- DropdownButtonFormField
- showDatePicker
- InputDecoration

## Navigasi
- Navigator.push()
- Navigator.pop()
- MaterialPageRoute

## State Management
- setState() untuk memperbarui tampilan saat data berubah.

# Struktur Folder
lib
-  main.dart
  
-  models/
  
   . pet.dart
   
-  pages/
  
   . home_page.dart
   
   . add_pet_page.dart
   
   . edit_pet_page.dart

   . detail_pat_page.dart

# Tampilan
## Tampilan Homepage sebelum ada data
<img width="1366" height="768" alt="image" src="https://github.com/user-attachments/assets/60069595-b739-49b8-9208-ba3d9ea51f43" />

## Tampilan halaman add
<img width="1366" height="768" alt="image" src="https://github.com/user-attachments/assets/b914a8d7-e98a-4a3e-8d57-17051c5d875a" />

## Tampilan homepage setelah ada data
<img width="1366" height="768" alt="image" src="https://github.com/user-attachments/assets/c5a6170b-7e52-4887-b69e-a74c213af5ae" />

## Tampilan halaman detail
<img width="1366" height="768" alt="image" src="https://github.com/user-attachments/assets/3564d59c-77ff-4cbd-8726-db215010278e" />

## tampilan halaman edit
<img width="1366" height="768" alt="image" src="https://github.com/user-attachments/assets/9669afc5-d764-4960-aecd-8fa543d5723e" />

