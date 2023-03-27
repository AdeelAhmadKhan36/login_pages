import 'package:flutter/material.dart';

class Login_screen extends StatefulWidget {
  const Login_screen({Key? key}) : super(key: key);

  @override
  State<Login_screen> createState() => _Login_screenState();
}

class _Login_screenState extends State<Login_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          ColorFiltered(
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.8), BlendMode.srcATop)),
          Image(
            image: AssetImage('Assets/flutter.jpg'),
            fit: BoxFit.cover,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 50, left: 30),
                height: 60,
                width: 80,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Image(image: AssetImage('Assets/imagflutter.png'),)
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30, left: 30),
                child: Text(
                  'Welcome',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                  ),
                  child: Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(30),
                          child: Row(
                            children: [
                              const Text(
                                'New\nAccount',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Column(
                                children: [Container(
                                  height: 60,
                                    width: 60,
                                  child: Icon(Icons.camera_alt_outlined),
                                  decoration: BoxDecoration(
                                    shape:BoxShape.circle,
                                    border: Border.all(color: Colors.black38,width: 3)
                                  ),
                                ),
                                  SizedBox(height: 10,),
                                  Text('Upload Picture',),
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Enter Your Email',
                              fillColor: Color(0xffF8F9FA),

                              prefixIcon: Icon(Icons.email_outlined,color: Color(0xff323F4B),),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Enter Username',
                              fillColor: Color(0xffF8F9FA),

                              prefixIcon: Icon(Icons.add_alert,color: Color(0xff323F4B),),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20),
                            child: TextFormField(
                              keyboardType:TextInputType.number,
                              decoration: const InputDecoration(
                                hintText: 'Enter Your Passward',
                                fillColor: Color(0xffF8F9FA),
                                suffixIcon: Icon(Icons.visibility),
                                prefixIcon: Icon(Icons.key_rounded,color: Color(0xff323F4B),),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: Container(
                            margin: EdgeInsets.only(top: 50),
                            height: 60,
                            width: 400,
                            child: const Center(
                                child: Text(
                                  "SignUp",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )),
                            decoration: BoxDecoration(
                                color: Colors.deepOrange,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                      ],
                    ),
                  ),

                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
class Textfiled extends StatelessWidget {
  const Textfiled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(

    );
  }
}
