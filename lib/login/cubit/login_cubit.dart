import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial(email: ''));
  void loggedIn(newvalue) => emit(LoginInitial(email: newvalue));
  void inValid() => emit(UserInValid());
}
