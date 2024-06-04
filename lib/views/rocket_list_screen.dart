// lib/views/rocket_list_screen.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../viewmodels/rockets_viewmodel.dart';
import 'rocket_list_item.dart';
import '../models/rocket.dart';

class RocketListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SpaceX Rockets' , style: GoogleFonts.exo2(),),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        elevation: 10,
        leading: Container(
            margin: EdgeInsets.only(left: 10 ,top: 7 , bottom: 7),
            child: CircleAvatar(backgroundColor:Colors.blueAccent.shade100 ,child: Icon(Icons.rocket))),
        actions: [
          PopupMenuButton<String>(
            onSelected: (String value) {
              if (value == 'about') {
                Navigator.pushNamed(context, '/about');
              } else if (value == 'about_spacex') {
                Navigator.pushNamed(context, '/about_spacex');
              }
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem<String>(
                  value: 'about_spacex',
                  child: Row(
                    children: [
                      Icon(Icons.rocket_launch_rounded, color: Colors.black),
                      SizedBox(width: 8),
                      Text('About SpaceX Organization'),
                    ],
                  ),
                ),
                PopupMenuItem<String>(
                  value: 'about',
                  child: Row(
                    children: [
                      Icon(Icons.person, color: Colors.black),
                      SizedBox(width: 8),
                      Text('About Developer'),
                    ],
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      body: Consumer<RocketsViewModel>(
        builder: (context, viewModel, child) {
          if (viewModel.isLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (viewModel.errorMessage != null) {
            return Center(child: Text('Error: ${viewModel.errorMessage}'));
          } else if (viewModel.rockets.isEmpty) {
            return Center(child: Text('No rockets available'));
          } else {
            return ListView.builder(
              itemCount: viewModel.rockets.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/details',
                      arguments: viewModel.rockets[index],
                    );
                  },
                  child: RocketListItem(rocket: viewModel.rockets[index]),
                );
              },
            );
          }
        },
      ),
    );
  }
}
