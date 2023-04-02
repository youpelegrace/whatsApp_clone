import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:microsoft_teams/pages/desktop/desktop.dart';
import 'package:microsoft_teams/pages/mobile/mobile.dart';
import 'package:microsoft_teams/utils/responsiveness.dart';

class HompePage extends ConsumerWidget {
  const HompePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      body: ResponsiveWidget(
          desktop: DeskTopView(size: _size, textTheme: textTheme),
          mobile: const MobileView(),
          tablet: Column()),
    );
  }
}
