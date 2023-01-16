class ApiEndPoints {
  static final String baseUrl = 'https://pay.mjcreativa.com/api/';
  static _AuthEndPoints authEndpoints = _AuthEndPoints();
}

class _AuthEndPoints {
  final String registerEmail = 'register';
  final String loginEmail = 'login';
  final String getKaryawan = 'employee';
}
