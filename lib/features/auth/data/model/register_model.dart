class RegisterModel {
  final int id;
  final String name;
  final String email;
  final String password;
  final String phone;

  RegisterModel({
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.id,
  });

  factory RegisterModel.fromJson(Map<String, dynamic> json) {
    return RegisterModel(
      id: json['id'] ?? 0 ,
      name: json['name']?.toString() ?? '',
      email: json['email']?.toString() ?? '',
      password: json['password']?.toString() ?? '',
      phone: json['phone']?.toString() ?? '', 
    );
  }
}
