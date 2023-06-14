import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

 import '../../../data/repos/addQrCodeRepos/addQrCode_repo.dart';

part 'add_qr_code_state.dart';

class AddQrCodeCubit extends Cubit<AddQrCodeState> {
  AddQrCodeCubit(this.addQrCodeRepo, ) : super(AddQrCodeInitial());

  final AddQrCodeRepo addQrCodeRepo;
     int? courseId;
  String? qrCode;
     void receiveId(int id ){
       courseId =id;
     }
  int? sendId(){
    return courseId ;
  }
  Future<void> addQrCode(String  x, String y, int courseId, String sectionNum)async
  {

    emit(AddQrCodeLoading());
    var result =await addQrCodeRepo.addQrCode(x,y,courseId,sectionNum);
    result.fold((failure){
      emit(AddQrCodeFailure(failure.errmessage));
    }, (code){
      qrCode=code;
      emit( AddQrCodeSuccess(code));

    }
    );

  }
}
