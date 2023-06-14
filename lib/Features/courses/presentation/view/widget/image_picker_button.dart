
import 'dart:io';

import 'package:e_learning/Features/courses/presentation/view_models/image_picker_cubit/image_picker_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 import 'package:image_picker/image_picker.dart';

class ImagePickerButton extends StatelessWidget {
  const ImagePickerButton({super.key});


  @override
  Widget build(BuildContext context) {
    File? imageFile;
    return BlocConsumer<ImagePickerCubit, ImagePickerState>(
      listener:(context, state){
        if(state is ImagePickerLoaded){
          imageFile=  state.imageFile;
          print(imageFile);
        }else if(state is ImagePickerError){
          print(state.errMessage);
        }
      },
      builder:(context,state)=> Column(
        children: [
          const Text('Select an image:'),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return SafeArea(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          leading: const Icon(Icons.photo_library),
                          title: const Text('Photo Library'),
                          onTap: () async {
                            Navigator.pop(context);
                             BlocProvider.of<ImagePickerCubit>(context).pickImage(ImageSource.gallery);

                          },

                        ),
                        ListTile(
                          leading: const Icon(Icons.camera_alt),
                          title: const Text('Camera'),
                          onTap: () async {
                            Navigator.pop(context);
                             BlocProvider.of<ImagePickerCubit>(context).pickImage(ImageSource.camera);

                          },
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            child: imageFile == null
                ? const Text('Select Image')
                : Image.file(
              imageFile!,
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
