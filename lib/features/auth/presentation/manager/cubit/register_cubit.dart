import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wassel/features/auth/data/model/register_model.dart';
import 'package:wassel/features/auth/data/repo/auth_repo.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this.authRepo) : super(RegisterInitial());

  final AuthRepo authRepo;

  Future<void> registerCubit({
    required String name,
    required String phone,
    required String email,
    required String password,
  }) async {
    emit(RegisterLoading());

    var result = await authRepo.registerUser(
      name: name,
      email: email,
      phone: phone,
      password: password,
    );

    result.fold(
      (isError) {
        // 👈 اطبع رسالة الخطأ النهائية هنا
        print('=== CUBIT FAILED MESSAGE ===');
        print(isError.errMessage);
        print('============================');
        emit(RegisterFailure(errMessage: isError.errMessage));
      },
      (registerModel) {
        emit(RegisterSuccess(registerModel: registerModel));
      },
    );
  }
}
