## Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement!

Navigator.push merupakan rute untuk screen baru dimana screen lama tidak dihapus. Sederhanannya rute screen lama masih dapat diakses atau rute screen baru menimpa screen lama. Sedangkan pada Navigator.pushReplacement rute untuk screen lama dihapus dengan rute screen yang baru sehingga tidak dapat diakses kembali.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya!

1. AppBar --> untuk menampilkan menu petunjuk untuk penggunaan aplikasi atau dapat dibilang suatu widget untuk menampilkan app bar yang dapat berisi widget lain.
2. Text  --> untuk menampilkan text.
3. Center --> untuk menampilkan elemen atau widget child agar di tengah. 
4. Column --> untuk menampilkan widget children secara vertikal.
5. Icon --> untuk menampilkan icon ke sebuah elemen.

## Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed)!

onPressed   : digunakan ketika menekan sebuah button
onSaved     : digunakan untuk menyimpan form
onChanged   : digunakan untuk merubah value di widget

## Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter!

Stack akan menyimpan data ketika screen baru ditambahkan sehingga screen yang lama akan ditimpa jika Navigator.push atau screen yang lama akan digantikan jika Navigator.pushReplacement. Tetapi pada Navigator.pushReplacement screen lama akan di pop dahulu sebelum di push. Maka screen akan seolah-olah berganti karena posisi paling atas stack adalah screen yang baru dipush, kemudian screen akan dapat dilihat pengguna.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas!

Membuat file drawer.dart untuk membuat widget drawer sebagai navigasi antar halaman program counter, tambah budget, dan data budget. Kemudian membuat file budget.dart untuk membuat class Budget yang akan menyimpan attribut-attribut dari object Budget dan menyimpan semua object Budget pada list static listBudget. Selanjutnya membuat fileform.dart untuk membuat form yang menerima input _judul berupa string dengan widget TextFormField, input _nominal berupa integer dengan widget TextFormField yang nantinya dari string akan di parse menjadi int, dan input _tipe berupa stirng dengan widget DropdownButton sehingga terdapat pilihan dari list string yang berisi Pemasukan dan Pengeluaran. Setelah itu, terdapat tombol dengan event onPressed() untuk menyimpan form dan membuat object Budget serta menambahkan object pada listBudget dengan widget TextButton. Terakhir membuat file data.dart untuk menampilkan semua object yang ada di listBudget. Jika tidak ada object maka akan menampilkan tulisan "Tidak ada budget!". Jika ada, maka object akan ditampilkan dengan layout card menggunakan widget card.