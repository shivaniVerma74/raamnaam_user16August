import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Utils/colors.dart';

class contactUs extends StatefulWidget {
  const contactUs({Key? key}) : super(key: key);

  @override
  State<contactUs> createState() => _contactUsState();
}

class _contactUsState extends State<contactUs> {
  @override
  Widget build(BuildContext context) {
    final widthSize =MediaQuery.of(context).size.width;
    final heightSize = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.primaryColor,
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child:Icon(Icons.arrow_back,color: CustomColors.whiteColor,)),
        title: Row(
            children:const <Widget>[
              Icon(Icons.location_on_outlined,color: CustomColors.whiteColor,),
              Text('Indore,Vijay Nagar Indore',overflow: TextOverflow.ellipsis,)
            ]),
      ),
      body: SingleChildScrollView(
        child: Column(
          children:<Widget>[
            SizedBox(height: 40,),
            Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right:40.0,bottom: 5),
                      child: Image.asset('assets/logo/logo.png',height: 90,width: 100,),
                    ),
                    SizedBox(width: 60,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Icon(Icons.shopping_cart,color:CustomColors.secondaryColor,size:30,),
                        SizedBox(width: 10,),
                        Text('Cart',style: TextStyle(color:CustomColors.secondaryColor,fontSize:15),)
                      ],
                    ),
                    SizedBox(width: 30,),
                    Padding(
                      padding: const EdgeInsets.only(right:35.0,bottom: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Icon(Icons.shopping_cart_checkout_rounded,color:CustomColors.secondaryColor,size:30,),
                          SizedBox(width: 10,),
                          Text('Service',style: TextStyle(color:CustomColors.secondaryColor,fontSize:15),)
                        ],
                      ),
                    )
                  ],
                ),
                Positioned(
                  top:6,
                  left:230,
                  child: Container(
                    height:25,
                    width: 25,
                    decoration:BoxDecoration(
                        color:CustomColors.primaryColor,
                        borderRadius: BorderRadius.circular(40)),
                    child: Center(child: Text('0',style: TextStyle(color: CustomColors.whiteColor),)),
                  ),
                ),
                Positioned(
                  top:6,
                  left:300,
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration:BoxDecoration(
                        color:CustomColors.primaryColor,
                        borderRadius: BorderRadius.circular(40)),
                    child: Center(child: Text('0',style: TextStyle(color: CustomColors.whiteColor),)),
                  ),
                ),
              ],
            ),
            SizedBox(height:20,),
            SizedBox(
              width: widthSize/1.1,
              height: 47,
              child: TextFormField(
                decoration: InputDecoration(
                    border:OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                    hintText:'What are you looking for?',
                    suffixIcon: Container(
                        height: 45,
                        width: 80,
                        decoration: BoxDecoration(
                            color: CustomColors.primaryColor,
                            borderRadius: BorderRadius.circular(5)),
                        child: Icon(Icons.search,color: CustomColors.whiteColor,size:40,))
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(height: 80,
              width: widthSize/1,
              color:CustomColors.lightSky,
              child: Center(child: Text('Contact us',style: TextStyle(color: CustomColors.blackTemp,fontSize: 30),)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Icon(Icons.email,color: CustomColors.secondaryColor,size:40,),
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('Email Address',style: TextStyle(fontSize: 20,),),
                  Text('ajay@raamnaam.com',style: TextStyle(fontSize:15,color: CustomColors.grayColor),)
                ],)
              ],),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Icon(Icons.location_on_outlined,color: CustomColors.secondaryColor,size:40,),
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Our Location',style: TextStyle(fontSize: 20,),),
                    Text('Vijay Nagar Indore',style: TextStyle(fontSize:15,color: CustomColors.grayColor),)
                  ],)
              ],),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Icon(Icons.phone,color: CustomColors.secondaryColor,size:40,),
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Contact No.',style: TextStyle(fontSize: 20,),),
                    Text('9090909090',style: TextStyle(fontSize:15,color: CustomColors.grayColor),)
                  ],)
              ],),
            ),
            SizedBox(height: 20,),
            Container(
              height: heightSize/1.1,
              width: widthSize/1.05,
              color:CustomColors.lightgray,
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(right:230.0),
                    child: Text('Name',style: TextStyle(color: CustomColors.blackTemp,fontSize: 20),),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 60,
                    width:widthSize/1.2,
                    color: CustomColors.whiteColor,
                    child: TextFormField(decoration: InputDecoration(
                      hintText: 'Enter Email',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                    )),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right:230.0),
                    child: Text('Email',style: TextStyle(color: CustomColors.blackTemp,fontSize: 20),),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 60,
                    width:widthSize/1.2,
                    color: CustomColors.whiteColor,
                    child: TextFormField(decoration: InputDecoration(
                      hintText: 'Enter Email',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                    )),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right:210.0),
                    child: Text('Subject',style: TextStyle(color: CustomColors.blackTemp,fontSize: 20),),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 60,
                    width:widthSize/1.2,
                    color: CustomColors.whiteColor,
                    child: TextFormField(decoration: InputDecoration(
                      hintText: 'Enter Subject',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                    )),
                  ),
                  SizedBox(height: 10,),
                  const Padding(
                    padding: EdgeInsets.only(right:190.0),
                    child: Text('Messages',style: TextStyle(color: CustomColors.blackTemp,fontSize: 20),),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 90,
                    width:widthSize/1.2,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color:Colors.grey)
                    ),
                    child: TextFormField(decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10,top: 30),
                      border: InputBorder.none,
                      hintText: 'Enter Message',
                    )),
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(onPressed:(){

                  },
                      style: ElevatedButton.styleFrom(backgroundColor:CustomColors.primaryColor,
                          maximumSize:Size(120,45) ),
                      child:Center(child: Text('Submit',style: TextStyle(fontSize:15),))),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height:heightSize/0.8,
              width:widthSize/1 ,
              color: CustomColors.lightSky,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/logo/logo.png',height: 120,width: 100,),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:10.0,right: 10),
                    child: Text('Ramnaam is an e-nest offering you a pool of handpicked professional'
                        ' Ramnaam anywhere in the world! Finding local services just got easier,'
                        ' be it a photographer or a live band, at Ramnaam you can hire professionals '
                        'that are reliable no matter what your location is. '
                        'Take memories back with you when you travel with quality local services at Ramnaam!',
                      style: TextStyle(fontSize: 20,),
                    ),
                  ),
                  SizedBox(height: 20,),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text('Categories',style: TextStyle(
                        color:CustomColors.secondaryColor,fontWeight: FontWeight.w500,fontSize:30),),
                  ),
                  Row(children: [
                    Icon(Icons.arrow_forward_ios,color: CustomColors.secondaryColor,),
                    TextButton(onPressed:(){},
                        child:Text('Pandit Ji',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: CustomColors.blackTemp),))
                  ],),
                  Row(children: [
                    Icon(Icons.arrow_forward_ios,color: CustomColors.secondaryColor,),
                    TextButton(onPressed:(){},
                        child:Text('Photographer',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: CustomColors.blackTemp),))
                  ],),
                  Row(children: [
                    Icon(Icons.arrow_forward_ios,color: CustomColors.secondaryColor,),
                    TextButton(onPressed:(){},
                        child:Text('Tent House',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: CustomColors.blackTemp),))
                  ],),
                  Row(children: [
                    Icon(Icons.arrow_forward_ios,color: CustomColors.secondaryColor,),
                    TextButton(onPressed:(){},
                        child:Text('Caters',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: CustomColors.blackTemp),))
                  ],),
                  Row(children: [
                    Icon(Icons.arrow_forward_ios,color: CustomColors.secondaryColor,),
                    TextButton(onPressed:(){},
                        child:Text('Grocery',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: CustomColors.blackTemp),))
                  ],)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
