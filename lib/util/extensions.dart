import 'package:retrofit/dio.dart';

extension CustomResponse<T> on HttpResponse<T> {
  bool get isSuccessful =>
      (response.statusCode ?? 0) >= 200 && (response.statusCode ?? 0) < 300;
}
