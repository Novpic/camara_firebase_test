import 'dart:async';

import 'package:camerawesome/camerawesome_plugin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';

import '../../providers/camara/camara_provider.dart';

class CamaraScreen extends ConsumerWidget {
  const CamaraScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final camaraProv = ref.watch(camaraProvider);

    if (camaraProv.isLoading) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Loading...'),
        ),
        body: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      return Scaffold(
          appBar: AppBar(
            title: const Text('Camara'),
          ),
          body: CameraAwesomeBuilder.awesome(
            saveConfig: SaveConfig.photo(pathBuilder: () async {
              final directory = await getTemporaryDirectory();
              final finalPath = '${directory.path}/test.jpg';
              unawaited(
                  ref.read(camaraProvider.notifier).uploadPhoto(finalPath));
              return finalPath;
            }),
          ));
    }
  }
}
