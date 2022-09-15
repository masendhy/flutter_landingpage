import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  // const LandingPage({super.key});

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget navItem({String? title, int? index}) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index!;
          });
        },
        child: Column(
          children: [
            Text(
              title!,
              style: GoogleFonts.raleway(
                  fontSize: 18,
                  color: Color(0xff4b49b4),
                  fontWeight: index == selectedIndex
                      ? FontWeight.w500
                      : FontWeight.w400),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: 55,
              height: 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: index == selectedIndex
                    ? Color(0xffd5609f)
                    : Colors.transparent,
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "background.png",
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
          Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 100,
                vertical: 30,
              ),
              child: Column(
                children: [
                  //NOTE : NAVIGATION

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "logo.png",
                        width: 25,
                        height: 25,
                      ),
                      Row(
                        children: [
                          navItem(title: 'Home', index: 0),
                          SizedBox(
                            width: 50,
                          ),
                          navItem(title: 'Project', index: 1),
                          SizedBox(
                            width: 50,
                          ),
                          navItem(title: 'Pricing', index: 2),
                          SizedBox(
                            width: 50,
                          ),
                          navItem(title: 'Contact Us', index: 3),
                        ],
                      ),
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Sign Up"),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xffd5609f)),
                          )
                        ],
                      )
                    ],
                  ),

                  SizedBox(
                    height: 75,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            child: Image.asset(
                              "illustration.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                  // NOTE : CONTENT
                ],
              )),
        ],
      ),
    );
  }
}
