import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:e_learning/Features/courses/data/repos/add_lecturel_repo/add_lecturel_repo.dart';
import 'package:meta/meta.dart';

part 'add_lectures_state.dart';

class AddLecturesCubit extends Cubit<AddLecturesState> {
  AddLecturesCubit(this.addLecturesRepo) : super(AddLecturesInitial());

  final AddLecturesRepo    addLecturesRepo;

  Future<void>  addLectures(
      String title,
      File? file,
      String link,
      String code,

      )async
  {
    emit( AddLecturesLoading());

    var result =  await addLecturesRepo.addLectures(title, file, code, link);
    if (result != null) {
      emit(AddLecturesFailure(result.errmessage));
    } else {
      emit(AddLecturesSuccess());
    }
  }
}
