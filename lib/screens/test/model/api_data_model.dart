import 'package:equatable/equatable.dart';

final class ApiDataModel extends Equatable {
  final String version;
  const ApiDataModel({
    required this.version,
  });
  factory ApiDataModel.fromJson(Map<String, dynamic> json) {
    return ApiDataModel(version: json['version'] as String);
  }
  @override
  List<Object?> get props => [version];

  Map<String, dynamic> toJson() => {"version": version};
}
