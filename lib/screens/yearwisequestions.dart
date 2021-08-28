import 'package:qbankuserapp/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:qbankuserapp/screens/pdfscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class YearWiseQuestions extends StatefulWidget {
  const YearWiseQuestions({
    Key? key,
    required this.localstorage,
  }) : super(key: key);
  final SharedPreferences localstorage;
  @override
  _YearWiseQuestionsState createState() => _YearWiseQuestionsState();
}

class _YearWiseQuestionsState extends State<YearWiseQuestions> {
  SelectedChoice selectedChoice = SelectedChoice.yearwise;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: kThemeColor,
        ),
        centerTitle: true,
        title: const Text(
          "Year-Wise Questions",
          style: TextStyle(
              fontFamily: 'OurFont', fontSize: 22, color: kThemeColor),
        ),
      ),
      body: ListView(
        children: [
          Container(
            color: kThemeColor,
            height: 50,
            child: Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        selectedChoice = SelectedChoice.yearwise;
                      });
                    },
                    child: Text(
                      "Year-Wise",
                      style: TextStyle(
                          fontFamily: 'OurFont',
                          color: (selectedChoice == SelectedChoice.yearwise)
                              ? Colors.white
                              : Colors.black),
                    ),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        selectedChoice = SelectedChoice.subjectwise;
                      });
                    },
                    child: Text(
                      "Subject-Wise",
                      style: TextStyle(
                          fontFamily: 'OurFont',
                          color: (selectedChoice == SelectedChoice.subjectwise)
                              ? Colors.white
                              : Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
          (selectedChoice == SelectedChoice.subjectwise)
              ? Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      (widget.localstorage.getString('mainYear') == '1st Year')
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SubjectPdfPage(
                                          appbarTitle: "Anatomy",
                                          url:
                                              "https://firebasestorage.googleapis.com/v0/b/qbank-7e478.appspot.com/o/anatomy%20merge%20and%20compressed.pdf?alt=media&token=47967e88-eaa1-4ac5-8960-fd69b564060b",
                                        ),
                                      ),
                                    );
                                  },
                                  child:
                                      SubjectContainer(subjectName: 'Anatomy'),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SubjectPdfPage(
                                          appbarTitle: "Physiology",
                                          url:
                                              "https://firebasestorage.googleapis.com/v0/b/qbank-7e478.appspot.com/o/human%20physiology.pdf?alt=media&token=a4762a7f-bc9e-4f0a-95c7-952e9007371b",
                                        ),
                                      ),
                                    );
                                  },
                                  child: SubjectContainer(
                                      subjectName: 'Physiology'),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SubjectPdfPage(
                                          appbarTitle: "Biochemistry",
                                          url:
                                              "https://firebasestorage.googleapis.com/v0/b/qbank-7e478.appspot.com/o/biochemistry.pdf?alt=media&token=d4274f2b-a4f6-419a-be8e-f8ee4ddcddc8",
                                        ),
                                      ),
                                    );
                                  },
                                  child: SubjectContainer(
                                    subjectName: 'Biochemistry',
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SubjectPdfPage(
                                          appbarTitle: "Biomechanics",
                                          url:
                                              "https://firebasestorage.googleapis.com/v0/b/qbank-7e478.appspot.com/o/biomechanics.pdf?alt=media&token=eb4d3e17-6e5b-4182-9d27-b26f686b3a74",
                                        ),
                                      ),
                                    );
                                  },
                                  child: SubjectContainer(
                                      subjectName: 'Biomechanics'),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SubjectPdfPage(
                                          appbarTitle: "Psychology",
                                          url:
                                              "https://firebasestorage.googleapis.com/v0/b/qbank-7e478.appspot.com/o/psychology_compressed.pdf?alt=media&token=42565d41-aa5b-4fdc-b11a-cd5fc58f2220",
                                        ),
                                      ),
                                    );
                                  },
                                  child: SubjectContainer(
                                      subjectName: 'Psychology'),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SubjectPdfPage(
                                          appbarTitle: "Sociology",
                                          url:
                                              "https://firebasestorage.googleapis.com/v0/b/qbank-7e478.appspot.com/o/sociology.pdf?alt=media&token=ce16d5be-3a59-42a9-bbf8-505100947487",
                                        ),
                                      ),
                                    );
                                  },
                                  child: SubjectContainer(
                                      subjectName: 'Sociology'),
                                ),
                              ],
                            )
                          : (widget.localstorage.getString('mainYear') ==
                                  '2nd Year')
                              ? Column(
                                  children: [
                                    SubjectContainer(subjectName: 'Pathology'),
                                    SubjectContainer(
                                        subjectName: 'Microbiology'),
                                    SubjectContainer(
                                        subjectName: 'Exercisetherapy'),
                                    SubjectContainer(
                                        subjectName: 'Electrotherapy'),
                                    SubjectContainer(
                                        subjectName: 'Pharmacology'),
                                  ],
                                )
                              : (widget.localstorage.getString('mainYear') ==
                                      '3rd Year')
                                  ? Column(
                                      children: [
                                        SubjectContainer(
                                            subjectName: 'General Medicine'),
                                        SubjectContainer(
                                            subjectName: 'General Surgery'),
                                        SubjectContainer(
                                            subjectName:
                                                'Orthopaedics & Traumatology'),
                                        SubjectContainer(
                                            subjectName:
                                                'Orthopaedics & Sports Physiotherapy'),
                                        SubjectContainer(
                                            subjectName: 'Cardio Respiratory'),
                                      ],
                                    )
                                  : Column(
                                      children: [
                                        SubjectContainer(
                                            subjectName:
                                                'Neurology and Neurosurgery'),
                                        SubjectContainer(
                                            subjectName: 'Neurophysiotherapy'),
                                        SubjectContainer(
                                            subjectName: 'Community Medicine'),
                                        SubjectContainer(
                                            subjectName:
                                                'Community Based Rehabilitation'),
                                        SubjectContainer(
                                            subjectName:
                                                'Research Methodology'),
                                        SubjectContainer(
                                            subjectName: 'Biostatistics'),
                                      ],
                                    ),
                    ],
                  ),
                )
              : Container(
                  height: MediaQuery.of(context).size.height,
                  color: Colors.white,
                  child: ListView(
                    children: [
                      SubjectContainer(subjectName: '2011'),
                      SubjectContainer(subjectName: '2012'),
                      SubjectContainer(subjectName: '2013'),
                      SubjectContainer(subjectName: '2014'),
                      SubjectContainer(subjectName: '2015'),
                      SubjectContainer(subjectName: '2016'),
                      SubjectContainer(subjectName: '2017'),
                      SubjectContainer(subjectName: '2018'),
                      SubjectContainer(subjectName: '2019'),
                      SubjectContainer(subjectName: '2020'),
                      SubjectContainer(subjectName: '2021'),
                      SizedBox(
                        height: 150,
                      ),
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}

enum SelectedChoice {
  yearwise,
  subjectwise,
}

class SubjectContainer extends StatefulWidget {
  final String subjectName;
  // ignore: prefer_const_constructors_in_immutables
  SubjectContainer({Key? key, required this.subjectName}) : super(key: key);

  @override
  _SubjectContainerState createState() => _SubjectContainerState();
}

class _SubjectContainerState extends State<SubjectContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Material(
        elevation: 2,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 70,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 23,
            ),
            child: Text(
              widget.subjectName,
              style: const TextStyle(
                fontFamily: 'OurFont',
                fontSize: 22,
                color: kThemeColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SubjectPdfPage extends StatefulWidget {
  final String appbarTitle;
  final String url;
  SubjectPdfPage({
    required this.appbarTitle,
    required this.url,
  });

  @override
  _SubjectPdfPageState createState() => _SubjectPdfPageState();
}

class _SubjectPdfPageState extends State<SubjectPdfPage> {
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
          widget.appbarTitle,
          style: TextStyle(
              fontFamily: 'OurFont', fontSize: 22, color: kThemeColor),
        ),
      ),
      body: PdfScreen(url: widget.url),
    );
  }
}
