import 'package:camara_firebase_test/domain/entities/photo_entity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repositories/photo_repository_implementation.dart';
import '../repositories/photo_repository.dart';

class UploadPhotoUseCase {
  final PhotoRepository _photoRepository;

  UploadPhotoUseCase(this._photoRepository);

  Future<void> call(PhotoEntity photo) async {
    return await _photoRepository.uploadPhoto(photo);
  }
}

final uploadPhotoUseCaseProvider = Provider((ref) => UploadPhotoUseCase(
      ref.watch(photoRepositoryImplementationProvider),
    ));
