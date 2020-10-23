import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ordering/pages/login/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

class InitPage extends StatefulWidget {
  @override
  _InitPageState createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  PageController controller;
  int index;
  @override
  void initState() {
    index = 0;
    controller = PageController(initialPage: 0);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(index);
    return Scaffold(
        body: Container(
      color: Color(0xFF18172B),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.only(top: 64, left: 24, right: 24, bottom: 56),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          index < 2
              ? Container(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Skip",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Color(0xFF9b97b6),
                    ),
                  ),
                )
              : Container(),
          SizedBox(
            height: 108.82,
          ),
          Container(
            height: 424.05,
            child: PageView(
              // physics: index == 2
              //     ? NeverScrollableScrollPhysics()
              //     : BouncingScrollPhysics(),
              controller: controller,
              onPageChanged: (i) {
                setState(() {
                  index = i;
                });
              },
              children: [Page1(), Page2(), Page3()],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          index == 2
              ? Container(
                  height: 10,
                )
              : Container(
                  alignment: Alignment.center,
                  child: Container(
                    height: 10,
                    width: 54,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              color: index == 0
                                  ? Color(0xFF6D61F2)
                                  : Color(0xFF1F1F30),
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              color: index == 1
                                  ? Color(0xFF6D61F2)
                                  : Color(0xFF1F1F30),
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              color: index == 2
                                  ? Color(0xFF6D61F2)
                                  : Color(0xFF1F1F30),
                              borderRadius: BorderRadius.circular(50)),
                        ),
                      ],
                    ),
                  ),
                ),
          SizedBox(
            height: 40,
          ),
          Container(
            height: 64,
            child: Material(
              borderRadius: BorderRadius.circular(20),
              child: InkWell(
                onTap: () {
                  controller.nextPage(
                      duration: Duration(microseconds: 400),
                      curve: Curves.bounceIn);
                  setState(() {
                    if (index == 2) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LoginPage(),
                            fullscreenDialog: true),
                      );
                    } else {
                      index++;
                    }
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF6D61F2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      index == 2 ? "Get Started" : "Next",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xFF18172B),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: SvgPicture.asset(
                  "assets/logo1.svg",
                  height: 232.68,
                  width: 320,
                ),
              ),
              SizedBox(
                height: 41.36,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Be Togather",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 104,
                width: 277,
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "Healthy eating means eating a variety of foods that give you the nutrients you need to maintain your health, feel good, and have energy.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Color(0xFF9b97b6),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xFF18172B),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: SvgPicture.asset(
                  "assets/logo2.svg",
                  height: 232.68,
                  width: 320,
                ),
              ),
              SizedBox(
                height: 41.36,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Choose A Tasty Dish",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 104,
                width: 277,
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "Order anything you want from your Favorite restaurant.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Color(0xFF9b97b6),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xFF18172B),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: SvgPicture.asset(
                  "assets/logo3.svg",
                  height: 232.68,
                  width: 320,
                ),
              ),
              SizedBox(
                height: 41.36,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Easy Payment",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 104,
                width: 277,
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "Payment made easy through debit card, credit card  & more ways to pay for your food",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Color(0xFF9b97b6),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
