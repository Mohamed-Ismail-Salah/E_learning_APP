import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/repos/qr_scanner_repo.dart';

part 'qr_scanner_state.dart';

class QrScannerCubit extends Cubit<QrScannerState> {
  QrScannerCubit(this.qrScannerRepo) : super(QrScannerInitial());

  final QrScannerRepo qrScannerRepo;


  Future<void> qrScanner(String  x, String y, String? code)async
  {

    emit(QrScannerLoading());
    var result =await qrScannerRepo.qrScannerRepo(code!, x, y);
    result.fold((failure){
      emit(QrScannerFailure(failure.errmessage));
    }, (status){

      emit( QrScannerSuccess(status));

    }
    );

  }
}

