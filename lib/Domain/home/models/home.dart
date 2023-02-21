import 'package:freezed_annotation/freezed_annotation.dart';
part 'home.freezed.dart';
part 'home.g.dart';
@freezed
class Home with _$Home{
  const factory Home(
    @JsonKey(name: "poster_path")  String? posterPath,
  ) = _Home;

  factory Home.fromJson(Map<String, dynamic> json) => _$HomeFromJson(json);
}