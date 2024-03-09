part of 'forget_password_cubit.dart';

@immutable
sealed class ForgetpasswordState {}

final class ForgetpasswordInitial extends ForgetpasswordState {}
final class ForgetpasswordLoading extends ForgetpasswordState {}


final class ForgetpasswordSuccess extends ForgetpasswordState {
  final ForgetPasswordModel forgetPasswordModel;

  ForgetpasswordSuccess(this.forgetPasswordModel);
}

final class ForgetpasswordFailure extends ForgetpasswordState {
  final String errMsg;

 ForgetpasswordFailure({required this.errMsg});
}