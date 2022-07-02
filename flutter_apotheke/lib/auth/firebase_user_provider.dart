import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class FlutterApothekeFirebaseUser {
  FlutterApothekeFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

FlutterApothekeFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<FlutterApothekeFirebaseUser> flutterApothekeFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<FlutterApothekeFirebaseUser>(
            (user) => currentUser = FlutterApothekeFirebaseUser(user));
