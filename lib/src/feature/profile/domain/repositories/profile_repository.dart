import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_issue_tracker/src/core/network/error_model.dart';
import 'package:github_issue_tracker/src/feature/profile/data/data_sources/profile_data_source.dart';
import 'package:github_issue_tracker/src/feature/profile/data/repositories/profile_repository_impl.dart';
import 'package:github_issue_tracker/src/feature/profile/domain/entities/profile_entity.dart';

final profileRepositoryProvider = Provider(
  (ref) {
    return ProfileRepositoryImpl(
      dataSource: ref.read(profileDataSourceProvider),
    );
  },
);

abstract class ProfileRepository {
  Future<Either<ErrorModel, ProfileEntity>> profile(String username);
}
