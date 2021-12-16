import 'package:dio_mvvm/features/user_list/models/geo_model/user_list_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_model_class.freezed.dart';
part 'address_model_class.g.dart';

@freezed
class Address with _$Address {
  const factory Address({
    String? street,
    String? suite,
    String? city,
    String? zipcode,
    Geo? geo,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}
