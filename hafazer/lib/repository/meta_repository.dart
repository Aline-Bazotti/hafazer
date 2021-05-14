import 'package:sidebar_animation/helpers/database_helper.dart';
import 'package:sidebar_animation/models/meta.dart';

class MetaRepository {
  DatabaseHelper _databaseHelper;

  MetaRepository(this._databaseHelper);

  Future<Meta> saveMeta(Meta m) async {
    var dbClient = await _databaseHelper.db;
    int res = await dbClient.insert("meta", m.toMap());
    m.id = res;

    return m;
  }

  Future<bool> updateMeta(Meta m) async {
    var dbClient = await _databaseHelper.db;
    int res = await dbClient
        .update("meta", m.toMap(), where: "id = ?", whereArgs: [m.id]);

    return res > 0 ? true : false;
  }

  Future<bool> deleteMeta(Meta m) async {
    var dbClient = await _databaseHelper.db;
    int res = await dbClient.rawDelete("DELETE FROM meta WHERE id = ?", [m.id]);

    return res > 0 ? true : false;
  }
}
