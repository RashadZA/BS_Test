import 'package:bs_test/src/data/datasources/local/local_db.dart';
import 'package:sqflite/sqflite.dart';

class RepoListSortByUpdateTable {
  String repositorySortByUpdated = 'repositorySortByUpdated';
  String primeKey = 'primeKey';
  String id = 'id';
  String node_id = 'node_id';
  String name = 'name';
  String full_name = 'full_name';
  String private = 'private';
  String owner = 'owner';
  String html_url = 'html_url';
  String description = 'description';
  String fork = 'fork';
  String url = 'url';
  String forks_url = 'forks_url';
  String keys_url = 'keys_url';
  String collaborators_url = 'collaborators_url';
  String teams_url = 'teams_url';
  String hooks_url = 'hooks_url';
  String issue_events_url = 'issue_events_url';
  String events_url = 'events_url';
  String assignees_url = 'assignees_url';
  String branches_url = 'branches_url';
  String tags_url = 'tags_url';
  String blobs_url = 'blobs_url';
  String git_tags_url = 'git_tags_url';
  String git_refs_url = 'git_refs_url';
  String trees_url = 'trees_url';
  String statuses_url = 'statuses_url';
  String languages_url = 'languages_url';
  String stargazers_url = 'stargazers_url';
  String contributors_url = 'contributors_url';
  String subscribers_url = 'subscribers_url';
  String subscription_url = 'subscription_url';
  String commits_url = 'commits_url';
  String git_commits_url = 'git_commits_url';
  String comments_url = 'comments_url';
  String issue_comment_url = 'issue_comment_url';
  String contents_url = 'contents_url';
  String compare_url = 'compare_url';
  String merges_url = 'merges_url';
  String archive_url = 'archive_url';
  String downloads_url = 'downloads_url';
  String issues_url = 'issues_url';
  String pulls_url = 'pulls_url';
  String milestones_url = 'milestones_url';
  String notifications_url = 'notifications_url';
  String labels_url = 'labels_url';
  String releases_url = 'releases_url';
  String deployments_url = 'deployments_url';
  String created_at = 'created_at';
  String updated_at = 'updated_at';
  String pushed_at = 'pushed_at';
  String git_url = 'git_url';
  String ssh_url = 'ssh_url';
  String clone_url = 'clone_url';
  String svn_url = 'svn_url';
  String homepage = 'homepage';
  String size = 'size';
  String stargazers_count = 'stargazers_count';
  String watchers_count = 'watchers_count';
  String language = 'language';
  String has_issues = 'has_issues';
  String has_projects = 'has_projects';
  String has_downloads = 'has_downloads';
  String has_wiki = 'has_wiki';
  String has_pages = 'has_pages';
  String has_discussions = 'has_discussions';
  String forks_count = 'forks_count';
  String mirror_url = 'mirror_url';
  String archived = 'archived';
  String disabled = 'disabled';
  String open_issues_count = 'open_issues_count';
  String license = 'license';
  String allow_forking = 'allow_forking';
  String is_template = 'is_template';
  String web_commit_signoff_required = 'web_commit_signoff_required';
  String topics = 'topics';
  String visibility = 'visibility';
  String forks = 'forks';
  String open_issues = 'open_issues';
  String watchers = 'watchers';
  String default_branch = 'default_branch';
  String temp_clone_token = 'temp_clone_token';
  String organization = 'organization';
  String network_count = 'network_count';
  String subscribers_count = 'subscribers_count';


  Future getRepoListSortByUpdate() async {
    Database db = await DatabaseHelper().database;

    var result = await db.query(repositorySortByUpdated, orderBy: '$primeKey ASC');
    print('Get RepoList result: $result');
    return result;
  }


