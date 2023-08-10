import 'package:network/network.dart';

import 'issue_data_source.dart';

class IssueDataSourceImpl implements IssueDataSource {
  IssueDataSourceImpl({
    required this.client,
  });

  final RestClient client;

  @override
  Future<Response> fetchIssueList() async {
    return await client.get(
      APIType.protected,
      'repos/flutter/flutter/issues',
      query: {
        'per_page': '100',
      },
    );
  }
}
