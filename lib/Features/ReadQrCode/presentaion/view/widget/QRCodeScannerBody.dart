import 'package:e_learning/Core/Utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../../../../../Core/widgets/Show_Snackbar.dart';
import '../../../../QrCode/presentation/view_models/location_cubit/location_cubit.dart';
import '../../view_model/qrScanner_cubit/qr_scanner_cubit.dart';

class QRCodeScannerBody extends StatefulWidget {
  @override
  State<QRCodeScannerBody> createState() => _QRCodeScannerBodyState();
}

class _QRCodeScannerBodyState extends State<QRCodeScannerBody> {
  final GlobalKey _gLobalkey = GlobalKey();

  QRViewController? controller;

  Barcode? result;

  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  void handleQRCodeScan(BuildContext context, String? code) {
    final cubit = BlocProvider.of<QrScannerCubit>(context);
   var x=BlocProvider.of<LocationCubit>(context).latitude;
    var y=BlocProvider.of<LocationCubit>(context).longitude ;
    cubit.qrScanner(x, y, code);
  }

  bool isLoading = false;

   @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return BlocConsumer<QrScannerCubit, QrScannerState>(
      listener: (context, state) {
        if (state is QrScannerLoading) {
          isLoading = true;
        } else if (state is QrScannerSuccess) {
          context.pushReplacement(AppRouter.kStudentHomeView);
          showSnackBar(context, state.status);

          isLoading = false;
        } else if (state is QrScannerFailure) {
          isLoading = false;
          showSnackBar(context, state.errMessage);
        }
      },
    builder:(context,state)=> ModalProgressHUD(
    inAsyncCall: isLoading,
    child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 400,
                  width: 400,
                  child: QRView(
                    key: _gLobalkey,
                    onQRViewCreated: (controller) => qr(controller, context),
                  ),
                ),
                Center(
                  child: (result !=null) ? Text('${result!.code}') : const Text('Scan a code'),
                )
              ],
            ),
    )
    )

  );
  }

  void qr(QRViewController controller, BuildContext context) {
    this.controller = controller;
    setState(() {
    controller.scannedDataStream.listen((event) {
      if (event != null) {
        handleQRCodeScan(context, event.code);
      }
      result = event;
    }); });
  }
}