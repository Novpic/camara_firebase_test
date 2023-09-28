import 'package:camara_firebase_test/domain/entities/photo_entity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repositories/photo_repository_implementation.dart';
import '../repositories/photo_repository.dart';

class GetPhotosPhotoUseCase {
  final PhotoRepository _photoRepository;

  GetPhotosPhotoUseCase(this._photoRepository);

  Stream<List<PhotoEntity>> call() {
    return _photoRepository.getPhotos();
  }
}

final getPhotosUseCaseProvider = Provider((ref) => GetPhotosPhotoUseCase(
      ref.watch(photoRepositoryImplementationProvider),
    ));
