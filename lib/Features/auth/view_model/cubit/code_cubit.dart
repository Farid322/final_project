import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/core/network/api_constant.dart';
import 'package:graduation_project/core/network/dio_helper.dart';
import 'package:meta/meta.dart';

import '../../data/code_model.dart';

part 'code_state.dart';

class OtpCodeCubit extends Cubit<OtpCodeState> {
  OtpCodeCubit() : super(OtpCodeInitial());

  GlobalKey<FormState> otpFormKey = GlobalKey<FormState>();
  OtpModel? otpModel;
  Future<void> sendOtpCode({required String resetCode}) async {
    // if (otpFormKey.currentState!.validate()) {
    //   otpFormKey.currentState!.save();
    // }

    emit(OtpCodeLoading());

    try {
      Response response = await DioHelper.postData(
          endPoint: ApiConstance.resetPassord, data: {'resetCode': resetCode});
      if (response.statusCode == 201) {
        otpModel = OtpModel.fromJson(response.data);
        // Session.saveSession(loginModel?);
        emit(OtpCodeSuccess(otpModel!));
      }
    } on DioException catch (ex) {
      print('diooo ${ex.response?.statusCode}');

      String? error = ex.response?.data['message'];
      emit(OtpCodeFailure(
        errMessage: error ?? 'Server error',
      ));
    } catch (e, s) {
      print('$e $s');
      emit(
        OtpCodeFailure(
          errMessage: 'Error try again',
        ),
      );
    }
  }
}