  Future insertRepoListSortByUpdate({
    int? primeKeyRepo,
    int? idRepo,
    String? nodeIdRepo,
    String? nameRepo,
    String? fullNameRepo,
    bool? privateRepo,
    String? ownerRepo,
    String? htmlUrlRepo,
    String? descriptionRepo,
    bool? forkRepo,
    String? urlRepo,
    String? forksUrlRepo,
    String? keysUrlRepo,
    String? collaboratorsUrlRepo,
    String? teamsUrlRepo,
    String? hooksUrlRepo,
    String? issueEventsUrlRepo,
    String? eventsUrlRepo,
    String? assigneesUrlRepo,
    String? branchesUrlRepo,
    String? tagsUrlRepo,
    String? blobsUrlRepo,
    String? gitTagsUrlRepo,
    String? gitRefsUrlRepo,
    String? treesUrlRepo,
    String? statusesUrlRepo,
    String? languagesUrlRepo,
    String? stargazersUrlRepo,
    String? contributorsUrlRepo,
    String? subscribersUrlRepo,
    String? subscriptionUrlRepo,
    String? commitsUrlRepo,
    String? gitCommitsUrlRepo,
    String? commentsUrlRepo,
    String? issueCommentUrlRepo,
    String? contentsUrlRepo,
    String? compareUrlRepo,
    String? mergesUrlRepo,
    String? archiveUrlRepo,
    String? downloadsUrlRepo,
    String? issuesUrlRepo,
    String? pullsUrlRepo,
    String? milestonesUrlRepo,
    String? notificationsUrlRepo,
    String? labelsUrlRepo,
    String? releasesUrlRepo,
    String? deploymentsUrlRepo,
    String? createdAtRepo,
    String? updatedAtRepo,
    String? pushedAtRepo,
    String? gitUrlRepo,
    String? sshUrlRepo,
    String? cloneUrlRepo,
    String? svnUrlRepo,
    String? homepageRepo,
    int? sizeRepo,
    int? stargazersCountRepo,
    int? watchersCountRepo,
    String? languageRepo,
    bool? hasIssuesRepo,
    bool? hasProjectsRepo,
    bool? hasDownloadsRepo,
    bool? hasWikiRepo,
    bool? hasPagesRepo,
    bool? hasDiscussionsRepo,
    int? forksCountRepo,
    String? mirrorUrlRepo,
    bool? archivedRepo,
    bool? disabledRepo,
    int? openIssuesCountRepo,
    String? licenseRepo,
    bool? allowForkingRepo,
    bool? isTemplateRepo,
    bool? webCommitSignoffRequiredRepo,
    String? topicsRepo,
    String? visibilityRepo,
    int? forksRepo,
    int? openIssuesRepo,
    int? watchersRepo,
    String? defaultBranchRepo,
    String? tempCloneTokenRepo,
    String? organizationRepo,
    int? networkCountRepo,
    int? subscribersCountRepo,
  }) async {
    Database db = await DatabaseHelper().database;
    var row = {
      primeKey: primeKeyRepo,
      id: idRepo,
      node_id: nodeIdRepo,
      name: nameRepo,
      full_name: fullNameRepo,
      private: privateRepo,
      owner: ownerRepo,
      html_url: htmlUrlRepo,
      description: descriptionRepo,
      fork: forkRepo,
      url: urlRepo,
      forks_url: forksUrlRepo,
      keys_url: keysUrlRepo,
      collaborators_url: collaboratorsUrlRepo,
      teams_url: teamsUrlRepo,
      hooks_url: hooksUrlRepo,
      issue_events_url: issueEventsUrlRepo,
      events_url: eventsUrlRepo,
      assignees_url: assigneesUrlRepo,
      branches_url: branchesUrlRepo,
      tags_url: tagsUrlRepo,
      blobs_url: blobsUrlRepo,
      git_tags_url: gitTagsUrlRepo,
      git_refs_url: gitRefsUrlRepo,
      trees_url: treesUrlRepo,
      statuses_url: statusesUrlRepo,
      languages_url: languagesUrlRepo,
      stargazers_url: stargazersUrlRepo,
      contributors_url: contributorsUrlRepo,
      subscribers_url: subscribersUrlRepo,
      subscription_url: subscriptionUrlRepo,
      commits_url: commitsUrlRepo,
      git_commits_url: gitCommitsUrlRepo,
      comments_url: commentsUrlRepo,
      issue_comment_url: issueCommentUrlRepo,
      contents_url: contentsUrlRepo,
      compare_url: compareUrlRepo,
      merges_url: mergesUrlRepo,
      archive_url: archiveUrlRepo,
      downloads_url: downloadsUrlRepo,
      issues_url: issuesUrlRepo,
      pulls_url: pullsUrlRepo,
      milestones_url: milestonesUrlRepo,
      notifications_url: notificationsUrlRepo,
      labels_url: labelsUrlRepo,
      releases_url: releasesUrlRepo,
      deployments_url: deploymentsUrlRepo,
      created_at: createdAtRepo,
      updated_at: updatedAtRepo,
      pushed_at: pushedAtRepo,
      git_url: gitUrlRepo,
      ssh_url: sshUrlRepo,
      clone_url: cloneUrlRepo,
      svn_url: svnUrlRepo,
      homepage: homepageRepo,
      size: sizeRepo,
      stargazers_count: stargazersCountRepo,
      watchers_count: watchersCountRepo,
      language: languageRepo,
      has_issues: hasIssuesRepo,
      has_projects: hasProjectsRepo,
      has_downloads: hasDownloadsRepo,
      has_wiki: hasWikiRepo,
      has_pages: hasPagesRepo,
      has_discussions: hasDiscussionsRepo,
      forks_count: forksCountRepo,
      mirror_url: mirrorUrlRepo,
      archived: archivedRepo,
      disabled: disabledRepo,
      open_issues_count: openIssuesCountRepo,
      license: licenseRepo,
      allow_forking: allowForkingRepo,
      is_template: isTemplateRepo,
      web_commit_signoff_required: webCommitSignoffRequiredRepo,
      topics: topicsRepo,
      visibility: visibilityRepo,
      forks: forksRepo,
      open_issues: openIssuesRepo,
      watchers: watchersRepo,
      default_branch: defaultBranchRepo,
      temp_clone_token: tempCloneTokenRepo,
      organization: organizationRepo,
      network_count: networkCountRepo,
      subscribers_count: subscribersCountRepo,
    };
    var result = await db.insert(repositorySortByUpdated, row,conflictAlgorithm: ConflictAlgorithm.replace);
    print('Insert RepoList result: $result');
    return result;
  }
  getRepoSBUByPrimaryKey(int key) async {
    Database db = await DatabaseHelper().database;
    var result = await db.rawQuery("SELECT * FROM $repositorySortByUpdated WHERE $primeKey = $key");
    // print("getRepoByPrimaryKey:- result = $result");
    return result;
  }
  getRepoSBUByPrimaryKeys({required int fromKey, required int toKey}) async {
    Database db = await DatabaseHelper().database;
    var result = await db.rawQuery("SELECT * FROM $repositorySortByUpdated WHERE $primeKey BETWEEN $fromKey AND $toKey");
    print("getRepoByPrimaryKeys:- fromKey = $fromKey and toKey = $toKey");
    return result;
  }
  getRepoSBUByURL(String repoUrl) async {
    Database db = await DatabaseHelper().database;
    var result = await db.rawQuery("SELECT * FROM $repositorySortByUpdated WHERE $url = '${repoUrl.toString()}'");
    print("getRepoByPrimaryKey:- result = $result");
    return result[0];
  }
  Future updateRepoSortByUpdate({int? idRepo}) async {
    Database db = await DatabaseHelper().database;
    var row = {
      id: idRepo
    };
    var result = await db.update(repositorySortByUpdated, row,);
    // print('Update RepoList result: $result');
    return result;
  }

  Future minPrimaryKeySBU() async {
    Database db = await DatabaseHelper().database;
    var result = await db.rawQuery('SELECT MIN(primekey) FROM repository');
    // print('minPrimaryKey RepoList result: ${result[0].entries.first.value}');
    return result[0].entries.first.value;
  }
  Future maxPrimaryKeySBU() async {
    Database db = await DatabaseHelper().database;
    var result = await db.rawQuery('SELECT MAX(primekey) FROM repository');
    // print('maxPrimaryKey RepoList result: ${result[0].entries.first.value}');
    return result[0].entries.first.value;
  }

  Future deleteRepoListSortByUpdateTable()async{
    Database db = await DatabaseHelper().database;
    var result = await db.delete(repositorySortByUpdated);
    // print('Delete RepoList result: $result');
  }


}