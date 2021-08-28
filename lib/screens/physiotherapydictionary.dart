import 'package:qbankuserapp/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PhysioTherapyDictionary extends StatefulWidget {
  @override
  _PhysioTherapyDictionaryState createState() =>
      _PhysioTherapyDictionaryState();
}

class _PhysioTherapyDictionaryState extends State<PhysioTherapyDictionary> {
  var firestoreDB =
      FirebaseFirestore.instance.collection('dictionary').snapshots();
  Query collectionReference =
      FirebaseFirestore.instance.collection("dictionary");
  Future<int> getLength() {
    return collectionReference.snapshots().length;
  }

  var length;

  @override
  void initState() {
    length = getLength();
    super.initState();
  }

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
          "Physiotherapy Dictionary",
          style: TextStyle(
              fontFamily: 'OurFont', fontSize: 22, color: kThemeColor),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Material(
              elevation: 2,
              borderRadius: const BorderRadius.all(
                Radius.circular(20.0),
              ),
              child: TextField(
                style: const TextStyle(
                  height: 1.2,
                  color: Colors.black,
                  fontSize: 18.0,
                ),
                decoration: kSearchInputDecoration,
                onChanged: (value) {
                  print(value);
                },
              ),
            ),
          ),
          StreamBuilder<QuerySnapshot>(
            stream: collectionReference.orderBy('word').snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData)
                return Center(
                  child: CircularProgressIndicator(),
                );
              return ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: snapshot.data!.docs.map((DocumentSnapshot document) {
                  Map<String, dynamic> data =
                      document.data() as Map<String, dynamic>;
                  return SingleWord(
                      word: data['word'], meaning: data['meaning']);
                }).toList(),
              );
            },
          ),
          // GridView.builder(
          //   scrollDirection: Axis.vertical,
          //   shrinkWrap: true,
          //   padding: EdgeInsets.all(0),
          //   // shrinkWrap: true,
          //   physics: ScrollPhysics(),
          //   itemCount: kDictionaryWords.length,
          //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 1,
          //     childAspectRatio: (MediaQuery.of(context).size.height / 130.0),
          //   ),
          //   itemBuilder: (BuildContext context, int index) {
          //     return SingleWord(
          //       word: kDictionaryWords[index]['word'].toString(),
          //       meaning: kDictionaryWords[index]['meaning'].toString(),
          //     );
          //   },
          // ),
        ],
      ),
    );
  }
}

class SingleWord extends StatefulWidget {
  final String word;
  final String meaning;

  SingleWord({
    required this.word,
    required this.meaning,
  });

  @override
  _SingleWordState createState() => _SingleWordState();
}

class _SingleWordState extends State<SingleWord> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MaterialButton(
            child: Material(
              borderRadius: BorderRadius.circular(20),
              elevation: 2,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    widget.word,
                    style: TextStyle(
                      fontFamily: 'QuickSand',
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SingleWordContentScreen(
                    word: widget.word,
                    meaning: widget.meaning,
                  ),
                ),
              );
            },
          ),
          SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}

class SingleWordContentScreen extends StatefulWidget {
  final String word;
  final String meaning;

  SingleWordContentScreen({
    required this.word,
    required this.meaning,
  });

  @override
  _SingleWordContentScreenState createState() =>
      _SingleWordContentScreenState();
}

class _SingleWordContentScreenState extends State<SingleWordContentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 30.0,
              right: 35,
              top: 35,
              bottom: 0,
            ),
            child: Text(
              "Word :",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                fontFamily: 'QuickSand',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 35.0,
              top: 8.0,
            ),
            child: Text(
              widget.word,
              style: TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.w700,
                fontFamily: 'QuickSand',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30.0,
              right: 35,
              top: 35,
              bottom: 0,
            ),
            child: Text(
              "Meaning :",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                fontFamily: 'QuickSand',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 23.0,
              right: 12,
              top: 10,
              bottom: 0,
            ),
            child: Material(
              elevation: 2,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    widget.meaning,
                    style: TextStyle(
                      fontFamily: 'QuickSand',
                      letterSpacing: 0.3,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
