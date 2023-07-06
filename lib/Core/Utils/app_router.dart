 import 'package:e_learning/Features/Authentication/FatherAuthentication/presentation/view/signup_Father_view.dart';
import 'package:e_learning/Features/ReceiveStudentMessages/data/model/Messages_Data_modle.dart';
import 'package:e_learning/Features/StudentCourses/data/modles/Student_quiz_model.dart';
import 'package:e_learning/Features/courses/data/models/Assignment_modle.dart';
import 'package:e_learning/Features/courses/data/models/all_lecture.dart';
import 'package:e_learning/Features/courses/presentation/view/add_course_view.dart';
import 'package:e_learning/Features/home/FatherHome/presentation/view/Father_home_view.dart';
import 'package:e_learning/Features/profile/StudentProfile/presentation/view/Student_edit_profile_viwe.dart';
  import 'package:go_router/go_router.dart';
import '../../Features/Authentication/AdminAuthentication/presentation/view/accesspremissions_view.dart';
import '../../Features/Authentication/AdminAuthentication/presentation/view/login_view.dart';
import '../../Features/Authentication/AdminAuthentication/presentation/view/signup_view.dart';
import '../../Features/Authentication/FatherAuthentication/presentation/view/login_Father_view.dart';
import '../../Features/Authentication/studentsAuthentication/presentation/view/login_Student_view.dart';
import '../../Features/Authentication/studentsAuthentication/presentation/view/signup_Student_view.dart';
import '../../Features/Message/presentation/view/search_student_view.dart';
import '../../Features/Message/presentation/view/send_message_view.dart';
import '../../Features/Message/presentation/view/student_details_view.dart';
import '../../Features/QrCode/presentation/view/add_Qrcode_view.dart';
import '../../Features/QrCode/presentation/view/course_list_view.dart';
import '../../Features/QrCode/presentation/view/qrcode_list_view.dart';
import '../../Features/QrCode/presentation/view/qrcode_view.dart';
import '../../Features/QrCode/presentation/view/student_attendance_view.dart';
import '../../Features/ReadQrCode/presentaion/view/read_qrcode_view.dart';
import '../../Features/ReceiveStudentMessages/presentain/view/all_message.dart';
import '../../Features/ReceiveStudentMessages/presentain/view/message_details.dart';
import '../../Features/Splash/Splash_view.dart';
import '../../Features/StudentCourses/presentation/view/Attachment_course_view.dart';
import '../../Features/StudentCourses/presentation/view/Student_course_data_view.dart';
import '../../Features/StudentCourses/presentation/view/Student_courses_view.dart';
import '../../Features/StudentCourses/presentation/view/all_Quiz_view.dart';
import '../../Features/StudentCourses/presentation/view/all_assignment_view.dart';
import '../../Features/StudentCourses/presentation/view/assignment_details_view.dart';
import '../../Features/StudentCourses/presentation/view/student_Quiz_details.dart';
import '../../Features/courses/presentation/view/add_Attachment_view.dart';
import '../../Features/courses/presentation/view/add_assignment_view.dart';
import '../../Features/courses/presentation/view/add_question_view.dart';
import '../../Features/courses/presentation/view/all_Admin_Quiz_view.dart';
import '../../Features/courses/presentation/view/all_Attachment_view.dart';
 import '../../Features/courses/presentation/view/course_data_view.dart';
import '../../Features/courses/presentation/view/courses_view.dart';
import '../../Features/courses/presentation/view/create_assignment _view.dart';
import '../../Features/courses/presentation/view/lecturel_data_view.dart';
import '../../Features/courses/presentation/view/students_grades.dart';
import '../../Features/courses/presentation/view/update_course_view.dart';
import '../../Features/courses/presentation/view/create_quiz_view.dart';
import '../../Features/home/AdminHome/presentation/view/admin_home_view.dart';
import '../../Features/home/StudentHome/presentation/view/student_home_view.dart';
import '../../Features/profile/Adminprofile/data/models/profile_info_model.dart';
import '../../Features/profile/Adminprofile/presentation/view/Admin_edit_profile_viwe.dart';
import '../../Features/profile/Adminprofile/presentation/view/Admin_profile_view.dart';
import '../../Features/profile/StudentProfile/data/models/profile_Student_info_model.dart';
import '../../Features/profile/StudentProfile/presentation/view/Student_profile_view.dart';


