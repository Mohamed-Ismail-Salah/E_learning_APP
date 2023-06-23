 import 'package:e_learning/Features/profile/Adminprofile/presentation/view/widget/user_Image.dart';
import 'package:e_learning/Features/profile/StudentProfile/presentation/view/widget/update_Student_input_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
 import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
 import '../../../../../../Core/Utils/app_router.dart';
import '../../../../../../Core/widgets/Show_Snackbar.dart';
import '../../../data/models/profile_Student_info_model.dart';
import '../../view_models/get_profile_info_cubit/get_Student_profile_ifo_cubit.dart';
import '../../view_models/upate_profile_cubit/update_Student_profile_cubit.dart';

class EditStudentProfileBody extends StatelessWidget{
    EditStudentProfileBody({
    super.key
    ,required this.profileStudentInfoModel,
  });
  ProfileStudentInfoModel profileStudentInfoModel;
  @override
  Widget build(BuildContext context) {
    bool isLoading = false;
    return  BlocConsumer<UpdateStudentProfileCubit, UpdateStudentProfileState>(
        listener: (context, state) async{
      if (state is UpdateStudentProfileLoading) {
        isLoading = true;
      } else if (state is UpdateStudentProfileSuccess) {
        BlocProvider.of<GetStudentProfileIfoCubit>(context).getStudentProfileInf();
        context.pop(AppRouter.kStudentProfileView);

        isLoading = false;
      }else if(state is UpdateStudentProfileFailure){
        isLoading = false;
        showSnackBar(context, state.errMessage);

      }
    },  builder:(context,state)=> ModalProgressHUD(
    inAsyncCall: isLoading,
    child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children:   [
            UserImage(widthImg:
            MediaQuery.of(context).size.width*.15,
              heightImg:  MediaQuery.of(context).size.height*.15,
              img:  profileStudentInfoModel.img,),

              UpdateStudentInputData(profileInfoModel: profileStudentInfoModel),

          ],
        ),
      ),
    )
    )
    );
  }

}
