import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_failure.freezed.dart';
@freezed
abstract class ImageFailure with _$ImageFailure{
  const factory ImageFailure.failedLoading()=LoadingError;
  const factory ImageFailure.failedSaving()=SavingError;
  const factory  ImageFailure.failedClosing()=ClosingError;

}