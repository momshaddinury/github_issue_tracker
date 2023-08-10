import 'package:dartz/dartz.dart';
import 'package:github_issue_tracker/src/core/network/error_model.dart';
import 'package:github_issue_tracker/src/core/network/request_handler.dart';
import 'package:github_issue_tracker/src/feature/profile/data/data_sources/profile_data_source.dart';
import 'package:github_issue_tracker/src/feature/profile/data/models/profile_response_model.dart';
import 'package:github_issue_tracker/src/feature/profile/domain/entities/profile_entity.dart';
import 'package:github_issue_tracker/src/feature/profile/domain/repositories/profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  ProfileRepositoryImpl({required this.dataSource});

  final ProfileDataSource dataSource;

  @override
  Future<Either<ErrorModel, ProfileEntity>> profile(String username) async {
    return await dataSource.fetchProfile(username).guard(
          (data) => ProfileResponseModel.fromJson(data),
        );
  }
}
