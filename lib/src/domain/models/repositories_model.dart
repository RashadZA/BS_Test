import 'dart:convert';

import 'package:bs_test/src/domain/models/repository_model.dart';
import 'package:flutter/foundation.dart';

class RepositoriesModel {
  int totalCount = 0;
  bool incompleteResults = false;
  List<RepositoryModel> items = [];
  RepositoriesModel({
    required this.totalCount,
    required this.incompleteResults,
    required this.items,
  });

  RepositoriesModel copyWith({
    int? totalCount,
    bool? incompleteResults,
    List<RepositoryModel>? items,
  }) {
    return RepositoriesModel(
      totalCount: totalCount ?? this.totalCount,
      incompleteResults: incompleteResults ?? this.incompleteResults,
      items: items ?? this.items,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'total_count': totalCount,
      'incomplete_results': incompleteResults,
      'items': items,
    };
  }

  factory RepositoriesModel.fromMap(Map<String, dynamic> map) {
    return RepositoriesModel(
        totalCount: map['total_count'] != null ? map['total_count'] as int : 0,
        incompleteResults: map['incomplete_results'] != null ? map['incomplete_results'] as bool : false,
        items: map['items'] != null ? List<RepositoryModel>.from(
            map['items'].map((x) => RepositoryModel.fromMap(x)))
          : [],
        );
  }

  String toJson() => json.encode(toMap());

  factory RepositoriesModel.fromJson(String source) => RepositoriesModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'RepositoriesModel(totalCount: $totalCount, incomplete_results: $incompleteResults, items: $items)';

  @override
  bool operator ==(covariant RepositoriesModel other) {
    if (identical(this, other)) return true;

    return
      other.totalCount == totalCount &&
          other.incompleteResults == incompleteResults &&
          listEquals(other.items, items);
  }

  @override
  int get hashCode => totalCount.hashCode ^ incompleteResults.hashCode ^ items.hashCode;
}