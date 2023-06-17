import 'package:bs_test/src/config/router/app_pages.dart';
import 'package:bs_test/src/config/themes/app_theme.dart';
import 'package:bs_test/src/data/datasources/local/gs_services.dart';
import 'package:bs_test/src/data/repositories/dio_helper/api_repositories.dart';
import 'package:bs_test/src/data/repositories/local_db_helper/all_repositories_table.dart';
import 'package:bs_test/src/data/repositories/local_db_helper/repository.dart';
import 'package:bs_test/src/data/repositories/local_db_helper/repository_sort_by_star.dart';
import 'package:bs_test/src/data/repositories/local_db_helper/repository_sort_by_updated.dart';
import 'package:bs_test/src/domain/models/repositories_model.dart';
import 'package:bs_test/src/presentation/utils/design_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:workmanager/workmanager.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await GSServices.initialize();
  Workmanager().initialize(
    callbackDispatcher,
    isInDebugMode: true,
  );
  runApp(const MyApp());
}
@pragma('vm:entry-point')
void callbackDispatcher() {
  Workmanager().executeTask((task, inputData) async {
    print("Work manager : $task and $inputData");
    await saveInTable();
    return Future.value(true);
  });
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'BS Test',
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splash,
      getPages: AppPages.routes,
      initialBinding: BindingsX.initialBindigs(),
      theme: AppTheme.lightTheme,
      unknownRoute: AppPages.unknownRoute,
    );
  }
}
Future<void> saveInTable() async {
  final APIRepository apiRepository = Get.put(APIRepository());
  RepositoriesModel repoMap = RepositoriesModel.fromMap({});
  RepositoriesModel repoMapSortByStars = RepositoriesModel.fromMap({});
  RepositoriesModel repoMapSortByUpdate = RepositoriesModel.fromMap({});
  repoMap = await apiRepository.getRepositories();
  repoMapSortByStars = await apiRepository.getRepositoriesWithSort(sortType: stars);
  repoMapSortByUpdate = await apiRepository.getRepositoriesWithSort(sortType: updated);

  await RepoListJsonTable().getRepoListJson().then((value) async {
    if(value.isNotEmpty) await RepoListJsonTable().deleteRepoListJson();
    await RepoListJsonTable().insertRepoListJson(jsonDataRepo: repoMap.toString());
  });
  await RepoListTable().getRepoList().then((value) async {
    if(value.isNotEmpty) await RepoListTable().deleteRepoListTable();
    for (int i = 0 ; i< repoMap.items.length ; i++) {
      await RepoListTable().insertRepoList(
          primeKeyRepo: i,
          idRepo: repoMap.items[i].id,
          nodeIdRepo: repoMap.items[i].nodeId,
          nameRepo: repoMap.items[i].name,
          fullNameRepo: repoMap.items[i].fullName,
          privateRepo: repoMap.items[i].private,
          ownerRepo: repoMap.items[i].owner.toString(),
          htmlUrlRepo: repoMap.items[i].htmlUrl,
          descriptionRepo: repoMap.items[i].description,
          forkRepo: repoMap.items[i].fork,
          urlRepo: repoMap.items[i].url,
          forksUrlRepo: repoMap.items[i].forksUrl,
          keysUrlRepo: repoMap.items[i].keysUrl,
          collaboratorsUrlRepo: repoMap.items[i].collaboratorsUrl,
          teamsUrlRepo: repoMap.items[i].teamsUrl,
          hooksUrlRepo: repoMap.items[i].hooksUrl,
          issueEventsUrlRepo: repoMap.items[i].issueEventsUrl,
          eventsUrlRepo: repoMap.items[i].eventsUrl,
          assigneesUrlRepo: repoMap.items[i].assigneesUrl,
          branchesUrlRepo: repoMap.items[i].branchesUrl,
          tagsUrlRepo: repoMap.items[i].tagsUrl,
          blobsUrlRepo: repoMap.items[i].blobsUrl,
          gitTagsUrlRepo: repoMap.items[i].gitTagsUrl,
          gitRefsUrlRepo: repoMap.items[i].gitRefsUrl,
          treesUrlRepo: repoMap.items[i].treesUrl,
          statusesUrlRepo: repoMap.items[i].statusesUrl,
          languagesUrlRepo: repoMap.items[i].languagesUrl,
          stargazersUrlRepo: repoMap.items[i].stargazersUrl,
          contributorsUrlRepo: repoMap.items[i].contributorsUrl,
          subscribersUrlRepo: repoMap.items[i].subscribersUrl,
          subscriptionUrlRepo: repoMap.items[i].subscriptionUrl,
          commitsUrlRepo: repoMap.items[i].commitsUrl,
          gitCommitsUrlRepo: repoMap.items[i].gitCommitsUrl,
          commentsUrlRepo: repoMap.items[i].commentsUrl,
          issueCommentUrlRepo: repoMap.items[i].issueCommentUrl,
          contentsUrlRepo: repoMap.items[i].contentsUrl,
          compareUrlRepo: repoMap.items[i].compareUrl,
          mergesUrlRepo: repoMap.items[i].mergesUrl,
          archiveUrlRepo: repoMap.items[i].archiveUrl,
          downloadsUrlRepo: repoMap.items[i].downloadsUrl,
          issuesUrlRepo: repoMap.items[i].issuesUrl,
          pullsUrlRepo: repoMap.items[i].pullsUrl,
          milestonesUrlRepo: repoMap.items[i].milestonesUrl,
          notificationsUrlRepo: repoMap.items[i].notificationsUrl,
          labelsUrlRepo: repoMap.items[i].labelsUrl,
          releasesUrlRepo: repoMap.items[i].releasesUrl,
          deploymentsUrlRepo: repoMap.items[i].deploymentsUrl,
          createdAtRepo: repoMap.items[i].createdAt,
          updatedAtRepo: repoMap.items[i].updatedAt,
          pushedAtRepo: repoMap.items[i].pushedAt,
          gitUrlRepo: repoMap.items[i].gitUrl,
          sshUrlRepo: repoMap.items[i].sshUrl,
          cloneUrlRepo: repoMap.items[i].cloneUrl,
          svnUrlRepo: repoMap.items[i].svnUrl,
          homepageRepo: repoMap.items[i].homepage,
          sizeRepo: repoMap.items[i].size,
          stargazersCountRepo: repoMap.items[i].stargazersCount,
          watchersCountRepo: repoMap.items[i].watchersCount,
          languageRepo: repoMap.items[i].language,
          hasIssuesRepo: repoMap.items[i].hasIssues,
          hasProjectsRepo: repoMap.items[i].hasProjects,
          hasDownloadsRepo: repoMap.items[i].hasDownloads,
          hasWikiRepo: repoMap.items[i].hasWiki,
          hasPagesRepo: repoMap.items[i].hasPages,
          hasDiscussionsRepo: repoMap.items[i].hasDiscussions,
          forksCountRepo: repoMap.items[i].forksCount,
          mirrorUrlRepo: repoMap.items[i].mirrorUrl,
          archivedRepo: repoMap.items[i].archived,
          disabledRepo: repoMap.items[i].disabled,
          openIssuesCountRepo: repoMap.items[i].openIssuesCount,
          licenseRepo: repoMap.items[i].license.toString(),
          allowForkingRepo: repoMap.items[i].allowForking,
          isTemplateRepo: repoMap.items[i].isTemplate,
          webCommitSignoffRequiredRepo: repoMap.items[i].webCommitSignoffRequired,
          topicsRepo: repoMap.items[i].topics.join(", "),
          visibilityRepo: repoMap.items[i].visibility,
          forksRepo: repoMap.items[i].forks,
          openIssuesRepo: repoMap.items[i].openIssues,
          watchersRepo: repoMap.items[i].watchers,
          defaultBranchRepo: repoMap.items[i].defaultBranch,
          tempCloneTokenRepo: repoMap.items[i].tempCloneToken,
          organizationRepo: repoMap.items[i].organization.toString(),
          networkCountRepo: repoMap.items[i].networkCount,
          subscribersCountRepo: repoMap.items[i].subscribersCount
      );
    }
  });
  await RepoListSortByStarTable().getRepoListSortByStar().then((value) async {
    if(value.isNotEmpty) await RepoListSortByStarTable().deleteRepoListSortByStarTable();
    for (int i = 0 ; i< repoMapSortByStars.items.length ; i++) {
     await RepoListSortByStarTable().insertRepoListSortByStar(
          primeKeyRepo: i,
          idRepo: repoMapSortByStars.items[i].id,
          nodeIdRepo: repoMapSortByStars.items[i].nodeId,
          nameRepo: repoMapSortByStars.items[i].name,
          fullNameRepo: repoMapSortByStars.items[i].fullName,
          privateRepo: repoMapSortByStars.items[i].private,
          ownerRepo: repoMapSortByStars.items[i].owner.toString(),
          htmlUrlRepo: repoMapSortByStars.items[i].htmlUrl,
          descriptionRepo: repoMapSortByStars.items[i].description,
          forkRepo: repoMapSortByStars.items[i].fork,
          urlRepo: repoMapSortByStars.items[i].url,
          forksUrlRepo: repoMapSortByStars.items[i].forksUrl,
          keysUrlRepo: repoMapSortByStars.items[i].keysUrl,
          collaboratorsUrlRepo: repoMapSortByStars.items[i].collaboratorsUrl,
          teamsUrlRepo: repoMapSortByStars.items[i].teamsUrl,
          hooksUrlRepo: repoMapSortByStars.items[i].hooksUrl,
          issueEventsUrlRepo: repoMapSortByStars.items[i].issueEventsUrl,
          eventsUrlRepo: repoMapSortByStars.items[i].eventsUrl,
          assigneesUrlRepo: repoMapSortByStars.items[i].assigneesUrl,
          branchesUrlRepo: repoMapSortByStars.items[i].branchesUrl,
          tagsUrlRepo: repoMapSortByStars.items[i].tagsUrl,
          blobsUrlRepo: repoMapSortByStars.items[i].blobsUrl,
          gitTagsUrlRepo: repoMapSortByStars.items[i].gitTagsUrl,
          gitRefsUrlRepo: repoMapSortByStars.items[i].gitRefsUrl,
          treesUrlRepo: repoMapSortByStars.items[i].treesUrl,
          statusesUrlRepo: repoMapSortByStars.items[i].statusesUrl,
          languagesUrlRepo: repoMapSortByStars.items[i].languagesUrl,
          stargazersUrlRepo: repoMapSortByStars.items[i].stargazersUrl,
          contributorsUrlRepo: repoMapSortByStars.items[i].contributorsUrl,
          subscribersUrlRepo: repoMapSortByStars.items[i].subscribersUrl,
          subscriptionUrlRepo: repoMapSortByStars.items[i].subscriptionUrl,
          commitsUrlRepo: repoMapSortByStars.items[i].commitsUrl,
          gitCommitsUrlRepo: repoMapSortByStars.items[i].gitCommitsUrl,
          commentsUrlRepo: repoMapSortByStars.items[i].commentsUrl,
          issueCommentUrlRepo: repoMapSortByStars.items[i].issueCommentUrl,
          contentsUrlRepo: repoMapSortByStars.items[i].contentsUrl,
          compareUrlRepo: repoMapSortByStars.items[i].compareUrl,
          mergesUrlRepo: repoMapSortByStars.items[i].mergesUrl,
          archiveUrlRepo: repoMapSortByStars.items[i].archiveUrl,
          downloadsUrlRepo: repoMapSortByStars.items[i].downloadsUrl,
          issuesUrlRepo: repoMapSortByStars.items[i].issuesUrl,
          pullsUrlRepo: repoMapSortByStars.items[i].pullsUrl,
          milestonesUrlRepo: repoMapSortByStars.items[i].milestonesUrl,
          notificationsUrlRepo: repoMapSortByStars.items[i].notificationsUrl,
          labelsUrlRepo: repoMapSortByStars.items[i].labelsUrl,
          releasesUrlRepo: repoMapSortByStars.items[i].releasesUrl,
          deploymentsUrlRepo: repoMapSortByStars.items[i].deploymentsUrl,
          createdAtRepo: repoMapSortByStars.items[i].createdAt,
          updatedAtRepo: repoMapSortByStars.items[i].updatedAt,
          pushedAtRepo: repoMapSortByStars.items[i].pushedAt,
          gitUrlRepo: repoMapSortByStars.items[i].gitUrl,
          sshUrlRepo: repoMapSortByStars.items[i].sshUrl,
          cloneUrlRepo: repoMapSortByStars.items[i].cloneUrl,
          svnUrlRepo: repoMapSortByStars.items[i].svnUrl,
          homepageRepo: repoMapSortByStars.items[i].homepage,
          sizeRepo: repoMapSortByStars.items[i].size,
          stargazersCountRepo: repoMapSortByStars.items[i].stargazersCount,
          watchersCountRepo: repoMapSortByStars.items[i].watchersCount,
          languageRepo: repoMapSortByStars.items[i].language,
          hasIssuesRepo: repoMapSortByStars.items[i].hasIssues,
          hasProjectsRepo: repoMapSortByStars.items[i].hasProjects,
          hasDownloadsRepo: repoMapSortByStars.items[i].hasDownloads,
          hasWikiRepo: repoMapSortByStars.items[i].hasWiki,
          hasPagesRepo: repoMapSortByStars.items[i].hasPages,
          hasDiscussionsRepo: repoMapSortByStars.items[i].hasDiscussions,
          forksCountRepo: repoMapSortByStars.items[i].forksCount,
          mirrorUrlRepo: repoMapSortByStars.items[i].mirrorUrl,
          archivedRepo: repoMapSortByStars.items[i].archived,
          disabledRepo: repoMapSortByStars.items[i].disabled,
          openIssuesCountRepo: repoMapSortByStars.items[i].openIssuesCount,
          licenseRepo: repoMapSortByStars.items[i].license.toString(),
          allowForkingRepo: repoMapSortByStars.items[i].allowForking,
          isTemplateRepo: repoMapSortByStars.items[i].isTemplate,
          webCommitSignoffRequiredRepo: repoMapSortByStars.items[i].webCommitSignoffRequired,
          topicsRepo: repoMapSortByStars.items[i].topics.join(", "),
          visibilityRepo: repoMapSortByStars.items[i].visibility,
          forksRepo: repoMapSortByStars.items[i].forks,
          openIssuesRepo: repoMapSortByStars.items[i].openIssues,
          watchersRepo: repoMapSortByStars.items[i].watchers,
          defaultBranchRepo: repoMapSortByStars.items[i].defaultBranch,
          tempCloneTokenRepo: repoMapSortByStars.items[i].tempCloneToken,
          organizationRepo: repoMapSortByStars.items[i].organization.toString(),
          networkCountRepo: repoMapSortByStars.items[i].networkCount,
          subscribersCountRepo: repoMapSortByStars.items[i].subscribersCount
      );
    }
  });
  await RepoListSortByUpdateTable().getRepoListSortByUpdate().then((value) async {
    if(value.isNotEmpty) await RepoListSortByUpdateTable().deleteRepoListSortByUpdateTable();
    for (int i = 0 ; i< repoMapSortByUpdate.items.length ; i++) {
      await RepoListSortByUpdateTable().insertRepoListSortByUpdate(
          primeKeyRepo: i,
          idRepo: repoMapSortByUpdate.items[i].id,
          nodeIdRepo: repoMapSortByUpdate.items[i].nodeId,
          nameRepo: repoMapSortByUpdate.items[i].name,
          fullNameRepo: repoMapSortByUpdate.items[i].fullName,
          privateRepo: repoMapSortByUpdate.items[i].private,
          ownerRepo: repoMapSortByUpdate.items[i].owner.toString(),
          htmlUrlRepo: repoMapSortByUpdate.items[i].htmlUrl,
          descriptionRepo: repoMapSortByUpdate.items[i].description,
          forkRepo: repoMapSortByUpdate.items[i].fork,
          urlRepo: repoMapSortByUpdate.items[i].url,
          forksUrlRepo: repoMapSortByUpdate.items[i].forksUrl,
          keysUrlRepo: repoMapSortByUpdate.items[i].keysUrl,
          collaboratorsUrlRepo: repoMapSortByUpdate.items[i].collaboratorsUrl,
          teamsUrlRepo: repoMapSortByUpdate.items[i].teamsUrl,
          hooksUrlRepo: repoMapSortByUpdate.items[i].hooksUrl,
          issueEventsUrlRepo: repoMapSortByUpdate.items[i].issueEventsUrl,
          eventsUrlRepo: repoMapSortByUpdate.items[i].eventsUrl,
          assigneesUrlRepo: repoMapSortByUpdate.items[i].assigneesUrl,
          branchesUrlRepo: repoMapSortByUpdate.items[i].branchesUrl,
          tagsUrlRepo: repoMapSortByUpdate.items[i].tagsUrl,
          blobsUrlRepo: repoMapSortByUpdate.items[i].blobsUrl,
          gitTagsUrlRepo: repoMapSortByUpdate.items[i].gitTagsUrl,
          gitRefsUrlRepo: repoMapSortByUpdate.items[i].gitRefsUrl,
          treesUrlRepo: repoMapSortByUpdate.items[i].treesUrl,
          statusesUrlRepo: repoMapSortByUpdate.items[i].statusesUrl,
          languagesUrlRepo: repoMapSortByUpdate.items[i].languagesUrl,
          stargazersUrlRepo: repoMapSortByUpdate.items[i].stargazersUrl,
          contributorsUrlRepo: repoMapSortByUpdate.items[i].contributorsUrl,
          subscribersUrlRepo: repoMapSortByUpdate.items[i].subscribersUrl,
          subscriptionUrlRepo: repoMapSortByUpdate.items[i].subscriptionUrl,
          commitsUrlRepo: repoMapSortByUpdate.items[i].commitsUrl,
          gitCommitsUrlRepo: repoMapSortByUpdate.items[i].gitCommitsUrl,
          commentsUrlRepo: repoMapSortByUpdate.items[i].commentsUrl,
          issueCommentUrlRepo: repoMapSortByUpdate.items[i].issueCommentUrl,
          contentsUrlRepo: repoMapSortByUpdate.items[i].contentsUrl,
          compareUrlRepo: repoMapSortByUpdate.items[i].compareUrl,
          mergesUrlRepo: repoMapSortByUpdate.items[i].mergesUrl,
          archiveUrlRepo: repoMapSortByUpdate.items[i].archiveUrl,
          downloadsUrlRepo: repoMapSortByUpdate.items[i].downloadsUrl,
          issuesUrlRepo: repoMapSortByUpdate.items[i].issuesUrl,
          pullsUrlRepo: repoMapSortByUpdate.items[i].pullsUrl,
          milestonesUrlRepo: repoMapSortByUpdate.items[i].milestonesUrl,
          notificationsUrlRepo: repoMapSortByUpdate.items[i].notificationsUrl,
          labelsUrlRepo: repoMapSortByUpdate.items[i].labelsUrl,
          releasesUrlRepo: repoMapSortByUpdate.items[i].releasesUrl,
          deploymentsUrlRepo: repoMapSortByUpdate.items[i].deploymentsUrl,
          createdAtRepo: repoMapSortByUpdate.items[i].createdAt,
          updatedAtRepo: repoMapSortByUpdate.items[i].updatedAt,
          pushedAtRepo: repoMapSortByUpdate.items[i].pushedAt,
          gitUrlRepo: repoMapSortByUpdate.items[i].gitUrl,
          sshUrlRepo: repoMapSortByUpdate.items[i].sshUrl,
          cloneUrlRepo: repoMapSortByUpdate.items[i].cloneUrl,
          svnUrlRepo: repoMapSortByUpdate.items[i].svnUrl,
          homepageRepo: repoMapSortByUpdate.items[i].homepage,
          sizeRepo: repoMapSortByUpdate.items[i].size,
          stargazersCountRepo: repoMapSortByUpdate.items[i].stargazersCount,
          watchersCountRepo: repoMapSortByUpdate.items[i].watchersCount,
          languageRepo: repoMapSortByUpdate.items[i].language,
          hasIssuesRepo: repoMapSortByUpdate.items[i].hasIssues,
          hasProjectsRepo: repoMapSortByUpdate.items[i].hasProjects,
          hasDownloadsRepo: repoMapSortByUpdate.items[i].hasDownloads,
          hasWikiRepo: repoMapSortByUpdate.items[i].hasWiki,
          hasPagesRepo: repoMapSortByUpdate.items[i].hasPages,
          hasDiscussionsRepo: repoMapSortByUpdate.items[i].hasDiscussions,
          forksCountRepo: repoMapSortByUpdate.items[i].forksCount,
          mirrorUrlRepo: repoMapSortByUpdate.items[i].mirrorUrl,
          archivedRepo: repoMapSortByUpdate.items[i].archived,
          disabledRepo: repoMapSortByUpdate.items[i].disabled,
          openIssuesCountRepo: repoMapSortByUpdate.items[i].openIssuesCount,
          licenseRepo: repoMapSortByUpdate.items[i].license.toString(),
          allowForkingRepo: repoMapSortByUpdate.items[i].allowForking,
          isTemplateRepo: repoMapSortByUpdate.items[i].isTemplate,
          webCommitSignoffRequiredRepo: repoMapSortByUpdate.items[i].webCommitSignoffRequired,
          topicsRepo: repoMapSortByUpdate.items[i].topics.join(", "),
          visibilityRepo: repoMapSortByUpdate.items[i].visibility,
          forksRepo: repoMapSortByUpdate.items[i].forks,
          openIssuesRepo: repoMapSortByUpdate.items[i].openIssues,
          watchersRepo: repoMapSortByUpdate.items[i].watchers,
          defaultBranchRepo: repoMapSortByUpdate.items[i].defaultBranch,
          tempCloneTokenRepo: repoMapSortByUpdate.items[i].tempCloneToken,
          organizationRepo: repoMapSortByUpdate.items[i].organization.toString(),
          networkCountRepo: repoMapSortByUpdate.items[i].networkCount,
          subscribersCountRepo: repoMapSortByUpdate.items[i].subscribersCount
      );
    }
  });
}
