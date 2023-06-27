import 'package:bloc/bloc.dart';
import 'package:e_learning/Features/ReceiveStudentMessages/data/model/Messages_Data_modle.dart';
import 'package:e_learning/Features/ReceiveStudentMessages/data/repos/get_message_data_repos/get_message_data_repos.dart';
import 'package:meta/meta.dart';

part 'get_message_data_state.dart';

class GetMessageDataCubit extends Cubit<GetMessageDataState> {
  GetMessageDataCubit(this.getMessageDataRepo) : super(GetMessageDataInitial());
  final GetMessageDataRepo getMessageDataRepo;

  Future<void> getAllMessage( )async
  {
    emit(GetMessageDataLoading());
    var result =await getMessageDataRepo.getMessageData();
    result.fold((failure){
      emit(GetMessageDataFailure(failure.errmessage));
    }, (allMessage){
      emit(GetMessageDataSuccess(allMessage));

    }
    );

  }
}
