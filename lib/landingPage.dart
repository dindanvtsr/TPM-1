import 'package:flutter/material.dart';
import 'package:tugas1_tpm/constanta/text.dart';
import 'constanta/colors.dart';

class LandingPage extends StatelessWidget {
  static const routeName = "/LandingPage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  Stack(children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height/1.6,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height/1.6,
                        decoration: BoxDecoration(
                          color: tPrimaryColor,
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(70), bottomLeft: Radius.circular(70)),
                        ),
                        child: Center(
                          child: Image.asset(
                            "assets/hand.png",
                            scale: 2.3,
                          ),
                        )
                    )],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height/2.666,
                      padding: EdgeInsets.only(top: 50),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(children: [
                        Text(
                          "Get To Know Us!",
                          style: TextStyle(
                            fontSize: 30,
                            color: tPrimaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child:
                          Text(
                              tNama1 + " " + "-" + " " + tNIM1,
                              style: TextStyle(
                                fontSize: 20,
                                color: tPrimaryColor,
                              )
                          ),
                        ),
                        Text(
                            tNama2 + " " + "-" + " " + tNIM2,
                            style: TextStyle(
                              fontSize: 20,
                              color: tPrimaryColor,
                            )
                        ),
                      ],),
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(90, 670, 20, 0),
                    child: ElevatedButton(
                      child: Text(tCalculate),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: tPrimaryColor,
                          padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                          textStyle: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold)),
                    ),
                  )
                ],
              ),
            ),
          ]
      ),
    );
  }
}
