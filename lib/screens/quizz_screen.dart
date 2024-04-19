// Import library 
import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:nyoba_quiz_app_soalacak/data/list_pertanyaan.dart'; 
import 'package:nyoba_quiz_app_soalacak/model/question.dart'; 
import 'package:nyoba_quiz_app_soalacak/screens/result_screen.dart';
import 'package:nyoba_quiz_app_soalacak/ui/shared/color.dart';

class QuizzScreen extends StatefulWidget {
  const QuizzScreen({Key? key}) : super(key: key);

  @override
  _QuizzScreenState createState() => _QuizzScreenState();
}

class _QuizzScreenState extends State<QuizzScreen> {
  int score = 0;
  int questionIndex = 0;
  PageController? _controller;
  String btnText = "Selanjutnya";  
  String btnPrev = "Sebelumnya"; // string untuk tombol sebelumnya
  List<String?> selectedAnswers = [];
  List<Question> shuffledQuestions = [];

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
    selectedAnswers = List<String?>.filled(questions.length, null);
    shuffledQuestions = List<Question>.from(questions);
    shuffledQuestions.forEach((question) {
      question.options.shuffle(); // Mengacak opsi jawaban setiap pertanyaan
    });
    shuffledQuestions = List<Question>.from(questions)..shuffle(Random());
    shuffledQuestions = shuffledQuestions.take(10).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pripmaryColor,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: PageView.builder(
          controller: _controller!,
          onPageChanged: (page) {
            setState(() {
              btnText = (page == shuffledQuestions.length - 1)
                  ? "Lihat Hasil"
                  : "Selanjutnya";
              btnPrev = (page == 0)  // kondisi jika page, merupakan page pertama
                  ? ""  // tidak menampilkan tombol sebelumnya
                  : "Sebelumnya"; // jika page bukan page pertama, ada tombol sebelumnya
            });
          },
          itemBuilder: (context, index) {
            return SingleChildScrollView(  // menggunakan single scroll view agar bisa di scroll
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //Menampilkan nomor pertanyaan
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Pertanyaan ${index + 1}/${shuffledQuestions.length}",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: AppColor.secondaryColor,
                        fontSize: 28.0,
                      ),
                    ),
                  ),
                  Divider(
                    color: AppColor.secondaryColor,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  //Menampilkan pertanyan
                  SizedBox(
                    width: double.infinity,
                    height: 200.0,
                    child: Text(
                      shuffledQuestions[index].question,
                      style: TextStyle(
                        color: AppColor.secondaryColor,
                        fontSize: 22.0,
                      ),
                    ),
                  ),
                  //Menampilkan option
                  for (int i = 0; i < shuffledQuestions[index].options.length; i++)
                    Container(
                      width: double.infinity,
                      height: 50.0,
                      margin: const EdgeInsets.only(
                        bottom: 20.0,
                        left: 12.0,
                        right: 12.0,
                      ),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              if (selectedAnswers[index] == shuffledQuestions[index].options[i]) {
                                return AppColor.secondaryColor;
                              }
                              return AppColor.pripmaryColor;
                            },
                          ),
                          foregroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              if (selectedAnswers[index] == shuffledQuestions[index].options[i]) {
                                return AppColor.pripmaryColor;
                              }
                              return AppColor.secondaryColor;
                            },
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              side: BorderSide(color: AppColor.secondaryColor),
                            ),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            selectedAnswers[index] = shuffledQuestions[index].options[i];
                          });
                        },
                        //teks option
                        child: Text(
                          shuffledQuestions[index].options[i] ?? '',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                  SizedBox(
                    height: 40.0,
                  ),
                  //button action
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      if (index > 0)
                      //menampilkan tombol "sebelumnya" kecuali di halaman pertama
                        Container(
                          width: 150.0,
                          height: 50.0,
                          margin: const EdgeInsets.only(
                            bottom: 20.0,
                            left: 12.0,
                            right: 12.0,
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              if (index > 0) {
                                _controller!.previousPage(
                                  duration: Duration(milliseconds: 250),  //durasi perpindahan page
                                  curve: Curves.easeInExpo,
                                );
                                if (selectedAnswers[index-1] == shuffledQuestions[index-1].answer) {
                                //jika jawaban benar
                                setState(() {
                                  score-=1;
                                });
                              }
                              }
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                                  return AppColor.thirdColor;
                                },
                              ),
                            ),
                            child: Text(
                              btnPrev,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      //Tombol "selanjutnya"
                      Container(
                        width: 150.0,
                        height: 50.0,
                        margin: const EdgeInsets.only(
                          bottom: 20.0,
                          left: 12.0,
                          right: 12.0,
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            //jika tidak memilih jawaban
                            if (selectedAnswers[index] == null) {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text('Peringatan'),
                                    content: Text(
                                        'Harap pilih jawaban sebelum melanjutkan.'),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('OK'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            } else {
                              //jika memilih jawaban
                              if (selectedAnswers[index] == shuffledQuestions[index].answer) {
                                //jika jawaban benar
                                setState(() {
                                  score++;
                                });
                              }

                              if (index < shuffledQuestions.length - 1) {
                                //jika belum sampai pertanyaan terakhir maka index bertambah
                                setState(() {
                                  index++;
                                });
                                _controller!.nextPage(
                                  duration: Duration(milliseconds: 250), //durasi pindah ke halaman selanjutnya
                                  curve: Curves.easeInExpo,
                                );
                              } else {
                                //jika sudah sampai di pertanyaan terakhir
                                showDialog(
                                  //dialog konfirmasi
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text('Yakin mengakhiri kuis?'),
                                      content: Text('Periksa kembali jawaban anda'),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop(); // Tutup dialog
                                          },
                                          child: Text('Kembali ke Kuis'),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            // Tambahkan aksi yang ingin dilakukan jika 'Yakin' dipilih
                                            Navigator.of(context).pop(); // Tutup dialog
                                            Navigator.pushAndRemoveUntil(
                                              //jika yakin maka pergi ke halaman hasil
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => ResultScreen(score),
                                              ),
                                              (Route<dynamic> route) => false,
                                            );
                                          },
                                          child: Text('Yakin'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                                
                              }
                            }
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed)) {
                                  return AppColor.secondaryColor;
                                }
                                return AppColor.thirdColor; 
                              },
                            ),
                          ),
                          child: Text(
                            btnText,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
          itemCount:
              shuffledQuestions.length, 
        ),
      ),
    );
  }
}
