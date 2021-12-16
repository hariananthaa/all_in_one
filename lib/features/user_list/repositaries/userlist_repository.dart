import 'package:dio/dio.dart';

abstract class UserlistRepo {
  fetchUserlist();
}

class UserlistRepository implements UserlistRepo {
  @override
  fetchUserlist() async {
    print('iam in userlistRepository');
    var dio = Dio();
    Response response =
        await dio.get('https://jsonplaceholder.typicode.com/users');

    // print(response.data);
    List userNameList = [];
    print(response.data.length);
    for (int i = 0; i < response.data.length; i++) {
      userNameList.add(response.data[i]["name"]);
    }
    print(userNameList);
    return userNameList;
  }
}
