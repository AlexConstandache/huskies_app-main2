import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:huskies_app/auth/auth.dart';
import 'package:huskies_app/gui/views/home/home_view.dart';
import 'package:huskies_app/gui/views/shop/shop_view.dart';
import 'package:huskies_app/gui/views/ticket_views/ticket_view.dart';
import 'package:huskies_app/gui/views/widgets/statistic_view/match_statisctics_view.dart';
import 'package:huskies_app/logic/classes/appstate.dart';
import 'package:huskies_app/logic/classes/user_vm/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'notifier.g.dart';

//   void sendEmailVerification() {
//     try {
//       _auth.sendEmailVerification();
//     } catch (e) {
//       _auth.logger.e(e.toString());
//       throw "Email can't be sendet";
//     }
//   }

//   void resetPassword({required String email}) {
//     try {
//       _auth.resetPassword(email: email);
//     } catch (e) {
//       _auth.logger.e(e.toString());
//       throw 'Error on reset password';
//     }
//   }

//   void signOut() {
//     try {
//       // await _googleSignIn.signOut();
//       _auth.signOut();
//     } catch (e) {
//       _auth.logger.e(e.toString());
//       throw 'error on sign out';
//     }
//   }

// }
@riverpod
class AppStateNotifier extends _$AppStateNotifier {
  AppStateNotifier();
  final _authService = AuthRepository();
  @override
  AppState build() {
    _authService.getAuthProvider;
    return AppState(
      views: [
        const HomeView(),
        const TicketView(),
        const MatchStatisticsView(season: 'Saison 23/24'),
        const ShopView(),
      ],
    );
  }

  void changeView({required int nextView}) => state = state.copyWith(currentViewIndex: nextView);
  // void login(UserVM? user) => state = state.copyWith(newUSer: user!);
  void reloadUser() {
    try {
      _authService.reloadUser();
    } catch (e) {
      _authService.logger.e(e.toString());
      throw 'Error on reload user';
    }
  }

  void signOut() {
    try {
      // await _googleSignIn.signOut();
      _authService.signOut();
      state = state.copyWith(newUSer: null);
    } catch (e) {
      _authService.logger.e(e.toString());
      throw 'error on sign out';
    }
  }

  void loadUserDM({required User user}) {
    FirebaseAuth.instance.authStateChanges().listen(
      (userDB) {
        if (userDB != null) {
          log('user found to listen');
          log(userDB.toString());
          final newUser = UserVM(
              name: user.displayName ?? '',
              uID: user.uid,
              email: user.email ?? 'beispiel@email.etc');
          state = state.copyWith(newUSer: newUser);
        }
        log('no user to listen');
      },
    );
  }

  Future<bool> signInWithEmailAndPassword({required String email, required String password}) async {
    if (!validInput(email, password)) return false;
    final user = await _authService.signInWithEmailPassword(email: email, password: password);
    state = state.copyWith(newUSer: user);

    return user != null;
  }

  //? on Staring app there is a Firebase instance in console with a uid? is this a logged in user?
  // void listentoFireBaseAuth() {
  //   final foundUser = _authService.getAuthProvider();
  //   if (foundUser != null) {
  //     state = state.copyWith(newUSer: UserVM(uID: foundUser,email: foundUser));
  //   }
  // }

  /// register a user request and listen to Backend service.
  Future<bool> registerUserWithEmailAndPassword(
      {required String email, required String password}) async {
    final isvalidInput = validInput(email, password);
    if (isvalidInput) {
      _authService.registerUserWithEmailAndPassword(email: email, password: password);
    }
    return isvalidInput;
  }

  bool validInput(String email, String password) {
    if (email.contains('@') && email.contains(RegExp(r'\.[a-z]{2,3}$'))) {
      if (password.length > 5 &&
          password.contains(RegExp(r'\w')) &&
          password.contains(RegExp(r'[.,&!?$@€]'))) {
        return true;
      } else {
        log('incorrenct input: "$password" is not valid');
      }
    } else {
      log('incorrenct input: "$email" is not valid');
    }
    return false;
  }
}
