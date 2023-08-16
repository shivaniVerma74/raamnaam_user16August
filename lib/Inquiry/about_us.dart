import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Utils/colors.dart';

class aboutUs extends StatefulWidget {
  const aboutUs({Key? key}) : super(key: key);

  @override
  State<aboutUs> createState() => _aboutUsState();
}

class _aboutUsState extends State<aboutUs> {
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
              child: Center(child: Text('About us',style: TextStyle(color: CustomColors.blackTemp,fontSize: 30),)),
            ),
            SizedBox(height: 20,),
            Image.asset('assets/images/shreeRaam.jpg'),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('WE DO IT ALL',style: TextStyle(color:CustomColors.secondaryColor,fontSize: 20,fontWeight: FontWeight.w500)),
                  Text('As All Of Us Know That It Is Not Easy To Find Regional '
                      'Pandits For Puja & Religious Functions In Today''s' 'Fast Life',
                    style:TextStyle(color:CustomColors.primaryColor,fontSize:25,fontWeight: FontWeight.w500) ,),
                  SizedBox(height: 20,),
                  Text('Vision',style: TextStyle(color:CustomColors.blackTemp,fontSize: 20,fontWeight: FontWeight.w500)),
                  SizedBox(height: 20,),
                  Text('Our vision is to create auspiciousness and divine value to Indian communities '
                      'living worldwide whilst becoming the top religious service provider to Hindus by '
                      'offering and streamlining associated services and provide single stop solution and '
                      'experience with no hassles in ordering the religious services from residences, '
                      'corporate offices, & factories whilst spreading Hindu Dharma, God’s Divinity,'
                      ' & Love to everyone.',
                      style: TextStyle(color:CustomColors.grayColor,fontSize:15,)),
                  SizedBox(height: 20,),
                  Text('Our Mission',style: TextStyle(color:CustomColors.blackTemp,fontSize: 20,fontWeight: FontWeight.w500)),
                  SizedBox(height: 20,),
                  Text('Our mission is to serve Hindus worldwide to perform religious rituals for all '
                      'occasions using our single automated ordering web and mobile applications and book'
                      ' qualified Pundits, Gift a service and auspicious silver items to friends, & family'
                      ' members living in India, choose Caterers and order your favorite menu, get necessary'
                      'Grocery items for cooking, book Photographers to capture the moments, Send your clicked '
                      'photos in the mobile to Photo studios for printing your memories in a photo album of your '
                      'choice, and book Shamiana / Tent house services including chairs, tables, utensils '
                      'to achieve the festive look, & purchase gandhige samagri needed to perform religious '
                      'services and get everything delivered to your doorstep.',
                      style: TextStyle(color:CustomColors.grayColor,fontSize:15)),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.medical_services_rounded,color: CustomColors.secondaryColor,size: 30,),
                    SizedBox(width: 10,),
                    Column(
                      children: const [
                        Text('We are trusted',style: TextStyle(color: CustomColors.blackTemp,fontWeight: FontWeight.w500,fontSize:15),),
                        Text('Over five years',style: TextStyle(color: CustomColors.blackTemp,fontSize:15)),
                      ],
                    )
                  ],
                ),
                SizedBox(width:40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.thumb_up,color: CustomColors.secondaryColor,size: 30,),
                    SizedBox(width: 10,),
                    Column(
                      children: const [
                        Text('Good Support ',style: TextStyle(color: CustomColors.blackTemp,fontWeight: FontWeight.w500,fontSize:15),),
                        Text('Anytime 24 Hours',style: TextStyle(color: CustomColors.blackTemp,fontSize:15)),
                      ],
                    )
                  ],
                ),
              ],
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
