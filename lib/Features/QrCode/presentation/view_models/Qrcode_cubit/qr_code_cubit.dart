import 'package:bloc/bloc.dart';
import 'package:e_learning/Features/QrCode/data/repos/get_allQrcode_repos/git_courses_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/qrCodes_model.dart';
import '../../../data/repos/get_Student_Attendance/get_Student_attendance_repo.dart';


part 'get_qr_code_state.dart';

class QrCodeCubit extends Cubit<QrCodeState> {
  QrCodeCubit(this.getQrAllCodeRepo, this.getStudentAttendanceRepo) : super(GetQrCodeInitial());
  final GetQrAllCodeRepo getQrAllCodeRepo;
  final GetStudentAttendanceRepo getStudentAttendanceRepo;
  Future<void> getAllQrCode(int id )async
  {
    emit(GetQrCodeLoading());

    var result =await getQrAllCodeRepo.getQrAllCode(id);
    result.fold((failure){
      emit(GetQrCodeFailure(failure.errmessage));
    }, (allQrCode){
      emit( GetQrCodeSuccess(allQrCode));

    }
    );

  }
  Future<void> getStudentAttendance (String code)async
  {
    emit(StudentAttendanceLoading());

    var result =await getStudentAttendanceRepo.getStudentAttendance(code);
    result.fold((failure){
      emit(StudentAttendanceFailure(failure.errmessage));
    },
            (allStudentAttendance){
      emit( StudentAttendanceSuccess(allStudentAttendance));

    }
    );

  }




}
