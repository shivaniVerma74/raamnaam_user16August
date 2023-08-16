


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:raamnaam/Utils/colors.dart';
import 'package:raamnaam/View/AuthView/forget_password.dart';
import 'package:raamnaam/View/AuthView/signup.dart';
import 'package:raamnaam/View/AuthView/verify_otp.dart';

import '../homeScreen.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController mobileController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final codeController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  int _value = 1;
  bool isMobile = false;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return
      WillPopScope(
          onWillPop: () async {
            SystemNavigator.pop();
            return true;
          },
          child:
          SafeArea(
            top: true,
            bottom: false,
            child: Form(
              key: _formkey,
              child: Scaffold(
                backgroundColor:CustomColors.primaryColor,
                resizeToAvoidBottomInset: true,
                body: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // SizedBox(height: 20,),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        // height: MediaQuery.of(context).size.height,
                        child: Image.asset(
                          'assets/logo/login logo.png',
                          // 'assets/images/login_logo.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            const Text(
                              "Login",
                              style: TextStyle(
                                fontSize: 33,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Radio(
                                  value: 1,
                                  fillColor: MaterialStateColor.resolveWith(
                                          (states) => Colors.white),
                                  activeColor:  Colors.white,
                                  groupValue: _value,
                                  onChanged: (int? value) {
                                    setState(() {
                                      _value = value!;
                                      isMobile = false;
                                    });
                                  },
                                ),
                                const Text(
                                  "Email",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                Radio(
                                    value: 2,
                                    fillColor: MaterialStateColor.resolveWith((states) =>CustomColors.whiteColor),
                                    groupValue: _value,
                                    onChanged: (int? value) {
                                      setState(() {
                                        _value = value!;
                                        isMobile = true;
                                      });
                                    }),
                                // SizedBox(width: 10.0,),
                                const Text(
                                  "Mobile No.",
                                  style: TextStyle(
                                      color: CustomColors.whiteColor,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                            isMobile == false
                                ? Padding(
                              padding: const EdgeInsets.only(
                                  top: 20.0, bottom: 20, left: 20, right: 20),
                              child: Form(
                                key: _formKey,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                          color: Colors.white,
                                        //Theme.of(context).colorScheme.gray,
                                      ),
                                      child: Center(
                                        child: TextFormField(
                                          controller: emailController,
                                           //validator: FormValidation.emailVeledetion,
                                          validator: (msg) {
                                            if (msg!.isEmpty) {
                                              return "Please Enter Valid Email id!";
                                            }
                                          },
                                          keyboardType:
                                          TextInputType.emailAddress,
                                          // maxLength: 10,
                                          decoration: const InputDecoration(
                                            border: InputBorder.none,
                                            counterText: "",
                                            contentPadding: EdgeInsets.only(
                                                left: 15, top: 15),
                                            hintText: "Enter Email",hintStyle: TextStyle(color: CustomColors.blackTemp),
                                            // labelText: "Enter Email id",
                                            prefixIcon: Icon(
                                              Icons.email,
                                              color:CustomColors.secondaryColor,
                                              size: 24,
                                            ),
                                            // border: OutlineInputBorder(
                                            //   borderRadius: BorderRadius.circular(10),
                                            // ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      height: 60,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                        color:CustomColors.whiteColor,
                                      ),
                                      child: Center(
                                        child: TextFormField(
                                          controller: passwordController,
                                          obscureText:  true,
                                          keyboardType: TextInputType.text,
                                          validator: (msg) {
                                            if (msg!.isEmpty) {
                                              return "Please Enter Valid Password!";
                                            }
                                          },
                                          decoration: const InputDecoration(
                                            border: InputBorder.none,
                                            counterText: "",
                                            contentPadding: EdgeInsets.only(
                                                left: 15, top: 15),
                                            hintText: "Password",hintStyle: TextStyle(color: CustomColors.blackTemp),
                                            // labelText: "Pass",
                                            prefixIcon: Icon(Icons.lock,color:CustomColors.secondaryColor),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8.0),
                                      child: InkWell(
                                        onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPassword()));
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.end,
                                          children: const [
                                            Text(
                                              "Forgot Password?",
                                              style: TextStyle(
                                                  color: CustomColors.whiteColor,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 50.0,
                                    ),
                                    InkWell(
                                      onTap: (){
                                        if (_formKey.currentState!.validate()) {
                                          if(emailController.text.isEmpty ||passwordController.text.isEmpty){
                                            Fluttertoast.showToast(msg: 'Enter Email and Password');
                                          }else{
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => homeScreen()));
                                          }
                                        } else {
                                          Fluttertoast.showToast(msg: "Please fill all fields");
                                        }
                                      },
                                      child: Container(
                                          height: 43,
                                          width: MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color:CustomColors.secondaryColor),
                                          child:
                                          // isLoading ?
                                          // loadingWidget():
                                          const Center(
                                              child: Text("Sign In", style: TextStyle(fontSize: 18, color:Colors.black))
                                          ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ): SizedBox.shrink(),
                            isMobile == true
                                ? Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              child: Container(
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                  //Theme.of(context).colorScheme.gray,
                                ),
                                child: Center(
                                  child: TextFormField(
                                    controller: mobileController,
                                    keyboardType: TextInputType.number,
                                    validator: (msg) {
                                      if (msg!.isEmpty) {
                                        return "Please Enter Mobile No.";
                                      }
                                    },
                                    maxLength: 10,
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      counterText: "",
                                      contentPadding:
                                      EdgeInsets.only(left: 15, top: 15),
                                      hintText: "Mobile Number",hintStyle: TextStyle(color: CustomColors.blackTemp),
                                      prefixIcon: Icon(
                                        Icons.call,
                                        color:Colors.black,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ): SizedBox.shrink(),
                                 isMobile == true
                                ? Padding(
                                padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
                                child:
                                InkWell(
                                  onTap: (){
                                     if(mobileController.text.isNotEmpty){
                                       Navigator.push(context, MaterialPageRoute(builder: (context)=> VerifyOtp()));
                                     }else{
                                       Fluttertoast.showToast(msg: 'Please enter Valid mobile no.');
                                     }
                                  },
                                  child: Container(
                                      height: 43,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),  color:CustomColors.secondaryColor),
                                      child:
                                      Center(child: Text("Send OTP", style: TextStyle(fontSize: 18, color:Colors.black)))
                                  ),
                                ),
                            ): SizedBox.shrink(),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Don't have an account?",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      color: CustomColors.whiteColor,
                                      fontSize: 16),
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                GestureDetector(
                                  //   onTap: (){},
                                  child: const Text(
                                    "Sign Up",
                                    style: TextStyle(
                                        color: CustomColors.whiteColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        decoration: TextDecoration.underline),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => SignUp()
                                        //     VendorRegisteration(
                                        //   role: "0",
                                        // ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
      );
  }
}
