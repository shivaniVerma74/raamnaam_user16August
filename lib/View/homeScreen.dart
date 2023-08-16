import 'package:carousel_slider/carousel_slider.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:raamnaam/Inquiry/about_us.dart';
import 'package:raamnaam/Inquiry/contact_us.dart';
import 'package:raamnaam/View/pandit_service_viewAll.dart';
import 'package:raamnaam/View/service_cart.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../Helper/dropdown_category.dart';
import '../Inquiry/how_to_use.dart';
import '../Utils/colors.dart';
import 'AuthView/login.dart';
import 'Cart.dart';
import 'package:readmore/readmore.dart';

import 'Category/CaterCategory.dart';
import 'Category/GroceryCategory.dart';
import 'Category/PhotographerCategory.dart';
import 'Category/PurohitCategory.dart';
import 'Category/TentHouseCategory.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {

  String? _selectedCategory;
  String? time;
  // List<String> time = List.generate(
  //   7,
  //       (_) => "1 hr",
  // );
  List<int> items = List.generate(
    7,
        (_) => 1,
  );
  List<int> item = List.generate(
    7,
        (_) => 1,
  );


  int currentIndex = 0;
  final CarouselController carouselController = CarouselController();
  List imageList = [
    {"id": 1, "image_path": "assets/images/Grocerybanner.png"},
    {"id": 2, "image_path": "assets/images/Artboardservices.png"},
    {"id": 3, "image_path": "assets/images/Photographyservice.png"},
    {"id": 4, "image_path": "assets/images/Homewelcome.jpg"},
    {"id": 5, "image_path": "assets/images/weddingimage2.jpg"}


  ];

  Future<DateTime?> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),

    );
    return picked;
  }

  showAlert(){
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return StatefulBuilder(builder: (context, setState) {
            return AlertDialog(
              contentPadding:EdgeInsets.all(0),
              content: Material(
                child: Scrollbar(
                  thumbVisibility: true,
                  thickness: 5,
                  child: Container(
                    height: MediaQuery.of(context).size.height/1.5,
                    width: MediaQuery.of(context).size.width/1,
                    color:CustomColors.lightSky,
                    child: Padding(
                      padding: const EdgeInsets.only(left:20.0,right: 20),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: 20,),
                            Text('Schedule Date',style: TextStyle(fontSize:25,fontWeight: FontWeight.w700,color:CustomColors.blackTemp),),
                            Text('Booking Date',style: TextStyle(fontSize:20,fontWeight: FontWeight.w400,color:CustomColors.grayColor),),
                            SizedBox(height: 20,),
                            Container(
                              height: 60,
                              decoration: BoxDecoration(
                                  color:CustomColors.whiteColor,
                                  border: Border.all(color: CustomColors.grayColor),
                                  borderRadius: BorderRadius.circular(5)),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                    contentPadding: EdgeInsets.only(left: 10,top:10),
                                    hintText:'${DateTime}',
                                  suffixIcon: GestureDetector(
                                      onTap: () {
                                        //_showDatePicker(context);
                                        _selectDate(context);
                                      },
                                      child: Icon(Icons.date_range,color: CustomColors.blackTemp,))
                                ),

                              ),

                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Radio(
                                        value: 1,
                                        groupValue: _value1,
                                        onChanged: (int? value) {
                                          setState(() {
                                            _value1 = value!;
                                          });
                                        }),
                                    const Text(
                                      "With transport",style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Radio(
                                        value: 2,
                                        groupValue: _value1,
                                        onChanged: (int? value) {
                                          setState(() {
                                            _value1 = value!;
                                            // isUpi = true;
                                          });
                                        }),
                                    const Text(
                                      "Without transport",style: TextStyle(fontSize: 20
                                    ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Text('Special Notes',style: TextStyle(fontSize:20,fontWeight: FontWeight.w400,color:CustomColors.grayColor),),
                            SizedBox(height: 20,),
                            Container(
                              height: 90,
                              decoration: BoxDecoration(
                                  color:CustomColors.whiteColor,
                                  border: Border.all(color: CustomColors.grayColor),
                                  borderRadius: BorderRadius.circular(5)),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 10),
                                    border: InputBorder.none,
                                    hintText:'Enter Notes',
                                ),

                              ),

                            ),
                            SizedBox(height: 10,),
                            ElevatedButton(onPressed:(){
                              showAlert();
                            },
                                style: ElevatedButton.styleFrom(backgroundColor:CustomColors.secondaryColor,
                                    maximumSize:Size(130,50) ),
                                child:Center(child: Text('Save',style: TextStyle(fontSize:15),))),
                            SizedBox(height: 10,),
                            Image.asset('assets/images/panditjiImage.png')
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },);
        }
    );
  }
  CustomDropDown(){

       List<String> _categories = [
      'Category A',
      'Category B',
      'Category C',
    ];

    DropdownButton<String>(
      value: _selectedCategory,
      hint: Text('Select Category'),
      items: _categories.map((category) {
        return DropdownMenuItem<String>(
          value: category,
          child: Text(category),
        );
      }).toList(),
      onChanged: (newValue) {
        setState(() {
          _selectedCategory = newValue;
        });
      },
    );
  }

  List<Map<String,dynamic>> Services =
  [
    {'image':'assets/images/Homewelcome.jpg','title':'Grah Pravesh Home','rupee':'900.00','subtitle':'abcdef(with Pooja Samgri)(With fruit and Flowers)'},
    {'image':'assets/images/omimage.jpg','title':'Grah Pravesh Home','rupee':'900.00','subtitle':'abcdef(with Pooja Samgri)(With fruit and Flowers)'},
    {'image':'assets/images/wedding1.jpg','title':'Grah Pravesh Home','rupee':'900.00','subtitle':'abcdef(with Pooja Samgri)(With fruit and Flowers)'},
    {'image':'assets/images/grahpooja.jpg','title':'Grah Pravesh Home','rupee':'900.00','subtitle':'abcdef(with Pooja Samgri)(With fruit and Flowers)'},
    {'image':'assets/images/Bhikshaimage.jpg','title':'Grah Pravesh Home','rupee':'900.00','subtitle':'abcdef(with Pooja Samgri)(With fruit and Flowers)'},
    {'image':'assets/images/hawanpooja.jpg','title':'Grah Pravesh Home','rupee':'900.00','subtitle':'abcdef(with Pooja Samgri)(With fruit and Flowers)'},
    {'image':'assets/images/weddingimage.jpg','title':'Grah Pravesh Home','rupee':'900.00','subtitle':'abcdef(with Pooja Samgri)(With fruit and Flowers)'},
    {'image':'assets/images/weddingimage2.jpg','title':'Grah Pravesh Home','rupee':'900.00','subtitle':'abcdef(with Pooja Samgri)(With fruit and Flowers)'},
    {'image':'assets/images/photographers.jpg','title':'Grah Pravesh Home','rupee':'900.00','subtitle':'abcdef(with Pooja Samgri)(With fruit and Flowers)'},
    {'image':'assets/images/photographer2.jpg','title':'Grah Pravesh Home','rupee':'900.00','subtitle':'abcdef(with Pooja Samgri)(With fruit and Flowers)'},
    {'image':'assets/images/studio.jpg','title':'Grah Pravesh Home','rupee':'900.00','subtitle':'abcdef(with Pooja Samgri)(With fruit and Flowers)'}

  ];

  int _currentIndex=0;
  int _value1=0;

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  int _counter = 0;
  bool isVisible =true;
  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }  void _decrimentConter() {
    setState(() {
      if(_counter==0){
        setState(() {
          isVisible=true;
        });
      }

      _counter--;
    });
  }




  @override
  Widget build(BuildContext context) {
    final widthSize =MediaQuery.of(context).size.width;
    final heightSize = MediaQuery.of(context).size.height;
    return Scaffold(
      key: _key,
       appBar: AppBar(
         backgroundColor: CustomColors.primaryColor,
         leading: GestureDetector(
             onTap: () {
              _key.currentState!.openDrawer();
             },
             child:Icon(Icons.dehaze_rounded,color: CustomColors.whiteColor,)),
         title: Row(
             children:[
           Icon(Icons.location_on_outlined,color: CustomColors.whiteColor,
           size: 20,),
               Container(
                   width: MediaQuery.of(context).size.width/2,
                   child: Text('Indore,Vijay Nagar Indore',overflow: TextOverflow.ellipsis,
                     style: TextStyle(
                       fontSize: 15
                     ),
                   ))
         ]),
         actions: [
           Container(
             margin: EdgeInsets.all(10),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.all(Radius.circular(6)),
               color:CustomColors.whiteColor,
             ),
             child: Padding(
               padding: const EdgeInsets.all(6.0),
               child: Icon(Icons.notifications,color: CustomColors.primaryColor,size: 20,),
             ),
           ),
           SizedBox(width: 3,)
         ],
       ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            SizedBox(height:10,),
            Container(
              width: widthSize/1.1,
              margin: EdgeInsets.only(left: 20),
              height: 43,
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 10,left: 20),
                    border:OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                    hintText:'What are you looking for?',
                    suffixIcon: Container(
                      padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: CustomColors.primaryColor,
                            borderRadius: BorderRadius.circular(5)),
                        child: Icon(Icons.search,color: CustomColors.whiteColor,size:20,))
                ),
              ),
            ),

            // CarouselSlider(
            //     items: [
            //       Card(
            //         elevation: 2,
            //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            //         child: Container(height: 90,width: 350,
            //           decoration:BoxDecoration(image: const DecorationImage(image: AssetImage('assets/images/Grocerybanner.png'),
            //               fit: BoxFit.fill),
            //               borderRadius: BorderRadius.circular(10)),),
            //       ),
            //       Card(
            //         elevation: 2,
            //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            //         child: Container(height: 70,width: 350,
            //           decoration:BoxDecoration(image: const DecorationImage(image: AssetImage('assets/images/Artboardservices.png'),
            //               fit: BoxFit.fill),
            //               borderRadius: BorderRadius.circular(10)),),
            //       ),
            //       Card(
            //         elevation: 2,
            //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            //         child: Container(height: 70,width: 350,
            //           decoration:BoxDecoration(image: const DecorationImage(image: AssetImage('assets/images/Photographyservice.png'),
            //               fit: BoxFit.fill),
            //               borderRadius: BorderRadius.circular(10)),),
            //       ),
            //       Card(
            //         elevation: 2,
            //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            //         child: Container(height: 70,width: 350,
            //           decoration:BoxDecoration(image: const DecorationImage(image: AssetImage('assets/images/Homewelcome.jpg'),
            //               fit: BoxFit.fill),
            //               borderRadius: BorderRadius.circular(10)),),
            //       ),
            //       Card(
            //         elevation: 2,
            //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            //         child: Container(height: 70,width: 350,
            //           decoration:BoxDecoration(image: const DecorationImage(image: AssetImage('assets/images/photographers.jpg'),
            //               fit: BoxFit.fill),
            //               borderRadius: BorderRadius.circular(10)),),
            //       ),
            //       Card(
            //         elevation: 2,
            //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            //         child: Container(height: 70,width: 370,
            //           decoration:BoxDecoration(image: const DecorationImage(image: AssetImage('assets/images/weddingimage2.jpg'),
            //               fit: BoxFit.fill),
            //               borderRadius: BorderRadius.circular(10)),),
            //       )
            //     ], options:CarouselOptions(height: 160,autoPlay: true)),
            // Positioned(
            //   bottom: 0,
            //   height: 40,
            //   left: 0,
            //   width: 0,
            //   child: Row(
            //       mainAxisSize: MainAxisSize.max,
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children:<Widget>[
            //         Container(
            //             width: 8.0,
            //             height: 8.0,
            //             margin: const EdgeInsets.symmetric(
            //                 vertical: 10.0,
            //                 horizontal: 2.0),
            //             decoration: const BoxDecoration(
            //               color:CustomColors.primaryColor,
            //               shape: BoxShape.circle,
            //             )),
            //         Container(
            //             width: 8.0,
            //             height: 8.0,
            //             margin: const EdgeInsets.symmetric(
            //                 vertical: 10.0,
            //                 horizontal: 2.0),
            //             decoration: const BoxDecoration(
            //               color:CustomColors.primaryColor,
            //               shape: BoxShape.circle,
            //             )),
            //         Container(
            //             width: 8.0,
            //             height: 8.0,
            //             margin: const EdgeInsets.symmetric(
            //                 vertical: 10.0,
            //                 horizontal: 2.0),
            //             decoration: const BoxDecoration(
            //               color:CustomColors.primaryColor,
            //               shape: BoxShape.circle,
            //             )),
            //         Container(
            //             width: 8.0,
            //             height: 8.0,
            //             margin: const EdgeInsets.symmetric(
            //                 vertical: 10.0,
            //                 horizontal: 2.0),
            //             decoration: const BoxDecoration(
            //               color:CustomColors.primaryColor,
            //               shape: BoxShape.circle,
            //             )),
            //         Container(
            //             width: 8.0,
            //             height: 8.0,
            //             margin: const EdgeInsets.symmetric(
            //                 vertical: 10.0,
            //                 horizontal: 2.0),
            //             decoration: const BoxDecoration(
            //               color:CustomColors.primaryColor,
            //               shape: BoxShape.circle,
            //             ))
            //       ]
            //   ),
            // ),
            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>PurohitCategory()));
                  },
                  child: Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                          color: CustomColors.primaryColor
                        ),
                        child: Icon(Icons.category,color: Colors.white,),
                      ),
                      SizedBox(height: 6,),
                      Text("Purohit",style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 10
                      ),)
                    ],
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>TentHouseCategory()));
                  },
                  child: Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            color: CustomColors.primaryColor
                        ),
                        child: Icon(Icons.category,color: Colors.white,),
                      ),
                      SizedBox(height: 6,),
                      Text("Tent House",style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 10
                      ),)
                    ],
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>CaterCategory()));
                  },
                  child: Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            color: CustomColors.primaryColor
                        ),
                        child: Icon(Icons.category,color: Colors.white,),
                      ),
                      SizedBox(height: 6,),
                      Text("Cater",style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 10
                      ),)
                    ],
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PhotographerCategory()));
                  },
                  child: Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            color: CustomColors.primaryColor
                        ),
                        child: Icon(Icons.category,color: Colors.white,),
                      ),
                      SizedBox(height: 6,),
                      Text("Photographer",style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 10
                      ),)
                    ],
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>GroceryCategory()));
                  },
                  child: Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            color: CustomColors.primaryColor
                        ),
                        child: Icon(Icons.category,color: Colors.white,),
                      ),
                      SizedBox(height: 6,),
                      Text("Grocery",style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 10
                      ),)
                    ],
                  ),
                ),

              ],
            ),
            SizedBox(height: 10,),
            Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(top: 20,left: 20,right: 20,bottom: 10),
                    child: CarouselSlider(
                      items: imageList
                          .map(
                            (item) => Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Container(height: 70,width: 300,
                              child:Image.asset(
                                item['image_path'],
                                fit: BoxFit.fill,
                                width: double.infinity,
                              ),
                              // decoration:BoxDecoration(
                              //   image: const DecorationImage(image: AssetImage(item['image_path']),
                              //    fit: BoxFit.fill),
                              //    borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ),
                      )
                          .toList(),
                      carouselController: carouselController,
                      options: CarouselOptions(
                        scrollPhysics: const BouncingScrollPhysics(),
                        autoPlay: true,
                        aspectRatio: 2,
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 7),
                  child: AnimatedSmoothIndicator(
                    activeIndex: currentIndex,
                    count: 5,
                    effect: SlideEffect(
                      spacing:  5.6,
                      radius:  10.0,
                      dotWidth:  7.0,
                      dotHeight:  7.0,
                      dotColor: CustomColors.primaryColor.withOpacity(0.4),
                      activeDotColor: CustomColors.primaryColor,
                    ),),
                )
              ],
            ),
            SizedBox(height: 5,),
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Donation",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: CustomColors.primaryColor
                    ),
                  ),
                  SizedBox(height: 4,),
                  Text("Your small contribution means a lot.",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                        color: CustomColors.blackTemp
                    ),
                  ),

                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/4,
              child:Image.asset('assets/images/Homewelcome.jpg',
                fit: BoxFit.fill,),
            ),
            Container(
              margin: EdgeInsets.only(left: 10,right: 10,top: 20),
              child: Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Container(


                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // margin: EdgeInsets.all(5),
                        child:Image.asset("assets/images/img.png",
                        fit: BoxFit.cover,),
                        height:MediaQuery.of(context).size.height/5,
                        width: MediaQuery.of(context).size.width/2.5,
                      ),

                      Container(
                        width: MediaQuery.of(context).size.width/2.062,
                        height:MediaQuery.of(context).size.height/3,
                        margin: EdgeInsets.only(top: 10,bottom: 10,left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.favorite,color: CustomColors.primaryColor,),
                                Text("About Our Community",style: TextStyle(
                                 color: CustomColors.primaryColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500

                                ),),
                              ],
                            ),
                            SizedBox(height: 7,),
                            Text("FOR A BETTER COMMUNITY,",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,

                            ),),

                            Text("HELP EACH OTHER,",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,

                            ),),
                            SizedBox(height: MediaQuery.of(context).size.height/60,),
                            SingleChildScrollView(
                              child: Container(
                                width: MediaQuery.of(context).size.width/2.062,
                                height:MediaQuery.of(context).size.height/6,
                                child: ReadMoreText("People who are interested in understanding Dharma, religion, and passionate about discovering the purpose of life and what it is to be a Hindu, and for all those who want to bring in the change and act responsibly as per our Hindu dharma principles and celebrate life to the fullest. Bring in the auspicious change in the nation and uphold Vedic principles, customs and traditions which must be protected at all costs. This is achieved by taking actions in the community to share and educate worldwide audience with their strong experience and expertise ensuring our customs are not lost for future generations. Anybody can become a member who wants to learn, debate, discuss, educate, and share the knowledge of Hindu dharmic rituals in the forums and can come from any part of the universe. Practicing Hindu dharma is not just meant for priests, Brahmins, and Indians. It is a way of life and people who believe in vegetarism, and who are coconscious and celebrate life to the fullest can share their experience, parties and events, festival celebrations across the nations within their friends and families can all participate in the community forums by Sharing success stories, pictures, expertise, and videos to the world at large and engage effectively. Not limiting to #families #success #knowledge #achievements #spiritual experiences #stories #process #procedures #enlightment #personal experiences #Godliness #learning mantras #benefits #colorful tent houses, #Holi #lighting, #delicious food #caterers, #orchestra, #artists #fruits and flower, #groceries, #puja samagri, #Silver idols for #gifting, and #performing pujas, et al.",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black.withOpacity(0.6)
                                  ),
                                  trimLines: 7,
                                  colorClickableText: Colors.pink,
                                  trimMode: TrimMode.Line,
                                  trimCollapsedText: 'Show more',
                                  trimExpandedText: 'Show less',
                                  moreStyle: TextStyle(fontSize: 13,
                                      color: Colors.blue),
                                ),
                              ),
                            ),

                           SizedBox(height: MediaQuery.of(context).size.height/60,),

                            InkWell(
                              onTap: (){},
                              child: Container(
                                decoration: BoxDecoration(
                                    color:CustomColors.primaryColor,
                                    borderRadius: BorderRadius.circular(3)
                                ),
                                height: 30,
                                width: MediaQuery.of(context).size.width/2,
                                child: Center(
                                  child: Text(
                                    "More Information",
                                    style:  TextStyle(
                                      color:CustomColors.whiteColor,
                                      // fontSize: fSize,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            )

                          ],
                        ),
                      ),

                    ],
                  ) ,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/30,),
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Purohit Service",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: CustomColors.primaryColor
                    ),
                  ),
                  SizedBox(height: 4,),
                  Text("Looking for a service? Find your Service here:",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                        color: CustomColors.blackTemp
                    ),
                  ),

                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text("8 Services",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: CustomColors.blackTemp
                ),
              ),
            ),
            Container(

              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height /3.5,
              margin: EdgeInsets.all( 10),
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
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
                                    width: MediaQuery.of(context).size.width/3.5,
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
                    );
                  }),
            ),
            // SizedBox(height: MediaQuery.of(context).size.height/30,),
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Tent House Service",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: CustomColors.primaryColor
                    ),
                  ),
                  SizedBox(height: 4,),
                  Text("Looking for a service? Find your Service here:",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                        color: CustomColors.blackTemp
                    ),
                  ),

                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text("4 Services",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: CustomColors.blackTemp
                ),
              ),
            ),
            Container(

              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height /2.9,
              margin: EdgeInsets.all(10),
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return  Container(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)
                        ),
                        child: Container(
                          margin: EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width/1.8,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: Image.asset("assets/images/weddingimage2.jpg",
                                  height: 140,
                                  width: MediaQuery.of(context).size.width,
                                  fit: BoxFit.cover,
                                ),

                              ),
                              SizedBox(height: 7,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                              width: MediaQuery.of(context).size.width/3.5,
                                    child: Text("Service Name",style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        overflow: TextOverflow.ellipsis
                                    ),),
                                  ),
                                  SizedBox(height: 3,),
                                  Text("\u{20B9}1200",style: TextStyle(
                                      color:CustomColors.blackTemp.withOpacity(0.5)
                                  ),),
                                ],
                              ),
                              SizedBox(height: 7,),
                              Container(
                                child: Text("These tents are made of a thin fabric, which is attached to supporting ropes or to poles.",
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: CustomColors.blackTemp.withOpacity(0.5),
                                      overflow:TextOverflow.ellipsis
                                  ),),
                              ),
                              SizedBox(height: 10,),
                              InkWell(
                                onTap: (){},
                                child: Container(
                                  decoration: BoxDecoration(
                                      color:CustomColors.primaryColor,
                                      borderRadius: BorderRadius.circular(3)
                                  ),
                                  height: 30,
                                  width: MediaQuery.of(context).size.width/4.5,
                                  child: Center(
                                    child: Text(
                                      "Add to Cart",
                                      style:  TextStyle(
                                        color:CustomColors.whiteColor,
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              )


                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            // SizedBox(height: MediaQuery.of(context).size.height/30,),
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Caters Service",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: CustomColors.primaryColor
                    ),
                  ),
                  SizedBox(height: 4,),
                  Text("Looking for a service? Find your Service here:",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                        color: CustomColors.blackTemp
                    ),
                  ),

                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text("7 Services",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: CustomColors.blackTemp
                ),
              ),
            ),
            Container(

              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height /2.9,
              margin: EdgeInsets.all( 10),
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (BuildContext context, int index) {
                    return   Container(
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
                                child: Image.asset("assets/images/Bhikshaimage.jpg",
                                  height: 140,
                                  width: MediaQuery.of(context).size.width,
                                  fit: BoxFit.cover,
                                ),

                              ),
                              SizedBox(height: 7,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                              width: MediaQuery.of(context).size.width/3.5,
                                    child: Text("Service Name",style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        overflow: TextOverflow.ellipsis
                                    ),),
                                  ),
                                  SizedBox(height: 3,),
                                  Text("\u{20B9}1200",style: TextStyle(
                                      color:CustomColors.blackTemp.withOpacity(0.5)
                                  ),),
                                ],
                              ),
                              SizedBox(height: 7,),
                              Container(
                                child: Text("Shivay caters",
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: CustomColors.blackTemp.withOpacity(0.5),
                                      overflow:TextOverflow.ellipsis
                                  ),),
                              ),
                              SizedBox(height: 10,),
                              InkWell(
                                onTap: (){},
                                child: Container(
                                  decoration: BoxDecoration(
                                      color:CustomColors.primaryColor,
                                      borderRadius: BorderRadius.circular(3)
                                  ),
                                  height: 30,
                                  width: MediaQuery.of(context).size.width/4.5,
                                  child: Center(
                                    child: Text(
                                      "Add to Cart",
                                      style:  TextStyle(
                                        color:CustomColors.whiteColor,
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              )


                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),

            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Photographer Service",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: CustomColors.primaryColor
                    ),
                  ),
                  SizedBox(height: 4,),
                  Text("Looking for a service? Find your Service here:",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                        color: CustomColors.blackTemp
                    ),
                  ),

                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text("5 Services",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: CustomColors.blackTemp
                ),
              ),
            ),
            Container(

              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height /2.45,
              margin: EdgeInsets.all( 10),
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return   Container(
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
                                child: Image.asset("assets/images/photographer2.jpg",
                                  height: 140,
                                  width: MediaQuery.of(context).size.width,
                                  fit: BoxFit.cover,
                                ),

                              ),
                              SizedBox(height: 7,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width/3.5,
                                    child: Text("Service Name",style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        overflow: TextOverflow.ellipsis
                                    ),),
                                  ),
                                  SizedBox(height: 3,),
                                  Text("\u{20B9}1200",style: TextStyle(
                                      color:CustomColors.blackTemp.withOpacity(0.5)
                                  ),),
                                ],
                              ),
                              SizedBox(height: 7,),
                              Container(
                                child: Text("wedding photographer",
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: CustomColors.blackTemp.withOpacity(0.5),
                                      overflow:TextOverflow.ellipsis
                                  ),),
                              ),
                              SizedBox(height: 7,),
                              Container(
                                height: 40,
                                color: Colors.grey.withOpacity(0.2),
                                child: DropdownButton2<String>(
                                  isExpanded: true,
                                  value:time,
                                  //elevation: 5,
                                  style: TextStyle(color: Colors.black87),

                                  items: <String>[
                                    '1 hr',
                                    '5 hr',
                                    '10 hr',
                                    'Full Day',
                                  ].map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),

                                  hint: Text(
                                    "Select Hours",
                                  ),
                                  onChanged: (String? value)  {
                                    setState(() {
                                      time = value!;
                                    });
                                  },
                                  // icon: Icon(Icons.keyboard_arrow_down),
                                  underline: Container(  // Use a container with zero height to remove the underline
                                    height: 0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              InkWell(
                                onTap: (){},
                                child: Container(
                                  decoration: BoxDecoration(
                                      color:CustomColors.primaryColor,
                                      borderRadius: BorderRadius.circular(3)
                                  ),
                                  height: 30,
                                  width: MediaQuery.of(context).size.width/4.5,
                                  child: Center(
                                    child: Text(
                                      "Add to Cart",
                                      style:  TextStyle(
                                        color:CustomColors.whiteColor,
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              )


                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),

            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Grocery Service",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: CustomColors.primaryColor
                    ),
                  ),
                  SizedBox(height: 4,),
                  Text("Looking for a service? Find your Service here:",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                        color: CustomColors.blackTemp
                    ),
                  ),

                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text("6 Services",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: CustomColors.blackTemp
                ),
              ),
            ),
            Container(

              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height /2.45,
              margin: EdgeInsets.all( 10),
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return   Container(
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
                                child: Image.asset("assets/images/omimage.jpg",
                                  height: 140,
                                  width: MediaQuery.of(context).size.width,
                                  fit: BoxFit.cover,
                                ),

                              ),
                              SizedBox(height: 7,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width/3.5,
                                    child: Text("Service Name",style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        overflow: TextOverflow.ellipsis
                                    ),),
                                  ),
                                  SizedBox(height: 3,),
                                  Text("\u{20B9}1200",style: TextStyle(
                                      color:CustomColors.blackTemp.withOpacity(0.5)
                                  ),),
                                ],
                              ),
                              SizedBox(height: 7,),
                              Container(
                                child: Text("puja samagri",
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: CustomColors.blackTemp.withOpacity(0.5),
                                      overflow:TextOverflow.ellipsis
                                  ),),
                              ),
                              SizedBox(height: 7,),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                      onTap:(){
                                        setState(() {
                                          if(items[index]>1){
                                            setState(() {
                                              items[index]=items[index]-item[index];
                                            });
                                          }

                                        });
                                      },
                                      child: Container(
                                          alignment: Alignment.center,
                                          height: 25,
                                          width: 25,
                                          color: CustomColors.primaryColor,

                                          child:Icon(Icons.remove,color: Colors.white,size: 20,weight:900,)

                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    Container(
                                      width: MediaQuery.of(context).size.width/9,
                                      height: 25,
                                      alignment: Alignment.center,
                                      color: Colors.grey.withOpacity(0.6),
                                      child: Text("${items[index]}",
                                        style: TextStyle(fontSize: 13),),
                                    ),
                                    SizedBox(width: 10,),
                                    GestureDetector(
                                      onTap:(){
                                        setState(() {
                                          items[index]=items[index]+item[index];
                                        });

                                      },
                                      child: Container(
                                          alignment: Alignment.center,
                                          height: 25,
                                          width: 25,
                                          color: CustomColors.primaryColor,

                                          child:Icon(Icons.add,color: Colors.white,size: 20,weight:900,)

                                      ),
                                    ),

                                  ],
                                ),
                              ),
                              SizedBox(height: 10,),
                              InkWell(
                                onTap: (){},
                                child: Container(
                                  decoration: BoxDecoration(
                                      color:CustomColors.primaryColor,
                                      borderRadius: BorderRadius.circular(3)
                                  ),
                                  height: 30,
                                  width: MediaQuery.of(context).size.width/4.5,
                                  child: Center(
                                    child: Text(
                                      "Add to Cart",
                                      style:  TextStyle(
                                        color:CustomColors.whiteColor,
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              )


                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),



            SizedBox(height: 20),

















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
                    child: Image.asset('assets/logo/tytle icon.png',height: 150,width: 150,),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:10.0,right: 10),
                    child: Text('Ramnaam is an e-nest offering you a pool of handpicked professional'
                        ' Ramnaam anywhere in the world! Finding local services just got easier,'
                        ' be it a photographer or a live band, at Ramnaam you can hire professionals '
                        'that are reliable no matter what your location is. '
                        'Take memories back with you when you travel with quality local services at Ramnaam!',

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

        drawer:
        Drawer(
          backgroundColor:CustomColors.primaryColor,
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: CustomColors.primaryColor),
                accountEmail: Text("ajaymalviya.com",style:TextStyle(color:CustomColors.whiteColor,fontWeight: FontWeight.w500,fontSize:15)),
                accountName: Text("Ajay Malviya",style:TextStyle(color:CustomColors.whiteColor,fontWeight: FontWeight.w500,fontSize:15)),
                currentAccountPicture:CircleAvatar(
                  backgroundColor: CustomColors.whiteColor,
                  foregroundImage: AssetImage('assets/logo/logo.png'),) ,
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundColor: CustomColors.whiteColor,
                    foregroundImage: AssetImage('assets/logo/logo.png'),) ,
                ],
              ),

              ListTile(leading: Icon(Icons.home,color:CustomColors.whiteColor),title:Text("Home",style: TextStyle(color:CustomColors.whiteColor,fontWeight: FontWeight.w700,fontSize:20),),onTap: (){
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNav()));
              },),
              ListTile(leading: Icon(Icons.category_outlined,color:CustomColors.whiteColor,),title:Text("Categories",style:TextStyle(color:CustomColors.whiteColor,fontWeight: FontWeight.w700,fontSize:20)),trailing:InkWell(
                  onTap: () {
                    CustomDropDown();
                  },
                  child: Icon(Icons.arrow_downward)),onTap: (){},),
              ListTile(leading: Icon(Icons.account_box_outlined,color:CustomColors.whiteColor,),title:GestureDetector(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>aboutUs()));

                  },
                  child: Text("About us",style:TextStyle(color:CustomColors.whiteColor,fontWeight: FontWeight.w700,fontSize:20))),onTap: (){},),

              ListTile(leading: Icon(Icons.phone,color:CustomColors.whiteColor,),title:GestureDetector(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>contactUs()));
                  },
                  child: Text("Contact us",style:TextStyle(color:CustomColors.whiteColor,fontWeight: FontWeight.w700,fontSize:20))),onTap: (){},),
              ListTile(leading: Icon(Icons.question_mark,color:CustomColors.whiteColor,),title:GestureDetector(
                  onTap:() {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Howto_use()));
                  },
                  child: Text("How to use",style:TextStyle(color:CustomColors.whiteColor,fontWeight: FontWeight.w700,fontSize:20))),onTap: (){},),

              ListTile(leading: Icon(Icons.login,color: CustomColors.whiteColor,),title:Text("Log In",style:TextStyle(color:CustomColors.whiteColor,fontWeight: FontWeight.w700,fontSize:20)),onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
              },),
                ListTile(leading: Icon(Icons.logout,color: CustomColors.whiteColor,),title:Text("Logout",style:TextStyle(color:CustomColors.whiteColor,fontWeight: FontWeight.w700,fontSize:20)),onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
              },),
            ],
          ),
        ),
    );
  }

}
