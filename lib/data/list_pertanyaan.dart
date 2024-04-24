import 'package:nyoba_quiz_app_soalacak/model/question.dart';

List<Question> questions = [
    Question(
      question: "Apa ibu kota negara Indonesia?",
      options: ["Jakarta", "Surabaya", "Bandung", "Medan"],
      answer: "Jakarta"
    ),
    Question(
      question: "Siapakah penemu teori relativitas?",
      options: ["Albert Einstein", "Isaac Newton", "Galileo Galilei", "Stephen Hawking"],
      answer: "Albert Einstein"
    ),
    Question(
      question: "Apa ibu kota negara?",
      options: ["Jakarta", "Surabaya", "Bandung", "Medan"],
      answer: "Jakarta"
    ),
    Question(
      question: "Siapakah penemu teori?",
      options: ["Albert Einstein", "Isaac Newton", "Galileo Galilei", "Stephen Hawking"],
      answer: "Albert Einstein"
    ),
    Question(
      question: "Berapakah hasil dari 5 x 7?",
      options: ["25", "30", "35", "40"],
      answer: "35"
    ),
    Question(
      question: "Apa warna langit ketika senja?",
      options: ["Merah", "Kuning", "Biru", "Hitam"],
      answer: "Merah"
    ),
    Question(
      question: "Apakah simbol kimia untuk air?",
      options: ["H2O", "CO2", "NaCl", "O2"],
      answer: "H2O"
    ),
    Question(
      question: "Siapakah presiden Amerika Serikat ke-44?",
      options: ["Barack Obama", "Donald Trump", "George W. Bush", "Joe Biden"],
      answer: "Barack Obama"
    ),
    Question(
      question: "Apa singkatan dari 'www' dalam URL?",
      options: ["World Wide Web", "Web World Wide", "Wide World Web", "Web Wide World"],
      answer: "World Wide Web"
    ),
    Question(
      question: "Apa yang menjadi pusat sistem tata surya kita?",
      options: ["Matahari", "Bumi", "Bulan", "Merkurius"],
      answer: "Matahari"
    ),
    Question(
      question: "Alat berikut disebut'?",
      image: "assets/image/gamtek.png",
      options: ["Mistar Skala", "Busur derajat", "Papan gambar", "mesin gambar"],
      answer: "Mistar Skala"
    ),
    Question(
      question: "Cara menempatkan ukuran yang benar sesuai gambar diatas adalah....",
      image: "assets/image/gamtek2.png",
      options: ["A dan B", "B dan D", "D dan A", "E dan B"],
      answer: "B dan D"
    ),
    Question(
      question: "Apa warna langit?",
      options: ["Merah", "Kuning", "Biru", "Hitam"],
      answer: "Merah"
    ),
    Question(
      question: "Apakah simbol garam?",
      options: ["H2O", "CO2", "NaCl", "O2"],
      answer: "NaCl"
    ),
    Question(
        question: "Apa yang dimaksud dengan regresi linear?",
        options: [
          "Sebuah metode untuk memprediksi nilai variabel dependen berdasarkan satu atau lebih variabel independen",
          "Sebuah teknik untuk mengklasifikasikan data ke dalam beberapa kelas",
          "Sebuah algoritma untuk menemukan pola dalam data",
          "Sebuah teknik untuk menurunkan dimensi data"
        ],
        answer: "Sebuah metode untuk memprediksi nilai variabel dependen berdasarkan satu atau lebih variabel independen",
      ),
      Question(
        question: "Apa itu algoritma k-means?",
        options: [
          "Sebuah algoritma pengelompokan data non-hirarkis yang berbasis partisi",
          "Sebuah algoritma untuk mencari pola asosiasi dalam data transaksional",
          "Sebuah algoritma untuk mengurutkan data dalam urutan tertentu",
          "Sebuah teknik untuk mengurangi dimensi data"
        ],
        answer: "Sebuah algoritma pengelompokan data non-hirarkis yang berbasis partisi",
      ),
      Question(
        question: "Bagaimana prinsip kerja algoritma decision tree?",
        options: [
          "Membagi data menjadi bagian-bagian yang seragam",
          "Membuat aturan keputusan berdasarkan pemisahan pada variabel-variabel independen",
          "Menghitung jarak antara titik data",
          "Mengurutkan data berdasarkan kriteria tertentu"
        ],
        answer: "Membuat aturan keputusan berdasarkan pemisahan pada variabel-variabel independen",
      ),
      Question(
        question: "Apa itu algoritma SVM (Support Vector Machine)?",
        options: [
          "Sebuah algoritma untuk memprediksi nilai variabel dependen berdasarkan regresi",
          "Sebuah teknik untuk mengklasifikasikan data ke dalam beberapa kelas",
          "Sebuah metode untuk menurunkan dimensi data",
          "Sebuah algoritma untuk menemukan pola asosiasi dalam data transaksional"
        ],
        answer: "Sebuah teknik untuk mengklasifikasikan data ke dalam beberapa kelas",
      ),
      Question(
        question: "Apa yang dimaksud dengan overfitting dalam konteks machine learning?",
        options: [
          "Ketika model memiliki kinerja yang baik pada data pelatihan tetapi kinerja buruk pada data baru",
          "Ketika model memiliki kinerja yang buruk pada data pelatihan dan data baru",
          "Ketika model memiliki kinerja yang baik pada data pelatihan dan data baru",
          "Ketika model tidak bisa mengklasifikasikan data ke dalam kelas yang benar"
        ],
        answer: "Ketika model memiliki kinerja yang baik pada data pelatihan tetapi kinerja buruk pada data baru",
      ),
    Question(
      question: "Apa itu cross-validation?",
      options: [
        "Sebuah teknik untuk mengevaluasi kinerja model dengan membagi data menjadi dua set: set pelatihan dan set pengujian",
        "Sebuah teknik untuk membagi data menjadi dua set: set pelatihan dan set validasi",
        "Sebuah teknik untuk mengevaluasi kinerja model dengan menggunakan data tambahan yang tidak termasuk dalam set pelatihan",
        "Sebuah teknik untuk mengevaluasi kinerja model dengan menggunakan semua data yang tersedia"
      ],
      answer: "Sebuah teknik untuk mengevaluasi kinerja model dengan membagi data menjadi dua set: set pelatihan dan set pengujian",
    ),
    Question(
      question: "Apa yang dimaksud dengan ensemble learning?",
      options: [
        "Sebuah teknik untuk menggabungkan beberapa model pembelajaran untuk meningkatkan kinerja prediksi",
        "Sebuah teknik untuk mengurutkan data dalam urutan tertentu",
        "Sebuah teknik untuk mengevaluasi kinerja model dengan membagi data menjadi dua set: set pelatihan dan set validasi",
        "Sebuah teknik untuk memprediksi nilai variabel dependen berdasarkan satu atau lebih variabel independen"
      ],
      answer: "Sebuah teknik untuk menggabungkan beberapa model pembelajaran untuk meningkatkan kinerja prediksi",
    ),
    Question(
      question: "Apa yang dimaksud dengan deep learning?",
      options: [
        "Sebuah teknik untuk menggabungkan beberapa model pembelajaran untuk meningkatkan kinerja prediksi",
        "Sebuah teknik untuk memprediksi nilai variabel dependen berdasarkan regresi",
        "Sebuah cabang dari machine learning yang menggunakan jaringan saraf tiruan dengan banyak lapisan",
        "Sebuah algoritma untuk mengklasifikasikan data ke dalam beberapa kelas"
      ],
      answer: "Sebuah cabang dari machine learning yang menggunakan jaringan saraf tiruan dengan banyak lapisan",
    ),
    Question(
      question: "Bagaimana cara kerja algoritma Naive Bayes?",
      options: [
        "Dengan menghitung probabilitas dari setiap kelas berdasarkan variabel independen",
        "Dengan memisahkan data menjadi dua set: set pelatihan dan set pengujian",
        "Dengan mencari pola asosiasi dalam data transaksional",
        "Dengan memprediksi nilai variabel dependen berdasarkan regresi"
      ],
      answer: "Dengan menghitung probabilitas dari setiap kelas berdasarkan variabel independen",
    ),
    Question(
      question: "Apa itu clustering dalam machine learning?",
      options: [
        "Sebuah teknik untuk mengelompokkan data yang serupa ke dalam kelompok-kelompok yang berbeda",
        "Sebuah teknik untuk memprediksi nilai variabel dependen berdasarkan satu atau lebih variabel independen",
        "Sebuah teknik untuk mengurutkan data dalam urutan tertentu",
        "Sebuah teknik untuk mengevaluasi kinerja model dengan menggunakan semua data yang tersedia"
      ],
      answer: "Sebuah teknik untuk mengelompokkan data yang serupa ke dalam kelompok-kelompok yang berbeda",
    ),
    Question(
      question: "Apa nama planet kita?",
      options: ["Matahari", "Bumi", "Bulan", "Merkurius"],
      answer: "Bumi"
    ),
    Question(
      question: "Siapakah 'Harry Potter'?",
      options: ["J.K. Rowling", "J.R.R. Tolkien", "Stephen King", "George R.R. Martin"],
      answer: "J.K. Rowling"
    ),
    Question(
      question: "alat yang digunakan untuk mengukur waktu?",
      options: ["assets/image/jam.png", "assets/image/bulat.jpeg", "assets/image/timbangan.jpg", "assets/image/spw.jpeg"],
      answer: "assets/image/jam.png"
    ),
    Question(
    question: "Apa yang dimaksud dengan OOP?",
    options: [
      "Object Oriented Programming",
      "Object Operating Procedure",
      "Object Oriented Process",
      "Operating Object Programming"
    ],
    answer: "Object Oriented Programming",
  ),
  Question(
    question: "Apa itu IDE?",
    options: [
      "Integrated Development Environment",
      "Integrated Developer Environment",
      "Integrated Deployment Environment",
      "Integrated Design Environment"
    ],
    answer: "Integrated Development Environment",
  ),
  Question(
    question: "Apa perbedaan antara List dan Map dalam Dart?",
    options: [
      "List hanya bisa menyimpan satu tipe data, Map bisa menyimpan beberapa tipe data",
      "List menyimpan data dengan key, Map menyimpan data dalam bentuk list",
      "List hanya bisa menyimpan data primitif, Map bisa menyimpan objek",
      "Tidak ada perbedaan antara List dan Map"
    ],
    answer: "List hanya bisa menyimpan satu tipe data, Map bisa menyimpan beberapa tipe data",
  ),
  Question(
    question: "Apa kepanjangan dari HTML?",
    options: [
      "Hyperlinks and Text Markup Language",
      "Hyper Text Markup Language",
      "Home Tool Markup Language",
      "Hyper Tool Markup Language",
    ],
    answer: "Hyper Text Markup Language",
  ),
  Question(
    question: "Apa fungsi utama dari CSS?",
    options: [
      "Membuat halaman web dinamis",
      "Mengatur tata letak dan gaya halaman web",
      "Membuat interaksi pengguna",
      "Mengirim permintaan ke server",
    ],
    answer: "Mengatur tata letak dan gaya halaman web",
  ),
  Question(
    question: "Apa yang dimaksud dengan 'TCP/IP'?",
    options: ["Protokol jaringan yang digunakan untuk pengiriman data", "Bahasa pemrograman", "Perangkat keras komputer", "Algoritma pengamanan data"],
    answer: "Protokol jaringan yang digunakan untuk pengiriman data",
  ),
  Question(
    question: "Apa fungsi dari 'for loop' dalam pemrograman?",
    options: ["Mengeksekusi blok kode berulang kali", "Menghitung jumlah elemen dalam array", "Memeriksa kebenaran kondisi tertentu", "Menyimpan nilai-nilai dalam variabel"],
    answer: "Mengeksekusi blok kode berulang kali",
  ),
  Question(
    question: "Apa itu 'encryption' dalam konteks keamanan data?",
    options: ["Proses mengubah data menjadi format yang tidak dapat dibaca tanpa kunci enkripsi", "Proses menghapus data", "Proses menyembunyikan data dari pengguna", "Proses menyimpan data dalam database"],
    answer: "Proses mengubah data menjadi format yang tidak dapat dibaca tanpa kunci enkripsi",
  ),
  Question(
    question: "Apa yang dimaksud dengan 'Responsive Web Design'?",
    options: ["Desain web yang menyesuaikan tampilan dengan perangkat pengguna", "Desain web yang hanya dapat diakses melalui komputer", "Desain web yang hanya dapat diakses melalui ponsel pintar", "Desain web yang memerlukan plugin tambahan"],
    answer: "Desain web yang menyesuaikan tampilan dengan perangkat pengguna",
  )

  
];