abstract class AppRouter {
  static const kAccessPremissionsView = '/AccessPremissionsView';
  static const kLoginView = '/LoginView';
  static const kLoginStudentView = '/LoginStudentView';
  static const kLoginFatherView = '/LoginFatherView';
  static const kStudentHomeView= '/StudentHomeView';
  static const kFatherHomeView= '/FatherHomeView';
  static const kAdminHomeView = '/HomeView';
  static const kSignupView = '/SignupView';
  static const kSignupStudentView="/SignupStudentView";
  static const kSignupFatherView="/SignupFatherView";
  static const kCoursesView = '/CoursesView';
  static const kAddCourseView = '/AddCourseView';
  static const kListCourseQrCodeView="/ListCourseQrCodeView";
  static const kListQrCodeView="/ListQrCodeView";
  static const kAddQrCodeView="/AddQrCodeView";
  static const kQrCodeView="/QrCodeView";
  static const kStudentAttendanceView="/StudentAttendanceView";
  static const kSearchStudentView="/SearchStudentView";
  static const kStudentDetailsView="/StudentDetailsView";
  static const kProfileView="/ProfileView";
  static const kEditProfileView= "/EditProfileView";
  static const kSendMessageView="/SendMessageView";
  static const kUpdateCourseView="/UpdateCourseView";
  static const kCourseDataView= "/CourseDataView";
  static const kAddAssignmentView= "/AddAssignmentView";
  static const kCreateAssignment= "/CreateAssignment";
  static const kAllAttachmentView= "/AllAttachmentView";
  static const kAddAttachmentView="/AddAttachmentView";
  static const kLectureDataView= "/LectureDataView";
  static const kCreateQuiz= "/CreateQuiz";
  static const kAllQuizView= "/AllQuizView";
  static const kAddQuestionView="/AddQuestionView";
  static const  kQRCodeScanner="/QRCodeScanner";
  static const kStudentEditProfileView="/StudentEditProfileView";
  static const kStudentProfileView= "/StudentProfileView";
  static const kStudentCoursesView= "/StudentCoursesView";
  static const kStudentCourseDataView= "/StudentCourseDataView";

