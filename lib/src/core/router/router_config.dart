import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_issue_tracker/src/core/router/routers.dart';
import 'package:github_issue_tracker/src/feature/issues/presentation/pages/issue_details_page.dart';
import 'package:github_issue_tracker/src/feature/issues/presentation/pages/issue_list_page.dart';
import 'package:github_issue_tracker/src/feature/profile/presentation/pages/profile_page.dart';
import 'package:go_router/go_router.dart';

final goRouterProvider = Provider((ref) => _router);

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: Routes.issueList.name,
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: const IssueListPage(),
        );
      },
      routes: [
        GoRoute(
          path: Routes.issueDetails.name,
          name: Routes.issueDetails.name,
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: const IssueDetailsPage(),
            );
          },
        ),
        GoRoute(
          path: Routes.profile.name,
          name: Routes.profile.name,
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: ProfilePage(
                username: state.queryParameters['username']!,
              ),
            );
          },
        ),
      ],
    ),
  ],
);
