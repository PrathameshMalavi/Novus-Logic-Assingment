# space_rockets

A Flutter project that fetches a list of rockets from an API Endpoint .

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)



# Space Rockets App Documentation
## Overview

Space Rockets is a mobile application built with Flutter that allows users to explore information about rockets, with a focus on SpaceX. The app provides a user-friendly interface to access details about rockets, learn about SpaceX missions, and discover insights into the developers behind the app.
Features

    Rocket List Screen: Displays a list of rockets with essential information such as name, launch date, and status.
    Rocket Details Screen: Provides detailed information about a specific rocket, including its description, launch date, success rate, and more.
    About SpaceX Screen: Offers insights into SpaceX, its history, missions, and notable achievements.
    About Developer Screen: Introduces the developers behind the Space Rockets app, allowing users to learn more about the team.

### APIs Used

#### Get Rockets API
- **Description**: Retrieves information about rockets, including their names, descriptions, launch dates, success rates, and other relevant details.
- **HTTP Method**: GET
- **Endpoint**: [https://api.spacexdata.com/v4/rockets](https://api.spacexdata.com/v4/rockets)
- **Parameters**: None
- **Response Format**: JSON

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



## Screenshots
<div align="center">
  <img src="https://github.com/PrathameshMalavi/Novus-Logic-Assingment/assets/114830029/38a3eaed-37ed-4d7b-86a1-4fc2da15444a" alt="IMG_20240520_191609" width="200" />
  <img src="https://github.com/PrathameshMalavi/Novus-Logic-Assingment/assets/114830029/11ae6127-82ba-45dc-8efb-dc48074d04dc" alt="IMG_20240520_191616" width="200" />
  <img src="https://github.com/PrathameshMalavi/Novus-Logic-Assingment/assets/114830029/ed94a353-8352-4c69-892b-d765cc7ee377" alt="IMG_20240520_191635" width="200" />
</div>
<div align="center">
  <img src="https://github.com/PrathameshMalavi/Novus-Logic-Assingment/assets/114830029/f805136d-84d1-4cad-a88c-b5a7a293d9eb" alt="IMG_20240520_191649" width="200" />
  <img src="https://github.com/PrathameshMalavi/Novus-Logic-Assingment/assets/114830029/a0591a48-8efe-4780-aa1c-dc12466b27ef" alt="IMG_20240520_191705" width="200" />
</div>


## Contributing

Contributions to the project are welcome. If you encounter any issues or have suggestions for improvements, please feel free to submit a pull request or open an issue on the project's repository.




