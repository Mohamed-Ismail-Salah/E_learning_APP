import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Core/Utils/app_router.dart';
import '../../../../../Core/widgets/custom_button.dart';
import '../../../../../Core/widgets/custom_textformfield.dart';
import '../../view_models/add_QrCode_cubit/add_qr_code_cubit.dart';
import '../../view_models/location_cubit/location_cubit.dart';

class QrCodeInput extends StatelessWidget {
  const QrCodeInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

     String ? sectionName;
    GlobalKey<FormState> formKey = GlobalKey();
    final sectionNumController = TextEditingController();
    return       Form(
        key: formKey,
        child: Column(children: [
            Padding(
            padding: const EdgeInsets.all(8.0),
            child: AppTextFormField(
              hintText: "QR Code Name",
              keyboardType:TextInputType.name,
              ctrl: sectionNumController ,
              validator:    (data) {
                if (data!.isEmpty) {
                  return 'Please enter some text';
                }
              },
              onFieldSubmitted: (value){
                sectionName =value;
              },

            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*.5/2),
          CustomButton(
            onTap: () {
              BlocProvider.of<LocationCubit>(context).getLocation();
              if(formKey.currentState?.validate() == true){
                sectionName = sectionNumController.text ;

                 BlocProvider.of<AddQrCodeCubit>(context).addQrCode(
                  BlocProvider.of<LocationCubit>(context).latitude  ,
                  BlocProvider.of<LocationCubit>(context).longitude ,
                  BlocProvider.of<AddQrCodeCubit>(context).sendId()!,
                  sectionName!,
                );

              }

            },
            name:"Generate",
          )
        ],),

    );
  }
}
