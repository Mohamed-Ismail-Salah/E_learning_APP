
import 'dart:io';

import 'package:bloc/bloc.dart';
 import 'package:e_learning/Features/courses/data/models/add_courses_model.dart';
import 'package:e_learning/Features/courses/data/repos/add_courses_repos/add_courses_repo.dart';
 import 'package:meta/meta.dart';

import '../../../data/repos/update_course_repos/update_courses_repo.dart';


part 'udate_courses_state.dart';

class UpdateCoursesCubit extends Cubit<UpdateCoursesState> {
  UpdateCoursesCubit( this.updateCoursesRepo) : super(UpdateCoursesInitial());
  final UpdateCoursesRepo updateCoursesRepo;
  Future<void> updateCourses(
      String id,
      String name,
      String level,
      String term,
      String hours,
      String code,
       File img,)async
  {
    emit(UpdateCoursesLoading());

    var result =await updateCoursesRepo.updateCourses(id, name, level, term, hours, code, img);
    result.fold((failure){
      emit(UpdateCoursesFailure(failure.errmessage));
    }, (course){
      emit(UpdateCoursesSuccess(course));

    }
    );

  }
}
