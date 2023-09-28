// ignore_for_file: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'camara_state.freezed.dart';

@freezed
class CamaraState with _$CamaraState {
  factory CamaraState({
    @Default(false) bool isLoading,
  }) = _CamaraState;
}
