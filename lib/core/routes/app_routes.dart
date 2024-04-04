import 'package:go_router/go_router.dart';
import 'package:graduation_project/Features/Doctorhome/screens/Appiontment_pages/AppiontmentsCP.dart';
import 'package:graduation_project/Features/Doctorhome/screens/Appiontment_pages/BasicSession.dart';
import 'package:graduation_project/Features/Doctorhome/screens/abutus/first_about_us.dart';
import 'package:graduation_project/Features/Doctorhome/screens/abutus/second_about_us.dart';
import 'package:graduation_project/Features/Doctorhome/screens/abutus/third_about_us.dart';
import 'package:graduation_project/Features/Doctorhome/screens/navbar/Notification.dart';
import 'package:graduation_project/Features/Doctorhome/screens/navbar/home.dart';
import 'package:graduation_project/Features/Doctorhome/screens/navbar/messanger.dart';
import 'package:graduation_project/Features/Doctorhome/screens/patient_pages/Appointments.dart';
import 'package:graduation_project/Features/Doctorhome/screens/patient_pages/Featuers.dart';
import 'package:graduation_project/Features/Doctorhome/screens/patient_pages/Medical_test.dart';
import 'package:graduation_project/Features/Doctorhome/screens/patient_pages/Patient_Pofile.dart';
import 'package:graduation_project/Features/Doctorhome/screens/patient_pages/medicine.dart';
import 'package:graduation_project/Features/patienthome/screens/views/Doctor2.dart';
import 'package:graduation_project/Features/patienthome/screens/views/Doctor3.dart';
import 'package:graduation_project/Features/patienthome/screens/views/DoctorProfile.dart';
import 'package:graduation_project/Features/patienthome/screens/views/My_Appointments.dart';
import 'package:graduation_project/Features/patienthome/screens/views/My_medicine.dart';
import 'package:graduation_project/Features/patienthome/screens/views/My_session.dart';
import 'package:graduation_project/Features/patienthome/screens/views/Search.dart';
import 'package:graduation_project/Features/patienthome/screens/views/Search_output.dart';
import 'package:graduation_project/Features/patienthome/screens/views/abutus/first_about_us.dart';
import 'package:graduation_project/Features/patienthome/screens/views/abutus/second_about_us.dart';
import 'package:graduation_project/Features/patienthome/screens/views/abutus/third_about_us.dart';
import 'package:graduation_project/Features/patienthome/screens/views/navbar/Notification.dart';
import 'package:graduation_project/Features/patienthome/screens/views/navbar/messanger.dart';
import 'package:graduation_project/Features/patienthome/screens/views/setting_pages/Privacy.dart';
import 'package:graduation_project/Features/patienthome/screens/views/setting_pages/accountinfo.dart';
import 'package:graduation_project/Features/patienthome/screens/views/navbar/patient_home.dart';
import 'package:graduation_project/Features/Doctorhome/screens/schedule_pages/schedule.dart';
import 'package:graduation_project/Features/Doctorhome/screens/setting_pages/Privacy.dart';
import 'package:graduation_project/Features/Doctorhome/screens/setting_pages/accountinfo.dart';
import 'package:graduation_project/Features/Doctorhome/screens/setting_pages/setting.dart';
import 'package:graduation_project/Features/auth/peresentaion/views/screens/check_email_doctor.dart';
import 'package:graduation_project/Features/auth/peresentaion/views/screens/enter_code_doctor.dart';
import 'package:graduation_project/Features/auth/peresentaion/views/screens/error_email_doctor.dart';
import 'package:graduation_project/Features/auth/peresentaion/views/screens/forgetpasswoeddoctor.dart';
import 'package:graduation_project/Features/auth/peresentaion/views/screens/hemodialysis.dart';
import 'package:graduation_project/Features/patienthome/screens/views/accpted_result_page.dart';
import 'package:graduation_project/Features/patienthome/screens/views/bluetooth_page.dart';
import 'package:graduation_project/Features/patienthome/screens/views/refuesd_result_page.dart';
import 'package:graduation_project/Features/patienthome/screens/views/requirmentsscreens/pressure_screen.dart';
import 'package:graduation_project/Features/patienthome/screens/views/requirmentsscreens/temperature_screen.dart';
import 'package:graduation_project/Features/patienthome/screens/views/requirmentsscreens/weight_screen.dart';
import 'package:graduation_project/Features/patienthome/screens/views/session.dart';
import 'package:graduation_project/Features/patienthome/screens/views/setting_pages/setting.dart';
import 'package:graduation_project/Features/patienthome/screens/views/tests_page.dart';
import 'package:graduation_project/Features/patienthome/screens/views/upload_test.dart';
import 'package:graduation_project/Features/patienthome/screens/views/sessions.dart';

