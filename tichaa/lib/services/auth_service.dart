/// Sample authentication service for Tichaa app
/// Replace mock logic with real backend integration (e.g., Firebase) as needed.

import '../models/user_model.dart';

class AuthService {
  UserModel? _currentUser;

  /// Mock sign up method
  Future<UserModel> signUp({
    required String name,
    required String email,
    required String password,
    required String userType,
    String? ageGroup,
    required String language,
  }) async {
    // Simulate network delay
    await Future.delayed(Duration(seconds: 1));
    // Return a mock user
    _currentUser = UserModel(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      name: name,
      email: email,
      userType: userType,
      ageGroup: ageGroup,
      language: language,
      avatar: null,
      createdAt: DateTime.now(),
    );
    return _currentUser!;
  }

  /// Mock login method
  Future<UserModel?> login({
    required String email,
    required String password,
  }) async {
    // Simulate network delay
    await Future.delayed(Duration(seconds: 1));
    // Return the mock user if email matches
    if (_currentUser != null && _currentUser!.email == email) {
      return _currentUser;
    }
    return null;
  }

  /// Mock logout method
  Future<void> logout() async {
    await Future.delayed(Duration(milliseconds: 500));
    _currentUser = null;
  }

  /// Get the currently logged-in user
  UserModel? getCurrentUser() {
    return _currentUser;
  }
}
