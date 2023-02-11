import'package:flutter/material.dart';
import'package:flutter/cupertino.dart';
import 'package:truemoneyversion2/View/quick_payment.dart';
class QuickPaymentAdd extends StatefulWidget {
  const QuickPaymentAdd({Key? key}) : super(key: key);

  @override
  State<QuickPaymentAdd> createState() => _QuickPaymentAddState();
}

class _QuickPaymentAddState extends State<QuickPaymentAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Add Payment',
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
                  CupertinoPageRoute(builder: (ctx) => const QuickPayment()));
            },
          ),
        ),
        body:Container(
          child: Column(
            children: [],
          ),
        )
    );
  }
}
