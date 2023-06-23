 import 'package:e_learning/Features/profile/Adminprofile/presentation/view/widget/update_input_data.dart';
import 'package:e_learning/Features/profile/Adminprofile/presentation/view/widget/user_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../../../../../../Core/Utils/app_router.dart';
import '../../../../../../Core/widgets/Show_Snackbar.dart';
import '../../../data/models/profile_info_model.dart';
import '../../view_models/get_profile_info_cubit/get_Admin_profile_ifo_cubit.dart';
import '../../view_models/upate_profile_cubit/update_profile_cubit.dart';

class EditAdminProfileBody extends StatelessWidget{
    EditAdminProfileBody({
    super.key
    ,required this.profileInfoModel,
  });
  ProfileInfoModel profileInfoModel;
  @override
  Widget build(BuildContext context) {
    bool isLoading = false;
    return  BlocConsumer<UpdateAdminProfileCubit, UpdateAdminProfileState>(
        listener: (context, state) async{
      if (state is UpdateAdminProfileLoading) {
        isLoading = true;
      } else if (state is UpdateAdminProfileSuccess) {
        BlocProvider.of<GetAdminProfileIfoCubit>(context).getProfileInf();
        context.pop(AppRouter.kProfileView);

        isLoading = false;
      }else if(state is UpdateAdminProfileFailure){
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
              img:  profileInfoModel.img,),

              UpdateAdminInputData(profileInfoModel: profileInfoModel),

          ],
        ),
      ),
    )
    )
    );
  }

}
