import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view_models/image_picker_cubit/image_picker_cubit.dart';

class FilePickerButton extends StatelessWidget {
  const FilePickerButton({Key? key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FilePickerCubit, FilePickerState>(
      listener: (context, state) {
        if (state is FilePickerLoaded) {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) => _buildUploadedFileSheet(context, state.selectedFile),
          );
        } else if (state is FilePickerError) {
          print(state.errMessage);
        }
      },
      builder: (context, state) {
        if (state is FilePickerLoading) {
          return Column(
            children: [
              const Text('Select a file:'),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: null,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    SizedBox(
                      width: 18,
                      height: 18,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                    SizedBox(width: 10),
                    Text('Select File'),
                  ],
                ),
              ),
            ],
          );
        } else if (state is FilePickerLoaded) {
          return Column(
            children: [
              const Text('Select a file:'),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return _buildFilePickerSheet(context);
                    },
                  );
                },
                child: const Text('Select File'),
              ),
              const SizedBox(height: 10),
              if (state is FilePickerLoaded)
                Card(
                  color: Colors.green, // Customize the background color here
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.check_circle,
                          color: Colors.white,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'File Uploaded',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          );




        } else {
          return Column(
            children: [
              const Text('Select a file:'),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return _buildFilePickerSheet(context);
                    },
                  );
                },
                child: const Text('Select File'),
              ),
            ],
          );
        }
      },
    );
  }

  Widget _buildFilePickerSheet(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.folder),
            title: const Text('File Explorer'),
            onTap: () {
              Navigator.pop(context);
              context.read<FilePickerCubit>().pickFile();
            },
          ),
        ],
      ),
    );
  }

  Widget _buildUploadedFileSheet(BuildContext context, File selectedFile) {
    return Container(
      color: Colors.transparent, // Adjust the background color here
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.check_circle, size: 80, color: Colors.green),
            const SizedBox(height: 16),
            const Text(
              'File Uploaded',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              selectedFile.path,
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          ],
        ),
      ),
    );
  }
}
