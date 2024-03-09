import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:graduation_project/Features/auth/data/signup_model.dart';
import 'package:meta/meta.dart';

import '../../../../core/network/api_constant.dart';
import '../../../../core/network/dio_helper.dart';

part 'signup_doctor_state.dart';

class SignupDoctorCubit extends Cubit<SignupDoctorState> {
  SignupDoctorCubit() : super(SignupDoctorInitial());


  SignupModel? signupModel ;

   Future<void> DoctorSignup(
      {required String email, required String passWord,required String name , required String phone,
      required String location , required String iD ,required String experience , required String confirmPassword}) async {
    emit(SignupDoctorLoading());

    try {
      Response response = await DioHelper.postData(
        endPoint: ApiConstance.signupdoctor,
        data: {'email': email, 'password': passWord,'name' : name ,'phone': phone , 'ID': iD , 'experience' : experience ,
        'location' : location , 'confirmPassword' : confirmPassword },
      );
      if (response.statusCode == 201) {
        signupModel = SignupModel.fromJson(response.data);
       // Session.saveSession(loginModel?);
        emit(SignupDoctorSuccess(signupModel!));
      }
    } on DioException catch (ex) {
      print('diooo ${ex.response?.statusCode}');

      String? error = ex.response?.data['message'];
      emit(SignupDoctorFaliure(
        errMsg: error ?? 'Server error',
      ));
    } catch (e, s) {
      print('$e $s');
      emit(
        SignupDoctorFaliure(
          errMsg: 'Error try again',
        ),
      );
    }
}
}