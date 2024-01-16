import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_response.g.dart';
part 'dashboard_response.freezed.dart';

@Freezed()
class DashBoardResponse with _$DashBoardResponse {
  const factory DashBoardResponse({
    int? id,
    String? name,
  }) = _DashBoardResponse;

  factory DashBoardResponse.fromJson(Map<String, dynamic> json) =>
      _$DashBoardResponseFromJson(json);
}
