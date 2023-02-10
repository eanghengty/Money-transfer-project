import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import'package:truemoneyversion2/View/verify_code_screen.dart';
import'package:flutter/cupertino.dart';
class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text(''),
      backgroundColor: Colors.transparent,
      bottomOpacity: 0,
      elevation: 0,),
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.all(16),
            child:Column(
              children: [
                Container(
                  child:Lottie.network('https://assets10.lottiefiles.com/packages/lf20_lgvdhvlz.json'),
                  width: double.infinity,
                  height: 200,
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Text('Sign in by phone number', style:
                      TextStyle(
                        fontSize: 24,

                      )),
                      SizedBox(height: 16),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Phone Number',
                        ),),
                      SizedBox(height: 16,),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Secret Key',
                        ),),
                      SizedBox(height: 16,),
                      Text('Tap on this "done" button to verify the code that send to your number.'),
                      SizedBox(height: 16,),
                      ElevatedButton(
                        child: Text("Done", style:
                        TextStyle(color: Colors.white,)),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.lightBlue,
                          elevation: 0,

                        ),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (ctx)=>const VerifyCode() ));
                        },
                      ),
                      SizedBox(height: 16,),
                      Text('Tap on this "Register" button to register new account for your starting your money transfer process.'),
                      SizedBox(height: 16,),
                      ElevatedButton(
                        child: Text("Register", style:
                        TextStyle(color: Colors.white,)),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.lightBlue,
                          elevation: 0,

                        ),
                        onPressed: () {

                        },
                      ),
                    ],
                  ),
                )
              ],
            )
        ),
      )
    );
  }
}
