import 'package:go_router/go_router.dart';
import 'package:graduation_project/Features/auth/peresentaion/views/screens/hemodialysis.dart';
import 'package:graduation_project/Features/patienthome/screens/views/accpted_result_page.dart';
import 'package:graduation_project/Features/patienthome/screens/views/bluetooth_page.dart';
import 'package:graduation_project/Features/patienthome/screens/views/refuesd_result_page.dart';
import 'package:graduation_project/Features/patienthome/screens/views/requirmentsscreens/pressure_screen.dart';
import 'package:graduation_project/Features/patienthome/screens/views/requirmentsscreens/temperature_screen.dart';
import 'package:graduation_project/Features/patienthome/screens/views/requirmentsscreens/weight_screen.dart';
import 'package:graduation_project/Features/patienthome/screens/views/tests_page.dart';
import 'package:graduation_project/Features/patienthome/screens/views/upload_test.dart';

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
  static const Bluetoothpage = '/bluetoothpage';
  static const PressurePage = '/pressurepage';
 static const TemperaturePage = '/temperaturepage';
 static const WeightPage = '/weightpage';
 static const TestsPage = '/testpage';
 static const UploadTestPage = '/uploadtestpage';
 static const AccptedResultPage = '/accptedresultpage';
 static const RefuesdResultPage = '/refuesedresultpage';

}

abstract class AppRouter {
  static final router = GoRouter(routes: [
    GoRoute(
      path: RouterNames.LogoPage,
      builder: (context, state) => const LogoPage(),
    ),

    GoRoute(
      path: RouterNames.AboutDiabelt,
      builder: (context, state) => const AboutDiabelt(),
    ),

     GoRoute(
      path:RouterNames.hemodialysis,
      builder: (context, state) => const hemodialysis(),
       ),  
      
       GoRoute(
      path: RouterNames.PatientRegisterPage,
      builder: (context, state) => const PatientRegisterPage(),
      ),

      GoRoute(
        path: RouterNames.SignUppatient,
        builder: (context, state) => const SignUppatient(),
        ),

          GoRoute(
        path: RouterNames.PatientSignUp,
        builder: (context, state) => const PatientSignUp(),
        ),


        GoRoute(
          path: RouterNames.DoctorRegisterPage,
          builder: (context, state) => const DoctorRegisterPage(), 
        ),
      
       GoRoute(
        path: RouterNames.SignUpdoctor,
        builder: (context, state) => const SignUpdoctor(),
        ),
      
    
        GoRoute(
        path: RouterNames.PatientLoginPage,
        builder: (context, state) => const PatientLoginPage(),
        ),

         GoRoute(
        path: RouterNames.DoctorLoginPage,
        builder: (context, state) => const DoctorLoginPage(),
        ),


        GoRoute(
        path: RouterNames.ForgetPassword,
        builder: (context, state) =>const ForgetPassword (),
        ),

        GoRoute(
        path: RouterNames.Erorremail,
        builder: (context, state) =>const Erorremail (),
        ),

        GoRoute(
        path: RouterNames.CheckEmail,
        builder: (context, state) => const CheckEmail(),
        ),

         GoRoute(
        path: RouterNames.EnterCode,
        builder: (context, state) => const EnterCode(),
        ),
         
          GoRoute(
        path: RouterNames.ResetPassword,
        builder: (context, state) => const ResetPassword(),
        ),

        GoRoute(
          path: RouterNames.Bluetoothpage,
          builder: (context, state) => const BluetoothPage(),
           ),

        GoRoute(
            path:RouterNames.PressurePage,
            builder: (context, state) =>const PressurePage()
            ),
      
    
        GoRoute(
            path:RouterNames.TemperaturePage,
            builder: (context, state) =>const TemperaturePage()
            ),

        GoRoute(
           path:RouterNames.WeightPage,
           builder: (context, state) => const WeightPage() 
           ),

        GoRoute(
          path:RouterNames.TestsPage,
          builder: (context, state) => const TestsPage() 
          ),


        GoRoute(
          path:RouterNames.UploadTestPage,
          builder: (context, state) => const UploadTestPage () 
          ),

          
        GoRoute(
          path:RouterNames.AccptedResultPage,
          builder: (context, state) => const AccptedResultPage() 
          ),     

          
        GoRoute(
          path:RouterNames.RefuesdResultPage,
          builder: (context, state) => const RefuesdResultPage() 
          ),

  ]);
}
