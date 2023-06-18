
import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_learning/Core/Utils/styles.dart';
import 'package:e_learning/Features/Message/data/models/student_inf_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../view_models/get_student_cubit/get_student_cubit.dart';
import 'deta_ilsItem.dart';
import 'message_buttons.dart';

class StudentDetailsBody extends StatelessWidget{
  const StudentDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
   StudentInfModel? inf= BlocProvider.of<GetStudentCubit>(context).getStudentInfoModel();

   return Padding(
     padding: const EdgeInsets.all(8.0),
     child:     SingleChildScrollView(
       child: Column(

         crossAxisAlignment: CrossAxisAlignment.center,
         children:   [



           Padding(
             padding: const EdgeInsets.all(15),
             child:SizedBox(
               height: MediaQuery.of(context).size.height*.13,
               width: MediaQuery.of(context).size.height*.13,
               child: CachedNetworkImage(

                 imageUrl:"https://what-a-sito.000webhostapp.com/user_img/${inf!.img}",
                 placeholder: (context, image) => const CircularProgressIndicator(),
                 errorWidget: (context, image, error) =>  Image.asset("assets/images/user.png"),
                 fit: BoxFit.fill,
               ),
             ),

           ),

           const SizedBox(height: 16.0),
           Text(
              inf.name,
             style:  Styles.textStyle25.copyWith(fontWeight: FontWeight.w900)
           ),
             SizedBox(height: MediaQuery.of(context).size.height*.1),

           DetailsItem(disc: 'Email : ', info:inf.email,),
           SizedBox(height: MediaQuery.of(context).size.height*.02),
           DetailsItem(disc: 'phone : ', info: inf.phone,),
          SizedBox(height: MediaQuery.of(context).size.height*.02),
           DetailsItem(disc: 'parent_phone : ', info: inf.fatherPhone,),

           SizedBox(height: MediaQuery.of(context).size.height*.15),
           const MessageButtons(),
           SizedBox(height: MediaQuery.of(context).size.height*.05),
         ],
       ),
     ),
   );
  }

}




