import 'dart:io';

import 'package:bs_test/src/data/repositories/local_db_helper/folder.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper  {
  String? dbBaseURL;
  setBaseURL(dbURL){
    dbBaseURL = dbURL;

  }
  static DatabaseHelper? _databaseHelper; // Singleton DatabaseHelper
  static Database? _database;
  Folder folder = Folder(); // Singleton Data// base

  DatabaseHelper._createInstance(); // Named constructor to create instance of DatabaseHelper


  factory DatabaseHelper() {
    _databaseHelper ??= DatabaseHelper._createInstance();
    return _databaseHelper!;
  }

  Future<Database> get database async {
    String savePath = await folder.createDBDirectory();
    if (await File(savePath).exists()) {
      _database = await openDatabase(savePath, version: 1,onUpgrade: _upgradeDB,onDowngrade: onDatabaseDowngradeDelete);
      // print("DB exists: $savePath");
      return _database!;
    } else {
      _database = await initializeDatabase();
      return _database!;
    }
  }

  Future<Database> initializeDatabase() async {
    String path = await folder.createDBDirectory();
    // print("DB Created: $path");
    var restaurantDatabase = await openDatabase(
        path, version: 1,onCreate: _createDb);
    return restaurantDatabase;
  }


  void _createDb(Database db, int newVersion) async {

    await db.execute('CREATE TABLE IF NOT EXISTS repository( primeKey INTEGER PRIMARY KEY, id INTEGER, node_id TEXT, name TEXT, full_name TEXT, private BOOLEAN , owner TEXT, html_url TEXT, description TEXT, fork BOOLEAN, url TEXT, forks_url TEXT, keys_url TEXT, collaborators_url TEXT, teams_url TEXT, hooks_url TEXT, issue_events_url TEXT, events_url TEXT, assignees_url TEXT, branches_url TEXT, tags_url TEXT, blobs_url TEXT, git_tags_url TEXT, git_refs_url TEXT, trees_url TEXT, statuses_url TEXT, languages_url TEXT, stargazers_url TEXT, contributors_url TEXT, subscribers_url TEXT, subscription_url TEXT, commits_url TEXT, git_commits_url TEXT, comments_url TEXT, issue_comment_url TEXT, contents_url TEXT, compare_url TEXT, merges_url TEXT, archive_url TEXT, downloads_url TEXT, issues_url TEXT, pulls_url TEXT, milestones_url TEXT, notifications_url TEXT, labels_url TEXT, releases_url TEXT, deployments_url TEXT, created_at TEXT, updated_at TEXT, pushed_at TEXT, git_url TEXT, ssh_url TEXT, clone_url TEXT, svn_url TEXT, homepage TEXT, size INTEGER, stargazers_count INTEGER, watchers_count INTEGER, language TEXT, has_issues BOOLEAN, has_projects BOOLEAN, has_downloads BOOLEAN, has_wiki BOOLEAN, has_pages BOOLEAN, has_discussions BOOLEAN, BOOLEAN, forks_count INTEGER, mirror_url TEXT, archived BOOLEAN, disabled BOOLEAN, open_issues_count INTEGER, license TEXT, allow_forking BOOLEAN, is_template BOOLEAN, web_commit_signoff_required BOOLEAN, topics TEXT, visibility TEXT, forks INTEGER, open_issues INTEGER, watchers INTEGER, default_branch TEXT, temp_clone_token TEXT, organization TEXT, network_count INTEGER, subscribers_count INTEGER, localAvatarPath TEXT)');
    await db.execute('CREATE TABLE IF NOT EXISTS repositorySortByStar( primeKey INTEGER PRIMARY KEY, id INTEGER, node_id TEXT, name TEXT, full_name TEXT, private BOOLEAN , owner TEXT, html_url TEXT, description TEXT, fork BOOLEAN, url TEXT, forks_url TEXT, keys_url TEXT, collaborators_url TEXT, teams_url TEXT, hooks_url TEXT, issue_events_url TEXT, events_url TEXT, assignees_url TEXT, branches_url TEXT, tags_url TEXT, blobs_url TEXT, git_tags_url TEXT, git_refs_url TEXT, trees_url TEXT, statuses_url TEXT, languages_url TEXT, stargazers_url TEXT, contributors_url TEXT, subscribers_url TEXT, subscription_url TEXT, commits_url TEXT, git_commits_url TEXT, comments_url TEXT, issue_comment_url TEXT, contents_url TEXT, compare_url TEXT, merges_url TEXT, archive_url TEXT, downloads_url TEXT, issues_url TEXT, pulls_url TEXT, milestones_url TEXT, notifications_url TEXT, labels_url TEXT, releases_url TEXT, deployments_url TEXT, created_at TEXT, updated_at TEXT, pushed_at TEXT, git_url TEXT, ssh_url TEXT, clone_url TEXT, svn_url TEXT, homepage TEXT, size INTEGER, stargazers_count INTEGER, watchers_count INTEGER, language TEXT, has_issues BOOLEAN, has_projects BOOLEAN, has_downloads BOOLEAN, has_wiki BOOLEAN, has_pages BOOLEAN, has_discussions BOOLEAN, BOOLEAN, forks_count INTEGER, mirror_url TEXT, archived BOOLEAN, disabled BOOLEAN, open_issues_count INTEGER, license TEXT, allow_forking BOOLEAN, is_template BOOLEAN, web_commit_signoff_required BOOLEAN, topics TEXT, visibility TEXT, forks INTEGER, open_issues INTEGER, watchers INTEGER, default_branch TEXT, temp_clone_token TEXT, organization TEXT, network_count INTEGER, subscribers_count INTEGER, localAvatarPath TEXT)');
    await db.execute('CREATE TABLE IF NOT EXISTS repositorySortByUpdated( primeKey INTEGER PRIMARY KEY, id INTEGER, node_id TEXT, name TEXT, full_name TEXT, private BOOLEAN , owner TEXT, html_url TEXT, description TEXT, fork BOOLEAN, url TEXT, forks_url TEXT, keys_url TEXT, collaborators_url TEXT, teams_url TEXT, hooks_url TEXT, issue_events_url TEXT, events_url TEXT, assignees_url TEXT, branches_url TEXT, tags_url TEXT, blobs_url TEXT, git_tags_url TEXT, git_refs_url TEXT, trees_url TEXT, statuses_url TEXT, languages_url TEXT, stargazers_url TEXT, contributors_url TEXT, subscribers_url TEXT, subscription_url TEXT, commits_url TEXT, git_commits_url TEXT, comments_url TEXT, issue_comment_url TEXT, contents_url TEXT, compare_url TEXT, merges_url TEXT, archive_url TEXT, downloads_url TEXT, issues_url TEXT, pulls_url TEXT, milestones_url TEXT, notifications_url TEXT, labels_url TEXT, releases_url TEXT, deployments_url TEXT, created_at TEXT, updated_at TEXT, pushed_at TEXT, git_url TEXT, ssh_url TEXT, clone_url TEXT, svn_url TEXT, homepage TEXT, size INTEGER, stargazers_count INTEGER, watchers_count INTEGER, language TEXT, has_issues BOOLEAN, has_projects BOOLEAN, has_downloads BOOLEAN, has_wiki BOOLEAN, has_pages BOOLEAN, has_discussions BOOLEAN, BOOLEAN, forks_count INTEGER, mirror_url TEXT, archived BOOLEAN, disabled BOOLEAN, open_issues_count INTEGER, license TEXT, allow_forking BOOLEAN, is_template BOOLEAN, web_commit_signoff_required BOOLEAN, topics TEXT, visibility TEXT, forks INTEGER, open_issues INTEGER, watchers INTEGER, default_branch TEXT, temp_clone_token TEXT, organization TEXT, network_count INTEGER, subscribers_count INTEGER, localAvatarPath TEXT)');
    await db.execute(
        'CREATE TABLE IF NOT EXISTS allRepositories(primeKey INTEGER PRIMARY KEY AUTOINCREMENT, jsonData TEXT)');
  }

  Future<void> removeDatabase() async {
    String path = await folder.createDBDirectory();
    // debugPrint(path);
    deleteDatabase(path);
  }

  // UPGRADE DATABASE TABLES
  void _upgradeDB(Database db, int oldVersion, int newVersion) async {
    if(oldVersion == 1) {
      debugPrint("In DB upgrade");
    }
  }

}