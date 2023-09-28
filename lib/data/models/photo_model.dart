import 'package:camara_firebase_test/domain/entities/photo_entity.dart';

class PhotoModel extends PhotoEntity {
  PhotoModel({required super.timeStamp, required super.url});

  factory PhotoModel.fromJson(Map<String, dynamic> json) {
    return PhotoModel(
      timeStamp: json['timeStamp'].toDate(),
      url: json['url'],
    );
  }
}
