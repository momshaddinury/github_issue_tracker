import 'package:github_issue_tracker/src/feature/issues/domain/entity/issue_entity.dart';

class IssueResponseModel extends IssueEntity {
  IssueResponseModel({
    required super.url,
    required super.repositoryUrl,
    required super.labelsUrl,
    required super.commentsUrl,
    required super.eventsUrl,
    required super.htmlUrl,
    required super.id,
    required super.nodeId,
    required super.number,
    required super.title,
    required super.user,
    required super.state,
    required super.locked,
    required super.assignee,
    required super.assignees,
    required super.milestone,
    required super.comments,
    required super.createdAt,
    required super.updatedAt,
    required super.closedAt,
    required super.authorAssociation,
    required super.activeLockReason,
    required super.body,
    required super.timelineUrl,
    required super.performedViaGithubApp,
    required super.stateReason,
    required super.draft,
  });

  factory IssueResponseModel.fromJson(Map<String, dynamic> json) =>
      IssueResponseModel(
        url: json["url"],
        repositoryUrl: json["repository_url"],
        labelsUrl: json["labels_url"],
        commentsUrl: json["comments_url"],
        eventsUrl: json["events_url"],
        htmlUrl: json["html_url"],
        id: json["id"],
        nodeId: json["node_id"],
        number: json["number"],
        title: json["title"],
        user: UserResponseModel.fromJson(json["user"]),
        state: json["state"],
        locked: json["locked"],
        assignee: json["assignee"] == null
            ? null
            : UserResponseModel.fromJson(json["assignee"]),
        assignees: List<UserResponseModel>.from(
            json["assignees"].map((x) => UserResponseModel.fromJson(x))),
        milestone: json["milestone"],
        comments: json["comments"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        closedAt: json["closed_at"],
        authorAssociation: json["author_association"],
        activeLockReason: json["active_lock_reason"],
        body: json["body"] ?? "",
        timelineUrl: json["timeline_url"],
        performedViaGithubApp: json["performed_via_github_app"],
        stateReason: json["state_reason"],
        draft: json["draft"] ?? false,
      );
}

class UserResponseModel extends UserEntity {
  UserResponseModel({
    required super.login,
    required super.id,
    required super.nodeId,
    required super.avatarUrl,
    required super.gravatarId,
    required super.url,
    required super.htmlUrl,
    required super.followersUrl,
    required super.followingUrl,
    required super.gistsUrl,
    required super.starredUrl,
    required super.subscriptionsUrl,
    required super.organizationsUrl,
    required super.reposUrl,
    required super.eventsUrl,
    required super.receivedEventsUrl,
    required super.type,
    required super.siteAdmin,
  });

  factory UserResponseModel.fromJson(Map<String, dynamic> json) =>
      UserResponseModel(
        login: json["login"],
        id: json["id"],
        nodeId: json["node_id"],
        avatarUrl: json["avatar_url"],
        gravatarId: json["gravatar_id"],
        url: json["url"],
        htmlUrl: json["html_url"],
        followersUrl: json["followers_url"],
        followingUrl: json["following_url"],
        gistsUrl: json["gists_url"],
        starredUrl: json["starred_url"],
        subscriptionsUrl: json["subscriptions_url"],
        organizationsUrl: json["organizations_url"],
        reposUrl: json["repos_url"],
        eventsUrl: json["events_url"],
        receivedEventsUrl: json["received_events_url"],
        type: json["type"],
        siteAdmin: json["site_admin"],
      );
}
