import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:github_issue_tracker/src/core/theme/data/data.dart';
import 'package:github_issue_tracker/src/core/theme/theme.dart';

import 'src/core/router/router_config.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(393, 852),
      builder: (BuildContext context, Widget? child) {
        return GITTheme(
          themeData: const UIThemeData(),
          child: MaterialApp.router(
            title: 'GitHub Issue Tracker',
            routerConfig: ref.read(goRouterProvider),
          ),
        );
      },
    );
  }
}
