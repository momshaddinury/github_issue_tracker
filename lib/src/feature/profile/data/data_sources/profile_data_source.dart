import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_issue_tracker/src/core/network/network.dart';
import 'package:network/network.dart';

import 'profile_data_source_imp.dart';

final profileDataSourceProvider = Provider((ref) {
  return ProfileDataSourceImpl(
    client: ref.read(networkProvider),
  );
});

abstract class ProfileDataSource {
  Future<Response> fetchProfile(String username);
}
