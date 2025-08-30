import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grocery_app/service/widget_Support.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<String> imagePaths = [
    "assets/images/brinjal.png",
    "assets/images/onion.png",
    "assets/images/green.png",
    "assets/images/cabbage.png",
    "assets/images/brinjal.png",
    "assets/images/onion.png",
    "assets/images/green.png",
    "assets/images/cabbage.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 15, top: 20),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xfeeeeeee),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(80),
                  bottomRight: Radius.circular(80),
                ),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Material(
                    elevation: 3.0,
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Center(
                    child: Image.asset(
                      "assets/images/vegetables.png",
                      height: 200,
                      width: 300,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(height: 25),
                ],
              ),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xff37a750),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.remove, color: Colors.white),
                ),
                SizedBox(width: 10),
                Text("2Kg", style: AppWidget.headlinetextfeildStyle()),
                SizedBox(width: 10),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xff37a750),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.add, color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Vegetables",
                style: AppWidget.headlinetextfeildStyle(),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Material(
                    elevation: 2.0,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(186, 238, 235, 235),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/star.png",
                            height: 27,
                            width: 27,
                            fit: BoxFit.fill,
                          ),
                          Text("4.5", style: AppWidget.MediumtextfeildStyle()),
                        ],
                      ),
                    ),
                  ),
                  Material(
                    elevation: 2.0,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(186, 238, 235, 235),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/fire.png",
                            height: 22,
                            width: 22,
                            fit: BoxFit.fill,
                          ),
                          Text(
                            "100 kcal",
                            style: AppWidget.MediumtextfeildStyle(),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Material(
                    elevation: 2.0,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(186, 238, 235, 235),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/clock.png",
                            height: 22,
                            width: 22,
                            fit: BoxFit.fill,
                          ),
                          Text(
                            " 8-10 min",
                            style: AppWidget.MediumtextfeildStyle(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20, top: 30),
              child: Text(
                "Reclated Items",
                style: AppWidget.simpleheadlinetextfeildStyle(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20, right: 25),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(imagePaths.length, (index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(
                        imagePaths[index],
                        height: 80,
                        width: 80,
                        fit: BoxFit.cover,
                      ),
                    );
                  }),
                ),
              ),
            ),
            SizedBox(height: 40),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 44),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        "Total Price",
                        style: AppWidget.MediumtextfeildStyle(),
                      ),
                      Text(
                        "\$40",
                        style: AppWidget.simpleheadlinetextfeildStyle(),
                      ),
                    ],
                  ),
                 SizedBox(width: 30),
                  Container(
                      height: 70,
                    padding: EdgeInsets.only(left: 11),
                    width: MediaQuery.of(context).size.width /1.8,
                    decoration: BoxDecoration(color: Color(0xff37a750),
                        borderRadius: BorderRadius.circular(20)),

                    child: Row(children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.circular(60)),
                      child: Icon(Icons.shopping_cart ),
                      ),
                      SizedBox(width: 15,),
                      Text("add to cart",
                      style: AppWidget.whiteTextFeildStyle()),
                    ],),
                  ),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
