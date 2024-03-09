part of 'signup_doctor_cubit.dart';

@immutable
sealed class SignupDoctorState {}

final class SignupDoctorInitial extends SignupDoctorState {}
final class SignupDoctorLoading extends SignupDoctorState {}
final class SignupDoctorSuccess extends SignupDoctorState {

  final SignupModel signupModel;

  SignupDoctorSuccess(this.signupModel);
}
final class SignupDoctorFaliure extends SignupDoctorState {
  final String errMsg;

   SignupDoctorFaliure({required this.errMsg});
}