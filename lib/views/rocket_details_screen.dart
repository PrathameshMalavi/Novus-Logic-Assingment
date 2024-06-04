import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/rocket.dart';

class RocketDetailsScreen extends StatelessWidget {
  final Rocket rocket;

  RocketDetailsScreen({required this.rocket});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(rocket.name , style: GoogleFonts.exo2(),),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        elevation: 10,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Card(
            elevation: 4.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.6 , color: Colors.indigo),
                      borderRadius: BorderRadius.circular(16)
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(rocket.flickrImage),
                    ),
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: Text(
                      rocket.name,
                      style: GoogleFonts.exo2(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  customListTile(Icons.flag , 'Country' , rocket.country),
                  customListTile(Icons.engineering , 'Engines Count' , '${rocket.enginesCount}'),
                  customListTile(Icons.height , 'Height' , '${rocket.heightMeters} meters'),
                  customListTile(Icons.circle , 'Diameter' , '${rocket.diameterMeters} meters'),
                  customListTile(Icons.line_weight , 'Mass' , '${rocket.massKg} kg'),
                  customListTile(Icons.attach_money , 'Cost per Launch' , '\$${rocket.costPerLaunch}'),
                  customListTile(Icons.check_circle , 'Success Rate' , '${rocket.successRatePct}%'),
                  customListTile(Icons.calendar_today , 'First Flight' , rocket.firstFlight),
                  customListTile(Icons.line_weight , 'Mass' , '${rocket.massKg} kg'),
                  SizedBox(height: 16),
                  Text(
                    'Description:',
                    style: GoogleFonts.exo2(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    rocket.description,
                    style: GoogleFonts.exo2(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget customListTile(IconData icon , String label , String value) {
    return ListTile(
      leading: Icon(icon, color: Colors.indigo),
      title: Text(label , style: GoogleFonts.exo2(),),
      subtitle: Text(value , style: GoogleFonts.exo2()),
    );
  }
}
