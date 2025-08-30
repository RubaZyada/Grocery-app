import 'package:flutter/material.dart';
import 'package:grocery_app/pages/detail_page.dart';
import 'package:grocery_app/service/widget_Support.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeff6f1),
      body: Container(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(top: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Color(0xffeff6f1)),
              child: Image.asset(
                "assets/images/onboard.png",
                height: MediaQuery.of(context).size.height / 2,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 2,
              ),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(80),
                  topRight: Radius.circular(80),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 60),
                  Text(
                    "Shop Your Daliy ",
                    style: AppWidget.headlinetextfeildStyle(),
                  ),
                  Text(
                    "Necessary ",
                    style: AppWidget.OrangeheadlinetextfeildStyle(),
                  ),
                  SizedBox(height: 25),
                  Text(
                    "Groceries Made Easy - Shop, \n Click, Delivered!",
                    textAlign: TextAlign.center,
                    style: AppWidget.SimpleTextFeildStyle(),
                  ),
                  SizedBox(height: 20),
                  Material(
                    elevation: 3.0,
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      // padding: EdgeInsets.all(10),
                      height: 60,
                      width: MediaQuery.of(context).size.width / 1.6,
                      decoration: BoxDecoration(
                        color: Color(0xff33a853),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailPage(),
                            ),
                          );
                        },
                        child: Center(
                          child: Text(
                            "Get Started",
                            style: AppWidget.whiteTextFeildStyle(),
                          ),
                        ),
                      ),
                    ),
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
