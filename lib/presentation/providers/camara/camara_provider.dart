// ignore_for_file: prefer_int_literals

import 'package:camara_firebase_test/domain/entities/photo_entity.dart';
import 'package:camara_firebase_test/domain/use_cases/upload_photo_use_case.dart';
import 'package:camara_firebase_test/presentation/providers/camara/camara_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'camara_provider.g.dart';

@riverpod
class Camara extends _$Camara {
  @override
  CamaraState build() => CamaraState();

  Future<void> uploadPhoto(String filePath) async {
    final time = DateTime.now();

    final usecase = ref.read(uploadPhotoUseCaseProvider);

    await usecase.call(PhotoEntity(timeStamp: time, url: filePath));
  }
}
