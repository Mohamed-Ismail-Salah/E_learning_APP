
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


           const CircleAvatar(
             radius: 80,

             backgroundImage: NetworkImage("https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=580&q=80"),
           ),

           const SizedBox(height: 16.0),
           Text(
              inf!.name,
             style:  Styles.textStyle25.copyWith(fontWeight: FontWeight.w900)
           ),
             SizedBox(height: MediaQuery.of(context).size.height*.1),

           DetailsItem(disc: 'Email : ', info:inf.email,),
           SizedBox(height: MediaQuery.of(context).size.height*.02),
           DetailsItem(disc: 'phone : ', info: inf.phone,),
          SizedBox(height: MediaQuery.of(context).size.height*.02),
           DetailsItem(disc: 'parent_phone : ', info: inf.parentPhone,),

           SizedBox(height: MediaQuery.of(context).size.height*.15),
           const MessageButtons(),
           SizedBox(height: MediaQuery.of(context).size.height*.05),
         ],
       ),
     ),
   );
  }

}




