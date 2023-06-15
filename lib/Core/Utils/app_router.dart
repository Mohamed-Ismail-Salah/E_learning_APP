import 'package:e_learning/Features/Authentication/presentation/view/accesspremissions_view.dart';
import 'package:e_learning/Features/Authentication/presentation/view/login_view.dart';
import 'package:e_learning/Features/Authentication/presentation/view/signup_view.dart';
import 'package:e_learning/Features/courses/presentation/view/add_course_view.dart';
import 'package:e_learning/Features/home/presentation/view/home_view.dart';
import 'package:go_router/go_router.dart';
import '../../Features/Message/presentation/view/search_student_view.dart';
import '../../Features/QrCode/presentation/view/add_Qrcode_view.dart';
import '../../Features/QrCode/presentation/view/course_list_view.dart';
import '../../Features/QrCode/presentation/view/qrcode_list_view.dart';
import '../../Features/QrCode/presentation/view/qrcode_view.dart';
import '../../Features/QrCode/presentation/view/student_attendance_view.dart';
import '../../Features/Splash/Splash_view.dart';
import '../../Features/courses/presentation/view/courses_view.dart';

abstract class AppRouter {
  static const kAccessPremissionsView = '/AccessPremissionsView';
  static const kLoginView = '/LoginView';
  static const kHomeView = '/HomeView';
  static const kSignupView = '/SignupView';
  static const kCoursesView = '/CoursesView';
  static const kAddCourseView = '/AddCourseView';
  static const kListCourseQrCodeView="/ListCourseQrCodeView";
  static const kListQrCodeView="/ListQrCodeView";
  static const kAddQrCodeView="/AddQrCodeView";
  static const kQrCodeView="/QrCodeView";
  static const kStudentAttendanceView="/StudentAttendanceView";
  static const kSearchStudentView="/SearchStudentView";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kAccessPremissionsView,
        builder: (context, state) => const AccessPremissionsView(),
      ),
      GoRoute(
        path: kLoginView,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: kSignupView,
        builder: (context, state) => const SignupView(),
      ),
      GoRoute(
        path:  kHomeView,
        builder: (context, state) => const  HomeView(),
      ), GoRoute(
        path:  kCoursesView,
        builder: (context, state) => const CoursesView(),
      ),
      GoRoute(
        path:kAddCourseView,
        builder: (context, state) => const AddCourseView(),
      ),GoRoute(
        path:kListCourseQrCodeView,
        builder: (context, state) => const ListCourseQrCodeView(),
      ),
       GoRoute(
        path:kListQrCodeView,
        builder: (context, state) =>   const ListQrCodeView(

        ),
      ), GoRoute(
        path:kAddQrCodeView,
        builder: (context, state) => const AddQrCodeView(),
      ),
      GoRoute(
        path:kQrCodeView ,
        builder: (context, state) => const QrCodeView(),
      ),
      GoRoute(
        path:kStudentAttendanceView  ,
        builder: (context, state) => const StudentAttendanceView(),
      ),
      GoRoute(
        path:kSearchStudentView  ,
        builder: (context, state) => const  SearchStudentView(),
      ),


    ],
  );
}
