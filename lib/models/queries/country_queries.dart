class CountryQueries {

  static String getCountryListQuery() {
    return '''
    query Countries {
      countries {
        name
        emoji
        code
        continent {
          name
        }
      }
    }
    ''';
  }
}