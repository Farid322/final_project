import 'package:go_router/go_router.dart';
import 'package:graduation_project/Features/auth/peresentaion/views/screens/hemodialysis.dart';
import 'package:graduation_project/Features/patienthome/screens/views/bluetooth_page.dart';
import 'package:graduation_project/Features/patienthome/screens/views/requirmentsscreens/pressure_screen.dart';
import 'package:graduation_project/Features/patienthome/screens/views/requirmentsscreens/temperature_screen.dart';
import 'package:graduation_project/Features/patienthome/screens/views/requirmentsscreens/weight_screen.dart';
import 'package:graduation_project/Features/patienthome/screens/views/tests_page.dart';

import '../../Features/auth/peresentaion/views/screens/erorr_email.dart';
import '../../Features/auth/peresentaion/views/screens/patient_login.dart';
import '../../Features/auth/peresentaion/views/screens/patient_sign_up.dart';
import '../../Features/auth/peresentaion/views/screens/about_diabelt.dart';
import '../../Features/auth/peresentaion/views/screens/check_email.dart';
import '../../Features/auth/peresentaion/views/screens/doctor_login.dart';
import '../../Features/auth/peresentaion/views/screens/doctor_register.dart';
import '../../Features/auth/peresentaion/views/screens/enter_code.dart';
import '../../Features/auth/peresentaion/views/screens/forget_password.dart';
import '../../Features/auth/peresentaion/views/screens/logo.dart';
import '../../Features/auth/peresentaion/views/screens/patient_register.dart';
import '../../Features/auth/peresentaion/views/screens/reset_password.dart';
import '../../Features/auth/peresentaion/views/screens/sign_up_doctor.dart';
import '../../Features/auth/peresentaion/views/screens/sign_up_patient.dart';


class RouterNames {
  static const LogoPage = '/';
  static const AboutDiabelt = '/aboutdiablet';
  static const hemodialysis = '/hemodialysis';
  static const PatientRegisterPage = '/patientregister';
  static const SignUppatient = '/signuppatient';
  static const DoctorRegisterPage = '/doctorregister';
  static const SignUpdoctor = '/signupdoctor';
  static const PatientSignUp = '/patientsignup';
  static const PatientLoginPage = '/patientloginpage';
  static const DoctorLoginPage = '/doctorloginpage';
  static const ForgetPassword ='/forgetpassword';
  static const Erorremail = '/erroremail';
  static const CheckEmail = '/checkemail';
  static const EnterCode = '/entercode';
  static const ResetPassword = '/resrtpassword';
  static const Bluetoothpage = 'bluetoothpage';
  static const PressurePage = 'pressurepage';
 static const TemperaturePage = 'temperaturepage';
 static const WeightPage = 'weightpage';
 static const TestsPage = 'testpage';

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
      path: RouterNames.PatientRegisterPage,
      builder: (context, state) => PatientRegisterPage(),
      ),

      GoRoute(
        path: RouterNames.SignUppatient,
        builder: (context, state) => SignUppatient(),
        ),

          GoRoute(
        path: RouterNames.PatientSignUp,
        builder: (context, state) => PatientSignUp(),
        ),


        GoRoute(
          path: RouterNames.DoctorRegisterPage,
          builder: (context, state) => DoctorRegisterPage(), 
        ),
      
       GoRoute(
        path: RouterNames.SignUpdoctor,
        builder: (context, state) => SignUpdoctor(),
        ),
      
    
        GoRoute(
        path: RouterNames.PatientLoginPage,
        builder: (context, state) => PatientLoginPage(),
        ),

         GoRoute(
        path: RouterNames.DoctorLoginPage,
        builder: (context, state) => DoctorLoginPage(),
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

        GoRoute(
          path: RouterNames.Bluetoothpage,
          builder: (context, state) => BluetoothPage(),
           ),

        GoRoute(
            path:RouterNames.PressurePage,
            builder: (context, state) =>PressurePage()
            ),
      
    
        GoRoute(
            path:RouterNames.TemperaturePage,
            builder: (context, state) =>TemperaturePage()
            ),

        GoRoute(
           path:RouterNames.WeightPage,
           builder: (context, state) => WeightPage() 
           ),

        GoRoute(
          path:RouterNames.TestsPage,
          builder: (context, state) => TestsPage() 
          ),


               

  ]);
}
