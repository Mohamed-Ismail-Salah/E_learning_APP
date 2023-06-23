 import 'package:e_learning/Core/Utils/styles.dart';
import 'package:e_learning/Core/widgets/custom_button.dart';
import 'package:e_learning/Features/profile/Adminprofile/presentation/view/widget/user_Image.dart';
  import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../Core/Utils/app_router.dart';
import '../../view_models/get_profile_info_cubit/get_Student_profile_ifo_cubit.dart';

class StudentProfileViewBody extends StatelessWidget{
  const StudentProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
   return  BlocBuilder<GetStudentProfileIfoCubit, GetStudentProfileIfoState>(
     builder: (BuildContext context, state) {
       if (state is GetStudentProfileIfoLoading) {
         return const Center(child: CircularProgressIndicator());
       } else if (state is GetStudentProfileIfoSuccess) {
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
                     .height * .2, img: '/user_img/${state.profileStudentInf.img}',),
               SizedBox(height: MediaQuery
                   .of(context)
                   .size
                   .height * .1,),

               Center(child: Text( state.profileStudentInf.name, style: Styles.textStyle40,)),
               SizedBox(height: MediaQuery
                   .of(context)
                   .size
                   .height * .05,),
               Center(child: Text(
                 state.profileStudentInf.email, style: Styles.textStyle25,)),
               SizedBox(height: MediaQuery
                   .of(context)
                   .size
                   .height * .25,),

               CustomButton(
                   name: " Edit Profile  🖊",
                   onTap: () {
                      context.push(AppRouter.kStudentEditProfileView,
                 extra: state.profileStudentInf
                      );
                   })


             ],

           ),
         );
       } else if (state is GetStudentProfileIfoFailure) {
          return Text('An error occurred: ${state.errMessage}');
       }
       return Container(child: Image.asset("assets/images/no-signal.png"),);
     });
  }

  }


