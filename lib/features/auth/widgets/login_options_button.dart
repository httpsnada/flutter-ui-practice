import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginOptionsButton extends StatelessWidget {
  String icon;

  LoginOptionsButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Expanded(
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          color: theme.colorScheme.surface.withValues(alpha: 0.5),
          borderRadius: BorderRadius.circular(24),
        ),
        child: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(icon, width: 24, height: 24),
        ),
      ),
    );
  }
}
