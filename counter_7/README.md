## **Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya!**

Stateless widget merupakan widget statis atau widget yang tidak dapat diubah bahkan tidak akan pernah berubah state-nya sekali built. Misalnya yaitu Icon dan Text.

Stateful widget merupakan widget dinamis atau widget yang dapat berubah-ubah state-nya sekali built. Widget ini dapat diperbarui kapan saja ketika terjadi perubahan data. Misalnya yaitu TextField, CheckBox, RadioButton.

## **Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya!**

1. AppBar --> untuk menampilkan menu petunjuk untuk penggunaan aplikasi atau dapat dibilang suatu widget untuk menampilkan app bar yang dapat berisi widget lain.
2. Text  --> untuk menampilkan text.
3. Center --> untuk menampilkan elemen atau widget child agar di tengah. 
4. Column --> untuk menampilkan widget children secara vertikal.
5. FloatingActionButton --> untuk menampilkan button dimana akan mengeksekusi suatu fungsi.
6. Icon --> untuk menampilkan icon ke sebuah elemen.

## **Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut!**

Fungsi dari setState() adalah memberitahu framework jika ada perubahan pada internal objek yang dapat mempengaruhi pada tampilan atau perubahan pada state. Variabel yang dapat terdampak dengan fungsi tersebut adalah _counter. 

## **Jelaskan perbedaan antara const dengan final!**

Const merupakan keyword yang akan digunakan apabila nilai suatu variabel tidak dapat diubah lagi, dimana proses assign yang dilakukan ke variabel tersebut akan terjadi saat compile-time. Sedangkan, Final merupakan keyword yang digunakan apabila nilai suatu variabel tidak dapat diubah lagi, tetapi proses assign yang dilakukan ke variabel tersebut akan terjadi saat run-time.

## **Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas!**
1. Membuat project dengan nama counter_7 di command prompt dengan fluuter create counter_7.
2. Mengubah title menjadi 'Program Counter'. 
3. Pada folder lib terdapat file main.dart. Pada file tersebut membuat fungsi _incrementCounter untuk proses increment dan _decrementCounter untuk proses decrement.
4. Membuat kondisi untuk counter ganjil genap.
5. Styling warna untuk text 'Ganjil' berwarna biru sedangkan text 'Genap' berwarna merah.
6. Menambahkan code untuk button - untuk proses decrement dan button + untuk proses increment pada tampilan program.
7. Melakukan add-commit-push ke repositori baru dengan nama pbp-flutter-lab di GitHub.
