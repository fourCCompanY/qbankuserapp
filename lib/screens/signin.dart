import 'package:flutter/material.dart';
import 'package:qbankuserapp/components/constants.dart';
import 'package:qbankuserapp/main.dart';
import 'package:qbankuserapp/screens/signup.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController _emailEditingController = TextEditingController();
  TextEditingController _passwordEditingController = TextEditingController();
  bool _passwordObscure = false;
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
          "Log In",
          style: TextStyle(
            fontFamily: 'OurFont',
            fontSize: 22,
            color: kThemeColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Material(
            elevation: 2,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 500,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                            'Password :',
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
                                obscureText: (_passwordObscure) ? false : true,
                                controller: _passwordEditingController,
                                style: TextStyle(
                                  height: 1.0,
                                  color: Colors.black,
                                  fontSize: 18.0,
                                ),
                                decoration: InputDecoration(
                                  labelText: 'Password',
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
                                    if (_passwordObscure == true) {
                                      _passwordObscure = false;
                                    } else {
                                      _passwordObscure = true;
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
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Splash(),
                              ),
                            );
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
                                    "Log-In",
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
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Text(
                            "Dont have an account?",
                            style: TextStyle(
                              fontFamily: 'OurFont',
                              fontSize: 18,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUp(),
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              "Create an Account",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontFamily: 'OurFont',
                                fontSize: 15,
                                color: kThemeColor,
                              ),
                            ),
                          ),
                        )
                      ],
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
