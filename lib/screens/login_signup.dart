import 'package:figma_firebase_exam/firebase/getData.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LogInSignUpPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LogInSignUpPageState();
}

class LogInSignUpPageState extends State<LogInSignUpPage> with SingleTickerProviderStateMixin {
  final FirebaseAuth _authUser = FirebaseAuth.instance;
  var tabeController;
  var _email = TextEditingController();
  var _password = TextEditingController();
  var _email1 = TextEditingController();
  var _password1 = TextEditingController();
  var _phone = TextEditingController();
  var _formKey = GlobalKey<FormState>();
  var _formKey1 = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabeController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tabeController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    double boyi = MediaQuery.of(context).size.height;
    double eni = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: boyi / (boyi / 297.0),
        actions: [
          Padding(
            padding: EdgeInsets.only(
              //top: boyi / (boyi / 113.0),
              right: eni / (eni / 106.0),
            ),
                child: Image.asset(
                  "assets/images/bella_olonje_logo.png",
                  width: eni / (eni / 131.53),
                  height: boyi / (boyi / 162.38),
                ),
              ),
        ],
        bottom: TabBar(
          controller: tabeController,
          indicatorPadding: EdgeInsets.symmetric(horizontal: eni / (eni / 40.0),),
          indicatorColor: Color(0xffFA4A0C),
          //isScrollable: true,
          tabs: [
            Padding(padding: EdgeInsets.only(
              bottom: eni / (eni / 14.0),
            ),
            child: Text("Login",
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),),
            ),
            Padding(padding: EdgeInsets.only(
              bottom: eni / (eni / 14.0),
            ),
              child: Text("Sign-up",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),),
            ),
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30.0),),
        ),
        backgroundColor: Color(0xffFFFFFF),
        elevation: 3.0,
      ),
      body: TabBarView(
            controller: tabeController,
            children: [
              Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Stack(
                  children: [
                    Positioned(child: TextFormField(
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Email adress",
                      ),
                      controller: _email,
                      validator: (text) {
                        if (text!.isEmpty) {
                          return "Emailni kiriting";
                        }
                      },
                    ),
                      top: boyi / (boyi / 58.0),
                      left: eni / (eni / 50.0),
                      right: eni / (eni / 50.0),
                    ),
                    Positioned(child: TextFormField(
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        labelText: "Password",
                      ),
                      controller: _password,
                      validator: (text) {
                        if (text!.isEmpty) {
                          return "Parol kiriting";
                        }
                      },
                    ),
                      top: boyi / (boyi / 130.0),
                      left: eni / (eni / 50.0),
                      right: eni / (eni / 50.0),
                    ),
                    Positioned(child: TextButton(
                      onPressed: () {},
                      child: Text("Forgot password?",
                      style: TextStyle(
                        color: Color(0xffFA4A0C),
                        fontSize: 17.0,
                      ),),
                    ),
                    top: boyi / (boyi / 190.0),
                      left: eni / (eni / 40.0),
                    ),
                    Positioned(
                      height: boyi / (boyi / 60.0),
                      child:
                    ElevatedButton(
                      onPressed: () async {
                        if (_formKey.currentState!.validate() ) {
                          try {
                             await _authUser.signInWithEmailAndPassword(
                                email: _email.text, password: _password.text);
                             Navigator.pushAndRemoveUntil(
                                 context,
                                 MaterialPageRoute(builder: (context) => GetData(),),
                                     (route) => false);
                          } catch (e) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("$e"),
                              duration: const Duration(seconds: 1),),);
                          }
                      }
                        },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Color(0xffF6F6F9),
                          fontSize: 17.0,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffFA4A0C),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                      top: boyi / (boyi / 330.0),
                      left: eni / (eni / 50.0),
                      right: eni / (eni / 50.0),
                    ),
                  ],
                ),),
              Form(
                key: _formKey1,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Stack(
                  children: [
                    Positioned(child: TextFormField(
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Email adress",
                      ),
                      controller: _email1,
                      validator: (text) {
                        if (text!.isEmpty) {
                          return "Emailni kiriting";
                        }
                      },
                    ),
                      top: boyi / (boyi / 58.0),
                      left: eni / (eni / 50.0),
                      right: eni / (eni / 50.0),
                    ),
                    Positioned(child: TextFormField(
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        labelText: "Phone Number",
                      ),
                      controller: _phone,
                      validator: (text) {
                        if (text!.isEmpty) {
                          return "Telni kiriting";
                        }
                      },
                    ),
                      top: boyi / (boyi / 130.0),
                      left: eni / (eni / 50.0),
                      right: eni / (eni / 50.0),
                    ),
                    Positioned(child: TextFormField(
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        labelText: "Password",
                      ),
                      controller: _password1,
                      validator: (text) {
                        if (text!.isEmpty) {
                          return "Parol kiriting";
                        }
                      },
                    ),
                      top: boyi / (boyi / 198.0),
                      left: eni / (eni / 50.0),
                      right: eni / (eni / 50.0),
                    ),
                    Positioned(child: TextButton(
                      onPressed: () {},
                      child: Text("Forgot passcode?",
                        style: TextStyle(
                          color: Color(0xffFA4A0C),
                          fontSize: 17.0,
                        ),),
                    ),
                      top: boyi / (boyi / 270.0),
                      left: eni / (eni / 40.0),
                    ),
                    Positioned(
                      height: boyi / (boyi / 60.0),
                      child:
                      ElevatedButton(
                        onPressed: () async {
                          if (_formKey1.currentState!.validate()) {
                            try {
                               await _authUser
                                  .createUserWithEmailAndPassword(
                                  email: _email1.text, password: _password1.text);
                               Navigator.pushAndRemoveUntil(
                                   context,
                                   MaterialPageRoute(builder: (context) =>
                                       GetData(),),
                                       (route) => false);
                            } catch (e) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("$e"),
                                  duration: const Duration(seconds: 1),),);
                            }
                          } },
                        child: Text(
                          "Register",
                          style: TextStyle(
                            color: Color(0xffF6F6F9),
                            fontSize: 17.0,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xffFA4A0C),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                      top: boyi / (boyi / 330.0),
                      left: eni / (eni / 50.0),
                      right: eni / (eni / 50.0),
                    ),
                  ],
                ),),
            ],
          ),
    );
  }
}
