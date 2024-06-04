import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutDeveloperScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Developer' , style: GoogleFonts.exo2(),),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        elevation: 10,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Card(
            elevation: 4.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'About Developer And SpaceX Rockets App',
                    style: GoogleFonts.exo2(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  Text(
                    "I'm Prathamesh Malavi, currently in my 3rd year of BE in Information Technology at Mumbai University. My journey into the world of software development began with Android development in Java during my 2nd year. A year ago, I ventured into Flutter development, adding versatility to my skill set.My expertise lies in programming fundamentals and concepts like Object-Oriented Programming (OOP) and MVC Architecture. I have hands-on experience with Firebase, specializing in Firestore, Realtime Database, and authentication, proficient in both SDKs. I'm passionate about crafting robust solutions that leverage the latest technologies, and I'm eager to continue exploring new avenues in software development.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.exo2(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'This app provides information about various SpaceX rockets, including their specifications, images, and more. It is built using Flutter and showcases the use of REST APIs and provider for state management in Flutter.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.exo2(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Version: 1.0.0',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.exo2(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Author: Prathamesh Malavi',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.exo2(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
