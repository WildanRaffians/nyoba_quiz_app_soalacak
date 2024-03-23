import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:nyoba_quiz_app_soalacak/data/list_pertanyaan.dart'; // Import library yang sesuai dengan struktur aplikasi Anda
import 'package:nyoba_quiz_app_soalacak/model/question.dart'; // Import library yang sesuai dengan struktur aplikasi Anda
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
  List<String?> selectedAnswers = [];
  List<Question> shuffledQuestions = [];

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
    selectedAnswers = List<String?>.filled(questions.length, null);
    shuffledQuestions = List<Question>.from(questions)..shuffle(Random());
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
            });
          },
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                Container(
                  width: double.infinity,
                  height: 50.0,
                  margin: const EdgeInsets.only(
                    bottom: 20.0,
                    left: 12.0,
                    right: 12.0,
                  ),
                  child: ElevatedButton(
                    onPressed: () {
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
                        if (selectedAnswers[index] == shuffledQuestions[index].answer) {
                          setState(() {
                            score++;
                          });
                        }

                        if (_controller!.page?.toInt() ==
                            shuffledQuestions.length - 1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ResultScreen(score),
                            ),
                          );
                        } else {
                          _controller!.nextPage(
                            duration: Duration(milliseconds: 250),
                            curve: Curves.easeInExpo,
                          );
                        }
                      }
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed)) {
                            return AppColor.secondaryColor;
                          }
                          return AppColor.thirdColor; // Kembalikan ke warna aslinya jika tidak ditekan
                        },
                      ),
                    ),
                    child: Text(
                      btnText,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            );
          },
          itemCount:
              shuffledQuestions.length, // Ubah menjadi shuffledQuestions.length
        ),
      ),
    );
  }
}
