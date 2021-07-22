import 'package:flutter/material.dart';
import 'package:profile_app_flutter/widgets/InfoCard.dart';

const url = "";
const email = "khushishetty@gmail.com";
const phone = "+91 1234566788";
const location = "Bangalore, India";

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      body: SafeArea(
          minimum: const EdgeInsets.only(top: 50),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 80,
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  "https://cdn.allthings.how/wp-content/uploads/2020/10/allthings.how-how-to-change-your-profile-picture-on-google-meet-profile-photo.png",
                ),
              ),
              Text("Khushi H. Shetty",
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.w700)),
              Text("3rd year Computer Science",
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w400)),
              SizedBox(
                height: 50,
                width: 200,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              InfoCard(text: phone, icon: Icons.phone),
              InfoCard(
                text: email,
                icon: Icons.email,
              ),
              InfoCard(
                text: location,
                icon: Icons.location_city,
              )
            ],
          )),
    );
  }
}
