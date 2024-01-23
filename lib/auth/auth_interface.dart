import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthInterface {
  Future<void> deleteUser();

  String? getAuthProvider();

  Future<void> registerUserWithEmailAndPassword({required String email, required String password});

  Future<void> reloadUser();

  Future<void> resetPassword({required String email});

  Future<void> sendEmailVerification();

  // Future<void> signInWithApple();

  Future<void> signInWithEmailPassword({required String email, required String password});

  // Future<void> signInWithGoogle();

  Future<void> signOut();

  Stream<User?> userAuthState();
}
