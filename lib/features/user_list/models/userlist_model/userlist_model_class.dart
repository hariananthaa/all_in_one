import '../address_model/address_model_class.dart';
import '../company_model/company_model_class.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'userlist_model_class.freezed.dart';
part 'userlist_model_class.g.dart';

@freezed
class UserListModel with _$UserListModel {
  const factory UserListModel({
    int? id,
    String? name,
    String? username,
    String? email,
    Address? address,
    String? phone,
    String? website,
    Company? company,
  }) = _UserListModel;

  factory UserListModel.fromJson(Map<String, dynamic> json) =>
      _$UserListModelFromJson(json);
}
