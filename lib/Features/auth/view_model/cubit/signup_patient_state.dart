part of 'signup_patient_cubit.dart';

@immutable
sealed class SignupPatientState {}

final class SignupPatientInitial extends SignupPatientState {}
final class SignupPatientLoading extends SignupPatientState {}
final class SignupPatientSuccess extends SignupPatientState {

  final PatientSignUpModel patientSignUpModel;

  SignupPatientSuccess(this.patientSignUpModel);
}
final class SignupPatientFaliure extends SignupPatientState {
  final String errMsg;

   SignupPatientFaliure({required this.errMsg});
}