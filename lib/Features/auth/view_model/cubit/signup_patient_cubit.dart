import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import '../../../../core/network/api_constant.dart';
import '../../../../core/network/dio_helper.dart';
import '../../data/patient_signup_model.dart';

part 'signup_patient_state.dart';

class SignupPatientCubit extends Cubit<SignupPatientState> {
  SignupPatientCubit() : super(SignupPatientInitial());

  PatientSignUpModel? patientSignUpModel;

  Future<void> PatientSignup(
      {required String email,
      required String passWord,
      required String username,
      required String mobilenumber,
      required String gender,
      required String barcode,
      required String confirmPassword}) async {
    emit(SignupPatientLoading());

    try {
      Response response = await DioHelper.postData(
        endPoint: ApiConstance.signuppatient,
        data: {
          'email': email,
          'password': passWord,
          'username': username,
          'mobilenumber': mobilenumber,
          'confirmPassword': confirmPassword,
          'gender': gender,
          'barcode': barcode
        },
      );
      if (response.statusCode == 201) {
        patientSignUpModel = PatientSignUpModel.fromJson(response.data);
        // Session.saveSession(loginModel?);
        emit(SignupPatientSuccess(patientSignUpModel!));
      }
    } on DioException catch (ex) {
      print('diooo ${ex.response?.statusCode}');

      String? error = ex.response?.data['message'];
      emit(SignupPatientFaliure(
        errMsg: error ?? 'Server error',
      ));
    } catch (e, s) {
      print('$e $s');
      emit(
        SignupPatientFaliure(
          errMsg: 'Error try again',
        ),
      );
    }
  }
}
