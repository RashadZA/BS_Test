import 'package:bs_test/src/presentation/utils/design_utils.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class GSServices {
  GSServices._();
  static final GSServices _instance = GSServices._();
  factory GSServices() => _instance;

  static final GetStorage _sortTypeGS = GetStorage('sortType');

  static Future<void> initialize() async {
    await GetStorage.init('sortType');
    await _sortTypeGS.writeIfNull('type', "");
  }

  // _guestUserGS
  static Future<void> setSortType({required String type}) async {
    await _sortTypeGS.write(stars, type);
    debugPrint(
        "<--- Local isGuestUser Updated => ${sortType.toString()} --->");
  }

  static String get sortType => _sortTypeGS.read(stars) ?? "";


  Future<void> clearLocalStorage() async {
    await _sortTypeGS.erase();
  }
}
