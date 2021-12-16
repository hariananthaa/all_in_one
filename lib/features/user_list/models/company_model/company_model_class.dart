import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_model_class.freezed.dart';
part 'company_model_class.g.dart';

@freezed
class Company with _$Company {
  const factory Company({
    String? name,
    String? catchPhrase,
    String? bs,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);
}
