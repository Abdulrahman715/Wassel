import 'package:flutter/material.dart';
import 'package:wassel/core/utils/styles.dart';

class ContainerListTile extends StatelessWidget {
  const ContainerListTile({
    super.key,
    required this.mainTitle,
    required this.subTitle,
    required this.editAddress,
    this.onPressed,
    this.leading,
    this.headlineText,
  });

  final String mainTitle;
  final String subTitle;
  final String editAddress;
  final String? headlineText;
  final void Function()? onPressed;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 9.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, 8),
            ),
          ],
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              headlineText ?? "",
              textAlign: TextAlign.right,
              style: Styles.labelText.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20,),
            ListTile(
              leading: leading,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 0.0,
              ),
              title: Text(mainTitle, style: Styles.labelText),
              subtitle: Text(subTitle, style: Styles.textStyle16),
              trailing: TextButton(
                onPressed: onPressed,
                child: Text(
                  editAddress,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
