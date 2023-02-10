import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:truemoneyversion2/View/home_screen_view.dart';
import'package:lottie/lottie.dart';
class MyWallet extends StatefulWidget {
  const MyWallet({Key? key}) : super(key: key);

  @override
  State<MyWallet> createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'MTA My Wallet',
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Colors.blue[900],
          leading: InkWell(
            child: Icon(
              Icons.arrow_circle_left_outlined,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  CupertinoPageRoute(builder: (ctx) => const HomeScreen()));
            },
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          child: Stack(
            children:[ Container(
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.blue[800],
                  borderRadius: BorderRadius.circular(20)),
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Eang Hengty\'s wallet',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Expanded(child: SizedBox()),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        decoration: BoxDecoration(
                            border: Border(right: BorderSide(width: 3,color: Colors.white))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'USD',
                              style: TextStyle(fontSize: 16, color: Colors.white),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              '300.12',
                              style: TextStyle(fontSize: 16, color: Colors.white),
                            )
                          ],
                        ),
                      )),
                      Expanded(
                          child: Container(
                        decoration: BoxDecoration(
                            border: Border(left: BorderSide(width: 3, color: Colors.white))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'KHR',
                              style: TextStyle(fontSize: 16, color: Colors.white),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              '100,000',
                              style: TextStyle(fontSize: 16, color: Colors.white),
                            )
                          ],
                        ),
                      ))
                    ],
                  )
                ],
              ),
            ),
            Positioned(child: Container(
              width: 150,
              height: 150,
              child: Lottie.network('https://assets4.lottiefiles.com/packages/lf20_q8mar8hq.json'),
            ),
            bottom: 0,
            right: 0,),
              Positioned(child: Container(
                width: 40,
                height: 40,
                child: Image.asset('lib/Assets/chip.png'),
              ),
                bottom: 50,
                left: 30,)]
          ),
        ));
  }
}
