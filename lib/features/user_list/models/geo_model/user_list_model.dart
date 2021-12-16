import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_list_model.freezed.dart';
part 'user_list_model.g.dart';

@freezed
class Geo with _$Geo {
  const factory Geo({
    String? lat,
    String? lng,
  }) = _Geo;

  factory Geo.fromJson(Map<String, dynamic> json) => _$GeoFromJson(json);
}
