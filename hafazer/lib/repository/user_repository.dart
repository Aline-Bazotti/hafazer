import 'package:sidebar_animation/helpers/database_helper.dart';
import 'package:sidebar_animation/models/user.dart';

class UserRepository {
  DatabaseHelper _databaseHelper;

  UserRepository(this._databaseHelper);

  // método para registrar um usuário
  Future<int> saveUser(User u) async {
    var dbClient = await _databaseHelper.db;
    int res = await dbClient.insert("user", u.toMap()); // querybyexample
    return res;
  }

  // método para atualizar dados do usuário
  Future<bool> updateUser(User u) async {
    var dbClient = await _databaseHelper.db;
    int res = await dbClient
        .update("user", u.toMap(), where: "id = ?", whereArgs: [u.id]);
    return res > 0 ? true : false;
  }

  // método para excluir dados do cliente
  Future<bool> deleteUser(User u) async {
    var dbClient = await _databaseHelper.db;
    int res = await dbClient.rawDelete("DELETE FROM user WHERE id = ?", [u.id]);
    return res > 0 ? true : false;
  }
}
