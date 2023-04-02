import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget desktop;
  final Widget mobile;
  final Widget tablet;
  const ResponsiveWidget({
    Key? key,
    required this.desktop,
    required this.mobile,
    required this.tablet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= 1100) {
        return desktop;
      }
      // If width it less then 1100 and more then 650 we consider it as tablet
      else if (constraints.maxWidth >= 650) {
        return tablet;
      }
      // Or less then that we called it mobile
      else {
        return mobile;
      }
    });
  }
}
