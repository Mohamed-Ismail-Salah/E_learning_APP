 import 'package:dio/dio.dart';
import 'package:e_learning/Features/ReadQrCode/data/repos/qr_scanner_imp.dart';
import 'package:e_learning/Features/ReadQrCode/presentaion/view/widget/QRCodeScannerBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../Core/Utils/api_service.dart';
 import '../view_model/qrScanner_cubit/qr_scanner_cubit.dart';

class QRCodeScannerView extends StatelessWidget {
  const QRCodeScannerView({super.key});

  @override

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => QrScannerCubit(QrScannerImp( ApiService(Dio()))),
    child:Scaffold(
      appBar: AppBar(
        title: const Text('QR Code Scanner'),
      ),
      body:  QRCodeScannerBody()
      ));
  }
}