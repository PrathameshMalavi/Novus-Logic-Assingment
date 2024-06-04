import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/rocket.dart';


class RocketListItem extends StatelessWidget {
  final Rocket rocket;

  RocketListItem({required this.rocket});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.indigo.shade50,
      child: Container(
        height: 180,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Row(
          children: [
            SizedBox(
              height: 155,
              width: 155,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.network(rocket.flickrImage, fit: BoxFit.cover,)
              )
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: Container()),
                  Text(rocket.name,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.exo2(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      color: Colors.indigo,
                      letterSpacing: 1.5,
                      // You can add more styles here as needed
                    ),
                  ),
                  Expanded(child: Container()),
                  buildDetailsCard(
                    text: rocket.country,
                    textIcon: Icons.flag,
                    widthSpace: 80
                  ),
                  //Expanded(child: Container()),

                  buildDetailsCard(
                      text: "Engines : ${rocket.enginesCount}",
                      textIcon: Icons.energy_savings_leaf_outlined,
                      widthSpace: 80
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      // child: ListTile(
      //   leading: Image.network(rocket.flickrImage),
      //   title: Text(rocket.name),
      //   subtitle: Text('${rocket.country}, Engines: ${rocket.enginesCount}'),
      // ),
    );
  }

  Widget buildDetailsCard({
    required String text,
    required IconData textIcon,
    required double widthSpace,
  }) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              textIcon,
              size: 18,
            ),
            SizedBox(width: 10),
            Container(
              width: widthSpace,
              child: Text(
                text,
                maxLines: 2,
                style: GoogleFonts.exo2(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
