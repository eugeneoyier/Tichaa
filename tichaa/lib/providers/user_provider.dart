import 'package:flutter/material.dart';
import '../models/user_model.dart';

/// Provider for managing the current user in the Tichaa app
class UserProvider extends ChangeNotifier {
  UserModel? _user;

  /// Get the current user
  UserModel? get user => _user;

  /// Set the current user and notify listeners
  void setUser(UserModel user) {
    _user = user;
    notifyListeners();
  }

  /// Clear the current user and notify listeners
  void clearUser() {
    _user = null;
    notifyListeners();
  }
}
