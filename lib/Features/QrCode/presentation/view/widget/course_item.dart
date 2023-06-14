
import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_learning/Core/Utils/app_router.dart';
import 'package:e_learning/Core/Utils/colors.dart';
 import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
 import '../../../../../Core/Utils/styles.dart';
import '../../view_models/Qrcode_cubit/qr_code_cubit.dart';
import '../../view_models/add_QrCode_cubit/add_qr_code_cubit.dart';

class QrCodeCourseItem extends StatelessWidget {
  QrCodeCourseItem({super.key,required this.image,required this.courseName,required this.id});
int id ;
String image;
String courseName;
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){

context.push(AppRouter.kListQrCodeView);
BlocProvider.of<AddQrCodeCubit>(context).receiveId(id);
BlocProvider.of<QrCodeCubit>(context).getAllQrCode(id);

      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          height: MediaQuery.of(context).size.height * .4/3,
          width: MediaQuery.of(context).size.width * .2,
          child:  Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                 child:SizedBox(
height: 65,
                   width: 65,
                   child: CachedNetworkImage(

                     imageUrl:"https://what-a-sito.000webhostapp.com/course_imgs/$image",
                     placeholder: (context, image) => const CircularProgressIndicator(),
                     errorWidget: (context, image, error) => const Icon(Icons.error),
                     fit: BoxFit.fill,
                   ),
                 ),

              ),
              const SizedBox(width: 20,),
              SizedBox(
                width: MediaQuery.of(context).size.width*.3,
                child: Text(
                  courseName,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle25.copyWith(color: AppColor.splashColor,),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
