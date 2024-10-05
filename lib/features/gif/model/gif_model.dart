import 'package:json_annotation/json_annotation.dart';

part 'gif_model.g.dart';

@JsonSerializable()
class GifModel {
  final String? name;
  final String? image;

  GifModel({
    required this.name,
    required this.image,

  });

  factory GifModel.fromJson(final Map<String, dynamic> data) =>
      _$GifModelFromJson(data);
  Map<String, dynamic> toJson() => _$GifModelToJson(this);

}
