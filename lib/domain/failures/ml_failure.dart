import 'package:freezed_annotation/freezed_annotation.dart';
part 'ml_failure.freezed.dart';
@freezed
abstract class MlFailure with _$MlFailure{
  const factory MlFailure.failedToLoad()= LoadingFailed;
  const factory MlFailure.failedToClose()= ClosingFailed;
  const factory MlFailure.failedToPredict()=PredictionFailed;
}
