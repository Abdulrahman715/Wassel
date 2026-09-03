import 'package:flutter/material.dart';
import 'package:wassel/core/utils/styles.dart';
// import 'package:wassel/core/utils/styles.dart';

class AccountTile extends StatelessWidget {
  const AccountTile({
    super.key,
    required this.prefixIcon,
    this.trailingIcon = Icons.arrow_forward_ios,
    required this.mainTileText,
    required this.subTileText,
    this.onTap,
  });

  final IconData prefixIcon;
  final IconData trailingIcon;
  final String mainTileText;
  final String subTileText;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      leading: Icon(prefixIcon),
      title: Text(mainTileText, style: Styles.labelText),
      subtitle: Text(subTileText, maxLines: 1, style: Styles.textStyle16),
      trailing: Icon(trailingIcon),
      isThreeLine: false,
      selectedColor: Colors.blueAccent,
      horizontalTitleGap: 40.0,
      minVerticalPadding: 2.0,
      // titleTextStyle: Styles.labelText,
      // minVerticalPadding: 10.0,
      // minLeadingWidth: 90.0,
      // minTileHeight: 60.0,
      onTap: onTap,
    );
  }
}

// margin: EdgeInsets.only(top: 20),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(50),
//         border: Border.all(color: Colors.black45),
//         color: const Color.fromARGB(255, 233, 232, 232),
//       ),
