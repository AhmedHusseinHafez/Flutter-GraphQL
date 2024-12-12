import 'package:graphql_flutter/graphql_flutter.dart';

class ApiErrorHandler {
  static String getErrorMessage(dynamic error) {
    if (error is GraphQLError) {
      final errorMessage = error.message;
      if (errorMessage.contains('Cannot query field')) {
        return 'Please Enter a valid query';
      } else {
        return "Un Expected Error";
      }
    } else {
      return error;
    }
  }
}
