import 'package:github_issue_tracker/src/feature/profile/domain/entities/profile_entity.dart';

class ProfileResponseModel extends ProfileEntity {
  ProfileResponseModel({
    required super.login,
    required super.id,
    required super.avatarUrl,
    required super.name,
    required super.bio,
    required super.publicRepos,
    required super.publicGists,
    required super.followers,
  });

  factory ProfileResponseModel.fromJson(Map<String, dynamic> json) =>
      ProfileResponseModel(
        login: json["login"],
        id: json["id"],
        avatarUrl: json["avatar_url"],
        name: json["name"] ?? "Not Found",
        bio: json["bio"] ?? "Not Found",
        publicRepos: json["public_repos"] ?? 0,
        publicGists: json["public_gists"] ?? 0,
        followers: json["followers"] ?? 0,
      );
}
