import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              SizedBox(
                height: Get.height * 0.09,
              ),
              Row(
                children: [
                  SizedBox(
                    width: Get.width * 0.06,
                  ),
                  Image.asset('assets/images/appName.png'),
                ],
              ),
              SizedBox(
                height: Get.height * 0.1,
              ),
              Container(
                width: 300,
                  height: 300,
                  child: OtpField()),
            ],
        ),
      ),
    );
  }
}

class OtpField extends StatefulWidget {
  const OtpField({Key? key}) : super(key: key);

  @override
  _OtpFieldState createState() => _OtpFieldState();
}

class _OtpFieldState extends State<OtpField> {
  // 4 text editing controllers that associate with the 4 input fields
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();

  String? _otp;
  String phoneNumber = "+91******4554";
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: Get.height * 0.06,
              width: Get.width * 0.5,
              child: Text('Please type the verification code sent to ${phoneNumber}', textAlign: TextAlign.center, style: TextStyle(color: Colors.black38, fontSize: 15),)
          ),
          const SizedBox(
            height: 30,
          ),
          // Implement 4 input fields
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OtpInput(_fieldOne, true),
              OtpInput(_fieldTwo, false),
              OtpInput(_fieldThree, false),
              OtpInput(_fieldFour, false)
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          // ElevatedButton(
          //     onPressed: () {
          //       setState(() {
          //         _otp = _fieldOne.text +
          //             _fieldTwo.text +
          //             _fieldThree.text +
          //             _fieldFour.text;
          //       });
          //     },
          //     child: const Text('Submit')),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Did not receive thecode?',style: TextStyle(color:  Colors.black38),),
              SizedBox(width: Get.width * 0.03,),
              TextButton(
                  onPressed: (){},
                  child: Text('Resend')),
            ],
          ),
          TextButton(onPressed: (){}, child: Text('Edit Number'))
        ],
      );

  }
}

// Create an input widget that takes only one digit
class OtpInput extends StatelessWidget {
  final TextEditingController controller;
  final bool autoFocus;
  const OtpInput(this.controller, this.autoFocus, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 50,
      child: TextField(
        autofocus: autoFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        maxLength: 1,
        cursorColor: Theme.of(context).primaryColor,
        decoration: const InputDecoration(
            border: OutlineInputBorder(),
            counterText: '',
            hintStyle: TextStyle(color: Colors.black, fontSize: 25.0)),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
