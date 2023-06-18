import 'package:e_learning/Core/Utils/app_router.dart';
import 'package:e_learning/Core/Utils/styles.dart';
import 'package:e_learning/Core/widgets/custom_button.dart';
import 'package:e_learning/Features/porfile/presentation/view/widget/user_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../view_models/get_profile_info_cubit/get_profile_ifo_cubit.dart';

class ProfileViewBody extends StatelessWidget{
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
   return  BlocBuilder<GetProfileIfoCubit, GetProfileIfoState>(
     builder: (BuildContext context, state) {
       if (state is GetProfileIfoLoading) {
         return const Center(child: CircularProgressIndicator());
       } else if (state is GetProfileIfoSuccess) {
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
                     context.push(AppRouter.kEditProfileView);
                   })


             ],

           ),
         );
       } else if (state is GetProfileIfoFailure) {
          return Text('An error occurred: ${state.errMessage}');
       }
       return Container(child: Image.asset("assets/images/no-signal.png"),);
     });
  }

  }


