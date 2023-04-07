import 'package:flutter/material.dart';
import 'package:login_page/signup.dart';

import 'login.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    var colorfilter;
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            const Image(
              image: AssetImage(
                "Assets/flutter.jpg",
              ),
              fit: BoxFit.fitHeight,
            ),

            // ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.srcATop),
            ColorFiltered(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.9), BlendMode.srcATop)),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 150, left: 30),
                    height: 60,
                    width: 80,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: const Image(
                      image: AssetImage('Assets/imagflutter.png'),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 50, left: 30),
                    child: Text(
                      'Welcome',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10, left: 30),
                    child: Text(
                      'To',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      'Computer Science Society',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login_screen()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 50),
                        height: 60,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(
                            child: Text(
                          "SignUp",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Account_Screen()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 50),
                        height: 60,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(
                            child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 250),
                    child: Text(
                      'Forget Passward',
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                          ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Expanded(
                        child: Divider(
                            color: Colors.white,
                            height: 50,
                            thickness: 3,
                            indent: 30,
                            endIndent: 10),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'OR',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                            color: Colors.white,
                            height: 50,
                            thickness: 3,
                            indent: 10,
                            endIndent: 30),
                      ),
                    ],
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Image(image: AssetImage('Assets/google.png')),
                        SizedBox(width: 20,),
                        Image(image: AssetImage('Assets/twitter.png')),
                        SizedBox(width: 20,),
                        Image(image: AssetImage('Assets/facebook.png'))
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
