import 'package:dio/dio.dart';
import 'package:e_learning/Core/Utils/api_service.dart';
import 'package:e_learning/Core/Utils/app_theme.dart';
import 'package:e_learning/Features/QrCode/data/repos/addQrCodeRepos/addQrcode_repo_implemntaion.dart';
import 'package:e_learning/Features/QrCode/presentation/view_models/add_QrCode_cubit/add_qr_code_cubit.dart';
import 'package:e_learning/Features/courses/data/repos/add_courses_repos/add_courses_repo_implemntaion.dart';
import 'package:e_learning/Features/courses/data/repos/get_courses_repos/get_courses_repo_implemntaion.dart';
import 'package:e_learning/Features/courses/data/repos/update_course_repos/update_courses_repo_implemntaion.dart';
import 'package:e_learning/Features/courses/presentation/view_models/add_courses_cubit/add_courses_cubit.dart';
import 'package:e_learning/Features/courses/presentation/view_models/get_courses_cubit/getcourses_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Core/Utils/app_router.dart';
import 'Features/Authentication/AdminAuthentication/data/repos/loginRepos/login_admin_repo_implemntaion.dart';
import 'Features/Authentication/AdminAuthentication/data/repos/signupRepos/signup_admin_repo_implemntaion.dart';
import 'Features/Authentication/AdminAuthentication/presentation/view_models/login_cubit/login_admin_cubit.dart';
import 'Features/Authentication/AdminAuthentication/presentation/view_models/signup_cubit/sign_up_admin_cubit.dart';
import 'Features/Authentication/studentsAuthentication/data/repos/loginRepos/login_student_repo_implemntaion.dart';
import 'Features/Authentication/studentsAuthentication/data/repos/signupRepos/signup_student_repo_implemntaion.dart';
import 'Features/Authentication/studentsAuthentication/presentation/view_models/login_cubit/login_Student_cubit.dart';
import 'Features/Authentication/studentsAuthentication/presentation/view_models/signup_cubit/sign_up_Student_cubit.dart';
import 'Features/Message/data/get_student_inf/get_student_inf_imple.dart';
import 'Features/Message/presentation/view_models/get_student_cubit/get_student_cubit.dart';
import 'Features/QrCode/data/repos/get_Student_Attendance/get_Student_attendance_repo_implemntaion.dart';
import 'Features/QrCode/data/repos/get_allQrcode_repos/get_courses_repo_implemntaion.dart';
import 'Features/QrCode/presentation/view_models/Qrcode_cubit/qr_code_cubit.dart';
import 'Features/courses/presentation/view_models/image_picker_cubit/image_picker_cubit.dart';
import 'Features/courses/presentation/view_models/update_courses_cubit/update_courses_cubit.dart';
 import 'Features/profile/data/get_profile_info/get_profile_info_imp.dart';
import 'Features/profile/presentation/view_models/get_profile_info_cubit/get_profile_ifo_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                LoginAdminCubit(LoginAdminRepoImp(ApiService(Dio())))),
        BlocProvider(
            create: (context) =>
                LoginStudentCubit( LoginStudentRepoImp(ApiService(Dio())))),
        BlocProvider(
            create: (context) =>
                GetProfileIfoCubit(GetProfileIfoImp(ApiService(Dio())))..getProfileInf()),
    BlocProvider(
    create:(context) => GetStudentCubit(GetStudentIfImpRepo(ApiService(Dio())))),
        BlocProvider(
            create: (context) =>
                SignUpAdminCubit(SignUpAdminRepoImp(ApiService(Dio())))),
        BlocProvider(
            create: (context) =>
                SignUpStudentCubit(SignUpStudentRepoImp(ApiService(Dio())))),
        BlocProvider(
            create: (context) =>
                AddCoursesCubit(AddCoursesRepoImp(ApiService(Dio())))),
        BlocProvider(
            create: (context) =>
                UpdateCoursesCubit(UpdateCoursesRepoImp(ApiService(Dio())))),
        BlocProvider(
            create: (context) =>
                AddQrCodeCubit(AddQrCodeRepoImp(ApiService(Dio())))),
        BlocProvider(
            create: (context) =>
                GetCoursesCubit(GetCoursesRepoImp(ApiService(Dio())))
                  ..getAllCourses()),
        BlocProvider(create: (context) => FilePickerCubit()),
        BlocProvider(
          create: (context) => QrCodeCubit(
              GetQrAllCodeRepoImp(ApiService(Dio())),
              GetStudentAttendanceRepoImp(ApiService(Dio()))),
        )
      ],
      child: MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          theme: AppTheme.appThemeData),
    );
  }
}
