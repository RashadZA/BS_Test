import 'dart:convert';

import 'package:flutter/material.dart';

class UserModel {
  String login = "";
  int id = 0;
  String nodeId = "";
  String avatarUrl = "";
  String gravatarId = "";
  String url = "";
  String htmlUrl = "";
  String followersUrl = "";
  String followingUrl = "";
  String gistsUrl = "";
  String starredUrl = "";
  String subscriptionsUrl = "";
  String organizationsUrl = "";
  String reposUrl = "";
  String eventsUrl = "";
  String receivedEventsUrl = "";
  String type = "";
  bool siteAdmin = false;
  UserModel({
    required this.login,
    required this.id,
    required this.nodeId,
    required this.avatarUrl,
    required this.gravatarId,
    required this.url,
    required this.htmlUrl,
    required this.followersUrl,
    required this.followingUrl,
    required this.gistsUrl,
    required this.starredUrl,
    required this.subscriptionsUrl,
    required this.organizationsUrl,
    required this.reposUrl,
    required this.eventsUrl,
    required this.receivedEventsUrl,
    required this.type,
    required this.siteAdmin,
  });

  UserModel copyWith({
    String? login,
    int? id,
    String? nodeId,
    String? avatarUrl,
    String? gravatarId,
    String? url,
    String? htmlUrl,
    String? followersUrl,
    String? followingUrl,
    String? gistsUrl,
    String? starredUrl,
    String? subscriptionsUrl,
    String? organizationsUrl,
    String? reposUrl,
    String? eventsUrl,
    String? receivedEventsUrl,
    String? type,
    bool? siteAdmin,
  }) {
    return UserModel(
      login: login ?? this.login,
      id: id ?? this.id,
      nodeId: nodeId ?? this.nodeId,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      gravatarId: gravatarId ?? this.gravatarId,
      url: url ?? this.url,
      htmlUrl: htmlUrl ?? this.htmlUrl,
      followersUrl: followersUrl ?? this.followersUrl,
      followingUrl: followingUrl ?? this.followingUrl,
      gistsUrl: gistsUrl ?? this.gistsUrl,
      starredUrl: starredUrl ?? this.starredUrl,
      subscriptionsUrl: subscriptionsUrl ?? this.subscriptionsUrl,
      organizationsUrl: organizationsUrl ?? this.organizationsUrl,
      reposUrl: reposUrl ?? this.reposUrl,
      eventsUrl: eventsUrl ?? this.eventsUrl,
      receivedEventsUrl: receivedEventsUrl ?? this.receivedEventsUrl,
      type: type ?? this.type,
      siteAdmin: siteAdmin ?? this.siteAdmin,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'login': login,
      'id': id,
      'node_id': nodeId,
      'avatar_url': avatarUrl,
      'gravatar_id': gravatarId,
      'url': url,
      'html_url': htmlUrl,
      'followers_url': followersUrl,
      'following_url': followingUrl,
      'gists_url': gistsUrl,
      'starred_url': starredUrl,
      'subscriptions_url': subscriptionsUrl,
      'organizations_url': organizationsUrl,
      'repos_url': reposUrl,
      'events_url': eventsUrl,
      'received_events_url': receivedEventsUrl,
      'type': type,
      'site_admin': siteAdmin,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      login: map['login'] != null ? map['login'] is String ? map['login'] as String : "" : "",
      id: map['id'] != null ? map['login'] is int ? map['id'] as int : 0 : 0,
      nodeId: map['node_id'] != null ? map['login'] is String ? map['node_id'] as String : "" : "",
      avatarUrl: map['avatar_url'] != null ? map['login'] is String ? map['avatar_url'] as String : "" : "",
      gravatarId: map['gravatar_id'] != null ? map['login'] is String ? map['gravatar_id'] as String : "" : "",
      url: map['url'] != null ? map['login'] is String ? map['url'] as String : "" : "",
      htmlUrl: map['html_url'] != null ? map['login'] is String ? map['html_url'] as String : "" : "",
      followersUrl: map['followers_url'] != null ? map['login'] is String ? map['followers_url'] as String : "" : "",
      followingUrl: map['following_url'] != null ? map['login'] is String ? map['following_url'] as String : "" : "",
      gistsUrl: map['gists_url'] != null ? map['login'] is String ? map['gists_url'] as String : "" : "",
      starredUrl: map['starred_url'] != null ? map['login'] is String ? map['starred_url'] as String : "" : "",
      subscriptionsUrl: map['subscriptions_url'] != null ? map['login'] is String ? map['subscriptions_url'] as String : "" : "",
      organizationsUrl: map['organizations_url'] != null ? map['login'] is String ? map['organizations_url'] as String : "" : "",
      reposUrl: map['repos_url'] != null ? map['login'] is String ? map['repos_url'] as String : "" : "",
      eventsUrl: map['events_url'] != null ? map['login'] is String ? map['events_url'] as String : "" : "",
      receivedEventsUrl: map['received_events_url'] != null ? map['login'] is String ? map['received_events_url'] as String : "" : "",
      type: map['type'] != null ? map['login'] is String ? map['type'] as String : "" : "",
      siteAdmin: map['site_admin'] != null ? map['login'] is bool ? map['site_admin'] as bool : false : false,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return '{"login": "$login", "id": $id, "nodeId": "$nodeId", "avatarUrl": "$avatarUrl", "gravatarId": "$gravatarId", "url": "$url", "htmlUrl": "$htmlUrl", "followersUrl": "$followersUrl", "followingUrl": "$followingUrl", "gistsUrl": "$gistsUrl", "starredUrl": "$starredUrl", "subscriptionsUrl": "$subscriptionsUrl", "organizationsUrl": "$organizationsUrl", "reposUrl": "$reposUrl", "eventsUrl": "$eventsUrl", "receivedEventsUrl": "$receivedEventsUrl", "type": "$type", "siteAdmin": "$siteAdmin"}';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;
    return
      other.login == login &&
          other.id == id &&
          other.nodeId == nodeId &&
          other.avatarUrl == avatarUrl &&
          other.gravatarId == gravatarId &&
          other.url == url &&
          other.htmlUrl == htmlUrl &&
          other.followersUrl == followersUrl &&
          other.followingUrl == followingUrl &&
          other.gistsUrl == gistsUrl &&
          other.starredUrl == starredUrl &&
          other.subscriptionsUrl == subscriptionsUrl &&
          other.organizationsUrl == organizationsUrl &&
          other.reposUrl == reposUrl &&
          other.eventsUrl == eventsUrl &&
          other.receivedEventsUrl == receivedEventsUrl &&
          other.type == type &&
          other.siteAdmin == siteAdmin;
  }

  @override
  int get hashCode {
    return login.hashCode ^
    id.hashCode ^
    nodeId.hashCode ^
    avatarUrl.hashCode ^
    gravatarId.hashCode ^
    url.hashCode ^
    htmlUrl.hashCode ^
    followersUrl.hashCode ^
    followingUrl.hashCode ^
    gistsUrl.hashCode ^
    starredUrl.hashCode ^
    subscriptionsUrl.hashCode ^
    organizationsUrl.hashCode ^
    reposUrl.hashCode ^
    eventsUrl.hashCode ^
    receivedEventsUrl.hashCode ^
    type.hashCode ^
    siteAdmin.hashCode;
  }
}