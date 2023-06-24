
import 'package:e_learning/Features/QrCode/presentation/view/widget/add_qrCode_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../view_models/location_cubit/location_cubit.dart';

class AddQrCodeView extends StatelessWidget{
  const AddQrCodeView({super.key});


  @override
  Widget build(BuildContext context) {
    return   const Scaffold(
      body: SafeArea(child: AddQrCodeBody()),

    );
  }

}