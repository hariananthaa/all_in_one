import 'package:dio_mvvm/features/user_list/repositaries/userlist_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userlistRepositoryProvider = Provider<UserlistRepo>(
  (ref) => UserlistRepository(),
);

final userlistNotifierProvider = StateNotifierProvider((ref) {
  final users = ref.read(userlistRepositoryProvider);

  return UserlistNotifier(users);
});

abstract class UserlistState {
  const UserlistState();
}

class UserlistInitial extends UserlistState {
  const UserlistInitial();
}

class UserlistLoading extends UserlistState {
  const UserlistLoading();
}

class UserlistLoaded extends UserlistState {
  // final UserListModel userListModel;
  final List<dynamic> userListModel;
  const UserlistLoaded(this.userListModel);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is UserlistLoaded && o.userListModel == userListModel;
  }

  @override
  int get hashCode => userListModel.hashCode;
}

class UserlistError extends UserlistState {
  final String message;
  const UserlistError(this.message);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is UserlistError && o.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}

class UserlistNotifier extends StateNotifier<UserlistState> {
  final UserlistRepo userlistRepository;
  UserlistNotifier(this.userlistRepository) : super(const UserlistLoading());

  Future getUsersList() async {
    try {
      state = await const UserlistLoading();
      final List userlist = await userlistRepository.fetchUserlist();
      state = await UserlistLoaded(userlist);
    } catch (e) {
      state =
          const UserlistError("Couldn't fetch userlist. Is the device online?");
    }
  }
}
