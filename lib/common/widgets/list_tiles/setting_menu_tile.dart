import 'package:flutter/material.dart';
import 'package:kicks/constants/colors.dart';

class TSettingsMenuTile extends StatelessWidget {
  const TSettingsMenuTile({super.key, required this.icon, required this.title, required this.subTitle, this.trailing, });

  final IconData icon;
  final String title, subTitle;
  final Widget? trailing;
  //final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 28, color: TColors.primary),
      title: Text(title, style: Theme.of(context).textTheme.titleMedium),
      subtitle: Text(subTitle, style: Theme.of(context).textTheme.labelMedium),
      trailing: trailing,
      //onTap: onTap,
    );
  }
}