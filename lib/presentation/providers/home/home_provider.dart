// ignore_for_file: prefer_int_literals

import 'package:camara_firebase_test/domain/entities/photo_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/use_cases/get_photos_use_case.dart';

final streamHomePhotosProvider =
    StreamProvider.autoDispose<List<PhotoEntity>>((ref) {
  return ref.watch(getPhotosUseCaseProvider).call();
});
