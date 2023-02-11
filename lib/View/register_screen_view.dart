import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:truemoneyversion2/View/sign_in_screen_view.dart';
import 'package:lottie/lottie.dart';
import'package:file_picker/file_picker.dart';
import 'package:truemoneyversion2/View/verify_code_screen.dart';
class RegisterString extends StatefulWidget {
  const RegisterString({Key? key}) : super(key: key);

  @override
  State<RegisterString> createState() => _RegisterStringState();
}

class _RegisterStringState extends State<RegisterString> {
  List list_item=[
    'Bank','Worker'
  ];
  String select_value='Bank';

  my_form_state(){
    select_value=list_item[0];
  }
  PlatformFile? pickedfile;
  FilePickerResult? result;
  String? file_name;
  bool is_loading=false;


  void picked_file() async{
    try{
      setState(() {
        is_loading=true;
      });
      result=await FilePicker.platform.pickFiles(
        type: FileType.any,
        allowMultiple: false
      );
      if (result!=null){
        file_name=result!.files.first.name;
        pickedfile=result!.files.first;
      }
      setState(() {
        is_loading=false;
      });
    }catch(e){
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Register information')),
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pushReplacement(
                CupertinoPageRoute(builder: (ctx) => const SignInScreen()));
          },
          child: Icon(Icons.arrow_circle_left_outlined),
        ),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    width: 200,
                    height: 200,
                    child: Lottie.network(
                        'https://assets6.lottiefiles.com/packages/lf20_wzAk0pBKAp.json')),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Full name',
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                DropdownButtonFormField(
                  onChanged:(new_value){
                  setState(() {
                    select_value=new_value as String;
                  });},
                  items: list_item.map((value_item){
                    return DropdownMenuItem(child: Text(value_item),value: value_item,);
                  }).toList(),
                  decoration: InputDecoration(
                    labelText: 'Job Selection'
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Phone Number',
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Date of birth',
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Secret Key',
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'National ID card'
                ),
                SizedBox(
                  height: 16,
                ),
                InkWell(
                  onTap: (){
                    picked_file();
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    width: 250,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border:Border.all(width: 2)
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            border:Border.all(width: 1)
                          ),
                        ),
                        SizedBox(width: 20,),
                        Column(
                          children: [
                            Text('-------------------------------'),
                            Text('-------------------------------'),
                            Text('-------------------------------'),
                            Text('-------------------------------'),
                            Text('-------------------------------'),

                          ],
                        )
                      ],
                    )
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                    'Tap on this "Register" button to register new account for your starting your money transfer process.'),
                SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  child: Text("Confirm Register",
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightBlue,
                    elevation: 0,
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(CupertinoPageRoute(
                        builder: (ctx) => const VerifyCode()));
                  },
                ),
              ],
            )),
      ),
    );
  }
}
