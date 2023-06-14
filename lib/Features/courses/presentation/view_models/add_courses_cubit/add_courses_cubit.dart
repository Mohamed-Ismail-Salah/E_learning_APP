
import 'dart:io';

import 'package:bloc/bloc.dart';
 import 'package:e_learning/Features/courses/data/models/add_courses_model.dart';
import 'package:e_learning/Features/courses/data/repos/add_courses_repos/add_courses_repo.dart';
 import 'package:meta/meta.dart';


part 'add_courses_state.dart';

class AddCoursesCubit extends Cubit<AddCoursesState> {
  AddCoursesCubit(this.addCoursesRepo) : super(AddCoursesInitial());
  final AddCoursesRepo addCoursesRepo;
  Future<void> addCourses(
      String name,
      String level,
      String term,
      String hours,
      String code,
       File img,)async
  {
    emit(AddCoursesLoading());

    var result =await addCoursesRepo.addCourses(name, level, term, hours, code, img);
    result.fold((failure){
      emit(AddCoursesFailure(failure.errmessage));
    }, (course){
      emit( AddCoursesSuccess(course));

    }
    );

  }
}
