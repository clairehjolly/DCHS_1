

// MUST FOLLOW INSTRUCTIONS IN PUBSPEC.YAML  FOR THIS FILE TO WORK


import 'package:test/test.dart';
import 'package:project/services/auth.dart';

void main() {
  final AuthService _auth = AuthService();

  test('Anonymous Auth', () async {
    dynamic user = await _auth.signInAnon();
    expect(user.uid, isNot(null));
  });

  test('Email and Password Auth', () async {
    dynamic user = await _auth.signEmailPassword('123@123.com', '123456');
    expect(user.uid, isNot(null));
  });

  test('Email and Password Auth Failure Handle', () async {
    dynamic user = await _auth.signEmailPassword('123@123.co', '12345');
    expect(user, equals(null));
  });

  test('Log Out', () async {
    dynamic user = await _auth.signInAnon();
    dynamic logout = _auth.logOut();
    expect(logout, isNot(null));
  });

}