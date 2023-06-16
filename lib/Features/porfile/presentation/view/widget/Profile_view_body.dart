
import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_learning/Core/Utils/app_router.dart';
import 'package:e_learning/Core/Utils/styles.dart';
import 'package:e_learning/Core/widgets/custom_button.dart';
import 'package:e_learning/Features/porfile/presentation/view/widget/user_Image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileViewBody extends StatelessWidget{
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: const EdgeInsets.all(8.0),
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.stretch,
       children: [

           UserImage(widthimg: MediaQuery.of(context).size. width*.2
             , heightimg: MediaQuery.of(context).size.height*.2,),
         SizedBox(height: MediaQuery.of(context).size.height*.1 ,),

         Center(child: Text("admin name",style: Styles.textStyle40,)),
      SizedBox(height: MediaQuery.of(context).size.height*.05,),
      Center(child: Text("20CS1H2103@kristujayanti.com",style: Styles.textStyle25,)),
         SizedBox(height: MediaQuery.of(context).size.height*.25 ,),

         CustomButton(
             name:" Edit Profile  🖊",
             onTap: (){
               context.push(AppRouter.kEditProfileView);
             })


        ],

     ),
   );
  }

}

