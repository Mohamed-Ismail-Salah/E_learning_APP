import 'package:bloc/bloc.dart';
import 'package:e_learning/Features/Message/data/get_student_inf/get_student_inf_repo.dart';
import 'package:meta/meta.dart';
import '../../../data/models/student_inf_model.dart';
part 'get_student_state.dart';

class GetStudentCubit extends Cubit<GetStudentState> {

  GetStudentCubit(this.getStudentIfRepo) : super(GetStudentInitial());
  final GetStudentIfRepo getStudentIfRepo;

  Future<void> getStudentInf(String name)async
  {
    emit(GetStudentLoading());

    var result =await getStudentIfRepo.getStudent(name);
    result.fold((failure){
      emit(GetStudentFailure(failure.errmessage));
    }, (studentInf){
      emit( GetStudentSuccess(studentInf));

    }
    );

  }
   StudentInfModel? studentInf;
  void setStudentInfoModel(StudentInfModel studentInfModel){
    studentInf=studentInfModel;
  }

  StudentInfModel? getStudentInfoModel(){
 return studentInf;
  }
}
