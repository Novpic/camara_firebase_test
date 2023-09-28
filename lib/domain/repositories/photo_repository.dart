import 'package:camara_firebase_test/domain/entities/photo_entity.dart';

abstract class PhotoRepository {
  Future<void> uploadPhoto(PhotoEntity photo);

  Stream<List<PhotoEntity>> getPhotos();
}
