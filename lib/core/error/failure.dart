import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection timeout with ApiServer");

      case DioExceptionType.sendTimeout:
        return ServerFailure("send timeout with ApiServer");

      case DioExceptionType.receiveTimeout:
        return ServerFailure("recieve timeout with ApiServer");

      case DioExceptionType.badCertificate:
        return ServerFailure("bad certificate with ApiServer");

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure("Requeest to ApiServer was canceled");

      case DioExceptionType.connectionError:
        return ServerFailure("Connection Error, Please try again");

      case DioExceptionType.unknown:
        if (dioError.message!.contains("SocketException")) {
          return ServerFailure("No Internet Connection");
        }
        return ServerFailure("UnExpected Error, Please try again");
      default:
        return ServerFailure("Oops there was an error, Please try again!");
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure("Your request not found, Please try later!");
    } else if (statusCode == 500) {
      return ServerFailure("Internal Server Error, Please try later!");
    } else {
      return ServerFailure("Oops there was an error, Please try again!");
    }
  }
}
