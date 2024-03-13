
import 'package:flutter/cupertino.dart';
import 'package:bloc/bloc.dart';
import '../../../../core/network/api_constant.dart';
import '../../../../core/network/dio_helper.dart';
import '../../data/login_model.dart';
import 'package:dio/dio.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  LoginModel? loginModel;

   Future<void> userLogin(
      {required String email, required String passWord}) async {
    emit(LoginLoading());

    try {
      Response response = await DioHelper.postData(
        endPoint: ApiConstance.login,
        data: {'email': email, 'password': passWord},
      );
      if (response.statusCode == 201) {
        loginModel = LoginModel.fromJson(response.data);
       // Session.saveSession(loginModel?);
        emit(LoginSuccess(loginModel!));
      }
    } on DioException catch (ex) {
      print('diooo ${ex.response?.statusCode}');

      String? error = ex.response?.data['message'];
      emit(LoginFailure(
        errMsg: error ?? 'Server error',
      ));
    } catch (e, s) {
      print('$e $s');
      emit(
        LoginFailure(
          errMsg: 'Error try again',
        ),
      );
    }
  }
}