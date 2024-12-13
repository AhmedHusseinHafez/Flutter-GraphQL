import 'dart:io';

import 'package:graphql_flutter/graphql_flutter.dart';

class ApiErrorHandler {
  static String getErrorMessage(dynamic error) {
    if (error is GraphQLError) {
      final errorMessage = error.message;
      if (errorMessage.contains('Cannot query field')) {
        return 'Please Enter a valid query';
      } else {
        return "Un Expected GraphQL Error";
      }
    } else if (error is NetworkException || error is SocketException) {
      return "Internet Connection Error";
    } else {
      return "Un Expected Error";
    }
  }
}
