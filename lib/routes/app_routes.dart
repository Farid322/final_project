import 'package:go_router/go_router.dart';
import 'package:graduation_project/views/about_diabelt.dart';
import 'package:graduation_project/views/check_email.dart';
import 'package:graduation_project/views/enter_code.dart';
import 'package:graduation_project/views/erorr_email.dart';
import 'package:graduation_project/views/forget_password.dart';
import 'package:graduation_project/views/hemodialysis.dart';
import 'package:graduation_project/views/login.dart';
import 'package:graduation_project/views/logo.dart';
import 'package:graduation_project/views/patient_sign_up.dart';
import 'package:graduation_project/views/register.dart';
import 'package:graduation_project/views/reset_password.dart';
import 'package:graduation_project/views/sign_up_doctor.dart';
import 'package:graduation_project/views/sign_up_patient.dart';

class RouterNames {
  static const LogoPage = '/';
  static const AboutDiabelt = '/aboutdiablet';
  static const hemodialysis = '/hemodialysis';
  static const RegisterPage = '/register';
  static const SignUppatient = '/signuppatient';
  static const SignUpdoctor = '/signupdoctor';
  static const PatientSignUp = '/patientsignup';
  static const LoginPage = '/loginpage';
  static const ForgetPassword ='/forgetpassword';
  static const Erorremail = '/erroremail';
  static const CheckEmail = '/checkemail';
  static const EnterCode = '/entercode';
  static const ResetPassword = '/resrtpassword';
  
}

abstract class AppRouter {
  static final router = GoRouter(routes: [
    GoRoute(
      path: RouterNames.LogoPage,
      builder: (context, state) => LogoPage(),
    ),

    GoRoute(
      path: RouterNames.AboutDiabelt,
      builder: (context, state) => AboutDiabelt(),
    ),

     GoRoute(
      path:RouterNames.hemodialysis,
      builder: (context, state) => hemodialysis(),
       ),  
      
       GoRoute(
      path: RouterNames.RegisterPage,
      builder: (context, state) => RegisterPage(),
      ),

      GoRoute(
        path: RouterNames.SignUppatient,
        builder: (context, state) => SignUppatient(),
        ),
      
       GoRoute(
        path: RouterNames.SignUpdoctor,
        builder: (context, state) => SignUpdoctor(),
        ),
      
      GoRoute(
        path: RouterNames.PatientSignUp,
        builder: (context, state) => PatientSignUp(),
        ),

        GoRoute(
        path: RouterNames.LoginPage,
        builder: (context, state) => LoginPage(),
        ),

        GoRoute(
        path: RouterNames.ForgetPassword,
        builder: (context, state) =>ForgetPassword (),
        ),

        GoRoute(
        path: RouterNames.Erorremail,
        builder: (context, state) =>Erorremail (),
        ),

        GoRoute(
        path: RouterNames.CheckEmail,
        builder: (context, state) => CheckEmail(),
        ),

         GoRoute(
        path: RouterNames.EnterCode,
        builder: (context, state) => EnterCode(),
        ),
         
          GoRoute(
        path: RouterNames.ResetPassword,
        builder: (context, state) => ResetPassword(),
        ),
 

  ]);
}
