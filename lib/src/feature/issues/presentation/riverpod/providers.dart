import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_issue_tracker/src/core/state/base_state.dart';
import 'package:github_issue_tracker/src/feature/issues/domain/entity/issue_entity.dart';
import 'package:github_issue_tracker/src/feature/issues/domain/use_cases/issues_use_case.dart';

import 'issues_notifier.dart';

final issuesProvider = StateNotifierProvider<IssuesNotifier, BaseState>(
  (ref) {
    return IssuesNotifier(
      ref: ref,
      useCase: ref.watch(issuesUseCaseProvider),
    );
  },
);

final issueDataProvider = Provider<IssueEntity>(
  (ref) => throw UnimplementedError(),
);

final issueDetailsProvider = StateProvider<String?>(
  (ref) => null,
);
