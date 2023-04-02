import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:microsoft_teams/pages/home_page.dart';
import 'package:microsoft_teams/providers/theme_service.dart';
import 'package:microsoft_teams/utils/theme.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));

//  doWhenWindowReady(() {
//     const initialSize = Size(1100, 800);
//     appWindow.minSize = const Size(300, 400);
//     appWindow.size = initialSize;
//     appWindow.alignment = Alignment.center;
//     appWindow.show();
//   });indow.show();
//   }
}

class MyApp extends HookConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appThemeState = ref.watch(appThemeStateNotifier);

    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightThemeData(),
        themeMode:
            appThemeState.isDarkModeEnabled ? ThemeMode.dark : ThemeMode.light,
        home: const HompePage());
  }
}
