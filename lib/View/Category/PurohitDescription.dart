import 'package:flutter/material.dart';
import 'package:raamnaam/Utils/colors.dart';
class PurohitDescription extends StatefulWidget {
  const PurohitDescription({Key? key, this.image,this.price, this.product_name}) : super(key: key);
  final  String? image,price,product_name;

  @override
  State<PurohitDescription> createState() => _PurohitDescriptionState();
}

class _PurohitDescriptionState extends State<PurohitDescription> {
  bool service=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:CustomColors.primaryColor ,
        title:Text("Purohit Description"),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.all(15),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                       padding: EdgeInsets.all(20),

                        child: Image.asset(widget.image.toString(),
                          fit: BoxFit.contain,),
                      ),
                      Container(

                        alignment: Alignment.centerLeft,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox( height:10),
                            Container(
                              margin: EdgeInsets.only(left: 16),
                              alignment: Alignment.centerLeft,
                              child: Text(widget.product_name.toString(),
                                style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: CustomColors.primaryColor
                                ),),
                            ),
                            SizedBox( height:6),
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              alignment: Alignment.centerLeft,
                              child:Text("Service Range :- \u{20B9} ${widget.price.toString()}.00 - \u{20B9} ${int.parse(widget.price.toString())+500}.00/-",
                                style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  overflow: TextOverflow.ellipsis
                                ),),

                            ),
                            SizedBox( height:10),
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              alignment: Alignment.centerLeft,
                              child:Text("Key Insights: Performed for those who have Kala sarpa dosha. Untimely obstacles or hurdles are removed. Performed on Ashlesha nakshatra day. Deity Worshiped: Rahu and Ketu. The main ingredient is Uddina Bele (Black Gram) & Hurali Kalu (Horse Gram).",
                                style: TextStyle(
                                    fontSize: 13,
                                    overflow: TextOverflow.ellipsis
                                ),
                              maxLines: 3),

                            ),

                            SizedBox( height:10),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Center(
              // alignment: Alignment.centerLeft,
              // margin: EdgeInsets.only(left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // SizedBox( width:21),

                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        service=!service;
                      });

                    },

                    child: Container(
                      width: 110,
                      alignment: Alignment.center,
                      child: Text("Residence", style:TextStyle(fontSize: 14,
                          color: (!service)?CustomColors.primaryColor:CustomColors.whiteColor)),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: (service)?CustomColors.primaryColor:CustomColors.whiteColor,
                      side: const BorderSide(
                        width: 0.5,
                        color:CustomColors.primaryColor,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(topLeft:Radius.circular(30),bottomLeft:Radius.circular(30)),
                      ),),
                  ),

                  SizedBox( width:6),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        service=!service;
                      });
                    },

                    child:  Container(
                      width: 110,
                      alignment: Alignment.center,
                      child: Text("Commercial", style:TextStyle(fontSize: 14,
                          color: (service)?CustomColors.primaryColor:CustomColors.whiteColor)),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor:(!service)?CustomColors.primaryColor:CustomColors.whiteColor ,
                        side: const BorderSide(
                          width: 0.5,
                          color:CustomColors.primaryColor,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(topRight:Radius.circular(30),bottomRight:Radius.circular(30))
                        )),
                  ),

                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(left: 40),
              alignment: Alignment.centerLeft,
              child: Text("Select your package",
                style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: CustomColors.primaryColor
                ),),
            ),
            (!service)?Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(

                            alignment: Alignment.centerLeft,
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox( height:10),
                                Container(
                                  margin: EdgeInsets.only(left: 16),
                                  alignment: Alignment.centerLeft,
                                  child: Text("Economy Plan : (${widget.product_name})",
                                    style: TextStyle(fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                    ),),
                                ),
                                SizedBox( height:6),
                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  alignment: Alignment.centerLeft,
                                  child:Row(
                                    children: [
                                      Text("\u2022", style: TextStyle(fontSize: 25),),
                                      SizedBox(width: 10,),
                                      Text("10 person",
                                        style: TextStyle(
                                            fontSize: 14,
                                            overflow: TextOverflow.ellipsis
                                        ),),
                                    ],
                                  ),

                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  alignment: Alignment.centerLeft,
                                  child:Row(
                                    children: [
                                      Text("\u2022", style: TextStyle(fontSize: 25),),
                                      SizedBox(width: 10,),
                                      Text("Without Pooja Samagri",
                                        style: TextStyle(
                                            fontSize: 14,
                                            overflow: TextOverflow.ellipsis
                                        ),),
                                    ],
                                  ),

                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  alignment: Alignment.centerLeft,
                                  child:Row(
                                    children: [
                                      Text("\u2022", style: TextStyle(fontSize: 25),),
                                      SizedBox(width: 10,),
                                      Text("Without Fruit And Flowers",
                                        style: TextStyle(
                                            fontSize: 14,
                                            overflow: TextOverflow.ellipsis
                                        ),),
                                    ],
                                  ),

                                ),
                                SizedBox( height:10),

                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  alignment: Alignment.centerLeft,
                                  child:Text("Note :Procedure involved: • Ganapathi pooja • Punyaha Vachanam & Sankalpam • Kalasa Pooja • Mantapa Aradhana • Ashlesha Bali • Homa • Asheervachana Note: Pooja Samagries like Arshina, Kum kum ,Coconuts, Mango leaves, Tulasi, Darba, Kalasha, Vastra, Navadhanya, Jackets, Beetle Leaves, Beetle Nuts, Homa Sticks, samidha, Dravyas, Ghee etc. will be brought by us. Yajamani have to keep house items like Gas stove, Vessels, Deepa, Mats, Bowls, Milk, Curd, Prasada, Plates, Photos etc you will be receiving detailed to do list after booking.",
                                      style: TextStyle(
                                          fontSize: 13,
                                          overflow: TextOverflow.ellipsis
                                      ),
                                      maxLines: 3),

                                ),
                                SizedBox( height:20),
                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  alignment: Alignment.center,
                                  child:Text("Rs 2500.00",
                                    style: TextStyle(fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                        overflow: TextOverflow.ellipsis
                                    ),),

                                ),

                                SizedBox( height:5),
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {

                                    });

                                  },

                                  child: Container(
                                    width: 110,
                                    alignment: Alignment.center,
                                    child: Text("Select", style:TextStyle(fontSize: 14,
                                        color: CustomColors.whiteColor),
                                  )),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: CustomColors.greenColor,
                                    side: const BorderSide(
                                      width: 0.5,
                                      color:CustomColors.greenColor,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(30),),
                                    ),),
                                ),


                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(

                            alignment: Alignment.centerLeft,
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox( height:10),
                                Container(
                                  margin: EdgeInsets.only(left: 16),
                                  alignment: Alignment.centerLeft,
                                  child: Text("Standard Plan : (${widget.product_name})",
                                    style: TextStyle(fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),),
                                ),
                                SizedBox( height:6),
                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  alignment: Alignment.centerLeft,
                                  child:Row(
                                    children: [
                                      Text("\u2022", style: TextStyle(fontSize: 25),),
                                      SizedBox(width: 10,),
                                      Text("18 person",
                                        style: TextStyle(
                                            fontSize: 14,
                                            overflow: TextOverflow.ellipsis
                                        ),),
                                    ],
                                  ),

                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  alignment: Alignment.centerLeft,
                                  child:Row(
                                    children: [
                                      Text("\u2022", style: TextStyle(fontSize: 25),),
                                      SizedBox(width: 10,),
                                      Text("Without Pooja Samagri",
                                        style: TextStyle(
                                            fontSize: 14,
                                            overflow: TextOverflow.ellipsis
                                        ),),
                                    ],
                                  ),

                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  alignment: Alignment.centerLeft,
                                  child:Row(
                                    children: [
                                      Text("\u2022", style: TextStyle(fontSize: 25),),
                                      SizedBox(width: 10,),
                                      Text("Without Fruit And Flowers",
                                        style: TextStyle(
                                            fontSize: 14,
                                            overflow: TextOverflow.ellipsis
                                        ),),
                                    ],
                                  ),

                                ),
                                SizedBox( height:10),

                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  alignment: Alignment.centerLeft,
                                  child:Text("Note:• Ganapathi pooja • Punyaha Vachanam & Sankalpam • Kalasha Pooja • Mantapa Aradhana • Ashlesha Bali • Sarpa Sukta Japam • Homa • Asheervachana Note: Pooja Samagries like Arshina, Kum kum ,Coconuts, Mango leaves, Tulasi, Darba, Kalasha, Vastra, Navadhanya, Jackets, Beetle Leaves, Beetle Nuts, Homa Sticks, samidha, Dravyas, Ghee etc. will be brought by us. Yajamani have to keep house items like Gas stove, Vessels, Deepa, Mats, Bowls, Milk, Curd, Prasada, Plates, Photos etc you will be receiving detailed to do list after booking.",
                                      style: TextStyle(
                                          fontSize: 13,
                                          overflow: TextOverflow.ellipsis
                                      ),
                                      maxLines: 3),

                                ),
                                SizedBox( height:20),
                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  alignment: Alignment.center,
                                  child:Text("Rs 3000.00",
                                    style: TextStyle(fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                        overflow: TextOverflow.ellipsis
                                    ),),

                                ),

                                SizedBox( height:5),
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {

                                    });

                                  },

                                  child: Container(
                                      width: 110,
                                      alignment: Alignment.center,
                                      child: Text("Select", style:TextStyle(fontSize: 14,
                                          color: CustomColors.whiteColor),
                                      )),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: CustomColors.greenColor,
                                    side: const BorderSide(
                                      width: 0.5,
                                      color:CustomColors.greenColor,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(30),),
                                    ),),
                                ),


                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(

                            alignment: Alignment.centerLeft,
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox( height:10),
                                Container(
                                  margin: EdgeInsets.only(left: 16),
                                  alignment: Alignment.centerLeft,
                                  child: Text("Premium Plan : (${widget.product_name})",
                                    style: TextStyle(fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),),
                                ),
                                SizedBox( height:6),
                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  alignment: Alignment.centerLeft,
                                  child:Row(
                                    children: [
                                      Text("\u2022", style: TextStyle(fontSize: 25),),
                                      SizedBox(width: 10,),
                                      Text("20 person",
                                        style: TextStyle(
                                            fontSize: 14,
                                            overflow: TextOverflow.ellipsis
                                        ),),
                                    ],
                                  ),

                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  alignment: Alignment.centerLeft,
                                  child:Row(
                                    children: [
                                      Text("\u2022", style: TextStyle(fontSize: 25),),
                                      SizedBox(width: 10,),
                                      Text("With Pooja Samagri",
                                        style: TextStyle(
                                            fontSize: 14,
                                            overflow: TextOverflow.ellipsis
                                        ),),
                                    ],
                                  ),

                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  alignment: Alignment.centerLeft,
                                  child:Row(
                                    children: [
                                      Text("\u2022", style: TextStyle(fontSize: 25),),
                                      SizedBox(width: 10,),
                                      Text("With Fruit And Flowers",
                                        style: TextStyle(
                                            fontSize: 14,
                                            overflow: TextOverflow.ellipsis
                                        ),),
                                    ],
                                  ),

                                ),
                                SizedBox( height:10),

                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  alignment: Alignment.centerLeft,
                                  child:Text("Note :Ganapathi pooja • Punyaha Vachanam & Sankalpam • Kalasha Pooja • Mantapa Aradhana • Ashlesha Bali • Sarpa Sukta Japam • Homa • Asheervachana Note: Pooja Samagries like Arshina, Kum kum ,Coconuts, Mango leaves, Tulasi, Darba, Kalasha, Vastra, Navadhanya, Jackets, Beetle Leaves, Beetle Nuts, Homa Sticks, samidha, Dravyas, Ghee etc. will be brought by us. Yajamani have to keep house items like Gas stove, Vessels, Deepa, Mats, Bowls, Milk, Curd, Prasada, Plates, Photos etc you will be receiving detailed to do list after booking.",
                                      style: TextStyle(
                                          fontSize: 13,
                                          overflow: TextOverflow.ellipsis
                                      ),
                                      maxLines: 3),

                                ),
                                SizedBox( height:20),
                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  alignment: Alignment.center,
                                  child:Text("Rs 4000.00",
                                    style: TextStyle(fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                        overflow: TextOverflow.ellipsis
                                    ),),

                                ),

                                SizedBox( height:5),
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {

                                    });

                                  },

                                  child: Container(
                                      width: 110,
                                      alignment: Alignment.center,
                                      child: Text("Select", style:TextStyle(fontSize: 14,
                                          color: CustomColors.whiteColor),
                                      )),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: CustomColors.greenColor,
                                    side: const BorderSide(
                                      width: 0.5,
                                      color:CustomColors.greenColor,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(30),),
                                    ),),
                                ),


                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ):Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(

                            alignment: Alignment.centerLeft,
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox( height:10),
                                Container(
                                  margin: EdgeInsets.only(left: 16),
                                  alignment: Alignment.centerLeft,
                                  child: Text("Economy Plan : (${widget.product_name})",
                                    style: TextStyle(fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),),
                                ),
                                SizedBox( height:6),
                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  alignment: Alignment.centerLeft,
                                  child:Row(
                                    children: [
                                      Text("\u2022", style: TextStyle(fontSize: 25),),
                                      SizedBox(width: 10,),
                                      Text("5 person",
                                        style: TextStyle(
                                            fontSize: 14,
                                            overflow: TextOverflow.ellipsis
                                        ),),
                                    ],
                                  ),

                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  alignment: Alignment.centerLeft,
                                  child:Row(
                                    children: [
                                      Text("\u2022", style: TextStyle(fontSize: 25),),
                                      SizedBox(width: 10,),
                                      Text("With Pooja Samagri",
                                        style: TextStyle(
                                            fontSize: 14,
                                            overflow: TextOverflow.ellipsis
                                        ),),
                                    ],
                                  ),

                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  alignment: Alignment.centerLeft,
                                  child:Row(
                                    children: [
                                      Text("\u2022", style: TextStyle(fontSize: 25),),
                                      SizedBox(width: 10,),
                                      Text("Without Fruit And Flowers",
                                        style: TextStyle(
                                            fontSize: 14,
                                            overflow: TextOverflow.ellipsis
                                        ),),
                                    ],
                                  ),

                                ),
                                SizedBox( height:10),

                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  alignment: Alignment.centerLeft,
                                  child:Text("Note :Procedure involved: • Ganapathi pooja • Punyaha Vachanam & Sankalpam • Kalasa Pooja • Mantapa Aradhana • Ashlesha Bali • Homa • Asheervachana Note: Pooja Samagries like Arshina, Kum kum ,Coconuts, Mango leaves, Tulasi, Darba, Kalasha, Vastra, Navadhanya, Jackets, Beetle Leaves, Beetle Nuts, Homa Sticks, samidha, Dravyas, Ghee etc. will be brought by us. Yajamani have to keep house items like Gas stove, Vessels, Deepa, Mats, Bowls, Milk, Curd, Prasada, Plates, Photos etc you will be receiving detailed to do list after booking.",
                                      style: TextStyle(
                                          fontSize: 13,
                                          overflow: TextOverflow.ellipsis
                                      ),
                                      maxLines: 3),

                                ),
                                SizedBox( height:20),
                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  alignment: Alignment.center,
                                  child:Text("Rs 1500.00",
                                    style: TextStyle(fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                        overflow: TextOverflow.ellipsis
                                    ),),

                                ),

                                SizedBox( height:5),
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {

                                    });

                                  },

                                  child: Container(
                                      width: 110,
                                      alignment: Alignment.center,
                                      child: Text("Select", style:TextStyle(fontSize: 14,
                                          color: CustomColors.whiteColor),
                                      )),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: CustomColors.greenColor,
                                    side: const BorderSide(
                                      width: 0.5,
                                      color:CustomColors.greenColor,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(30),),
                                    ),),
                                ),


                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(

                            alignment: Alignment.centerLeft,
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox( height:10),
                                Container(
                                  margin: EdgeInsets.only(left: 16),
                                  alignment: Alignment.centerLeft,
                                  child: Text("Standard Plan : (${widget.product_name})",
                                    style: TextStyle(fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),),
                                ),
                                SizedBox( height:6),
                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  alignment: Alignment.centerLeft,
                                  child:Row(
                                    children: [
                                      Text("\u2022", style: TextStyle(fontSize: 25),),
                                      SizedBox(width: 10,),
                                      Text("10 person",
                                        style: TextStyle(
                                            fontSize: 14,
                                            overflow: TextOverflow.ellipsis
                                        ),),
                                    ],
                                  ),

                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  alignment: Alignment.centerLeft,
                                  child:Row(
                                    children: [
                                      Text("\u2022", style: TextStyle(fontSize: 25),),
                                      SizedBox(width: 10,),
                                      Text("With Pooja Samagri",
                                        style: TextStyle(
                                            fontSize: 14,
                                            overflow: TextOverflow.ellipsis
                                        ),),
                                    ],
                                  ),

                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  alignment: Alignment.centerLeft,
                                  child:Row(
                                    children: [
                                      Text("\u2022", style: TextStyle(fontSize: 25),),
                                      SizedBox(width: 10,),
                                      Text("Without Fruit And Flowers",
                                        style: TextStyle(
                                            fontSize: 14,
                                            overflow: TextOverflow.ellipsis
                                        ),),
                                    ],
                                  ),

                                ),
                                SizedBox( height:10),

                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  alignment: Alignment.centerLeft,
                                  child:Text("Note:• Ganapathi pooja • Punyaha Vachanam & Sankalpam • Kalasha Pooja • Mantapa Aradhana • Ashlesha Bali • Sarpa Sukta Japam • Homa • Asheervachana Note: Pooja Samagries like Arshina, Kum kum ,Coconuts, Mango leaves, Tulasi, Darba, Kalasha, Vastra, Navadhanya, Jackets, Beetle Leaves, Beetle Nuts, Homa Sticks, samidha, Dravyas, Ghee etc. will be brought by us. Yajamani have to keep house items like Gas stove, Vessels, Deepa, Mats, Bowls, Milk, Curd, Prasada, Plates, Photos etc you will be receiving detailed to do list after booking.",
                                      style: TextStyle(
                                          fontSize: 13,
                                          overflow: TextOverflow.ellipsis
                                      ),
                                      maxLines: 3),

                                ),
                                SizedBox( height:20),
                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  alignment: Alignment.center,
                                  child:Text("Rs 2000.00",
                                    style: TextStyle(fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                        overflow: TextOverflow.ellipsis
                                    ),),

                                ),

                                SizedBox( height:5),
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {

                                    });

                                  },

                                  child: Container(
                                      width: 110,
                                      alignment: Alignment.center,
                                      child: Text("Select", style:TextStyle(fontSize: 14,
                                          color: CustomColors.whiteColor),
                                      )),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: CustomColors.greenColor,
                                    side: const BorderSide(
                                      width: 0.5,
                                      color:CustomColors.greenColor,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(30),),
                                    ),),
                                ),


                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(

                            alignment: Alignment.centerLeft,
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox( height:10),
                                Container(
                                  margin: EdgeInsets.only(left: 16),
                                  alignment: Alignment.centerLeft,
                                  child: Text("Premium Plan : (${widget.product_name})",
                                    style: TextStyle(fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),),
                                ),
                                SizedBox( height:6),
                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  alignment: Alignment.centerLeft,
                                  child:Row(
                                    children: [
                                      Text("\u2022", style: TextStyle(fontSize: 25),),
                                      SizedBox(width: 10,),
                                      Text("15 person",
                                        style: TextStyle(
                                            fontSize: 14,
                                            overflow: TextOverflow.ellipsis
                                        ),),
                                    ],
                                  ),

                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  alignment: Alignment.centerLeft,
                                  child:Row(
                                    children: [
                                      Text("\u2022", style: TextStyle(fontSize: 25),),
                                      SizedBox(width: 10,),
                                      Text("With Pooja Samagri",
                                        style: TextStyle(
                                            fontSize: 14,
                                            overflow: TextOverflow.ellipsis
                                        ),),
                                    ],
                                  ),

                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  alignment: Alignment.centerLeft,
                                  child:Row(
                                    children: [
                                      Text("\u2022", style: TextStyle(fontSize: 25),),
                                      SizedBox(width: 10,),
                                      Text("With Fruit And Flowers",
                                        style: TextStyle(
                                            fontSize: 14,
                                            overflow: TextOverflow.ellipsis
                                        ),),
                                    ],
                                  ),

                                ),
                                SizedBox( height:10),

                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  alignment: Alignment.centerLeft,
                                  child:Text("Note :Ganapathi pooja • Punyaha Vachanam & Sankalpam • Kalasha Pooja • Mantapa Aradhana • Ashlesha Bali • Sarpa Sukta Japam • Homa • Asheervachana Note: Pooja Samagries like Arshina, Kum kum ,Coconuts, Mango leaves, Tulasi, Darba, Kalasha, Vastra, Navadhanya, Jackets, Beetle Leaves, Beetle Nuts, Homa Sticks, samidha, Dravyas, Ghee etc. will be brought by us. Yajamani have to keep house items like Gas stove, Vessels, Deepa, Mats, Bowls, Milk, Curd, Prasada, Plates, Photos etc you will be receiving detailed to do list after booking.",
                                      style: TextStyle(
                                          fontSize: 13,
                                          overflow: TextOverflow.ellipsis
                                      ),
                                      maxLines: 3),

                                ),
                                SizedBox( height:20),
                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  alignment: Alignment.center,
                                  child:Text("Rs 2500.00",
                                    style: TextStyle(fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                        overflow: TextOverflow.ellipsis
                                    ),),

                                ),

                                SizedBox( height:5),
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {

                                    });

                                  },

                                  child: Container(
                                      width: 110,
                                      alignment: Alignment.center,
                                      child: Text("Select", style:TextStyle(fontSize: 14,
                                          color: CustomColors.whiteColor),
                                      )),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: CustomColors.greenColor,
                                    side: const BorderSide(
                                      width: 0.5,
                                      color:CustomColors.greenColor,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(30),),
                                    ),),
                                ),


                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),




          ],
        ),
      ),
    );
  }
}
