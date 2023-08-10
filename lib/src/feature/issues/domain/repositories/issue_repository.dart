import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_issue_tracker/src/core/network/error_model.dart';
import 'package:github_issue_tracker/src/feature/issues/data/data_sources/issue_data_source.dart';
import 'package:github_issue_tracker/src/feature/issues/data/repositories/issue_repository_imp.dart';
import 'package:github_issue_tracker/src/feature/issues/domain/entity/issue_entity.dart';

final issueRepositoryProvider = Provider(
  (ref) {
    return IssueRepositoryImpl(
      dataSource: ref.read(issueDataSourceProvider),
    );
  },
);

abstract class IssueRepository {
  Future<Either<ErrorModel, List<IssueEntity>>> issueList();
}
