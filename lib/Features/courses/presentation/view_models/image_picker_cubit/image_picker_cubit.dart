import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'image_picker_state.dart';

class FilePickerCubit extends Cubit<FilePickerState> {
  FilePickerCubit() : super(FilePickerInitial());

  File? imageFile;

  final picker = ImagePicker();

  File? selectedFile;

  Future<void> pickFile() async {
    try {
      emit(FilePickerLoading());

      final result = await FilePicker.platform.pickFiles();

      if (result != null && result.files.isNotEmpty) {
        selectedFile = File(result.files.single.path!);
        emit(FilePickerLoaded(selectedFile!));
      } else {
        emit(FilePickerError('No file selected.'));
      }
    } catch (e) {
      emit(FilePickerError('Error picking file: $e'));
    }
  }
  Future<void> pickImage(ImageSource source) async {
    final pickedFile = await picker.pickImage(source: source);
    if (pickedFile != null) {
      imageFile = File(pickedFile.path);

      emit(FilePickerLoaded(imageFile!));
    } else {
      emit(FilePickerError('No image selected.'));
    }
  }
}

