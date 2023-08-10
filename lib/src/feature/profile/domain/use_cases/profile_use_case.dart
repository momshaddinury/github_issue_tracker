import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_issue_tracker/src/core/network/error_model.dart';
import 'package:github_issue_tracker/src/feature/profile/domain/entities/profile_entity.dart';
import 'package:github_issue_tracker/src/feature/profile/domain/repositories/profile_repository.dart';

final profileUseCaseProvider = Provider(
  (ref) {
    return ProfileUseCase(
      ref.read(profileRepositoryProvider),
    );
  },
);

class ProfileUseCase {
  ProfileUseCase(this._repository);

  final ProfileRepository _repository;

  Future<Either<ErrorModel, ProfileEntity>> profile(String username) async {
    return await _repository.profile(username);
  }
}
