
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:raamnaam/Utils/colors.dart';
import 'package:raamnaam/View/homeScreen.dart';


class VerifyOtp extends StatefulWidget {
  String? otp;
  String? mobile;
  VerifyOtp({this.otp, this.mobile});

  // final otp, email;
  //  final bool signUp;
  //  VerifyOtp({Key? key, this.otp, this.email, required this.signUp}) : super(key: key);

  @override
  State<VerifyOtp> createState() => _VerifyOtpState();
}

class _VerifyOtpState extends State<VerifyOtp> {
  var apiOtp;
  var inputOtp;
  // ProgressDialog? pr;

  final pinController = TextEditingController();
  final focusNode = FocusNode();


  bool isLoading = false;
  final _formKey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {


    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor:CustomColors.primaryColor,
        leading:   InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: const Padding(
              padding: EdgeInsets.only(left: 25, top: 5),
              child: Icon(Icons.arrow_back_ios,color:Colors.white),
            )),
        title: Text("Verification", style: TextStyle(fontSize: 20,color: CustomColors.whiteColor),),
        centerTitle: true,
      ),

      backgroundColor:CustomColors.primaryColor,
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(height: 50,),
            const Text(
              "Code has sent to",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 20),
            ),
            const SizedBox(height: 9,),
            Text(
              "+91${widget.mobile}",
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 18),
            ),

            SizedBox(height: 10,),
            Text(
              "${widget.otp.toString()}",

              style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                color: Colors.white,
              ),),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20),
              child: OTPTextField(
                length:4,
                width: MediaQuery.of(context).size.width,
                fieldWidth: 60,
                style: const TextStyle(
                    fontSize: 17
                ),
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.box,
                onCompleted: (pin) {
                  print("Completed: " + pin);
                },
              ),
            ),

            SizedBox(
              height: height * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Haven't received the verification code? ",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                  // textAlign: TextAlign.center,
                ),
                // Text("${widget.otp}")
                TextButton(
                  onPressed: (){
                    // loginWithOtp();
                  },
                  child: const Text(
                    "Resend",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50,),
            Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child:
                InkWell(
                    onTap: (){

                      if (_formKey.currentState!.validate()) {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>homeScreen()));
                      } else {
                        // setState((){
                        //   isLoading =false;
                        // });
                       // Fluttertoast.showToast(msg: "Pls Enter Otp!");
                      }
                    },
                  child: Container(
                      height: 43,
                      width:  MediaQuery.of(context).size.width/1.2,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color:CustomColors.secondaryColor),
                      child:
                      // isLoading ?
                      //                       // loadingWidget()
                      //                       //     :
                      const Center(child: Text("Verify Authentication Code", style: TextStyle(fontSize: 18, color:Colors.black))
                  ),
                )
            ), ),
          ],
        ),
      ),
    );
  }
}



