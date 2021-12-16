import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userIndexProvider = ChangeNotifierProvider((ref) => UserIndex());

class UserIndex extends ChangeNotifier {
  int _index = 0;

  int get userIndex => _index;

  setIndex(int index) {
    _index = index;
    notifyListeners();
  }
}

final userNameListProvider = AutoDisposeFutureProvider(
  (ref) async {
    var dio = Dio();
    try {
      Response response =
          await dio.get('https://jsonplaceholder.typicode.com/users');

      return response.data;
    } catch (e) {}
  },
);

// abstract class UserlistRepo {
//   fetchUserlist();
// }

// class UserlistRepository implements UserlistRepo {
//   @override
//   fetchUserlist() async {
//     print('iam in userlistRepository');
//     var dio = Dio();
//     Response response =
//         await dio.get('https://jsonplaceholder.typicode.com/users');
//     List userNameList = [];
//     print(response.data.length);
//     for (int i = 0; i < response.data.length; i++) {
//       userNameList.add(response.data[i]["name"]);
//     }
//     print(userNameList);
//     return userNameList;
//   }
// }
