
import 'package:e_learning/Core/Utils/styles.dart';
import 'package:e_learning/Core/widgets/custom_button.dart';
 import 'package:flutter/material.dart';

 import 'add_assignment_input_data.dart';

class CreateAssignmentBody extends StatelessWidget{
  const CreateAssignmentBody({super.key});

  @override
  Widget build(BuildContext context) {
     return Padding(
       padding: const EdgeInsets.all(10),
       child: Column(

children: [
  Text("Add Assignment ",style: Styles.textStyle25,),
  SizedBox(height: MediaQuery.of(context).size.height*.1,),
  const AddAssignmentInputData(),
  SizedBox(height: MediaQuery.of(context).size.height*.15,),
  CustomButton(
      name: "Upload Assignment",
      onTap: (){})
],
       ),
     );
  }

}

