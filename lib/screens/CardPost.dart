import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';

class CardPost extends StatelessWidget {
  const CardPost({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          width: size.width * 0.60,
          height: size.height * 0.60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.6),
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset: Offset(0, 3)),
              ]),
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  Container(
                    width: size.width * 0.60,
                    height: size.height * 0.30,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://imgs.search.brave.com/OOJgLHmgzKf7xnGr1GRnHmRd4LSuJF5p0PiBM7FYGJ4/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTA0/MjEzMjkwNC9waG90/by9mYXN0LWZvb2Qu/anBnP3M9NjEyeDYx/MiZ3PTAmaz0yMCZj/PWtzUVhoczhULTBW/ZzdyTFpNR2g4YUJk/YVF4WGxybWt2MVRz/Ym9idWFzLUk9",
                                scale: 1),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Fast Food You Like",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "Fast food is a type of mass-produced food designed for commercial resale, with a strong priority placed on speed of service.",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  PannableRatingBar(
                    rate: 3.5,
                    items: List.generate(
                        5,
                        (index) => const RatingWidget(
                              selectedColor: Colors.yellow,
                              unSelectedColor: Colors.grey,
                              child: Icon(
                                Icons.star,
                                size: 36,
                              ),
                            )),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
