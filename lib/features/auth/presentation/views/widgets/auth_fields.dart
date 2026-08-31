import 'package:flutter/widgets.dart';

class AuthFields extends StatelessWidget {
  const AuthFields({super.key, required this.authFields});

  final Widget authFields;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: authFields,
      ),
    );
  }
}
