import 'package:qbankuserapp/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:qbankuserapp/screens/changepassword.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController _nicknameEditingController = TextEditingController();
  TextEditingController _fullnameEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: kThemeColor,
        ),
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(
              fontFamily: 'OurFont', fontSize: 22, color: kThemeColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Material(
          elevation: 0.5,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 3,
                    ),
                    child: Text(
                      'Nickname :',
                      style: TextStyle(
                        fontSize: 26,
                        fontFamily: 'QuickSand',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: _nicknameEditingController,
                    style: TextStyle(
                      height: 1.0,
                      color: Colors.black,
                      fontSize: 18.0,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Nickname',
                      labelStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                          width: 1,
                          color: Color(0xFFFF616D),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                          width: 1,
                          color: Color(0xFFFF616D),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                          width: 2,
                          color: Color(0xFFFF616D),
                        ),
                      ),
                      isDense: true,
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Enter Nickname...",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        borderSide: new BorderSide(
                          color: Color(0xFFFF616D),
                        ),
                      ),
                    ),
                    onChanged: (value) {
                      print(value);
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 3,
                    ),
                    child: Text(
                      'Full Name :',
                      style: TextStyle(
                        fontSize: 26,
                        fontFamily: 'QuickSand',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: _fullnameEditingController,
                    style: TextStyle(
                      height: 1.0,
                      color: Colors.black,
                      fontSize: 18.0,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Full Name',
                      labelStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                          width: 1,
                          color: Color(0xFFFF616D),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                          width: 1,
                          color: Color(0xFFFF616D),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                          width: 2,
                          color: Color(0xFFFF616D),
                        ),
                      ),
                      isDense: true,
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Enter Full Name...",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        borderSide: new BorderSide(
                          color: Color(0xFFFF616D),
                        ),
                      ),
                    ),
                    onChanged: (value) {
                      print(value);
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 3,
                    ),
                    child: Text(
                      'Email :',
                      style: TextStyle(
                        fontSize: 26,
                        fontFamily: 'QuickSand',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 3,
                    ),
                    child: Text(
                      'appus97461@gmail.com',
                      style: TextStyle(
                        fontFamily: 'QuickSand',
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChangePasswordScreen(),
                        ),
                      );
                    },
                    child: Material(
                      elevation: 2,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFFF616D),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Change Password',
                            style: TextStyle(
                              fontFamily: 'QuickSand',
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
