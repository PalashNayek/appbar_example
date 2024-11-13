import 'package:flutter/material.dart';

class AppBarViewModel extends ChangeNotifier {
  String _title = "Home";

  String get title => _title;

  void updateTitle(String newTitle) {
    _title = newTitle;
    notifyListeners();  // Notify listeners to rebuild UI
  }

  void onMenuItemSelected(String choice) {
    switch (choice) {
      case 'Settings':
        updateTitle("Settings");
        break;
      case 'Profile':
        updateTitle("Profile");
        break;
      case 'Logout':
        updateTitle("Logout");
        break;
      default:
        updateTitle("Home");
    }
  }
}
