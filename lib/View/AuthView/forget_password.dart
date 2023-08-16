import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:raamnaam/View/AuthView/login.dart';

import '../../Utils/colors.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:CustomColors.lightSky,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40,),
            Container(
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height,
              child: Image.asset(
                'assets/logo/logo.png',height: 120,width: 100,
                // 'assets/images/login_logo.png',
                //fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 20,),
            const Text(
              "Forget Password",
              style: TextStyle(
                fontSize: 33,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.only(right:210.0),
              child: Text('Old password',style: TextStyle(color:CustomColors.blackTemp,fontWeight: FontWeight.w500),),
            ),
            const SizedBox(height: 10,),
            Container(
                height: 50,
                width: MediaQuery.of(context).size.width/1.2,
                decoration: BoxDecoration(
                    color: CustomColors.whiteColor,
                    borderRadius:BorderRadius.circular(5) ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.person,color:CustomColors.secondaryColor,),
                    hintText: 'Enter password',hintStyle: TextStyle(color: CustomColors.blackTemp)
                  ),
                )
            ),
            const SizedBox(height: 10,),
            const Padding(
              padding: EdgeInsets.only(right:210.0),
              child: Text('New Password',style: TextStyle(color:CustomColors.blackTemp,fontWeight: FontWeight.w500),),
            ),
            const SizedBox(height: 10,),
            Container(
                height: 50,
                width: MediaQuery.of(context).size.width/1.2,
                decoration: BoxDecoration(
                    color:CustomColors.whiteColor,
                    borderRadius:BorderRadius.circular(5) ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.email,color:CustomColors.secondaryColor,),
                    hintText: 'Enter new password',hintStyle: TextStyle(color: CustomColors.blackTemp)
                  ),
                )
            ),
            const SizedBox(height: 10,),
            const Padding(
              padding: EdgeInsets.only(right:210.0),
              child: Text('Verify password',style: TextStyle(color:CustomColors.blackTemp,fontWeight: FontWeight.w500),),
            ),
            const SizedBox(height: 10,),
            Container(
                height: 50,
                width: MediaQuery.of(context).size.width/1.2,
                decoration: BoxDecoration(
                    color:CustomColors.whiteColor,
                    borderRadius:BorderRadius.circular(5) ),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  maxLength: 10,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.phone,color:CustomColors.secondaryColor,),
                    counterText: '',
                    hintText: 'Re-Enter password',hintStyle: TextStyle(color: CustomColors.blackTemp)
                  ),
                )
            ),
            const SizedBox(height:40,),

            GestureDetector(
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Login()));
              },
              child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width/2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:CustomColors.secondaryColor,
                  ),
                  child:const Center(
                    child: Text("Change Password",style: TextStyle(
                        color:CustomColors.whiteColor
                    )
                    ),
                  )
              ),
            ),

          ],
        ),
      ),
    );
  }
}
