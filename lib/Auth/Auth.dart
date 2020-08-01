import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  final _auth = FirebaseAuth.instance;
  Future<AuthResult> Signup(String email, String Password) async {
    final auth_result = await _auth.createUserWithEmailAndPassword(
        email: email, password: Password);
    return auth_result;
  }

  Future<AuthResult> Signin(String email, String Password) async {
    final auth_result = await _auth.signInWithEmailAndPassword(
        email: email, password: Password);
    return auth_result;
  }
}