import '../../Features/patienthome/screens/views/my_medical_test.dart';
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
  static const ForgetPassword = '/forgetpassword';
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
  static const AboutUs = '/aboutus';
  static const SecondAboutUs = '/secondaboutus';
  static const ThirdAboutUs = '/thirdaboutus';
  static const Appointmentcp = '/appointmentcp';
  static const BasicSession = '/basicsession';
  static const Appointments = '/appoinment';
  static const SessionFeatures = '/sessionfeatures';
  static const MedicalTest = '/medicaltest';
  static const Medicine = '/medicine';
  static const Patientprofile = '/patientprofile';
  static const Sessions = '/sessions';
  static const Schedule = '/schedule';
  static const AccountInfo = '/accountinfo';
  static const Privacy = '/privacy';
  static const SettingPage = '/settingpage';
  static const DoctorHome = '/doctorhome';
  static const Messanger = '/messanger';
  static const NotificationScreen = '/notificationscreen';
  static const MyMedicalTest = '/mymedicaltest';
  static const PatientHome = '/patienthome';
  static const PatientMedicine = '/patientmedicine';
  static const ForgetPasswordDoctor = '/forgetpassworddoctor';
  static const ErorremailDoctor = '/erroremaildoctor';
  static const CheckEmailDoctor = '/checkemaildoctor';
  static const EnterCodeDoctor = '/entercodedoctor';
  static const ResetPasswordDoctor = '/resrtpassworddoctor';
  static const NotificationScreenPatient = '/NotificationScreenPatient';
  static const MessangerPatient = '/MessangerPatient';
  static const AccountInfoPatient = '/AccountInfoPatient';
  static const PrivacyPatient = '/PrivacyPatient';
  static const SettingPagePatient = '/SettingPagePatient';
  static const Paitentsession = '/Paitentsession';
  static const MyAppointments = '/MyAppointments';
  static const MyMedicine = '/MyMedicine';
  static const SessionsPatient = '/SessionsPatient';
  static const AboutUsPatient = '/AboutUsPatient';
  static const SecondAboutUsPatient = '/SecondAboutUsPatient';
  static const ThirdAboutUsPatient = '/ThirdAboutUsPatient';
  static const Search = '/Search';
  static const SearchOutput = '/SearchOutput';
  static const DoctorProfile = '/DoctorProfile';
  static const DoctorTwo = '/DoctorTwo';
  static const DoctorThree = '/DoctorThree';
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
      path: RouterNames.hemodialysis,
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
      builder: (context, state) => SignUpdoctor(),
    ),
    GoRoute(
      path: RouterNames.PatientLoginPage,
      builder: (context, state) => const PatientLoginPage(),
    ),
    GoRoute(
      path: RouterNames.DoctorLoginPage,
      builder: (context, state) => DoctorLoginPage(),
    ),
    GoRoute(
      path: RouterNames.ForgetPassword,
      builder: (context, state) => const ForgetPassword(),
    ),
    GoRoute(
      path: RouterNames.Erorremail,
      builder: (context, state) => const Erorremail(),
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
      builder: (context, state) => const ResetPasswordPatient(),
    ),
    GoRoute(
      path: RouterNames.Bluetoothpage,
      builder: (context, state) => const BluetoothPage(),
    ),
    GoRoute(
        path: RouterNames.PressurePage,
        builder: (context, state) => const PressurePage()),
    GoRoute(
        path: RouterNames.TemperaturePage,
        builder: (context, state) => const TemperaturePage()),
    GoRoute(
        path: RouterNames.WeightPage,
        builder: (context, state) => const WeightPage()),
    GoRoute(
        path: RouterNames.TestsPage,
        builder: (context, state) => const TestsPage()),
    GoRoute(
        path: RouterNames.UploadTestPage,
        builder: (context, state) => const UploadTestPage()),
    GoRoute(
        path: RouterNames.AccptedResultPage,
        builder: (context, state) => const AccptedResultPage()),
    GoRoute(
        path: RouterNames.RefuesdResultPage,
        builder: (context, state) => const RefuesdResultPage()),
    GoRoute(
        path: RouterNames.AboutUs,
        builder: (context, state) => const AboutUs()),
    GoRoute(
        path: RouterNames.SecondAboutUs,
        builder: (context, state) => const SecondAboutUs()),
    GoRoute(
        path: RouterNames.ThirdAboutUs,
        builder: (context, state) => const ThirdAboutUs()),
    GoRoute(
        path: RouterNames.Appointmentcp,
        builder: (context, state) => const Appointmentcp()),
    GoRoute(
        path: RouterNames.BasicSession,
        builder: (context, state) => const BasicSession()),
    GoRoute(
        path: RouterNames.Appointments,
        builder: (context, state) => const Appointments()),
    GoRoute(
        path: RouterNames.SessionFeatures,
        builder: (context, state) => const SessionFeatures()),
    GoRoute(
        path: RouterNames.MedicalTest,
        builder: (context, state) => const MedicalTest()),
    GoRoute(
        path: RouterNames.Medicine,
        builder: (context, state) => const Medicine()),
    GoRoute(
        path: RouterNames.Patientprofile,
        builder: (context, state) => const Patientprofile()),
    GoRoute(
        path: RouterNames.Sessions,
        builder: (context, state) => const session()),
    GoRoute(
        path: RouterNames.Schedule,
        builder: (context, state) => const Schedule()),
    GoRoute(
        path: RouterNames.AccountInfo,
        builder: (context, state) => const AccountInfo()),
    GoRoute(
        path: RouterNames.Privacy,
        builder: (context, state) => const Privacy()),
    GoRoute(
        path: RouterNames.SettingPage,
        builder: (context, state) => const SettingPage()),
    GoRoute(
        path: RouterNames.DoctorHome,
        builder: (context, state) => const DoctorHome()),
    GoRoute(
        path: RouterNames.Messanger,
        builder: (context, state) => const Messanger()),
    GoRoute(
        path: RouterNames.NotificationScreen,
        builder: (context, state) => const NotificationScreen()),
    GoRoute(
        path: RouterNames.MyMedicalTest,
        builder: (context, state) => const MyMedicalTest()),
    GoRoute(
        path: RouterNames.PatientHome,
        builder: (context, state) => const PatientHome()),
    GoRoute(
      path: RouterNames.ForgetPasswordDoctor,
      builder: (context, state) => const ForgetPasswordDoctor(),
    ),
    GoRoute(
      path: RouterNames.ErorremailDoctor,
      builder: (context, state) => ErorremailDoctor(),
    ),
    GoRoute(
      path: RouterNames.CheckEmailDoctor,
      builder: (context, state) => const CheckEmailDoctor(),
    ),
    GoRoute(
      path: RouterNames.EnterCodeDoctor,
      builder: (context, state) => const EnterCodeDoctor(),
    ),
    GoRoute(
      path: RouterNames.AccountInfoPatient,
      builder: (context, state) => const AccountInfoPatient(),
    ),
    GoRoute(
      path: RouterNames.PrivacyPatient,
      builder: (context, state) => const PrivacyPatient(),
    ),
    GoRoute(
      path: RouterNames.SettingPagePatient,
      builder: (context, state) => const SettingPagePatient(),
    ),
    GoRoute(
      path: RouterNames.MessangerPatient,
      builder: (context, state) => const MessangerPatient(),
    ),
    GoRoute(
      path: RouterNames.NotificationScreenPatient,
      builder: (context, state) => const NotificationScreenPatient(),
    ),
    GoRoute(
      path: RouterNames.Paitentsession,
      builder: (context, state) => const Paitentsession(),
    ),
    GoRoute(
      path: RouterNames.MyAppointments,
      builder: (context, state) => const MyAppointments(),
    ),
    GoRoute(
      path: RouterNames.MyMedicine,
      builder: (context, state) => const MyMedicine(),
    ),
    GoRoute(
      path: RouterNames.SessionsPatient,
      builder: (context, state) => const SessionsPatient(),
    ),
    GoRoute(
      path: RouterNames.AboutUsPatient,
      builder: (context, state) => const AboutUsPatient(),
    ),
    GoRoute(
      path: RouterNames.SecondAboutUsPatient,
      builder: (context, state) => const SecondAboutUsPatient(),
    ),
    GoRoute(
      path: RouterNames.ThirdAboutUsPatient,
      builder: (context, state) => const ThirdAboutUsPatient(),
    ),
    GoRoute(
      path: RouterNames.Search,
      builder: (context, state) => const Search(),
    ),
    GoRoute(
      path: RouterNames.SearchOutput,
      builder: (context, state) => const SearchOutput(),
    ),
    GoRoute(
      path: RouterNames.DoctorProfile,
      builder: (context, state) => const DoctorProfile(),
    ),
    GoRoute(
      path: RouterNames.DoctorTwo,
      builder: (context, state) => const DoctorTwo(),
    ),
    GoRoute(
      path: RouterNames.DoctorThree,
      builder: (context, state) => const DoctorThree(),
    ),
  ]);
}
