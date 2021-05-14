import 'package:sidebar_animation/helpers/database_helper.dart';
import 'package:sidebar_animation/models/Passo.dart';

class PassoRepository {
  DatabaseHelper _databaseHelper;

  PassoRepository(this._databaseHelper);

  Future<Passo> savePasso(Passo p) async {
    var dbClient = await _databaseHelper.db;
    int res = await dbClient.insert("passo", p.toMap());
    p.id = res;

    return p;
  }

  Future<bool> updatePasso(Passo p) async {
    var dbClient = await _databaseHelper.db;
    int res = await dbClient
        .update("passo", p.toMap(), where: "id = ?", whereArgs: [p.id]);

    return res > 0 ? true : false;
  }

  Future<bool> deletePasso(Passo p) async {
    var dbClient = await _databaseHelper.db;
    int res =
        await dbClient.rawDelete("DELETE FROM passo WHERE id = ?", [p.id]);

    return res > 0 ? true : false;
  }
}
