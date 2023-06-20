part of 'image_picker_cubit.dart';

@immutable
abstract class FilePickerState {}

class FilePickerInitial extends FilePickerState {}
class FilePickerLoading extends FilePickerState {}

class FilePickerLoaded extends FilePickerState {
  final File selectedFile;

  FilePickerLoaded(this.selectedFile);

}
class FilePickerError extends FilePickerState {
  final String errMessage;

  FilePickerError(this.errMessage);
}
