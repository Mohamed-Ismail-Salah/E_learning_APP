import 'package:bloc/bloc.dart';
import 'package:e_learning/Features/courses/data/models/Assignment_modle.dart';
import 'package:e_learning/Features/courses/data/repos/get_assignments_repo/get_all_assignments_repos.dart';
import 'package:meta/meta.dart';

part 'get_assignment_state.dart';

class GetAssignmentCubit extends Cubit<GetAssignmentState> {
  GetAssignmentCubit(this.getAssignmentsRepo) : super(GetAssignmentInitial());
  final  GetAssignmentsRepo getAssignmentsRepo;

  Future<void> getAllAssignments(int id)async
  {
    emit(GetAssignmentLoading());

    var result =await getAssignmentsRepo.getAssignments(id);
    result.fold((failure){
      emit(GetAssignmentFailure(failure.errmessage));
    }, (allAssignment){
      emit( GetAssignmentSuccess(allAssignment));

    }
    );

  }
}
