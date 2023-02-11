import 'package:flutter/material.dart';
import'package:lottie/lottie.dart';
import'package:flutter/cupertino.dart';
import'package:truemoneyversion2/View/home_screen_view.dart';
class LoadingToHome extends StatefulWidget {
  const LoadingToHome({Key? key}) : super(key: key);

  @override
  State<LoadingToHome> createState() => _LoadingToHomeState();
}

class _LoadingToHomeState extends State<LoadingToHome> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    shift_to_home();
  }
  shift_to_home(){
    Future.delayed(Duration(seconds: 5)).then((value) =>
        Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (ctx)=>const HomeScreen() )));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 250,
              height: 250,
              child: Lottie.network('https://assets8.lottiefiles.com/packages/lf20_jzpjbmvd.json'),
            ),
            SizedBox(height: 16,),
            Text('Setting up password...')
          ],
        ),
      )
    );
  }
}
