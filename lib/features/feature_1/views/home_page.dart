import 'package:dio_mvvm/features/feature_1/components/custom_popup_menu_button.dart';
import 'package:dio_mvvm/features/feature_1/repos/user_name_list_repository.dart';
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
          SimpleAccountMenu(
            onChange: (val) {},
          ),
        ],
      ),
      body: UserDetails(),
    );
  }
}

class UserDetails extends StatelessWidget {
  const UserDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      padding: const EdgeInsets.all(20.0),
      child: Consumer(builder: (context, watch, child) {
        final userDetails = watch(userNameListProvider).data;
        final userIndex = watch(userIndexProvider);
        final userData = userDetails!.value[userIndex.userIndex];

        print(userDetails);
        return userDetails.data!.map(
          data: (data) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  userDetails: userDetails,
                  userIndex: userIndex.userIndex,
                  label: 'Name',
                  value: userData["name"],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Text('UserName'),
                    Text('username'),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Text('Email'),
                    Text('email'),
                  ],
                ),
              ],
            );
          },
          loading: (_) {
            return CircularProgressIndicator();
          },
          error: (e) {
            print(e);
            return SizedBox();
          },
        );
      }),
    );
  }
}

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    required this.userDetails,
    required this.userIndex,
    required this.label,
    this.value,
  }) : super(key: key);

  final AsyncData? userDetails;
  final int userIndex;
  final String label;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
        Text(
          value!,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
