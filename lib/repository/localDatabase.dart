import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';

class LocalDatabase {
  Future<bool> addToDb(Map dataSave) async {
    try {
      print('add to local');
      var box = await Hive.openBox('skoring');
      String aIndex = DateTime.now().millisecondsSinceEpoch.toString();
      dataSave['id'] = aIndex;
      final body = json.encode(dataSave);
      var insertData = await box.put(aIndex, body);
      box.close();
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<List> getDataSkoring() async {
    try {
      var box = await Hive.openBox('skoring');

      List listCart = [];
      for (var element in box.values) {
        //print(element);
        listCart.add(jsonDecode(element));
        // listProduct.add(ProductModel.fromJson(element));
      }
      print(box);

      return listCart;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
