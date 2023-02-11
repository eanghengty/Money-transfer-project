import'package:flutter/material.dart';
import'package:flutter/cupertino.dart';
import 'package:truemoneyversion2/View/quick_payment_add.dart';
import 'package:truemoneyversion2/View/quick_transfer.dart';
class QuickTransferAdd extends StatefulWidget {
  const QuickTransferAdd({Key? key}) : super(key: key);

  @override
  State<QuickTransferAdd> createState() => _QuickTransferAddState();
}

class _QuickTransferAddState extends State<QuickTransferAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Add Transfer',
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
                  CupertinoPageRoute(builder: (ctx) => const QuickTransfer()));
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
