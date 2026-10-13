import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wassel/features/auth/data/model/login_model.dart';
import 'package:wassel/features/auth/data/repo/auth_repo.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.authRepo) : super(LoginInitial());

  final AuthRepo authRepo;

  Future<void> loginCubit({
    required String phone,
    required String password,
  }) async {
    emit(LoginLoading());
    
    var result = await authRepo.loginUser(phone: phone, password: password);

    result.fold(
      (failure) {
        // print('=== CUBIT EXCEPTION ===');
        // print(failure.errMessage);
        // print('======================');
        emit(LoginFailure(errorMessage: failure.errMessage));
      },
      (loginModel) {
        emit(LoginSuccess(loginModel: loginModel));
      },
    );
  }
}
