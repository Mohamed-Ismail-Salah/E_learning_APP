import 'package:e_learning/Core/Utils/app_router.dart';
import 'package:e_learning/Core/Utils/styles.dart';
import 'package:e_learning/Core/widgets/custom_button.dart';
import 'package:e_learning/Features/profile/Adminprofile/presentation/view/widget/user_Image.dart';
  import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../view_models/get_profile_info_cubit/get_Admin_profile_ifo_cubit.dart';

class AdminProfileViewBody extends StatelessWidget{
  const AdminProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
   return  BlocBuilder<GetAdminProfileIfoCubit, GetAdminProfileIfoState>(
     builder: (BuildContext context, state) {
       if (state is GetAdminProfileIfoLoading) {
         return const Center(child: CircularProgressIndicator());
       } else if (state is GetAdminProfileIfoSuccess) {
         return Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.stretch,
             children: [

               UserImage(widthImg: MediaQuery
                   .of(context)
                   .size
                   .width * .2
                 , heightImg: MediaQuery
                     .of(context)
                     .size
                     .height * .2, img: '/staff_img/${state.profileInf.img}',),
               SizedBox(height: MediaQuery
                   .of(context)
                   .size
                   .height * .1,),

               Center(child: Text( state.profileInf.name, style: Styles.textStyle40,)),
               SizedBox(height: MediaQuery
                   .of(context)
                   .size
                   .height * .05,),
               Center(child: Text(
                 state.profileInf.email, style: Styles.textStyle25,)),
               SizedBox(height: MediaQuery
                   .of(context)
                   .size
                   .height * .25,),

               CustomButton(
                   name: " Edit Profile  🖊",
                   onTap: () {
                     context.push(AppRouter.kEditProfileView,
               extra: state.profileInf
                     );
                   })


             ],

           ),
         );
       } else if (state is GetAdminProfileIfoFailure) {
          return Text('An error occurred: ${state.errMessage}');
       }
       return Container(child: Image.asset("assets/images/no-signal.png"),);
     });
  }

  }


