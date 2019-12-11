

 //  If one case fails while running main, run it again individually, it should
 //  work. Idk why this is buggy, it just is.



//import 'package:test/test.dart';
import 'package:project/services/auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  final AuthService _auth = AuthService();
  final databaseReference = Firestore.instance;

  test('Anonymous Auth', () async {
    dynamic user = await _auth.signInAnon();
    expect(user.uid, isNot(null));
  });

   test('Email and Password Auth', () async {
    dynamic user = await _auth.signEmailPassword('123@123.com', '123456');
    expect(user.uid, isNot(null));
  });

  test('Email and Password Auth Failure Handle', () async {
    dynamic user = await _auth.signEmailPassword('123@123.com', '123456');
    expect(user, equals(null));
  });

  test('Log Out', () async {
    dynamic user = await _auth.signInAnon();
    dynamic logout = _auth.logOut();
    expect(logout, isNot(null));
  });


  test('Testing access  to DB.', () async {
    databaseReference.collection('Notifications').document('1').get().then((
        documentSnaphot) {
      expect(
          documentSnaphot['_message'], 'Need a foster parent! Sign up soon!');
    });
  });
}
