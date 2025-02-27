import 'package:equatable/equatable.dart';

class ApiFaliureModel extends Equatable {
  final int status;
  final String message;
  final String data;

  const ApiFaliureModel({
    required this.status,
    required this.message,
    required  this.data
  });

  factory ApiFaliureModel.fromJson(Map<String, dynamic> json) =>
      ApiFaliureModel(
        status: json["status"] ?? 0,
        message: json["message"] ?? "",
        data: json['data']??""
      );

  @override
  List<Object> get props => [status, message];
}
