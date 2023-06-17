import 'dart:convert';

import 'package:bs_test/src/domain/models/license_model.dart';
import 'package:bs_test/src/domain/models/user_model.dart';

class RepositoryModel {
  int id = 0;
  String nodeId = "";
  String name = "";
  String fullName = "";
  bool private = false;
  UserModel owner;
  String htmlUrl = "";
  String description = "";
  bool fork = false;
  String url = "";
  String forksUrl = "";
  String keysUrl = "";
  String collaboratorsUrl = "";
  String teamsUrl = "";
  String hooksUrl = "";
  String issueEventsUrl = "";
  String eventsUrl = "";
  String assigneesUrl = "";
  String branchesUrl = "";
  String tagsUrl = "";
  String blobsUrl = "";
  String gitTagsUrl = "";
  String gitRefsUrl = "";
  String treesUrl = "";
  String statusesUrl = "";
  String languagesUrl = "";
  String stargazersUrl = "";
  String contributorsUrl = "";
  String subscribersUrl = "";
  String subscriptionUrl = "";
  String commitsUrl = "";
  String gitCommitsUrl = "";
  String commentsUrl = "";
  String issueCommentUrl = "";
  String contentsUrl = "";
  String compareUrl = "";
  String mergesUrl = "";
  String archiveUrl = "";
  String downloadsUrl = "";
  String issuesUrl = "";
  String pullsUrl = "";
  String milestonesUrl = "";
  String notificationsUrl = "";
  String labelsUrl = "";
  String releasesUrl = "";
  String deploymentsUrl = "";
  String createdAt = "";
  String updatedAt = "";
  String pushedAt = "";
  String gitUrl = "";
  String sshUrl = "";
  String cloneUrl = "";
  String svnUrl = "";
  String homepage  = "";
  int size = 0;
  int stargazersCount = 0;
  int watchersCount = 0;
  String language  = "";
  bool hasIssues = false;
  bool hasProjects = false;
  bool hasDownloads = false;
  bool hasWiki = false;
  bool hasPages = false;
  bool hasDiscussions = false;
  int forksCount = 0;
  String mirrorUrl = "";
  bool archived = false;
  bool disabled = false;
  int openIssuesCount = 0;
  LicenseModel license;
  bool allowForking = false;
  bool isTemplate = false;
  bool webCommitSignoffRequired = false;
  List<String> topics = [];
  String visibility = "";
  int forks = 0;
  int openIssues = 0;
  int watchers = 0;
  String defaultBranch = "";
  String tempCloneToken = "";
  UserModel organization;
  int networkCount = 0;
  int subscribersCount = 0;
  RepositoryModel({
    required this.id,
    required this.nodeId,
    required this.name,
    required this.fullName,
    required this.private,
    required this.owner,
    required this.htmlUrl,
    required this.description,
    required this.fork,
    required this.url,
    required this.forksUrl,
    required this.keysUrl,
    required this.collaboratorsUrl,
    required this.teamsUrl,
    required this.hooksUrl,
    required this.issueEventsUrl,
    required this.eventsUrl,
    required this.assigneesUrl,
    required this.branchesUrl,
    required this.tagsUrl,
    required this.blobsUrl,
    required this.gitTagsUrl,
    required this.gitRefsUrl,
    required this.treesUrl,
    required this.statusesUrl,
    required this.languagesUrl,
    required this.stargazersUrl,
    required this.contributorsUrl,
    required this.subscribersUrl,
    required this.subscriptionUrl,
    required this.commitsUrl,
    required this.gitCommitsUrl,
    required this.commentsUrl,
    required this.issueCommentUrl,
    required this.contentsUrl,
    required this.compareUrl,
    required this.mergesUrl,
    required this.archiveUrl,
    required this.downloadsUrl,
    required this.issuesUrl,
    required this.pullsUrl,
    required this.milestonesUrl,
    required this.notificationsUrl,
    required this.labelsUrl,
    required this.releasesUrl,
    required this.deploymentsUrl,
    required this.createdAt,
    required this.updatedAt,
    required this.pushedAt,
    required this.gitUrl,
    required this.sshUrl,
    required this.cloneUrl,
    required this.svnUrl,
    required this.homepage,
    required this.size,
    required this.stargazersCount,
    required this.watchersCount,
    required this.language,
    required this.hasIssues,
    required this.hasProjects,
    required this.hasDownloads,
    required this.hasWiki,
    required this.hasPages,
    required this.hasDiscussions,
    required this.forksCount,
    required this.mirrorUrl,
    required this.archived,
    required this.disabled,
    required this.openIssuesCount,
    required this.license,
    required this.allowForking,
    required this.isTemplate,
    required this.webCommitSignoffRequired,
    required this.topics,
    required this.visibility,
    required this.forks,
    required this.openIssues,
    required this.watchers,
    required this.defaultBranch,
    required this.tempCloneToken,
    required this.organization,
    required this.networkCount,
    required this.subscribersCount
  });
  RepositoryModel copyWith({
    int? id,
    String? nodeId,
    String? name,
    String? fullName,
    bool? private,
    UserModel? owner,
    String? htmlUrl,
    String? description,
    bool? fork,
    String? url,
    String? forksUrl,
    String? keysUrl,
    String? collaboratorsUrl,
    String? teamsUrl,
    String? hooksUrl,
    String? issueEventsUrl,
    String? eventsUrl,
    String? assigneesUrl,
    String? branchesUrl,
    String? tagsUrl,
    String? blobsUrl,
    String? gitTagsUrl,
    String? gitRefsUrl,
    String? treesUrl,
    String? statusesUrl,
    String? languagesUrl,
    String? stargazersUrl,
    String? contributorsUrl,
    String? subscribersUrl,
    String? subscriptionUrl,
    String? commitsUrl,
    String? gitCommitsUrl,
    String? commentsUrl,
    String? issueCommentUrl,
    String? contentsUrl,
    String? compareUrl,
    String? mergesUrl,
    String? archiveUrl,
    String? downloadsUrl,
    String? issuesUrl,
    String? pullsUrl,
    String? milestonesUrl,
    String? notificationsUrl,
    String? labelsUrl,
    String? releasesUrl,
    String? deploymentsUrl,
    String? createdAt,
    String? updatedAt,
    String? pushedAt,
    String? gitUrl,
    String? sshUrl,
    String? cloneUrl,
    String? svnUrl,
    String? homepage,
    int? size,
    int? stargazersCount,
    int? watchersCount,
    String? language,
    bool? hasIssues,
    bool? hasProjects,
    bool? hasDownloads,
    bool? hasWiki,
    bool? hasPages,
    bool? hasDiscussions,
    int? forksCount,
    String? mirrorUrl,
    bool? archived,
    bool? disabled,
    int? openIssuesCount,
    LicenseModel? license,
    bool? allowForking,
    bool? isTemplate,
    bool? webCommitSignoffRequired,
    List<String>? topics,
    String? visibility,
    int? forks,
    int? openIssues,
    int? watchers,
    String? defaultBranch,
    String? tempCloneToken,
    UserModel? organization,
    int? networkCount,
    int? subscribersCount,
  }) {
    return RepositoryModel(
      id: id ?? this.id,
      nodeId: nodeId ?? this.nodeId,
      name: name ?? this.name,
      fullName: fullName ?? this.fullName,
      private: private ?? this.private,
      owner: owner ?? this.owner,
      htmlUrl: htmlUrl ?? this.htmlUrl,
      description: description ?? this.description,
      fork: fork ?? this.fork,
      url: url ?? this.url,
      forksUrl: forksUrl ?? this.forksUrl,
      keysUrl: keysUrl ?? this.keysUrl,
      collaboratorsUrl: collaboratorsUrl ?? this.collaboratorsUrl,
      teamsUrl: teamsUrl ?? this.teamsUrl,
      hooksUrl: hooksUrl ?? this.hooksUrl,
      issueEventsUrl: issueEventsUrl ?? this.issueEventsUrl,
      eventsUrl: eventsUrl ?? this.eventsUrl,
      assigneesUrl: assigneesUrl ?? this.assigneesUrl,
      branchesUrl: branchesUrl ?? this.branchesUrl,
      tagsUrl: tagsUrl ?? this.tagsUrl,
      blobsUrl: blobsUrl ?? this.blobsUrl,
      gitTagsUrl: gitTagsUrl ?? this.gitTagsUrl,
      gitRefsUrl: gitRefsUrl ?? this.gitRefsUrl,
      treesUrl: treesUrl ?? this.treesUrl,
      statusesUrl: statusesUrl ?? this.statusesUrl,
      languagesUrl: languagesUrl ?? this.languagesUrl,
      stargazersUrl: stargazersUrl ?? this.stargazersUrl,
      contributorsUrl: contributorsUrl ?? this.contributorsUrl,
      subscribersUrl: subscribersUrl ?? this.subscribersUrl,
      subscriptionUrl: subscriptionUrl ?? this.subscriptionUrl,
      commitsUrl: commitsUrl ?? this.commitsUrl,
      gitCommitsUrl: gitCommitsUrl ?? this.gitCommitsUrl,
      commentsUrl: commentsUrl ?? this.commentsUrl,
      issueCommentUrl: issueCommentUrl ?? this.issueCommentUrl,
      contentsUrl: contentsUrl ?? this.contentsUrl,
      compareUrl: compareUrl ?? this.compareUrl,
      mergesUrl: mergesUrl ?? this.mergesUrl,
      archiveUrl: archiveUrl ?? this.archiveUrl,
      downloadsUrl: downloadsUrl ?? this.downloadsUrl,
      issuesUrl: issuesUrl ?? this.issuesUrl,
      pullsUrl: pullsUrl ?? this.pullsUrl,
      milestonesUrl: milestonesUrl ?? this.milestonesUrl,
      notificationsUrl: notificationsUrl ?? this.notificationsUrl,
      labelsUrl: labelsUrl ?? this.labelsUrl,
      releasesUrl: releasesUrl ?? this.releasesUrl,
      deploymentsUrl: deploymentsUrl ?? this.deploymentsUrl,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      pushedAt: pushedAt ?? this.pushedAt,
      gitUrl: gitUrl ?? this.gitUrl,
      sshUrl: sshUrl ?? this.sshUrl,
      cloneUrl: cloneUrl ?? this.cloneUrl,
      svnUrl: svnUrl ?? this.svnUrl,
      homepage: homepage ?? this.homepage,
      size: size ?? this.size,
      stargazersCount: stargazersCount ?? this.stargazersCount,
      watchersCount: watchersCount ?? this.watchersCount,
      language: language ?? this.language,
      hasIssues: hasIssues ?? this.hasIssues,
      hasProjects: hasProjects ?? this.hasProjects,
      hasDownloads: hasDownloads ?? this.hasDownloads,
      hasWiki: hasWiki ?? this.hasWiki,
      hasPages: hasPages ?? this.hasPages,
      hasDiscussions: hasDiscussions ?? this.hasDiscussions,
      forksCount: forksCount ?? this.forksCount,
      mirrorUrl: mirrorUrl ?? this.mirrorUrl,
      archived: archived ?? this.archived,
      disabled: disabled ?? this.disabled,
      openIssuesCount: openIssuesCount ?? this.openIssuesCount,
      license: license ?? this.license,
      allowForking: allowForking ?? this.allowForking,
      isTemplate: isTemplate ?? this.isTemplate,
      webCommitSignoffRequired: webCommitSignoffRequired ?? this.webCommitSignoffRequired,
      topics: topics ?? this.topics,
      visibility: visibility ?? this.visibility,
      forks: forks ?? this.forks,
      openIssues: openIssues ?? this.openIssues,
      watchers: watchers ?? this.watchers,
      defaultBranch: defaultBranch ?? this.defaultBranch,
      tempCloneToken: tempCloneToken ?? this.tempCloneToken,
      organization: organization ?? this.organization,
      networkCount: networkCount ?? this.networkCount,
      subscribersCount: subscribersCount ?? this.subscribersCount
    );
  }
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'node_id': nodeId,
      'name': name,
      'full_name': fullName,
      'private': private,
      "owner": owner.toMap(),
      "html_url": htmlUrl,
      "description": description,
      "fork": fork,
      "url": url,
      "forks_url": forksUrl,
      "keys_url": keysUrl,
      "collaborators_url": collaboratorsUrl,
      "teams_url": teamsUrl,
      "hooks_url": hooksUrl,
      "issue_events_url": issueEventsUrl,
      "events_url": eventsUrl,
      "assignees_url": assigneesUrl,
      "branches_url": branchesUrl,
      "tags_url": tagsUrl,
      "blobs_url": blobsUrl,
      "git_tags_url": gitTagsUrl,
      "git_refs_url": gitRefsUrl,
      "trees_url": treesUrl,
      "statuses_url": statusesUrl,
      "languages_url": languagesUrl,
      "stargazers_url": stargazersUrl,
      "contributors_url": contributorsUrl,
      "subscribers_url": subscribersUrl,
      "subscription_url": subscriptionUrl,
      "commits_url": commitsUrl,
      "git_commits_url": gitCommitsUrl,
      "comments_url": commentsUrl,
      "issue_comment_url": issueCommentUrl,
      "contents_url": contentsUrl,
      "compare_url": compareUrl,
      "merges_url": mergesUrl,
      "archive_url": archiveUrl,
      "downloads_url": downloadsUrl,
      "issues_url": issuesUrl,
      "pulls_url": pullsUrl,
      "milestones_url": milestonesUrl,
      "notifications_url": notificationsUrl,
      "labels_url": labelsUrl,
      "releases_url": releasesUrl,
      "deployments_url": deploymentsUrl,
      "created_at": createdAt,
      "updated_at": updatedAt,
      "pushed_at": pushedAt,
      "git_url": gitUrl,
      "ssh_url": sshUrl,
      "clone_url": cloneUrl,
      "svn_url": svnUrl,
      "homepage": homepage,
      "size": size,
      "stargazers_count": stargazersCount,
      "watchers_count": watchersCount,
      "language": language,
      "has_issues": hasIssues,
      "has_projects": hasProjects,
      "has_downloads": hasDownloads,
      "has_wiki": hasWiki,
      "has_pages": hasPages,
      "has_discussions": hasDiscussions,
      "forks_count": forksCount,
      "mirror_url": mirrorUrl,
      "archived": archived,
      "disabled": disabled,
      "open_issues_count": openIssuesCount,
      "license": license.toMap(),
      "allow_forking": allowForking,
      "is_template": isTemplate,
      "web_commit_signoff_required": webCommitSignoffRequired,
      "topics": topics,
      "visibility": visibility,
      "forks": forks,
      "openIssues": openIssues,
      "watchers": watchers,
      "default_branch": defaultBranch,
      "temp_clone_token": tempCloneToken,
      "organization": organization.toMap(),
      "network_count": networkCount,
      "subscribers_count": subscribersCount
    };
  }

  factory RepositoryModel.fromMap(Map<String, dynamic> map) {
    return RepositoryModel(
      id: map['id'] != null ? map['id'] is int ? map['id'] as int : 0 : 0,
      nodeId: map['node_id'] != null ? map['node_id'] is String ? map['node_id'] as String : "" : "",
      name: map['name'] != null ? map['name'] as String : "",
      fullName: map['full_name'] != null ? map['full_name'] as String : "",
      private: map['private'] != null ? map['private'] is bool ? map['private'] as bool : false : false,
      owner: map['owner'] != null ? map['owner'] is Map<String, dynamic> ? UserModel.fromMap(map['owner'] as Map<String, dynamic>) : UserModel.fromMap(json.decode(map['owner']) as Map<String, dynamic>) : UserModel.fromMap({}),
      htmlUrl: map['html_url'] != null ? map['html_url'] as String : "",
      description: map['description'] != null ? map['description'] as String : "",
      fork: map['fork'] != null ? map['fork'] is bool ? map['fork'] as bool : false  : false,
      url: map['url'] != null ? map['url'] as String : "",
      forksUrl: map['forks_url'] != null ? map['forks_url'] as String : "",
      keysUrl: map['keys_url'] != null ? map['keys_url'] as String : "",
      collaboratorsUrl: map['collaborators_url'] != null ? map['collaborators_url'] as String : "",
      teamsUrl: map['teams_url'] != null ? map['teams_url'] as String : "",
      hooksUrl: map['hooks_url'] != null ? map['hooks_url'] as String : "",
      issueEventsUrl: map['issue_events_url'] != null ? map['issue_events_url'] as String : "",
      eventsUrl: map['events_url'] != null ? map['events_url'] as String : "",
      assigneesUrl: map['assignees_url'] != null ? map['assignees_url'] as String : "",
      branchesUrl: map['branches_url'] != null ? map['branches_url'] as String : "",
      tagsUrl: map['tags_url'] != null ? map['tags_url'] as String : "",
      blobsUrl: map['blobs_url'] != null ? map['blobs_url'] as String : "",
      gitTagsUrl: map['git_tags_url'] != null ? map['git_tags_url'] as String : "",
      gitRefsUrl: map['git_refs_url'] != null ? map['git_refs_url'] as String : "",
      treesUrl: map['trees_url'] != null ? map['trees_url'] as String : "",
      statusesUrl: map['statuses_url'] != null ? map['statuses_url'] as String : "",
      languagesUrl: map['languages_url'] != null ? map['languages_url'] as String : "",
      stargazersUrl: map['stargazers_url'] != null ? map['stargazers_url'] as String : "",
      contributorsUrl: map['contributors_url'] != null ? map['contributors_url'] as String : "",
      subscribersUrl: map['subscribers_url'] != null ? map['subscribers_url'] as String : "",
      subscriptionUrl: map['subscription_url'] != null ? map['subscription_url'] as String : "",
      commitsUrl: map['commits_url'] != null ? map['commits_url'] as String : "",
      gitCommitsUrl: map['git_commits_url'] != null ? map['git_commits_url'] as String : "",
      commentsUrl: map['comments_url'] != null ? map['comments_url'] as String : "",
      issueCommentUrl: map['issue_comment_url'] != null ? map['issue_comment_url'] as String : "",
      contentsUrl: map['contents_url'] != null ? map['contents_url'] as String : "",
      compareUrl: map['compare_url'] != null ? map['compare_url'] as String : "",
      mergesUrl: map['merges_url'] != null ? map['merges_url'] as String : "",
      archiveUrl: map['archive_url'] != null ? map['archive_url'] as String : "",
      downloadsUrl: map['downloads_url'] != null ? map['downloads_url'] as String : "",
      issuesUrl: map['issues_url'] != null ? map['issues_url'] as String : "",
      pullsUrl: map['pulls_url'] != null ? map['pulls_url'] as String : "",
      milestonesUrl: map['milestones_url'] != null ? map['milestones_url'] as String : "",
      notificationsUrl: map['notifications_url'] != null ? map['notifications_url'] as String : "",
      labelsUrl: map['labels_url'] != null ? map['labels_url'] as String : "",
      releasesUrl: map['releases_url'] != null ? map['releases_url'] as String : "",
      deploymentsUrl: map['deployments_url'] != null ? map['deployments_url'] as String : "",
      createdAt: map['created_at'] != null ? map['created_at'] as String : "",
      updatedAt: map['updated_at'] != null ? map['updated_at'] as String : "",
      pushedAt: map['pushed_at'] != null ? map['pushed_at'] as String : "",
      gitUrl: map['git_url'] != null ? map['git_url'] as String : "",
      sshUrl: map['ssh_url'] != null ? map['ssh_url'] as String : "",
      cloneUrl: map['clone_url'] != null ? map['clone_url'] as String : "",
      svnUrl: map['svn_url'] != null ? map['svn_url'] as String : "",
      homepage: map['homepage'] != null ? map['homepage'] as String : "",
      size: map['size'] != null ? map['size'] as int : 0,
      stargazersCount: map['stargazers_count'] != null ? map['stargazers_count'] as int : 0,
      watchersCount: map['watchers_count'] != null ? map['watchers_count'] as int : 0,
      language: map['language'] != null ? map['language'] as String : "",
      hasIssues: map['has_issues'] != null ? map['has_issues'] is bool ? map['has_issues'] as bool : false : false,
      hasProjects: map['has_projects'] != null ? map['has_projects'] is bool ? map['has_projects'] as bool : false : false,
      hasDownloads: map['has_downloads'] != null ? map['has_downloads'] is bool ? map['has_downloads'] as bool : false : false,
      hasWiki: map['has_wiki'] != null ? map['has_wiki'] is bool ? map['has_wiki'] as bool : false : false,
      hasPages: map['has_pages'] != null ? map['has_pages'] is bool ? map['has_pages'] as bool : false : false,
      hasDiscussions: map['has_discussions'] != null ? map['has_discussions'] is bool ? map['has_discussions'] as bool : false : false,
      forksCount: map['forks_count'] != null ? map['forks_count'] as int : 0,
      mirrorUrl: map['mirror_url'] != null ? map['mirror_url'] as String : "",
      archived: map['archived'] != null ? map['archived'] is bool ? map['archived'] as bool : false : false,
      disabled: map['disabled'] != null ? map['archived'] is bool ? map['disabled'] as bool : false : false,
      openIssuesCount: map['open_issues_count'] != null ? map['open_issues_count'] as int : 0,
      license: map['license'] != null ? map['license'] is Map<String, dynamic> ? LicenseModel.fromMap(map['license'] as Map<String, dynamic>) : LicenseModel.fromMap(json.decode(map['owner']) as Map<String, dynamic>) :LicenseModel.fromMap({}),
      allowForking: map['allow_forking'] != null ? map['archived'] is bool ? map['allow_forking'] as bool : false : false,
      isTemplate: map['is_template'] != null ? map['archived'] is bool ? map['is_template'] as bool : false : false,
      webCommitSignoffRequired: map['web_commit_signoff_required'] != null ? map['archived'] is bool ? map['web_commit_signoff_required'] as bool : false : false,
      topics: map['topics'] != null ? map['topics'] is List<String> ? List<String>.from(map['topics'].map((e) => e.toString())) : map['topics'].toString().split(", ") : [],
      visibility: map['visibility'] != null ? map['visibility'] as String : "",
      forks: map['forks'] != null ? map['forks'] as int : 0,
      openIssues: map['open_issues'] != null ? map['open_issues'] as int : 0,
      watchers: map['watchers'] != null ? map['watchers'] as int : 0,
      defaultBranch: map['default_branch'] != null ? map['default_branch'] as String : "",
      tempCloneToken: map['temp_clone_token'] != null ? map['temp_clone_token'] as String : "",
      organization: map['organization'] != null ?map['organization'] is Map<String, dynamic> ? UserModel.fromMap(map['organization'] as Map<String, dynamic>) : UserModel.fromMap(json.decode(map['organization']) as Map<String, dynamic>) : UserModel.fromMap({}),
      networkCount: map['network_count'] != null ? map['network_count'] as int : 0,
      subscribersCount: map['subscribers_count'] != null ? map['subscribers_count'] as int : 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory RepositoryModel.fromJson(String source) => RepositoryModel.fromMap(json.decode(source) as Map<String, dynamic>);
  @override
  String toString() {
    return 'ResponseModel(id: $id, nodeId: $nodeId, name: $name, fullName: $fullName, private: $private, owner: $owner, htmlUrl: $htmlUrl, description: $description, fork: $fork, url: $url, forksUrl: $forksUrl, keysUrl: keysUrl, collaboratorsUrl: $collaboratorsUrl, teamsUrl: $teamsUrl, hooksUrl: $hooksUrl, issueEventsUrl: $issueEventsUrl, eventsUrl: $eventsUrl, assigneesUrl: $assigneesUrl, branchesUrl: $branchesUrl, tagsUrl: $tagsUrl, blobsUrl: $blobsUrl, gitTagsUrl: $gitTagsUrl, gitRefsUrl: $gitRefsUrl, treesUrl: $treesUrl, statusesUrl: $statusesUrl, languagesUrl: $languagesUrl, stargazersUrl: $stargazersUrl, contributorsUrl: $contributorsUrl, subscribersUrl: $subscribersUrl, subscriptionUrl: $subscriptionUrl, commitsUrl: $commitsUrl, gitCommitsUrl: $gitCommitsUrl, commentsUrl: $commentsUrl, issueCommentUrl: $issueCommentUrl, contentsUrl: $contentsUrl, compareUrl: $compareUrl, mergesUrl: $mergesUrl, archiveUrl: $archiveUrl, downloadsUrl: $downloadsUrl, issuesUrl: $issuesUrl, pullsUrl: $pullsUrl, milestonesUrl: $milestonesUrl, notificationsUrl: $notificationsUrl, labelsUrl: $labelsUrl, releasesUrl: $releasesUrl, deploymentsUrl: $deploymentsUrl, createdAt: $createdAt, updatedAt: $updatedAt, pushedAt: $pushedAt, gitUrl: $gitUrl, sshUrl: $sshUrl, cloneUrl: $cloneUrl, svnUrl: $svnUrl, homepage: $homepage, size: $size, stargazersCount: $stargazersCount, watchersCount: $watchersCount, language: $language, hasIssues: $hasIssues, hasProjects: $hasProjects, hasDownloads: $hasDownloads, hasWiki: $hasWiki, hasPages: $hasPages, hasDiscussions: $hasDiscussions, forksCount: $forksCount, mirrorUrl: $mirrorUrl, archived: $archived, disabled: $disabled, openIssuesCount: $openIssuesCount, license: $license, allowForking: $allowForking, isTemplate: $isTemplate, webCommitSignoffRequired: $webCommitSignoffRequired, topics: $topics, visibility: $visibility, forks: $forks, openIssues: $openIssues, watchers: $watchers, defaultBranch: $defaultBranch, tempCloneToken: $tempCloneToken, organization: $organization, networkCount: $networkCount, subscribersCount: $subscribersCount)';
  }

  @override
  bool operator ==(covariant RepositoryModel other) {
    if (identical(this, other)) return true;

    return
      other.id == id &&
          other.nodeId == nodeId &&
          other.name == name &&
          other.fullName == fullName &&
          other.private == private &&
          other.owner == owner &&
          other.htmlUrl == htmlUrl &&
          other.description == description &&
          other.fork == fork &&
          other.url == url &&
          other.forksUrl == forksUrl &&
          other.keysUrl == keysUrl &&
          other.collaboratorsUrl == collaboratorsUrl &&
          other.teamsUrl == teamsUrl &&
          other.hooksUrl == hooksUrl &&
          other.issueEventsUrl == issueEventsUrl &&
          other.eventsUrl == eventsUrl &&
          other.assigneesUrl == assigneesUrl &&
          other.branchesUrl == branchesUrl &&
          other.tagsUrl == tagsUrl &&
          other.blobsUrl == blobsUrl &&
          other.gitTagsUrl == gitTagsUrl &&
          other.gitRefsUrl == gitRefsUrl &&
          other.treesUrl == treesUrl &&
          other.statusesUrl == statusesUrl &&
          other.languagesUrl == languagesUrl &&
          other.stargazersUrl == stargazersUrl &&
          other.contributorsUrl == contributorsUrl &&
          other.subscribersUrl == subscribersUrl &&
          other.subscriptionUrl == subscriptionUrl &&
          other.commitsUrl == commitsUrl &&
          other.gitCommitsUrl == gitCommitsUrl &&
          other.commentsUrl == commentsUrl &&
          other.issueCommentUrl == issueCommentUrl &&
          other.contentsUrl == contentsUrl &&
          other.compareUrl == compareUrl &&
          other.mergesUrl == mergesUrl &&
          other.archiveUrl == archiveUrl &&
          other.downloadsUrl == downloadsUrl &&
          other.issuesUrl == issuesUrl &&
          other.pullsUrl == pullsUrl &&
          other.milestonesUrl == milestonesUrl &&
          other.notificationsUrl == notificationsUrl &&
          other.labelsUrl == labelsUrl &&
          other.releasesUrl == releasesUrl &&
          other.deploymentsUrl == deploymentsUrl &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.pushedAt == pushedAt &&
          other.gitUrl == gitUrl &&
          other.sshUrl == sshUrl &&
          other.cloneUrl == cloneUrl &&
          other.svnUrl == svnUrl &&
          other.homepage == homepage &&
          other.size == size &&
          other.stargazersCount == stargazersCount &&
          other.watchersCount == watchersCount &&
          other.language == language &&
          other.hasIssues == hasIssues &&
          other.hasProjects == hasProjects &&
          other.hasDownloads == hasDownloads &&
          other.hasWiki == hasWiki &&
          other.hasPages == hasPages &&
          other.hasDiscussions == hasDiscussions &&
          other.forksCount == forksCount &&
          other.mirrorUrl == mirrorUrl &&
          other.archived == archived &&
          other.disabled == disabled &&
          other.openIssuesCount == openIssuesCount &&
          other.license == license &&
          other.allowForking == allowForking &&
          other.isTemplate == isTemplate &&
          other.webCommitSignoffRequired == webCommitSignoffRequired &&
          other.topics == topics &&
          other.visibility == visibility &&
          other.forks == forks &&
          other.openIssues == openIssues &&
          other.watchers == watchers &&
          other.defaultBranch == defaultBranch &&
          other.tempCloneToken == tempCloneToken &&
          other.organization == organization &&
          other.networkCount == networkCount &&
          other.subscribersCount == subscribersCount;
  }

  @override
  int get hashCode {
    return id.hashCode ^
    nodeId.hashCode ^
    name.hashCode ^
    fullName.hashCode ^
    private.hashCode ^
    owner.hashCode ^
    htmlUrl.hashCode ^
    description.hashCode ^
    fork.hashCode ^
    url.hashCode ^
    forksUrl.hashCode ^
    keysUrl.hashCode ^
    collaboratorsUrl.hashCode ^
    teamsUrl.hashCode ^
    hooksUrl.hashCode ^
    issueEventsUrl.hashCode ^
    eventsUrl.hashCode ^
    assigneesUrl.hashCode ^
    branchesUrl.hashCode ^
    tagsUrl.hashCode ^
    blobsUrl.hashCode ^
    gitTagsUrl.hashCode ^
    gitRefsUrl.hashCode ^
    treesUrl.hashCode ^
    statusesUrl.hashCode ^
    languagesUrl.hashCode ^
    stargazersUrl.hashCode ^
    contributorsUrl.hashCode ^
    subscribersUrl.hashCode ^
    subscriptionUrl.hashCode ^
    commitsUrl.hashCode ^
    gitCommitsUrl.hashCode ^
    commentsUrl.hashCode ^
    issueCommentUrl.hashCode ^
    contentsUrl.hashCode ^
    compareUrl.hashCode ^
    mergesUrl.hashCode ^
    downloadsUrl.hashCode ^
    issuesUrl.hashCode ^
    pullsUrl.hashCode ^
    milestonesUrl.hashCode ^
    notificationsUrl.hashCode ^
    labelsUrl.hashCode ^
    releasesUrl.hashCode ^
    deploymentsUrl.hashCode ^
    createdAt.hashCode ^
    updatedAt.hashCode ^
    pushedAt.hashCode ^
    gitUrl.hashCode ^
    sshUrl.hashCode ^
    cloneUrl.hashCode ^
    svnUrl.hashCode ^
    homepage.hashCode ^
    size.hashCode ^
    stargazersCount.hashCode ^
    watchersCount.hashCode ^
    language.hashCode ^
    hasIssues.hashCode ^
    hasProjects.hashCode ^
    hasDownloads.hashCode ^
    hasWiki.hashCode ^
    hasPages.hashCode ^
    hasDiscussions.hashCode ^
    forksCount.hashCode ^
    mirrorUrl.hashCode ^
    archived.hashCode ^
    disabled.hashCode ^
    openIssuesCount.hashCode ^
    license.hashCode ^
    allowForking.hashCode ^
    isTemplate.hashCode ^
    webCommitSignoffRequired.hashCode ^
    topics.hashCode ^
    visibility.hashCode ^
    forks.hashCode ^
    openIssues.hashCode ^
    watchers.hashCode ^
    defaultBranch.hashCode ^
    tempCloneToken.hashCode ^
    organization.hashCode ^
    networkCount.hashCode ^
    subscribersCount.hashCode;
  }
}