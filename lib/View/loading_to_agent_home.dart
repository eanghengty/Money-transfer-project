import'package:flutter/material.dart';
import'package:flutter/cupertino.dart';
import'package:lottie/lottie.dart';
import 'package:truemoneyversion2/View/agent_home_screen.dart';

class LoadingToAgentHome extends StatefulWidget {
  const LoadingToAgentHome({Key? key}) : super(key: key);

  @override
  State<LoadingToAgentHome> createState() => _LoadingToAgentHomeState();
}

class _LoadingToAgentHomeState extends State<LoadingToAgentHome> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    shift_to_home();
  }
  shift_to_home(){
    Future.delayed(Duration(seconds: 5)).then((value) =>
        Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (ctx)=>const AgentHomeScreen() )));
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
              Text('Process verification OTP')
            ],
          ),
        )
    );
  }
}
