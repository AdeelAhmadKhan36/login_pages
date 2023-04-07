import 'package:flutter/material.dart';
import 'package:http/http.dart';


class Account_Screen extends StatefulWidget {
  const Account_Screen({Key? key}) : super(key: key);

  @override
  State<Account_Screen> createState() => _Account_ScreenState();
}

class _Account_ScreenState extends State<Account_Screen> {
  TextEditingController passwordcontroller=TextEditingController();

  void login(String password)async{
    try{
      Response response=await post(
          Uri.parse('https://reqres.in/api/register'),
          body:{

            'password': password,

          }

      );
      if(response.statusCode==200){
        print('Login Sucessfully');
      }else{
        print('Failed to Log in');
      }
      
    }catch(e){
      print(e.toString());
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          const Image(
            image: AssetImage('Assets/flutter.jpg'),
            fit: BoxFit.cover,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 60,
                width: 80,
                margin: EdgeInsets.only(top: 50, left: 30),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Image(image: AssetImage('Assets/imagflutter.png'),),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 100,left: 30),
                child: Text(
                  'Enjoy Your \nJourney',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(30),
                          child: Row(
                            children: [
                              Text(
                                'Welcome Back\n Ahmad',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage('Assets/myphoto.jpg'),
                                    ),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.black38, width: 3)),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30, right: 30),
                          child: TextFormField(
                            obscureText: true,
                            controller: passwordcontroller,

                            decoration: const InputDecoration(
                                hintText: 'Enter Your Password',
                                fillColor: Color(0xffF8F9FA),
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Color(0xff323F4B),
                                ),
                                suffixIcon: Icon(Icons.visibility)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: InkWell(
                            onTap: (){
                              login(passwordcontroller.text.toString());
                            },
                            child: Container(
                              margin: EdgeInsets.only(top: 50),
                              height: 60,
                              width: 400,
                              child: Center(
                                  child: Text(
                                "Login",
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
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 200),
                          child: Text(
                            'Forget Passward',
                            style: TextStyle(
                                color: Colors.deepOrange,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          'OR Sign in with',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(image: AssetImage('Assets/google.png')),
                              Image(image: AssetImage('Assets/twitter.png')),
                              Image(image: AssetImage('Assets/facebook.png'))
                            ],
                          ),
                        )
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
