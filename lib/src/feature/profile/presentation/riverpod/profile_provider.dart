import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_issue_tracker/src/feature/profile/domain/entities/profile_entity.dart';
import 'package:github_issue_tracker/src/feature/profile/domain/use_cases/profile_use_case.dart';

final profileProvider =
    FutureProvider.autoDispose.family<ProfileEntity?, String>(
  (ref, value) async {
    try {
      final result = await ref.read(profileUseCaseProvider).profile(value);

      return result.fold(
        (l) => null,
        (r) {
          ref.keepAlive();
          return r;
        },
      );
    } catch (e, stackTrace) {
      log(
        'profileProvider.futureProvider',
        error: e,
        stackTrace: stackTrace,
      );
    }

    return null;
  },
);
