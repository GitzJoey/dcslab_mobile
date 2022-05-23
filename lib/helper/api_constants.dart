class ApiConstants {
  static String baseUrl = 'http://localhost:8000';
  static Map<String, String> defaultHeaders = {
    'Content-Type': 'application/json; charset=UTF-8',
    'Accept': 'application/json'
  };
  static Map<String, String> defaultHeadersWithToken(String token) => {
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token'
      };
}
