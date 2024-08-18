import 'package:flutter/material.dart';
// import 'package:flutter_application_1/screens/LoginScreen.dart';
import 'package:flutter_application_1/screens/LoginScreenV2.dart';

class Mysplashscreen extends StatelessWidget {
  const Mysplashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyBuilder(context),
    );
  }
}

Widget _bodyBuilder(context) {
  Size size = MediaQuery.of(context).size;
  return Container(
    color: Color.fromARGB(255, 228, 225, 225),
    height: size.height,
    width: size.width,
    child: Stack(
      children: [
        Container(
          alignment: Alignment.topCenter,
          child: Container(
            height: size.height * 0.54,
            width: size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                color: Colors.purple[300],
                image: const DecorationImage(
                  image: AssetImage("images/myphoto.jpg"),
                )),
          ),
        ),
        Positioned(
            top: size.height * 0.6,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Text(
                  "Discover your\n Dream Girls",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 39,
                      color: Colors.black,
                      height: 1.2),
                ),
                SizedBox(height: 30),
                Text(
                  "Explore all the most beautiful girls in our plateform to fullfill you passion and ambitious",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                      color: Colors.black,
                      height: 1.2),
                ),
                SizedBox(height: size.height * 0.06),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    width: size.width,
                    height: size.height * 0.08,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.white)),
                    child: Row(
                      children: [
                        Container(
                          width: size.width / 2.2,
                          height: size.height * 0.08,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                              child: Text(
                            "Register",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          )),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Loginscreenv2()));
                          },
                          child: Center(
                              child: Text(
                            "Sign Up",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          )),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                )
              ],
            )),
      ],
    ),
  );
}
