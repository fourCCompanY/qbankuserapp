import 'package:flutter/material.dart';
import 'package:qbankuserapp/components/constants.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _fullnameEditingController = TextEditingController();
  TextEditingController _nicknameEditingController = TextEditingController();
  TextEditingController _emailEditingController = TextEditingController();
  TextEditingController _createPasswordEditingController =
      TextEditingController();
  TextEditingController _confirmPasswordEditingController =
      TextEditingController();
  bool _createPasswordObscure = false;
  bool _confirmPasswordObscure = false;
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
          "Create an Account",
          style: TextStyle(
            fontFamily: 'OurFont',
            fontSize: 22,
            color: kThemeColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Material(
          elevation: 2,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: ListView(
              children: [
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                          'E-Mail :',
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
                        controller: _emailEditingController,
                        style: TextStyle(
                          height: 1.0,
                          color: Colors.black,
                          fontSize: 18.0,
                        ),
                        decoration: InputDecoration(
                          labelText: 'E-Mail',
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
                          hintText: "Enter E-Mail...",
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
                          'Create Password :',
                          style: TextStyle(
                            fontSize: 26,
                            fontFamily: 'QuickSand',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 10,
                            child: TextField(
                              obscureText:
                                  (_createPasswordObscure) ? false : true,
                              controller: _createPasswordEditingController,
                              style: TextStyle(
                                height: 1.0,
                                color: Colors.black,
                                fontSize: 18.0,
                              ),
                              decoration: InputDecoration(
                                labelText: 'Create Password',
                                labelStyle: TextStyle(
                                  color: Colors.grey,
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                    width: 1,
                                    color: Color(0xFFFF616D),
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                    width: 1,
                                    color: Color(0xFFFF616D),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Color(0xFFFF616D),
                                  ),
                                ),
                                isDense: true,
                                filled: true,
                                fillColor: Colors.white,
                                hintText: "Enter Password...",
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
                          ),
                          Expanded(
                            flex: 1,
                            child: GestureDetector(
                              child: Icon(Icons.remove_red_eye),
                              onTap: () {
                                setState(() {
                                  if (_createPasswordObscure == true) {
                                    _createPasswordObscure = false;
                                  } else {
                                    _createPasswordObscure = true;
                                  }
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 3,
                        ),
                        child: Text(
                          'Confirm Password :',
                          style: TextStyle(
                            fontSize: 26,
                            fontFamily: 'QuickSand',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 10,
                            child: TextField(
                              obscureText:
                                  (_confirmPasswordObscure) ? false : true,
                              controller: _confirmPasswordEditingController,
                              style: TextStyle(
                                height: 1.0,
                                color: Colors.black,
                                fontSize: 18.0,
                              ),
                              decoration: InputDecoration(
                                labelText: 'Confirm Password',
                                labelStyle: TextStyle(
                                  color: Colors.grey,
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                    width: 1,
                                    color: Color(0xFFFF616D),
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                    width: 1,
                                    color: Color(0xFFFF616D),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Color(0xFFFF616D),
                                  ),
                                ),
                                isDense: true,
                                filled: true,
                                fillColor: Colors.white,
                                hintText: "Re-type Password...",
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
                          ),
                          Expanded(
                            flex: 1,
                            child: GestureDetector(
                              child: Icon(Icons.remove_red_eye),
                              onTap: () {
                                setState(() {
                                  if (_confirmPasswordObscure == true) {
                                    _confirmPasswordObscure = false;
                                  } else {
                                    _confirmPasswordObscure = true;
                                  }
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Center(
                          child: Material(
                            elevation: 2,
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: kThemeColor,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 15,
                                  horizontal: 20,
                                ),
                                child: Text(
                                  "Create Account",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'OurFont',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
