import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_issue_tracker/src/core/network/error_model.dart';
import 'package:github_issue_tracker/src/feature/issues/domain/entity/issue_entity.dart';
import 'package:github_issue_tracker/src/feature/issues/domain/repositories/issue_repository.dart';

final issuesUseCaseProvider = Provider(
  (ref) {
    return IssuesUseCase(
      ref.read(issueRepositoryProvider),
    );
  },
);

class IssuesUseCase {
  IssuesUseCase(this._repository);

  final IssueRepository _repository;

  Future<Either<ErrorModel, List<IssueEntity>>> issueList() async {
    return await _repository.issueList();
  }
}
