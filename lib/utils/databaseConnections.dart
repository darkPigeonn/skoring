import 'package:mongo_dart/mongo_dart.dart';

import '../utils/constants.dart';

class MongoDatabase {
  static var db, userCollection;

  static connect() async {
    db = await Db.create(MONGO_CONN_URL);

    await db.open();
    userCollection = db.collection(USER_COLLECTION);
  }

  static Future<List<Map<String, dynamic>>> getDocuments() async {
    try {
      final users = await userCollection.find().toList();
      return users;
    } catch (e) {
      print(e);
      return [
        {"error": e}
      ];
    }
  }

  static insert(Map user) async {
    await userCollection.insertAll(user);
  }

  static update(Map user) async {
    var u = await userCollection.findOne({"_id": user['id']});

    await userCollection.save(u);
  }

  static delete(Map user) async {
    await userCollection.remove(where.id(user['id']));
  }
}
