import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure({required this.errMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errMessage});

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errMessage: 'Connection timeout with API server');
      case DioExceptionType.sendTimeout:
        return ServerFailure(errMessage: 'Send timeout with API server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errMessage: 'Receive timeout with API server');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioError.response!.statusCode!,
          dioError.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure(errMessage: 'Request to API server was cancelled');
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure(
            errMessage: 'No Internet connection, please check your connection',
          );
        }
        return ServerFailure(errMessage: 'Unexpected error occurred');
      default:
        return ServerFailure(errMessage: 'Something went wrong');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      try {
        // 👈 تأكد أولاً أن الـ response ليس null
        if (response == null) {
          return ServerFailure(
            errMessage: 'حدث خطأ من الخادم، يرجى المحاولة لاحقاً',
          );
        }
        if (response is Map<String, dynamic>) {
          // لو الخطأ جاي بالطريقة الاعتيادية error['message']
          if (response.containsKey('error') && response['error'] is Map) {
            return ServerFailure(
              errMessage:
                  response['error']['message'] ?? 'خطأ في البيانات المدخلة',
            );
          }
          // لو الخطأ جاي في خانة message مباشرة
          else if (response.containsKey('message')) {
            return ServerFailure(errMessage: response['message'].toString());
          } else if (response.containsKey('detail')) {
            return ServerFailure(errMessage: response['detail'].toString());
          }
          // لو الخطأ جاي كـ Validation Errors (مثل أخطاء Laravel أو Node.js)
          else if (response.containsKey('errors')) {
            var errors = response['errors'];
            if (errors is Map && errors.isNotEmpty) {
              var firstKey = errors.keys.first;
              var firstVal = errors[firstKey];
              if (firstVal is List && firstVal.isNotEmpty) {
                return ServerFailure(errMessage: firstVal.first.toString());
              }
              return ServerFailure(errMessage: firstVal.toString());
            }
          }
        }
        return ServerFailure(errMessage: response.toString());
      } catch (e) {
        return ServerFailure(
          errMessage: 'حدث خطأ غير متوقع، يرجى المحاولة لاحقاً',
        );
      }
    } else if (statusCode == 404) {
      return ServerFailure(
        errMessage: 'الطلب غير موجود، يرجى المحاولة لاحقاً!',
      );
    } else if (statusCode == 429) {
      return ServerFailure(
        errMessage: 'عدد محاولات كبير جداً، يرجى المحاولة لاحقاً.',
      );
    } else if (statusCode == 500) {
      return ServerFailure(
        errMessage: 'خطأ في الخادم الداخلي، يرجى المحاولة لاحقاً!',
      );
    } else if (statusCode == 503) {
      return ServerFailure(
        errMessage: 'الخدمة غير متوفرة، يرجى المحاولة لاحقاً.',
      );
    } else {
      return ServerFailure(
        errMessage: 'عذراً حدث خطأ ما، يرجى المحاولة لاحقاً!',
      );
    }
  }
  // factory ServerFailure.fromResponse(int statusCode, dynamic response) {
  //   if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
  //     return ServerFailure(errMessage: response['error']['message']);
  //   } else if (statusCode == 404) {
  //     return ServerFailure(
  //       errMessage: 'Your request not found, please try later!',
  //     );
  //   } else if (statusCode == 429) {
  //     // 👈 أضف هذا السطر لحل مشكلة الضغط
  //     return ServerFailure(
  //       errMessage: 'Too many requests, please try again later.',
  //     );
  //   } else if (statusCode == 500) {
  //     return ServerFailure(
  //       errMessage: 'Internal server error, please try later!',
  //     );
  //   } else if (statusCode == 503) {
  //     // 👈 أضف هذه الحالة لكود 503
  //     return ServerFailure(
  //       errMessage: 'Service unavailable, please try again later.',
  //     );
  //   } else {
  //     return ServerFailure(
  //       errMessage: 'Oops something went wrong, please try later!',
  //     );
  //   }
  // }
}
