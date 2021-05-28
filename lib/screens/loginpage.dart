import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:indmoneykiteui/screens/HomePage.dart';

final TextEditingController _emailController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();

class LoginScreen extends StatefulWidget {
  @override
  _LoginScrrenState createState() => _LoginScrrenState();
}

class _LoginScrrenState extends State<LoginScreen> {
  bool checkedValue = false;
  bool isLoggedIn2 = false;
  String name;
  String email;
  String imageUrl;
  String phone;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Card(
                    color: Colors.white,
                    margin: const EdgeInsets.all(0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    elevation: 10,
                  ),
                ),
                //Spacer(),
              ],
            ),
          ),
          SafeArea(
            child: ListView(
              children: [
                const SizedBox(height: 40.0),
                Center(
                  child: Image.asset(
                    "assets/kite.png",
                    height: 100,
                    width: 100,
                  ),
                ),
                Text(
                  "Login to Kite",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 22.0,
                  ),
                ),
                Container(
                  child: Card(
                    color: Colors.white,
                    margin: const EdgeInsets.all(32.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: ListView(
                      shrinkWrap: true,
                      primary: false,
                      physics: NeverScrollableScrollPhysics(),
                      padding: const EdgeInsets.all(16.0),
                      children: [
                        const SizedBox(height: 40.0),
                        TextFormField(
                          style: TextStyle(color: Colors.grey),
                          decoration: InputDecoration(
                            hintText: "user id",
                            labelText: 'User ID',
                            labelStyle: TextStyle(
                                color: Colors.grey
                            ),
                            focusColor: Colors.black,
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black54
                                )
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(1.0),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                            border: OutlineInputBorder(),
                            suffixIcon: Icon(
                              Icons.person_sharp, color: Colors.black38,
                            ),
                          ),
                        ),
                        const SizedBox(height: 40.0),
                        TextFormField(
                          style: TextStyle(color: Colors.grey),
                          decoration: InputDecoration(
                            hintText: "password",
                            labelText: 'Password',
                            labelStyle: TextStyle(
                                color: Colors.grey
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black54
                                )
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(1.0),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                            border: OutlineInputBorder(),
                            suffixIcon: Icon(
                              Icons.lock, color: Colors.black38,
                            ),
                          ),
                        ),
                        const SizedBox(height: 30.0),
                        ElevatedButton(
                          child: Text("Login",style: TextStyle(color: Colors.white),),
                          onPressed: () {
                            Navigator.push( context, MaterialPageRoute( builder: (context) => MyHomePage( )));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.deepOrange,
                            padding: const EdgeInsets.all(16.0),
                          ),
                        ),
                        const SizedBox(height: 2.0),
                        TextButton(
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.black54,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          onPressed: () {},
                        ),
                        const SizedBox(height: 20.0),
                      ],
                    ),
                  ),
                  decoration: new BoxDecoration(
                    boxShadow: [
                      new BoxShadow(
                        blurRadius: 80.0,
                        color: Colors.black.withOpacity(.05),
                        offset: Offset(2.0, 7.0),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

}
