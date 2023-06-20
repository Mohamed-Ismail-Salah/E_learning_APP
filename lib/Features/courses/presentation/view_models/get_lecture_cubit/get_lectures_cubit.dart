import 'package:bloc/bloc.dart';
import 'package:e_learning/Features/courses/data/repos/get_Lecture_repo/get_Lecture_repo.dart';
import 'package:meta/meta.dart';

import '../../../data/models/all_lecture.dart';

part 'get_lectures_state.dart';

class GetLecturesCubit extends Cubit<GetLecturesState> {
  GetLecturesCubit(this.getLectureRepo) : super(GetLecturesInitial());
  final   GetLectureRepo getLectureRepo;

  Future<void> getAllLectures(String code)async
  {
    emit(GetLecturesLoading());

    var result =await getLectureRepo.getLecture(code);
    result.fold((failure){
      emit(GetLecturesFailure(failure.errmessage));
    }, (allLectures){
      emit( GetLecturesSuccess(allLectures));

    }
    );

  }
}
