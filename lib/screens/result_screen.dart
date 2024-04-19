import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nyoba_quiz_app_soalacak/screens/main_menu.dart';
import 'package:nyoba_quiz_app_soalacak/ui/shared/color.dart';

class ResultScreen extends StatefulWidget {
  int score;
  ResultScreen(this.score, {Key? key}) : super(key: key);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pripmaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              widget.score > 6 ? "Congratulations" : "Tingkatkan!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColor.secondaryColor,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 45.0,
          ),
          Text(
            "Nilaimu",
            style: TextStyle(color: AppColor.secondaryColor, fontSize: 34.0),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "${widget.score}",
            style: TextStyle(
              color: widget.score <= 3 ? Colors.red : (widget.score <= 6 ? Colors.orange : Colors.green),
              fontSize: 85.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 100.0,
          ),
          TextButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                //jika yakin maka pergi ke halaman hasil
                context,
                MaterialPageRoute(
                  builder: (context) => const MainMenu(),
                ),
                (Route<dynamic> route) => false,
              );
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all<OutlinedBorder>(
                StadiumBorder(),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(
                AppColor.secondaryColor,
              ),
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                EdgeInsets.all(18.0),
              ),
            ),
            child: Text(
              "Main menu",
              style: TextStyle(color: Colors.white),
            ),
          ),

        ],
      ),
    );
  }
}
