import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:huskies_app/auth/auth_interface.dart';
import 'package:huskies_app/logic/classes/user_vm/user.dart';
import 'package:logger/logger.dart';

class AuthRepository implements AuthInterface {
  final FirebaseAuth _authService = FirebaseAuth.instance;
  final CollectionReference _usersDB = FirebaseFirestore.instance.collection('users');

  @override
  Stream<User?> userAuthState() => _authService.userChanges().handleError(
        (e) {
          log('$e a error occurent');
          // logger.e(e.toString());
          // throw AppStrings.errorFetchingUserAuthStatus;
        },
      );
  final logger = Logger();
  @override
  String? getAuthProvider() => _authService.currentUser?.providerData.firstOrNull?.providerId;

  @override
  Future<void> registerUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      UserCredential userCredential =
          await _authService.createUserWithEmailAndPassword(email: email, password: password);
      await _authService.currentUser?.sendEmailVerification();

      if (FirebaseAuth.instance.currentUser != null) {
        log('Firebase found/create a user: ${FirebaseAuth.instance.currentUser?.uid}');
        await userCredential.user?.updatePassword(password);
      }

      await _usersDB.doc(userCredential.user?.uid).set({
        'uid': userCredential.user?.uid,
        'email': email,
        'accountCreationDate': FieldValue.serverTimestamp(),
        'profileImageUrl': '',
        'name': email.split('@').first,
        // generateUsername(email),
      });
    } on FirebaseAuthException catch (e) {
      reactToFirebaseException(e);
    } catch (e) {
      logger.e(e.toString());
      throw 'es ist etwas schief gelaufen';
    }
  }

  @override
  Future<UserVM?> signInWithEmailPassword({required String email, required String password}) async {
    try {
      final response = await _authService.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (response.user != null) {
        return UserVM(
            uID: response.user!.uid,
            name: response.user!.displayName,
            email: response.user!.email ?? 'beispiel@example.etc');
      }
    } on FirebaseAuthException catch (e) {
      reactToFirebaseException(e);
    } catch (e) {
      logger.e(e.toString());
      throw 'es ist etwas schiefgelaufen';
    }
    return null;
  }

  @override
  Future<void> reloadUser() async {
    try {
      await _authService.currentUser?.reload();
    } catch (e) {
      logger.e(e.toString());
      throw 'Error on reload user';
    }
  }

  @override
  Future<void> sendEmailVerification() async {
    try {
      await _authService.currentUser?.sendEmailVerification();
    } catch (e) {
      logger.e(e.toString());
      throw "Email can't be sendet";
    }
  }

  @override
  Future<void> resetPassword({required String email}) async {
    try {
      await _authService.sendPasswordResetEmail(email: email);
    } catch (e) {
      logger.e(e.toString());
      throw 'Error on reset password';
    }
  }

  @override
  Future<void> signOut() async {
    try {
      // await _googleSignIn.signOut();
      await _authService.signOut();
    } catch (e) {
      logger.e(e.toString());
      throw 'error on sign out';
    }
  }

  @override
  Future<void> deleteUser({String? password}) async {
    // try {
    //   //Before deleting account user needs to login again
    //   String? userLoginService = getAuthProvider();
    //   if (userLoginService == 'password') {
    //     await signInWithEmailAndPassword(
    //       email: _auth.currentUser?.email ?? '',
    //       password: password ?? '',
    //     );
    //   } else if (userLoginService == 'google.com') {
    //     await signInWithGoogle();
    //   } else if (userLoginService == 'apple.com') {
    //     await signInWithApple();
    //   }

    //   List<Future<void>> deletionTasks = [];

    //   if (userLoginService == 'google.com') {
    //     deletionTasks.add(_googleSignIn.signOut());
    //   }

    //   // Schedule the Firebase authentication user deletion
    //   if (_auth.currentUser != null) {
    //     deletionTasks.add(_auth.currentUser!.delete());
    //   }

    //   // Schedule the Firestore user data deletion
    //   deletionTasks.add(_users.doc(_auth.currentUser?.uid).delete());

    //   // Wait for all deletion tasks to complete
    //   await Future.wait(deletionTasks);
    // } catch (e) {
    //   logger.e(e.toString());
    //   throw AppStrings.errorTextDeleteUser;
  }

  void reactToFirebaseException(FirebaseAuthException e) {
    switch (e.code) {
      case 'email-already-in-use':
        throw ('email is already used');
      case 'invalid-email':
        throw 'inavlid email';
      case 'operation-not-allowed':
        throw 'operation is not allowed';
      case 'weak-password':
        throw 'weak password';
      case 'user-disabled':
        throw 'user deaktiviert';
      case 'user-not-found':
        throw 'No user found';
      case 'wrong-password':
        throw 'Wrong password';
      default:
        throw 'es ist etwas schief gelaufen';
    }
  }
}
// * ------------------------------------------------------------------------------------------
  // final GoogleSignIn _googleSignIn = GoogleSignIn(
  //   scopes: [
  //     'email',
  //     'profile',
  //   ],
  // );


  // *------------------------- signIn with Apple----------------------------------------------

  // Future<void> signInWithApple() async {
  //   try {
  //     final AuthorizationCredentialAppleID credential = await SignInWithApple.getAppleIDCredential(
  //       scopes: [
  //         AppleIDAuthorizationScopes.email,
  //         AppleIDAuthorizationScopes.fullName,
  //       ],
  //     );

  //     final OAuthCredential authCredential = OAuthProvider('apple.com').credential(
  //       idToken: credential.identityToken,
  //       accessToken: credential.authorizationCode,
  //     );

  //     UserCredential userCredential = await _auth.signInWithCredential(authCredential);

  //     // Check if the Firebase user is not null before accessing UID.
  //     if (userCredential.user == null) {
  //       throw Exception('Failed to obtain Firebase user after Apple sign in.');
  //     }

  //     String uid = userCredential.user!.uid; // Using '!' as we've checked it's not null above.

  //     // Get email, if credential.email is null or empty, then fetch from userCredential.user.email
  //     String email = (credential.email != null && credential.email!.isNotEmpty)
  //         ? credential.email!
  //         : (userCredential.user!.email ?? 'no-email@relay.appleid.com');

  //     DocumentSnapshot userDocSnap = await _users.doc(uid).get();

  //     if (!userDocSnap.exists) {
  //       await _users.doc(uid).set({
  //         'uid': uid,
  //         'email': email,
  //         'accountCreationDate': FieldValue.serverTimestamp(),
  //         'profileImageUrl': AppStrings.noImageProfileUrl,
  //         'name': generateUsername(email),
  //       });
  //     }
  //   } catch (e) {
  //     logger.e(e.toString());
  //     throw AppStrings.errorTextAppleSignIn;
  //   }
  // }


  // *------------------------- signIn with Google----------------------------------------------



  // Future<void> signInWithGoogle() async {
  //   try {
  //     final GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
  //     if (googleSignInAccount == null) {
  //       throw Exception('Google sign in was aborted or failed.');
  //     }

  //     final GoogleSignInAuthentication googleAuth = await googleSignInAccount.authentication;
  //     final OAuthCredential credential = GoogleAuthProvider.credential(
  //       accessToken: googleAuth.accessToken,
  //       idToken: googleAuth.idToken,
  //     );

  //     UserCredential userCredential = await _auth.signInWithCredential(credential);
  //     if (userCredential.user == null) {
  //       throw Exception('Failed to obtain Firebase user after sign in.');
  //     }
  //     String uid = userCredential.user!.uid; // Using '!' as we've checked it's not null above.
  //     DocumentSnapshot userDocSnap = await _users.doc(uid).get();

  //     if (!userDocSnap.exists) {
  //       await _users.doc(uid).set({
  //         'uid': uid,
  //         'email': googleSignInAccount.email,
  //         'accountCreationDate': FieldValue.serverTimestamp(),
  //         'profileImageUrl': AppStrings.noImageProfileUrl,
  //         'name': generateUsername(googleSignInAccount.email),
  //       });
  //     }
  //   } catch (e) {
  //     logger.e(e.toString());
  //     throw AppStrings.errorTextGoogleSignIn;
  //   }
  // }