  static const kAddTaskView= "/AddTask";
  static const  kAllAssignmentView ="/AllAssignmentView";
  static const  kAttachmentCourseView="/AttachmentCourseView";
  static const   kAssignmentDetailsView="/AssignmentDetailsView";
  static const   kAllMessageView="/AllMessageView";
  static const   kMessageDetailsView= "/MessageDetailsView";
  static const   kAllStudentQuizView = "/AllStudentQuizView";
  static const   kStudentQuizDetails = "/StudentQuizDetails";
  static const   kAllAdminQuizView="/AllAdminQuizView";
  static const   kStudentsGradesView=  "/StudentsGradesView";
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
        path: kStudentsGradesView,
        builder: (context, state) =>   StudentsGradesView(allQuizModel:  state.extra as AllQuizModel ,) ,
      ),
      GoRoute(
        path: kAllAdminQuizView,
        builder: (context, state) => const  AllAdminQuizView(),
      ),
      GoRoute(
        path: kAllStudentQuizView,
        builder: (context, state) => const AllStudentQuizView(),
      ),
      GoRoute(
        path: kAttachmentCourseView,
        builder: (context, state) => const AttachmentCourseView(),
      ),

      GoRoute(
        path: kMessageDetailsView,
        builder: (context, state) =>   MessageDetailsView(messageDataModel:  state.extra as MessageDataModel,),
      ),
      

      GoRoute(
        path: kStudentQuizDetails,
        builder: (context, state) =>   StudentQuizDetailsView(allQuizModel:   state.extra as AllQuizModel,),
      ),
      GoRoute(
        path: kAllMessageView,
        builder: (context, state) => const AllMessageView(),
      ),
      GoRoute(
        path: kStudentCourseDataView,
        builder: (context, state) => const StudentCourseDataView(),
      ),
      GoRoute(
        path: kAllAssignmentView,
        builder: (context, state) => const  AllAssignmentView(),
      ),

      GoRoute(
        path: kStudentCoursesView,
        builder: (context, state) => const StudentCoursesView(),
      ),
      GoRoute(
        path: kLoginView,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: kLoginStudentView,
        builder: (context, state) => const LoginStudentView(),
      ),
      GoRoute(
        path: kLoginFatherView,
        builder: (context, state) => const LoginFatherView(),
      ),
      GoRoute(
        path: kSignupView,
        builder: (context, state) => const SignupView(),
      ),
      GoRoute(
        path: kSignupStudentView,
        builder: (context, state) => const  SignupStudentView(),
      ),
      GoRoute(
        path: kSignupFatherView,
        builder: (context, state) => const  SignupFatherView(),
      ),
      GoRoute(
        path:  kStudentHomeView,
        builder: (context, state) => const StudentHomeView(),
      ),
      GoRoute(
        path: kFatherHomeView ,
        builder: (context, state) => const FatherHomeView(),
      ),
      GoRoute(
        path:  kAdminHomeView,
        builder: (context, state) => const  AdminHomeView(),
      ),
      GoRoute(
        path:  kCoursesView,
        builder: (context, state) => const CoursesView(),
      ),
      GoRoute(
        path:kAddCourseView,
        builder: (context, state) => const AddCourseView(),
      ),
      GoRoute(
        path:kListCourseQrCodeView,
        builder: (context, state) => const ListCourseQrCodeView(),
      ),
      GoRoute(
        path:kListQrCodeView,
        builder: (context, state) =>   const ListQrCodeView(

        ),
      ),
      GoRoute(
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
      GoRoute(
        path:kStudentDetailsView  ,
        builder: (context, state) => const StudentDetailsView(),
      ),
      GoRoute(
        path:kProfileView  ,
        builder: (context, state) => const AdminProfileView(),
      ),
      GoRoute(
        path:kEditProfileView  ,
        builder: (context, state) =>     AdminEditProfileView(
          profileInfoModel:  state.extra as ProfileInfoModel ,

         )),

        GoRoute(
        path:kAssignmentDetailsView  ,
        builder: (context, state) =>     AssignmentDetailsView(assignmentModel:  state.extra as AssignmentModel ),

        ),


      GoRoute(
        path:kSendMessageView  ,
        builder: (context, state) =>   SendMessageView(
          sendTo: state.extra as String,
        ),
      ),
      GoRoute(
        path:kUpdateCourseView  ,
        builder: (context, state) => const  UpdateCourseView(),
      ),
      GoRoute(
        path:kCourseDataView  ,
        builder: (context, state) => const   CourseDataView(),
      ),
      GoRoute(
        path:kAddAssignmentView  ,
        builder: (context, state) => const AddAssignmentView(),
      ),
      GoRoute(
        path:kCreateAssignment ,
        builder: (context, state) => const  CreateAssignmentView(),
      ),
      GoRoute(
        path:kAllAttachmentView ,
        builder: (context, state) => const  AllAttachmentView(),
      ),
      GoRoute(
        path:kAddAttachmentView ,
        builder: (context, state) => const  AddAttachmentView(),
      ),
      GoRoute(
        path:kLectureDataView ,
        builder: (context, state) =>   LectureDataView(lecture:  state.extra as LectureModel,),
      ),
      GoRoute(
        path:kCreateQuiz,
        builder: (context, state) =>  const CreateQuizView(),
      ),

      GoRoute(
        path:kAddQuestionView,
         builder: (context, state) =>    AddQuestionView(
          name: state.queryParameters["name"] as String ,
          maxTime:  int.parse(state.queryParameters["maxTime"]??"0") ,
          maxDegree:  int.parse(state.queryParameters["maxDegree"]??"0" )  ,
          num:  int.parse( state.queryParameters ["num"] ??"0") ,

        ),
      ),
      GoRoute(
        path:kQRCodeScanner,
        builder: (context, state) =>     QRCodeScannerView(),
      ),
      GoRoute(
        path:kStudentProfileView,
        builder: (context, state) =>    const StudentProfileView(),
      ),

      GoRoute(
        path:kStudentEditProfileView,
        builder: (context, state) =>   StudentEditProfileView(profileStudentInfoModel:
          state.extra as ProfileStudentInfoModel

            ,),
      ),
      ],
  );
}
