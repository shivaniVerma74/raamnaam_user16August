import 'package:flutter/material.dart';
import 'package:raamnaam/View/Category/PurohitDescription.dart';

import '../../Utils/colors.dart';

class PurohitCategory extends StatefulWidget {
  const PurohitCategory({Key? key}) : super(key: key);

  @override
  State<PurohitCategory> createState() => _PurohitCategoryState();
}

class _PurohitCategoryState extends State<PurohitCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.primaryColor,
        title:Text("Purohit Category"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.all(10),
              child: GridView.builder(
                physics:ScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent:210,
                  crossAxisCount: 2, // number of items in each row
                  mainAxisSpacing: 10.0, // spacing between rows
                  crossAxisSpacing: 8.0, // spacing between columns
                ),
                padding: EdgeInsets.all(8.0), // padding around the grid
                itemCount:10, // total number of items
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>PurohitDescription(price:"1200" ,image: "assets/images/panditjiImage.png",product_name:"Service Name" ,)));
                    },
                    child: Container(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width/1.8,
                          margin: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: Image.asset("assets/images/panditjiImage.png",
                                  height: 140,
                                  width: MediaQuery.of(context).size.width,
                                  fit: BoxFit.cover,
                                ),

                              ),
                              SizedBox(height: 15,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width/5,
                                    child: Text("Service Name",style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        overflow: TextOverflow.ellipsis
                                    ),),
                                  ),

                                  Text("\u{20B9}1200",style: TextStyle(
                                      color:CustomColors.blackTemp.withOpacity(0.5)
                                  ),),
                                ],
                              ),


                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}
