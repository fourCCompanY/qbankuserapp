import 'package:qbankuserapp/components/constants.dart';
import 'package:flutter/material.dart';

class TextBooks extends StatefulWidget {
  const TextBooks({Key? key}) : super(key: key);

  @override
  _TextBooksState createState() => _TextBooksState();
}

class _TextBooksState extends State<TextBooks> {
  late String textbookSelectedYear;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 80.0,
                right: 100,
                bottom: 60,
                left: 10,
              ),
              child: Text(
                'Which Year Textbook you need?',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                  fontFamily: 'OurFont',
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        textbookSelectedYear = '1st Year';
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainTextBokkScreen(
                            mainTextbookYear: textbookSelectedYear,
                          ),
                        ),
                      );
                    },
                    child: Material(
                      elevation: 2,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red,
                        ),
                        child: const Center(
                          child: Text(
                            '1',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        textbookSelectedYear = '2nd Year';
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainTextBokkScreen(
                            mainTextbookYear: textbookSelectedYear,
                          ),
                        ),
                      );
                    },
                    child: Material(
                      elevation: 2,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue,
                        ),
                        child: const Center(
                          child: Text(
                            '2',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        textbookSelectedYear = '3rd Year';
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainTextBokkScreen(
                            mainTextbookYear: textbookSelectedYear,
                          ),
                        ),
                      );
                    },
                    child: Material(
                      elevation: 2,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.green,
                        ),
                        child: const Center(
                          child: Text(
                            '3',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        textbookSelectedYear = '4th Year';
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainTextBokkScreen(
                            mainTextbookYear: textbookSelectedYear,
                          ),
                        ),
                      );
                    },
                    child: Material(
                      elevation: 2,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.orange,
                        ),
                        child: const Center(
                          child: Text(
                            '4',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MainTextBokkScreen extends StatefulWidget {
  final String mainTextbookYear;

  const MainTextBokkScreen({Key? key, required this.mainTextbookYear})
      : super(key: key);

  @override
  _MainTextBokkScreenState createState() => _MainTextBokkScreenState();
}

class _MainTextBokkScreenState extends State<MainTextBokkScreen> {
  @override
  Widget build(BuildContext context) {
    return (widget.mainTextbookYear == '1st Year')
        ? Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              iconTheme: const IconThemeData(
                color: kThemeColor,
              ),
              centerTitle: true,
              title: const Text(
                "1st Year Textbooks",
                style: TextStyle(
                    fontFamily: 'OurFont', fontSize: 22, color: kThemeColor),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              backgroundColor: kThemeColor,
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
            body: ListView(
              children: [
                const SizedBox(
                  height: 70,
                ),
                InkWell(
                  child: SubjectContainer(subjectName: 'Anatomy'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Books(
                            image: Image.asset(
                              'assets/images/tree.webp',
                              height: 200,
                              width: 100,
                              fit: BoxFit.contain,
                            ),
                            textbookName: 'Anatomy'),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: SubjectContainer(subjectName: 'Physiology'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Books(
                            image: Image.asset(
                              'assets/images/tree.webp',
                              height: 200,
                              width: 100,
                              fit: BoxFit.contain,
                            ),
                            textbookName: 'Physiology'),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: SubjectContainer(subjectName: 'Biochemistry'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Books(
                            image: Image.asset(
                              'assets/images/tree.webp',
                              height: 200,
                              width: 100,
                              fit: BoxFit.contain,
                            ),
                            textbookName: 'Biochemistry'),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: SubjectContainer(subjectName: 'Biomechanics'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Books(
                            image: Image.asset(
                              'assets/images/tree.webp',
                              height: 200,
                              width: 100,
                              fit: BoxFit.contain,
                            ),
                            textbookName: 'Biomechanics'),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: SubjectContainer(subjectName: 'Psychology'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Books(
                            image: Image.asset(
                              'assets/images/tree.webp',
                              height: 200,
                              width: 100,
                              fit: BoxFit.contain,
                            ),
                            textbookName: 'Psychology'),
                      ),
                    );
                  },
                ),
                GestureDetector(
                  child: SubjectContainer(subjectName: 'Sociology'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Books(
                            image: Image.asset(
                              'assets/images/tree.webp',
                              height: 200,
                              width: 100,
                              fit: BoxFit.contain,
                            ),
                            textbookName: 'Sociology'),
                      ),
                    );
                  },
                ),
              ],
            ),
          )
        : (widget.mainTextbookYear == '2nd Year')
            ? Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.white,
                  elevation: 0,
                  iconTheme: const IconThemeData(
                    color: kThemeColor,
                  ),
                  centerTitle: true,
                  title: const Text(
                    "2nd Year Textbooks",
                    style: TextStyle(
                        fontFamily: 'OurFont',
                        fontSize: 22,
                        color: kThemeColor),
                  ),
                ),
                floatingActionButton: FloatingActionButton(
                  backgroundColor: kThemeColor,
                  onPressed: () {},
                  child: const Icon(Icons.add),
                ),
                body: ListView(
                  children: [
                    const SizedBox(
                      height: 70,
                    ),
                    InkWell(
                      child: SubjectContainer(subjectName: 'Pathology'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Books(
                                image: Image.asset(
                                  'assets/images/tree.webp',
                                  height: 200,
                                  width: 100,
                                  fit: BoxFit.contain,
                                ),
                                textbookName: 'Pathology'),
                          ),
                        );
                      },
                    ),
                    InkWell(
                      child: SubjectContainer(subjectName: 'Microbiology'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Books(
                                image: Image.asset(
                                  'assets/images/tree.webp',
                                  height: 200,
                                  width: 100,
                                  fit: BoxFit.contain,
                                ),
                                textbookName: 'Microbiology'),
                          ),
                        );
                      },
                    ),
                    InkWell(
                      child: SubjectContainer(subjectName: 'Exercisetherapy'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Books(
                                image: Image.asset(
                                  'assets/images/tree.webp',
                                  height: 200,
                                  width: 100,
                                  fit: BoxFit.contain,
                                ),
                                textbookName: 'Exercisetherapy'),
                          ),
                        );
                      },
                    ),
                    InkWell(
                      child: SubjectContainer(subjectName: 'Electrotherapy'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Books(
                                image: Image.asset(
                                  'assets/images/tree.webp',
                                  height: 200,
                                  width: 100,
                                  fit: BoxFit.contain,
                                ),
                                textbookName: 'Electrotherapy'),
                          ),
                        );
                      },
                    ),
                    InkWell(
                      child: SubjectContainer(subjectName: 'Pharmacology'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Books(
                                image: Image.asset(
                                  'assets/images/tree.webp',
                                  height: 200,
                                  width: 100,
                                  fit: BoxFit.contain,
                                ),
                                textbookName: 'Pharmacology'),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              )
            : (widget.mainTextbookYear == '3rd Year')
                ? Scaffold(
                    appBar: AppBar(
                      backgroundColor: Colors.white,
                      elevation: 0,
                      iconTheme: const IconThemeData(
                        color: kThemeColor,
                      ),
                      centerTitle: true,
                      title: const Text(
                        "3rd Year Textbooks",
                        style: TextStyle(
                            fontFamily: 'OurFont',
                            fontSize: 22,
                            color: kThemeColor),
                      ),
                    ),
                    floatingActionButton: FloatingActionButton(
                      backgroundColor: kThemeColor,
                      onPressed: () {},
                      child: const Icon(Icons.add),
                    ),
                    body: ListView(
                      children: [
                        const SizedBox(
                          height: 70,
                        ),
                        InkWell(
                          child:
                              SubjectContainer(subjectName: 'General Medicine'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Books(
                                    image: Image.asset(
                                      'assets/images/tree.webp',
                                      height: 200,
                                      width: 100,
                                      fit: BoxFit.contain,
                                    ),
                                    textbookName: 'General Medicine'),
                              ),
                            );
                          },
                        ),
                        InkWell(
                          child:
                              SubjectContainer(subjectName: 'General Surgery'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Books(
                                    image: Image.asset(
                                      'assets/images/tree.webp',
                                      height: 200,
                                      width: 100,
                                      fit: BoxFit.contain,
                                    ),
                                    textbookName: 'General Surgery'),
                              ),
                            );
                          },
                        ),
                        InkWell(
                          child: SubjectContainer(
                              subjectName: 'Orthopaedics & Traumatology'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Books(
                                    image: Image.asset(
                                      'assets/images/tree.webp',
                                      height: 200,
                                      width: 100,
                                      fit: BoxFit.contain,
                                    ),
                                    textbookName:
                                        'Orthopaedics & Traumatology'),
                              ),
                            );
                          },
                        ),
                        InkWell(
                          child: SubjectContainer(
                              subjectName:
                                  'Orthopaedics & Sports Physiotherapy'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Books(
                                    image: Image.asset(
                                      'assets/images/tree.webp',
                                      height: 200,
                                      width: 100,
                                      fit: BoxFit.contain,
                                    ),
                                    textbookName:
                                        'Orthopaedics & Sports Physiotherapy'),
                              ),
                            );
                          },
                        ),
                        InkWell(
                          child: SubjectContainer(
                              subjectName: 'Cardio Respiratory'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Books(
                                    image: Image.asset(
                                      'assets/images/tree.webp',
                                      height: 200,
                                      width: 100,
                                      fit: BoxFit.contain,
                                    ),
                                    textbookName: 'Cardio Respiratory'),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  )
                : Scaffold(
                    appBar: AppBar(
                      backgroundColor: Colors.white,
                      elevation: 0,
                      iconTheme: const IconThemeData(
                        color: kThemeColor,
                      ),
                      centerTitle: true,
                      title: const Text(
                        "4th Year Textbooks",
                        style: TextStyle(
                            fontFamily: 'OurFont',
                            fontSize: 22,
                            color: kThemeColor),
                      ),
                    ),
                    floatingActionButton: FloatingActionButton(
                      backgroundColor: kThemeColor,
                      onPressed: () {},
                      child: const Icon(Icons.add),
                    ),
                    body: ListView(
                      children: [
                        const SizedBox(
                          height: 70,
                        ),
                        InkWell(
                          child: SubjectContainer(
                              subjectName: 'Neurology and Neurosurgery'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Books(
                                    image: Image.asset(
                                      'assets/images/tree.webp',
                                      height: 200,
                                      width: 100,
                                      fit: BoxFit.contain,
                                    ),
                                    textbookName: 'Neurology and Neurosurgery'),
                              ),
                            );
                          },
                        ),
                        InkWell(
                          child: SubjectContainer(
                              subjectName: 'Neurophysiotherapy'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Books(
                                    image: Image.asset(
                                      'assets/images/tree.webp',
                                      height: 200,
                                      width: 100,
                                      fit: BoxFit.contain,
                                    ),
                                    textbookName: 'Neurophysiotherapy'),
                              ),
                            );
                          },
                        ),
                        InkWell(
                          child: SubjectContainer(
                              subjectName: 'Community Medicine'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Books(
                                    image: Image.asset(
                                      'assets/images/tree.webp',
                                      height: 200,
                                      width: 100,
                                      fit: BoxFit.contain,
                                    ),
                                    textbookName: 'Community Medicine'),
                              ),
                            );
                          },
                        ),
                        InkWell(
                          child: SubjectContainer(
                              subjectName: 'Community Based Rehabilitation'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Books(
                                    image: Image.asset(
                                      'assets/images/tree.webp',
                                      height: 200,
                                      width: 100,
                                      fit: BoxFit.contain,
                                    ),
                                    textbookName:
                                        'Community Based Rehabilitation'),
                              ),
                            );
                          },
                        ),
                        InkWell(
                          child: SubjectContainer(
                              subjectName: 'Research Methodology'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Books(
                                    image: Image.asset(
                                      'assets/images/tree.webp',
                                      height: 200,
                                      width: 100,
                                      fit: BoxFit.contain,
                                    ),
                                    textbookName: 'Research Methodology'),
                              ),
                            );
                          },
                        ),
                        InkWell(
                          child: SubjectContainer(subjectName: 'Biostatistics'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Books(
                                    image: Image.asset(
                                      'assets/images/tree.webp',
                                      height: 200,
                                      width: 100,
                                      fit: BoxFit.contain,
                                    ),
                                    textbookName: 'Biostatics'),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  );
  }
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
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
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

