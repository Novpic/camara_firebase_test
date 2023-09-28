// ignore_for_file: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/photo_entity.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    @Default(true) bool isLoading,
    @Default([]) List<PhotoEntity> photos,
  }) = _HomeState;
}
