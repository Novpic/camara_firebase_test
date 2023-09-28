import 'package:camara_firebase_test/data/data_source/firebase_service.dart';
import 'package:camara_firebase_test/domain/entities/photo_entity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/repositories/photo_repository.dart';
import '../models/photo_model.dart';

class PhotoRepositoryImplementation implements PhotoRepository {
  final FireBaseService photoDataSource;

  PhotoRepositoryImplementation({required this.photoDataSource});

  @override
  Future<void> uploadPhoto(PhotoEntity photo) async {
    final model = PhotoModel(
      timeStamp: photo.timeStamp,
      url: photo.url,
    );
    await photoDataSource.uploadPhoto(model);
  }

  @override
  Stream<List<PhotoEntity>> getPhotos() {
    return photoDataSource.getPhotos();
  }
}

final photoRepositoryImplementationProvider =
    Provider((ref) => PhotoRepositoryImplementation(
          photoDataSource: ref.watch(fireBaseService),
        ));
