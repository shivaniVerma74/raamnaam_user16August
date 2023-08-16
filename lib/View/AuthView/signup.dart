import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../Utils/colors.dart';
import 'login.dart';



class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController mobileController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController refController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  // final mobileController = TextEditingController();
  final codeController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  String? password, email, userid, message, userTocken, responseCode;
  // late int? otp;


  int _value = 1;
  bool isMobile = false;
  bool isSendOtp = false;
  num? otp;
  bool isLoading = false;

 Future<void> registerUser() async{

 }

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
            child: Scaffold(
              backgroundColor:CustomColors.primaryColor,
              resizeToAvoidBottomInset: true,
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 10,),
                    // Container(
                    //   width: MediaQuery.of(context).size.width,
                    //   // height: MediaQuery.of(context).size.height,
                    //   child: Image.asset(
                    //     'assets/logo/app icon.png',height: 150,width: 150,
                    //     // 'assets/images/login_logo.png',
                    //
                    //   ),
                    // ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(20),
                            child: const Text(
                              "Please provide your basic information in order to book and avail services",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, bottom: 0, left: 20, right: 20),
                            child: Form(
                              key: _formKey,
                              child: Column(
                                children: [
                                  Container(
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color:CustomColors.whiteColor,
                                      //Theme.of(context).colorScheme.gray,
                                    ),
                                    child: Center(
                                      child: TextFormField(
                                        controller: nameController,
                                        validator: (msg) {
                                          if (msg!.isEmpty) {
                                            return "Please Enter your name!";
                                          }
                                        },
                                        // validator: FormValidation.emailVeledetion,
                                        keyboardType:
                                        TextInputType.text,
                                        // maxLength: 10,
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          counterText: "",
                                          contentPadding: EdgeInsets.only(
                                              left: 15, top: 15),
                                          hintText: "Enter Name",hintStyle: TextStyle(color:CustomColors.blackTemp),
                                          // labelText: "Enter Email id",
                                          prefixIcon: Icon(
                                            Icons.person,
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
                                      //Theme.of(context).colorScheme.gray,
                                    ),
                                    child: Center(
                                      child: TextFormField(
                                        controller: emailController,
                                        validator: (msg) {
                                          if (msg!.isEmpty) {
                                            return "Please Enter Email id!";
                                          }
                                        },
                                        // validator: FormValidation.emailVeledetion,
                                        keyboardType:
                                        TextInputType.emailAddress,
                                        // maxLength: 10,
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          counterText: "",
                                          contentPadding: EdgeInsets.only(
                                              left: 15, top: 15),
                                          hintText: "Enter Email",hintStyle: TextStyle(color:CustomColors.blackTemp),
                                          // labelText: "Enter Email id",
                                          prefixIcon: Icon(
                                            Icons.email,
                                            color: CustomColors.secondaryColor,
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
                                    height: 20.0,
                                  ),
                                  Container(
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color:CustomColors.whiteColor,
                                      //Theme.of(context).colorScheme.gray,
                                    ),
                                    child: Center(
                                      child: TextFormField(
                                        controller: mobileController,
                                        validator: (msg) {
                                          if (msg!.isEmpty) {
                                            return "Please Enter Mobile no.!";
                                          }
                                        },
                                        // validator: FormValidation.emailVeledetion,
                                        keyboardType:
                                        TextInputType.number,
                                        maxLength: 10,
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          counterText: "",
                                          contentPadding: EdgeInsets.only(
                                              left: 15, top: 15),
                                          hintText: "Mobile",hintStyle: TextStyle(color:CustomColors.blackTemp),
                                          // labelText: "Enter Email id",
                                          prefixIcon: Icon(
                                            Icons.phone,
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
                                    height: 20.0,
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
                                        // maxLength: 10,
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          counterText: "",
                                          contentPadding: EdgeInsets.only(
                                              left: 15, top: 15),
                                          hintText: "Password",hintStyle: TextStyle(color:CustomColors.blackTemp),
                                          // labelText: "Pass",
                                           prefixIcon: Icon(Icons.lock,color: CustomColors.secondaryColor,),
                                          // border: OutlineInputBorder(
                                          //   borderRadius: BorderRadius.circular(10),
                                          // ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  Container(
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color:CustomColors.whiteColor,
                                    ),
                                    child: Center(
                                      child: TextFormField(
                                        controller: confirmController,
                                        obscureText:  true ,
                                        keyboardType: TextInputType.text,
                                        validator: (msg) {
                                          if (msg!.isEmpty) {
                                            return "Please Enter Valid Password!";
                                          }
                                        },
                                        // maxLength: 10,
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          counterText: "",
                                          contentPadding: EdgeInsets.only(
                                              left: 15, top: 15),
                                          hintText: "Confirm Password",hintStyle: TextStyle(color:CustomColors.blackTemp),
                                          // labelText: "Pass",
                                           prefixIcon: Icon(Icons.lock,color: CustomColors.secondaryColor,),
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
                                      //Theme.of(context).colorScheme.gray,
                                    ),
                                    child: Center(
                                      child: TextFormField(
                                        controller: refController,
                                        keyboardType:
                                        TextInputType.text,
                                        // maxLength: 10,
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          counterText: "",
                                          contentPadding: EdgeInsets.only(
                                              left: 15, top: 15),
                                          hintText: "Enter Referral Code (Optional)",hintStyle: TextStyle(color:CustomColors.blackTemp),
                                          // labelText: "Enter Email id",
                                          prefixIcon: Icon(
                                            Icons.cached_outlined,
                                            color: CustomColors.secondaryColor,
                                            size: 24,
                                          ),
                                          // border: OutlineInputBorder(
                                          //   borderRadius: BorderRadius.circular(10),
                                          // ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(
                                  top: 50, left: 20, right: 20),
                              child:
                              InkWell(
                                onTap: (){
                                  setState((){
                                    isLoading = true;
                                  });
                                  if(_formKey.currentState!.validate()){
                                    // sendOtp();
                                    // registerUser();
                                  }else{
                                    setState((){
                                      isLoading = false;
                                    });
                                    // Fluttertoast.showToast(msg: "All Fields Are Required!");
                                  }
                                },
                                child: Container(
                                    height: 43,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color:CustomColors.secondaryColor),
                                    child:
                                    // isLoading ?
                                    // loadingWidget():
                                    const Center(child: Text("Sign Up", style: TextStyle(fontSize: 18, color: Colors.black)))
                                ),
                              ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Allready have an account?",
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    color:CustomColors.whiteColor,
                                    fontSize: 16),
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              GestureDetector(
                                //   onTap: (){},
                                child: const Text(
                                  "Log In",
                                  style: TextStyle(
                                      color:CustomColors.whiteColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      decoration: TextDecoration.underline),
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Login()
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
                    ),
                    SizedBox(height: 30,)
                  ],
                ),
              ),
            ),
          )
      );
  }
}
