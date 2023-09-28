import 'package:camara_firebase_test/domain/entities/photo_entity.dart';
import 'package:camara_firebase_test/presentation/pages/camara/camara_screen.dart';
import 'package:camara_firebase_test/presentation/providers/home/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final photosProvider = ref.watch(streamHomePhotosProvider);

    final (List<PhotoEntity>? list, bool loading, bool error) =
        photosProvider.when(
            data: (List<PhotoEntity> a) => (a, false, false),
            error: (_, error) => (null, false, true),
            loading: () => (null, true, false));

    if (loading && !error) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Test App'),
        ),
        body: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else if (list != null && !error) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Test App'),
        ),
        body: list.isNotEmpty
            ? ListView.builder(
                itemCount: list.length,
                itemBuilder: (BuildContext context, int index) {
                  return _ImageTile(photoEntity: list[index]);
                })
            : const Center(child: Text('No photos yet')),
        floatingActionButton: FloatingActionButton(
            heroTag: "btn1",
            child: const Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const CamaraScreen(),
                ),
              );
            }),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Test App'),
        ),
        body: const Center(
          child: Text('Something went Wrong'),
        ),
      );
    }
  }
}

class _ImageTile extends StatelessWidget {
  const _ImageTile({required this.photoEntity});

  final PhotoEntity photoEntity;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: Image.network(photoEntity.url),
          ),
          Text(DateFormat('yyyy-MM-dd – kk:mm').format(photoEntity.timeStamp)),
        ],
      ),
    );
  }
}
