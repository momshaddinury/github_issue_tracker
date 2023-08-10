import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_issue_tracker/src/core/network/network.dart';
import 'package:network/network.dart';

import 'issue_data_source_imp.dart';

final issueDataSourceProvider = Provider(
  (ref) {
    return IssueDataSourceImpl(
      client: ref.read(networkProvider),
    );
  },
);

abstract class IssueDataSource {
  Future<Response> fetchIssueList();
}
