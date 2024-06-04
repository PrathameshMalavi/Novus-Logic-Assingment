# space_rockets

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


# Space Rockets App Documentation
## Overview

Space Rockets is a mobile application built with Flutter that allows users to explore information about rockets, with a focus on SpaceX. The app provides a user-friendly interface to access details about rockets, learn about SpaceX missions, and discover insights into the developers behind the app.
Features

    Rocket List Screen: Displays a list of rockets with essential information such as name, launch date, and status.
    Rocket Details Screen: Provides detailed information about a specific rocket, including its description, launch date, success rate, and more.
    About SpaceX Screen: Offers insights into SpaceX, its history, missions, and notable achievements.
    About Developer Screen: Introduces the developers behind the Space Rockets app, allowing users to learn more about the team.

## Directory Structure

lib
├── models
│   └── rocket.dart
├── viewmodels
│   └── rockets_viewmodel.dart
└── views
    ├── about_developer_screen.dart
    ├── about_spacex_screen.dart
    ├── rocket_details_screen.dart
    ├── rocket_list_item.dart
    ├── rocket_list_screen.dart
└── main.dart


The directory structure of the Space Rockets app is organized as follows:
- **models**: Contains the data model classes used in the application. For example, `rocket.dart` defines the structure of rocket data.
- **viewmodels**: Holds the view model classes responsible for managing the data and state of the views. The primary view model is `rockets_viewmodel.dart`.
- **views**: Consists of various screens and widgets used in the application, including screens like `about_developer_screen.dart`, `about_spacex_screen.dart`, `rocket_details_screen.dart`, `rocket_list_item.dart`, and `rocket_list_screen.dart`.
- **main.dart**: The entry point of the application, where the app is initialized and run.

### Features

1. **Rocket List Screen**: Displays a list of rockets with essential information such as name, launch date, and status.
2. **Rocket Details Screen**: Provides detailed information about a specific rocket, including its description, launch date, success rate, etc.
3. **About SpaceX Screen**: Offers insights into SpaceX, including its history, missions, and notable achievements.
4. **About Developer Screen**: Introduces the developers behind the Space Rockets app, allowing users to learn more about the team.

### Dependencies

The Space Rockets app relies on the following dependencies:
- **Flutter SDK**: Provides the framework for building the mobile application.
- **Provider**: State management library used to manage the application's state.
- **HTTP**: Package for making HTTP requests to fetch data from APIs.
- **Google Fonts**: Allows the use of custom fonts in the application.
- **Cupertino Icons**: Provides iOS style icons for the application's interface.

For detailed dependency versions, refer to the `pubspec.yaml` file.

## Screenshots

To view screenshots of the Space Rockets app, please refer to the "Screenshots" section below.

