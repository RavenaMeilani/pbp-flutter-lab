## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

Melakukan pengambilan data JSON tanpa membuat model terlebih dahulu dapat dilakukan, dimana data akan tersimpan pada suatu variable tanpa dikonversi ke dalam sebuah model. Akan tetapi, agar menyimpan data secara tersturktur pada List yang bertipe class model tersebut, lebih baik dibuat model dahulu.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya!

1. AppBar --> untuk menampilkan menu petunjuk untuk penggunaan aplikasi atau dapat dibilang suatu widget untuk menampilkan app bar yang dapat berisi widget lain.
2. Text  --> untuk menampilkan text.
3. Column --> untuk menampilkan widget children secara vertikal.
4. Drawer --> untuk panel navigasi.
5. FutureBuilder --> muntuk membentuk widget sesuai dengan data yang baru didapat.

## Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter!

Dengan package HTTP request dan penambahan kode untuk mengatur dependensi HTTP. Data akan di fetch dengan API endpoint yang di-decode menjadi JSON. Data yang berbentuk JSON tersebut akan dikonversi menjadi dalam bentuk  model dan dimasukan ke list bertipe class model agar dapat ditampilkan pada aplikasi Flutter dengan listview.builder merender setiap widget.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas!

Membuka file drawer.dart untuk menambahkan pada widget drawer navigasi ke halaman My Watch List. Selanjutnya membuat file movie.dart untuk membuat class Movie yang akan menyimpan attribut-attribut dari object Movie berdasarkan json heroku pada tugas 3. Kemudian menambahkan Dependensi HTTP. Lalu menjalankan flutter pub add http. Menambahkan kode pada file android/app/src/main/AndroidManifest.xml
...
<application>
...
</application>
<!-- Required to fetch data from the Internet. -->
<uses-permission android:name="android.permission.INTERNET" />
...
Membuat file fetch_mywatchlist.dart untuk mengambil dan mengolah data dari Web Service. Selanjutnya membuat filemywatchlist.dart untuk halaman menampilkan judul-judul dari semua object Movie yang di dapat dari file fetch_mywatchlist.dart dan menambahkan button untuk melihat detail setiap film, yang akan ditampilkan dengan layout card menggunakan widget card. Terakhir membuat file detail.dart untuk menampilkan detail setiap filmnya yang diklik dengan button.