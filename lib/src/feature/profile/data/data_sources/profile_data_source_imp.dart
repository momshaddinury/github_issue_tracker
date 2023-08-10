import 'package:network/network.dart';

import 'profile_data_source.dart';

class ProfileDataSourceImpl implements ProfileDataSource {
  ProfileDataSourceImpl({
    required this.client,
  });

  final RestClient client;

  @override
  Future<Response> fetchProfile(String username) async {
    return await client.get(
      APIType.protected,
      'users/$username',
    );
  }
}
