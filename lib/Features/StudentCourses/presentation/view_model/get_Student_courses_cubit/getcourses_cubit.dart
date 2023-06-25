import 'package:bloc/bloc.dart';
 import 'package:flutter/material.dart';

 import '../../../data/modles/get_Student_all_courses.dart';
import '../../../data/repos/get_Student_courses_repos/get_Student_courses_repo.dart';

part 'get_Student_courses_state.dart';

class GetStudentCoursesCubit extends Cubit<GetStudentCoursesState> {
  GetStudentCoursesCubit(this.getStudentCoursesRepo) : super(GetStudentCoursesInitial());
   final GetStudentCoursesRepo getStudentCoursesRepo;
  int? studentCourseId;
  String? StudentCourseCode;

  void setStudentCode(String code) {
    StudentCourseCode = code;
  }

  String? getStudentCode() {
    return StudentCourseCode;
  }
  void setStudentCourseId(int id) {
    studentCourseId = id;
  }

  int? getStudentCourseId() {
    return studentCourseId;
  }

  Future<void> getAllCourses(String level,String term)async
  {
    emit(GetStudentCoursesLoading());
    var result =await getStudentCoursesRepo.getStudentCourses(level, term);
    result.fold((failure){
      emit(GetStudentCoursesFailure(failure.errmessage));
    }, (allCourse){
      emit( GetStudentCoursesSuccess(allCourse));

    }
    );

  }
}
