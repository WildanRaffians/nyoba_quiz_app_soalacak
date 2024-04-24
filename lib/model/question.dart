// Digunakan untuk menyimpan data pertanyaan
class Question {
  String? image;
  String question;
  List<String> options;
  String answer;

  Question({required this.question, this.image, required this.options, required this.answer});
}
