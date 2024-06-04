import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutSpaceXScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About SpaceX ORG' , style: GoogleFonts.exo2(),),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        elevation: 10,
      ),
      body: Padding(
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
                  'About SpaceX',
                  style: GoogleFonts.exo2(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Space Exploration Technologies Corp., better known as SpaceX, is an American aerospace manufacturer and space transport services company headquartered in Hawthorne, California. It was founded in 2002 by Elon Musk with the goal of reducing space transportation costs to enable the colonization of Mars.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.exo2(fontSize: 16),
                ),
                SizedBox(height: 16),
                Text(
                  'SpaceX has developed the Falcon 1, Falcon 9, Falcon Heavy, and Starship launch vehicles, as well as the Dragon spacecraft. It has also been involved in various space missions, including resupply missions to the International Space Station (ISS) under a partnership with NASA.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.exo2(fontSize: 16),
                ),
                SizedBox(height: 16),
                Text(
                  'For more information, visit the SpaceX website.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.exo2(fontSize: 16, fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
