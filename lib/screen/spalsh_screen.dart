import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:travel_booking_group_project/screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assetes/images/background/bg.png'),
                  fit: BoxFit.cover)),
          child: Padding(
            padding:
                const EdgeInsets.only(top: 40, left: 10, right: 10, bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Explore Beauty \nOf Journey",
                      style: TextStyle(
                          fontSize: 52,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'fira'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Everything you can imagine, is here",
                      style: TextStyle(
                          fontSize: 20,
                          // fontWeight: FontWeight.w200,
                          fontFamily: 'firaR'),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Builder(builder: (context) {
                      return SlideAction(
                        text: "Swipe to Explore Now",
                        textStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            // fontWeight: FontWeight.w200,
                            fontFamily: 'firaR'),
                        alignment: Alignment.bottomCenter,
                        innerColor: Colors.black,
                        outerColor: Colors.black.withOpacity(0.2),
                        height: 80,
                        sliderButtonIcon: Icon(Icons.arrow_forward_ios,size: 25,color: Colors.white,),
                        sliderButtonYOffset: 5,
                        borderRadius: 15,
                        submittedIcon: Icon(Icons.done,size: 40,color: Colors.white,),
                        animationDuration: Duration(milliseconds: 300),
                        onSubmit: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        },
                      );
                    }),
                    SizedBox(height: 5,),
                    Text(
                      "Privacy Policy",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          // fontWeight: FontWeight.w200,
                          fontFamily: 'firaR'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
