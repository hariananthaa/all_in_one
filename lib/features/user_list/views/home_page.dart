import 'package:dio_mvvm/features/user_list/view_models/userlist_state.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Model exercise'),
        centerTitle: true,
        actions: [
          ProviderListener(
            provider: userlistNotifierProvider,
            onChange: (context, state) {
              if (state is UserlistError) {
                final snackBar = SnackBar(content: Text(state.message));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            },
            child: Consumer(builder: (context, watch, child) {
              final userNameList = watch(userlistNotifierProvider);
              print(userNameList);
              // watch(userlistNotifierProvider.notifier);
              return PopupMenuButton(
                itemBuilder: (context) {
                  final users = context
                      .read(userlistNotifierProvider.notifier)
                      .getUsersList();
                  print(users);
                  if (userNameList is UserlistInitial) {
                    return [
                      popUpMenuItem('', 1),
                      popUpMenuItem('', 2),
                      popUpMenuItem('', 3),
                      popUpMenuItem('', 4),
                    ];
                  } else if (userNameList is UserlistLoading) {
                    return [
                      popUpMenuItemLoading('name', 1),
                      popUpMenuItemLoading('name', 2),
                      popUpMenuItemLoading('name', 3),
                      popUpMenuItemLoading('name', 4),
                    ];
                  } else if (userNameList is UserlistLoaded) {
                    print(userNameList.userListModel);
                    return [
                      popUpMenuItem(
                          userNameList.userListModel[0].toString(), 1),
                      popUpMenuItem('name', 2),
                      popUpMenuItem('name', 3),
                      popUpMenuItem('name', 4),
                    ];
                  } else {
                    return [
                      popUpMenuItem('', 1),
                      popUpMenuItem('', 2),
                      popUpMenuItem('', 3),
                      popUpMenuItem('', 4),
                    ];
                  }
                },
                onSelected: (index) {
                  print(index);
                },
              );
            }),
          )
        ],
      ),
    );
  }

  PopupMenuItem<int> popUpMenuItemLoading(String label, int index) {
    return PopupMenuItem(
      child: CircularProgressIndicator(
        color: Colors.blue,
      ),
      value: index,
    );
  }

  PopupMenuItem<int> popUpMenuItem(String label, int index) {
    return PopupMenuItem(
      child: Text(label),
      value: index,
    );
  }
}
