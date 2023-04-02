import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  final _firebaseAuth = FirebaseAuth.instance;

  User? get currentUser => _firebaseAuth.currentUser;

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<void> loginWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    print(email);
    print(password);
    _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    print(email);
    print(password);
    _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
}
