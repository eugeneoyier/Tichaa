/// User model for Tichaa app
class UserModel {
  final String id;
  final String name;
  final String? email;
  final String userType; // 'parent' or 'child'
  final String? ageGroup; // e.g., '6', '9', '12' (for children)
  final String language; // 'en' or 'sw'
  final String? avatar;
  final DateTime createdAt;

  UserModel({
    required this.id,
    required this.name,
    this.email,
    required this.userType,
    this.ageGroup,
    required this.language,
    this.avatar,
    required this.createdAt,
  });

  /// Create a UserModel from JSON
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String?,
      userType: json['userType'] as String,
      ageGroup: json['ageGroup'] as String?,
      language: json['language'] as String,
      avatar: json['avatar'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );
  }

  /// Convert a UserModel to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'userType': userType,
      'ageGroup': ageGroup,
      'language': language,
      'avatar': avatar,
      'createdAt': createdAt.toIso8601String(),
    };
  }
}
