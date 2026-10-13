class LoginModel {
  final String accessToken;
  final String refreshToken;
  final String tokenType;

  LoginModel({
    required this.accessToken,
    required this.refreshToken,
    required this.tokenType,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      accessToken: json['access_token']?.toString() ?? '',
      refreshToken: json['refresh_token']?.toString() ?? '',
      tokenType: json['token_type']?.toString() ?? '',
    );
  }
}