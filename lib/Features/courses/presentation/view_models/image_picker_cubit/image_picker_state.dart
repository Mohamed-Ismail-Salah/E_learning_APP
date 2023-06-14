part of 'image_picker_cubit.dart';

@immutable
abstract class ImagePickerState {}

class ImagePickerInitial extends ImagePickerState {}
class ImagePickerLoaded extends ImagePickerState {
  final File imageFile;

  ImagePickerLoaded(this.imageFile);

}
class ImagePickerError extends ImagePickerState {
  final String errMessage;

  ImagePickerError(this.errMessage);
}
