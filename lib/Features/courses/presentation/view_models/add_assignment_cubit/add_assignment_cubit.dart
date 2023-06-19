import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:e_learning/Features/courses/data/repos/add_assignment_repo/add_assignment_repo.dart';
import 'package:meta/meta.dart';

part 'add_assignment_state.dart';

class AddAssignmentCubit extends Cubit<AddAssignmentState> {
  AddAssignmentCubit(this.addAssignmentRepo) : super(AddAssignmentInitial());

  final AddAssignmentRepo   addAssignmentRepo;

  Future<void>  addAssignment(
      String title,
      File? file,
      String courseId,
      String desc,

      )async
  {
    emit( AddAssignmentLoading());

    var result =  await addAssignmentRepo.addAssignment(title, file, courseId, desc);
    if (result != null) {
      emit(AddAssignmentFailure(result.errmessage));
    } else {
      emit(AddAssignmentSuccess());
    }
  }
}
