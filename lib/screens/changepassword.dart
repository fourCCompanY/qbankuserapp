import 'package:flutter/material.dart';
import 'package:qbankuserapp/components/constants.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  TextEditingController _confirmPasswordEditingController =
      TextEditingController();
  TextEditingController _newPasswordEditingController = TextEditingController();
  TextEditingController _confirmNewPasswordEditingController =
      TextEditingController();
  bool _confirmPasswordObscure = false;
  bool _newPasswordObscure = false;
  bool _confirmNewPasswordObscure = false;
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
          "Change Password",
          style: TextStyle(
              fontFamily: 'OurFont', fontSize: 22, color: kThemeColor),
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          color: kThemeColor,
          height: 80,
          child: Center(
            child: Text(
              "Save",
              style: TextStyle(
                color: Colors.white,
                fontSize: 38,
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: Padding(
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
                        'Confirm Password:',
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
                              hintText: "Enter Current Password...",
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
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 3,
                      ),
                      child: Text(
                        'New Password:',
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
                            obscureText: (_newPasswordObscure) ? false : true,
                            controller: _newPasswordEditingController,
                            style: TextStyle(
                              height: 1.0,
                              color: Colors.black,
                              fontSize: 18.0,
                            ),
                            decoration: InputDecoration(
                              labelText: 'New Password',
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
                              hintText: "Enter New Password...",
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
                                if (_newPasswordObscure == true) {
                                  _newPasswordObscure = false;
                                } else {
                                  _newPasswordObscure = true;
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
                        'Confirm New Password:',
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
                                (_confirmNewPasswordObscure) ? false : true,
                            controller: _confirmNewPasswordEditingController,
                            style: TextStyle(
                              height: 1.0,
                              color: Colors.black,
                              fontSize: 18.0,
                            ),
                            decoration: InputDecoration(
                              labelText: 'Confirm New Password',
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
                              hintText: "Re-type New Password...",
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
                                if (_confirmNewPasswordObscure == true) {
                                  _confirmNewPasswordObscure = false;
                                } else {
                                  _confirmNewPasswordObscure = true;
                                }
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
