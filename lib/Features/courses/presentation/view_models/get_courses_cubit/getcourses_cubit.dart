import 'package:bloc/bloc.dart';
 import 'package:e_learning/Features/courses/data/repos/get_courses_repos/git_courses_repo.dart';
import 'package:flutter/material.dart';

import '../../../data/models/get_all_courses.dart';

part 'getcourses_state.dart';

class GetCoursesCubit extends Cubit<GetCoursesState> {
  GetCoursesCubit(this.getCoursesRepo) : super(GetCoursesInitial());
   final GetCoursesRepo getCoursesRepo;
  int? courseId; // The ID to be saved
  String? courseCode; // The ID to be saved

  void setCode(String code) {
    courseCode = code;
  }

  String? getCode() {
    return courseCode;
  }
  void setCourseId(int id) {
    courseId = id;
  }

  int? getCourseId() {
    return courseId;
  }

  Future<void> getAllCourses()async
  {
    emit(GetCoursesLoading());

    var result =await getCoursesRepo.getCourses();
    result.fold((failure){
      emit(GetCoursesFailure(failure.errmessage));
    }, (allCourse){
      emit( GetCoursesSuccess(allCourse));

    }
    );

  }
}
