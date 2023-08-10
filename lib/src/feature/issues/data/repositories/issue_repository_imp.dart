import 'package:dartz/dartz.dart';
import 'package:github_issue_tracker/src/core/network/error_model.dart';
import 'package:github_issue_tracker/src/core/network/request_handler.dart';
import 'package:github_issue_tracker/src/feature/issues/data/data_sources/issue_data_source.dart';
import 'package:github_issue_tracker/src/feature/issues/data/models/issue_model.dart';
import 'package:github_issue_tracker/src/feature/issues/domain/entity/issue_entity.dart';
import 'package:github_issue_tracker/src/feature/issues/domain/repositories/issue_repository.dart';

class IssueRepositoryImpl implements IssueRepository {
  IssueRepositoryImpl({required this.dataSource});

  final IssueDataSource dataSource;

  @override
  Future<Either<ErrorModel, List<IssueEntity>>> issueList() async {
    return await dataSource.fetchIssueList().guard(
          (data) => (data as List).map((e) {
            return IssueResponseModel.fromJson(e);
          }).toList(),
        );
  }
}
