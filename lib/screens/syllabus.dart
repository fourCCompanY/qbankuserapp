import 'package:qbankuserapp/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:qbankuserapp/screens/pdfscreen.dart';

class Syllabus extends StatefulWidget {
  @override
  _SyllabusState createState() => _SyllabusState();
}

class _SyllabusState extends State<Syllabus> {
  String url =
      "https://firebasestorage.googleapis.com/v0/b/qbank-7e478.appspot.com/o/RGUHS-BPT-Syllabus-compressed_compressed.pdf?alt=media&token=5f65aee7-2d03-4a67-96c0-b1bef7b9987c";
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: kThemeColor,
        ),
        centerTitle: true,
        title: Text(
          "Syllabus",
          style: TextStyle(
              fontFamily: 'OurFont', fontSize: 22, color: kThemeColor),
        ),
      ),
      body: PdfScreen(url: url),
    );
  }
}
