import 'package:bs_test/src/data/datasources/local/local_db.dart';
import 'package:sqflite/sqflite.dart';

class RepoListJsonTable {

  String allRepositories = 'allRepositories';
  String jsonData = 'jsonData';
  String primeKey = 'primeKey';

  Future getRepoListJson() async {
    Database db = await DatabaseHelper().database;

    var result = await db.query(allRepositories);
    print('Get RepoListJson result: $result');
    return result;
  }

  Future insertRepoListJson({String? jsonDataRepo}) async {
    print("RepoListJson inserting date: $jsonDataRepo");
    Database db = await DatabaseHelper().database;
    var row = {
      jsonData: jsonDataRepo,
    };
    var result = await db.insert(allRepositories, row);
    print('Insert RepoListJson result: $result');
    return result;
  }

  Future deleteRepoListJson()async{
    Database db = await DatabaseHelper().database;
    var result = await db.delete(allRepositories);
    print('Deleted RepoListJson result: $result');
  }

}