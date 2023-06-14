
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../view_models/add_QrCode_cubit/add_qr_code_cubit.dart';

class QrCodeScanner extends StatelessWidget {
  const QrCodeScanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height*.4,
        width: MediaQuery.of(context).size.width*.8,
        decoration: BoxDecoration(

            color: Colors.white,
            borderRadius: BorderRadius.circular(20)
        ),
        child:  QrImageView(
          data:BlocProvider.of<AddQrCodeCubit>(context).qrCode!,
          version: QrVersions.auto,
          errorStateBuilder: (cxt, err) {
            return const Center(
              child: Text(
                'Uh oh! Something went wrong...',
                textAlign: TextAlign.center,
              ),
            );
          },
         ),
      ),
    );
  }
}