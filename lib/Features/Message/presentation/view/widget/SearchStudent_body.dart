import 'package:e_learning/Core/Utils/styles.dart';
import 'package:e_learning/Features/Message/presentation/view/widget/search_widet.dart';
import 'package:flutter/material.dart';
import 'ListStudentInf.dart';

class SearchStudentBody extends StatelessWidget{
  const SearchStudentBody({super.key});
  @override
  Widget build(BuildContext context) {
     return Padding(
       padding: const EdgeInsets.symmetric(horizontal: 10),
       child: Column(
         children:[
           Text("Students",style: Styles.textStyle25,),
           const SearchWidget(),
            const ListStudentInf()

         ],
       ),
     );
  }

}


