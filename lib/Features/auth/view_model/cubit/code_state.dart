part of 'code_cubit.dart';

@immutable
sealed class OtpCodeState {}

final class OtpCodeInitial extends OtpCodeState {}

final class OtpCodeLoading extends OtpCodeState {}

final class OtpCodeSuccess extends OtpCodeState {
  final OtpModel otpModel;

  OtpCodeSuccess(this.otpModel);
}

final class OtpCodeFailure extends OtpCodeState {
  final String errMessage;

  OtpCodeFailure({required this.errMessage});
}