class Books extends StatefulWidget {
  final Image image;
  final String textbookName;

  const Books({
    Key? key,
    required this.image,
    required this.textbookName,
  }) : super(key: key);

  @override
  _BooksState createState() => _BooksState();
}

class _BooksState extends State<Books> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (widget.textbookName == 'Anatomy')
          ? ListView(
              children: [
                SizedBox(
                  height: 50,
                ),
                BookEditions(
                  textbookName: 'Snell, Clinical Anatomy for Medical Students',
                  image: widget.image,
                ),
                BookEditions(
                  textbookName: 'B.D Chaurasia' 's Human Anatomy',
                  image: widget.image,
                ),
                BookEditions(
                  textbookName: 'MOORIE, Clinically Oriented Anatomy',
                  image: widget.image,
                ),
                BookEditions(
                  textbookName: 'DATTA, Essentials of human Anatomy',
                  image: widget.image,
                ),
                BookEditions(
                  textbookName: 'SINGH, Text Book of Anatomy',
                  image: widget.image,
                ),
              ],
            )
          : (widget.textbookName == 'Sociology')
              ? ListView(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    BookEditions(
                      textbookName:
                          'Sachdeva and Vidyabushan, Introduction the study of sociology',
                      image: widget.image,
                    ),
                    BookEditions(
                      textbookName:
                          'INDRANI T K Textbook of Sociology for Graduates Nurses and Physiotherapy Students J P bros',
                      image: widget.image,
                    ),
                  ],
                )
              : (widget.textbookName == 'Psychology')
                  ? ListView(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        BookEditions(
                          textbookName: 'Feldman R.H, Understanding Psychology',
                          image: widget.image,
                        ),
                        BookEditions(
                          textbookName:
                              'Morgan et al, Introduction to Psychology',
                          image: widget.image,
                        ),
                        BookEditions(
                          textbookName: 'Lefton, Psychology',
                          image: widget.image,
                        ),
                        BookEditions(
                          textbookName:
                              'Mangal S.K, Advance Educational Psychology',
                          image: widget.image,
                        ),
                        BookEditions(
                          textbookName: 'Atkinson, Dictionary of Psychology',
                          image: widget.image,
                        ),
                      ],
                    )
                  : (widget.textbookName == 'Biochemistry')
                      ? ListView(
                          children: [
                            BookEditions(
                              textbookName: 'Murray, Harpers Bio Chemistry',
                              image: widget.image,
                            ),
                            BookEditions(
                              textbookName:
                                  'Ramakrishna, Prasanna, Rajai, Text Book of Medical Biochemistry',
                              image: widget.image,
                            ),
                            BookEditions(
                              textbookName:
                                  'Vasudevan and Sree Kumari Text book of Biochemistry for Medical students',
                              image: widget.image,
                            ),
                            BookEditions(
                              textbookName: 'Das, Biochemistry',
                              image: widget.image,
                            ),
                            BookEditions(
                              textbookName: 'Prasad RM RM'
                                  's Physiotherapy Textbook Series ',
                              image: widget.image,
                            ),
                          ],
                        )
                      : (widget.textbookName == 'Physiology')
                          ? ListView(
                              children: [
                                BookEditions(
                                  textbookName:
                                      'Textbook of Medical Physiology - Guyton Arthur',
                                  image: widget.image,
                                ),
                                BookEditions(
                                  textbookName:
                                      'Concise Medical Physiology - Chaudhuri Sujit K',
                                  image: widget.image,
                                ),
                                BookEditions(
                                  textbookName:
                                      'Human Physiology - Chatterjee C.C',
                                  image: widget.image,
                                ),
                                BookEditions(
                                  textbookName:
                                      'Textbook of Practical Physiology - Ranade',
                                  image: widget.image,
                                ),
                                BookEditions(
                                  textbookName:
                                      'Basics of Medical Physiology - Venkatesh D & Sudhakar H H',
                                  image: widget.image,
                                ),
                                BookEditions(
                                  textbookName: 'Text of Physiology - A K Jain',
                                  image: widget.image,
                                ),
                                BookEditions(
                                  textbookName:
                                      'Manipal Manual of Physiology - Prof. C N Chandrashekar',
                                  image: widget.image,
                                ),
                                BookEditions(
                                  textbookName: 'Sembulingam',
                                  image: widget.image,
                                ),
                              ],
                            )
                          : (widget.textbookName == 'Biomechanics')
                              ? ListView(
                                  children: [
                                    BookEditions(
                                      textbookName:
                                          'Joint Structure and Function - A Comprehensive Analysis, JP bros',
                                      image: widget.image,
                                    ),
                                    BookEditions(
                                      textbookName:
                                          'Brunnstrom, Clinical Kinesiology, JP bros',
                                      image: widget.image,
                                    ),
                                    BookEditions(
                                      textbookName:
                                          'Clinical Kinesiology for Physical Therapist Assistants, JP bros',
                                      image: widget.image,
                                    ),
                                    BookEditions(
                                      textbookName:
                                          'Joint Structure and Function, Pamela.K.Levangle',
                                      image: widget.image,
                                    ),
                                  ],
                                )
                              : (widget.textbookName == 'Pathology')
                                  ? ListView(
                                      children: [
                                        BookEditions(
                                          textbookName: 'Harshmohan, Pathology',
                                          image: widget.image,
                                        ),
                                        BookEditions(
                                          textbookName:
                                              'Churchill Livingstone, Systemic Pathology',
                                          image: widget.image,
                                        ),
                                        BookEditions(
                                          textbookName: 'Robbins, Pathology',
                                          image: widget.image,
                                        ),
                                      ],
                                    )
                                  : (widget.textbookName == 'Microbiology')
                                      ? ListView(
                                          children: [
                                            BookEditions(
                                              textbookName:
                                                  'Sathish Gupta, Medical Microbiology',
                                              image: widget.image,
                                            ),
                                            BookEditions(
                                              textbookName:
                                                  'Jayaram Panicker, Microbiology',
                                              image: widget.image,
                                            ),
                                            BookEditions(
                                              textbookName:
                                                  'Rajeshwar Reddy, Microbiology',
                                              image: widget.image,
                                            ),
                                            BookEditions(
                                              textbookName:
                                                  'Anantha Narayanan, Microbiology',
                                              image: widget.image,
                                            ),
                                            BookEditions(
                                              textbookName:
                                                  'Baveja, Microbiology',
                                              image: widget.image,
                                            ),
                                            BookEditions(
                                              textbookName:
                                                  'Chakrabothy, Microbiology',
                                              image: widget.image,
                                            ),
                                          ],
                                        )
                                      : (widget.textbookName == 'Pharmacology')
                                          ? ListView(
                                              children: [
                                                BookEditions(
                                                  textbookName: 'Lippicott'
                                                      's Pharmacology',
                                                  image: widget.image,
                                                ),
                                                BookEditions(
                                                  textbookName:
                                                      'Tripathi, Medical Pharmacology',
                                                  image: widget.image,
                                                ),
                                                BookEditions(
                                                  textbookName:
                                                      'Padmaja Udaylimar, Medical Pharmacology',
                                                  image: widget.image,
                                                ),
                                                BookEditions(
                                                  textbookName:
                                                      'N Murugesh, Pharmacology',
                                                  image: widget.image,
                                                ),
                                                BookEditions(
                                                  textbookName:
                                                      'Sadoskar, Pharmacology',
                                                  image: widget.image,
                                                ),
                                              ],
                                            )
                                          : (widget.textbookName ==
                                                  'Exercisetherapy')
                                              ? ListView(
                                                  children: [
                                                    BookEditions(
                                                      textbookName:
                                                          'Barbara Bandy, Therapeutic Exercise',
                                                      image: widget.image,
                                                    ),
                                                    BookEditions(
                                                      textbookName:
                                                          'Carolyn Kisner, Therapeutic Exercise',
                                                      image: widget.image,
                                                    ),
                                                    BookEditions(
                                                      textbookName:
                                                          'M. Dena Gardiner, Principles of Ex Therapy',
                                                      image: widget.image,
                                                    ),
                                                    BookEditions(
                                                      textbookName:
                                                          'Hollis Margaret, Practical Ex Therapy',
                                                      image: widget.image,
                                                    ),
                                                    BookEditions(
                                                      textbookName:
                                                          'Sydney Litch, Therapeutic Exercise',
                                                      image: widget.image,
                                                    ),
                                                    BookEditions(
                                                      textbookName:
                                                          'Hall & Brody, Therapeutic Exercise',
                                                      image: widget.image,
                                                    ),
                                                    BookEditions(
                                                      textbookName:
                                                          'Basmajjian, Therapeutic Exercise',
                                                      image: widget.image,
                                                    ),
                                                    BookEditions(
                                                      textbookName:
                                                          'O, Sullivan, Physical Rehabilitation',
                                                      image: widget.image,
                                                    ),
                                                    BookEditions(
                                                      textbookName:
                                                          'Sinha, Therapeutic Massage',
                                                      image: widget.image,
                                                    ),
                                                    BookEditions(
                                                      textbookName:
                                                          'Hislop, Principles of Muscle Testing',
                                                      image: widget.image,
                                                    ),
                                                  ],
                                                )
                                              : (widget.textbookName ==
                                                      'Electrotherapy')
                                                  ? ListView(
                                                      children: [
                                                        BookEditions(
                                                          textbookName:
                                                              'Claytons Electrotherapy',
                                                          image: widget.image,
                                                        ),
                                                        BookEditions(
                                                          textbookName:
                                                              'Low & Reed Explained Electrotherapy',
                                                          image: widget.image,
                                                        ),
                                                        BookEditions(
                                                          textbookName:
                                                              'Nelson, Clinical Electrotherapy',
                                                          image: widget.image,
                                                        ),
                                                        BookEditions(
                                                          textbookName:
                                                              'Sheila Kitchen Electrotherapy',
                                                          image: widget.image,
                                                        ),
                                                        BookEditions(
                                                          textbookName:
                                                              'Michile Cameron, Physical Agents',
                                                          image: widget.image,
                                                        ),
                                                        BookEditions(
                                                          textbookName:
                                                              'Michele Cameron, Principles of Electrotherapy',
                                                          image: widget.image,
                                                        ),
                                                        BookEditions(
                                                          textbookName:
                                                              'Susan Michlovitz, Thermal Agents',
                                                          image: widget.image,
                                                        ),
                                                        BookEditions(
                                                          textbookName:
                                                              'Jagmohan Singn, Electrotherapy',
                                                          image: widget.image,
                                                        ),
                                                      ],
                                                    )
                                                  : SizedBox(),
    );
  }
}

class BookEditions extends StatefulWidget {
  final String textbookName;
  final Image image;

  BookEditions({
    required this.textbookName,
    required this.image,
  });

  @override
  _BookEditionsState createState() => _BookEditionsState();
}

class _BookEditionsState extends State<BookEditions> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 2,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: widget.image,
                ),
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      widget.textbookName,
                      style: const TextStyle(
                        fontFamily: 'OurFont',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
