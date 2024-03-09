import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import '../../../../core/network/api_constant.dart';
import '../../../../core/network/dio_helper.dart';
import '../../data/forget_password_model.dart';

part 'forget_password_state.dart';

class ForgetpasswordCubit extends Cubit<ForgetpasswordState> {
  ForgetpasswordCubit() : super(ForgetpasswordInitial());
       ForgetPasswordModel ? forgetPasswordModel;

Future<void> erroremail(
      {required String emailadress}) async {
    emit(ForgetpasswordLoading());
   try {
      Response response = await DioHelper.postData(
        endPoint: ApiConstance.forgetpassword,
        data: {'email': emailadress },
      );
      if (response.statusCode == 200) {
        forgetPasswordModel = ForgetPasswordModel.fromJson(response.data);
       // Session.saveSession(loginModel?);
        emit(ForgetpasswordSuccess(forgetPasswordModel !));
      }
    } on DioException catch (ex) {
      print('diooo ${ex.response?.statusCode}');

      String? error = ex.response?.data['message'];
      emit(ForgetpasswordFailure(
        errMsg: error ?? 'Server error',
      ));
    } catch (e, s) {
      print('$e $s');
      emit(
        ForgetpasswordFailure(
          errMsg: 'Error try again',
        ),
      );
    }
  }
}