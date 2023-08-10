class ProfileEntity {
  String login;
  int id;
  String avatarUrl;
  String name;
  String bio;
  int publicRepos;
  int publicGists;
  int followers;

  ProfileEntity({
    required this.login,
    required this.id,
    required this.avatarUrl,
    required this.name,
    required this.bio,
    required this.publicRepos,
    required this.publicGists,
    required this.followers,
  });
}
