import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_issue_tracker/src/core/state/base_state.dart';
import 'package:github_issue_tracker/src/feature/issues/domain/use_cases/issues_use_case.dart';

class IssuesNotifier extends StateNotifier<BaseState> {
  IssuesNotifier({
    required this.ref,
    required this.useCase,
  }) : super(InitialState());

  final Ref ref;
  final IssuesUseCase useCase;

  Future<void> issueList({bool hasFilter = false}) async {
    state = const LoadingState();
    try {
      final result = await useCase.issueList();
      result.fold(
        (l) {
          log(
            'IssuesNotifier.issueList',
            error: l,
          );
          return state = ErrorState(data: l.toString());
        },
        (r) {
          return state = SuccessState(data: r);
        },
      );
    } catch (e, stacktrace) {
      log(
        'IssuesNotifier.issueList',
        error: e,
        stackTrace: stacktrace,
      );
      state = ErrorState(data: e.toString());
    }
  }
}
