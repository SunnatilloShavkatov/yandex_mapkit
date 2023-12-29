import 'dart:math';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

import 'package:yandex_mapkit_example/examples/widgets/control_button.dart';
import 'package:yandex_mapkit_example/examples/widgets/map_page.dart';

import 'station_painter.dart';

class ClusterizedPlacemarkCollectionPage extends MapPage {
  const ClusterizedPlacemarkCollectionPage({Key? key})
      : super('ClusterizedPlacemarkCollection example', key: key);

  @override
  Widget build(BuildContext context) {
    return _ClusterizedPlacemarkCollectionExample();
  }
}

class _ClusterizedPlacemarkCollectionExample extends StatefulWidget {
  @override
  _ClusterizedPlacemarkCollectionExampleState createState() =>
      _ClusterizedPlacemarkCollectionExampleState();
}

class _ClusterizedPlacemarkCollectionExampleState
    extends State<_ClusterizedPlacemarkCollectionExample> {
  final List<MapObject> mapObjects = [];

  final int kPlacemarkCount = 100;
  final Random seed = Random();
  final MapObjectId mapObjectId =
      const MapObjectId('clusterized_placemark_collection');
  final MapObjectId largeMapObjectId =
      const MapObjectId('large_clusterized_placemark_collection');

  Future<Uint8List> _buildClusterAppearance(Cluster cluster) async {
    final recorder = PictureRecorder();
    final canvas = Canvas(recorder);
    const size = Size(60, 60);
    final fillPaint = Paint()
      ..color = const Color(0xff23C990)
      ..style = PaintingStyle.fill;
    final strokePaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    const radius = 30.0;

    final circleOffset = Offset(size.height / 2, size.width / 2);
    canvas.drawCircle(circleOffset, radius, strokePaint);
    canvas.drawCircle(circleOffset, 25, fillPaint);

    final image = await recorder
        .endRecording()
        .toImage(size.width.toInt(), size.height.toInt());
    final pngBytes = await image.toByteData(format: ImageByteFormat.png);

    return pngBytes!.buffer.asUint8List();
  }

  Future<Uint8List> _buildPlacemarkAppearance() async {
    final recorder = PictureRecorder();
    final canvas = Canvas(recorder);
    const size = Size(160, 160);
    const StationPainter('2\nkVt').paint(canvas, size);

    final image = await recorder.endRecording().toImage(
          size.width.toInt(),
          size.height.toInt(),
        );
    final pngBytes = await image.toByteData(format: ImageByteFormat.png);

    return pngBytes!.buffer.asUint8List();
  }

  double _randomDouble() {
    return (500 - seed.nextInt(1000)) / 1000;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: YandexMap(
            mapMode: MapMode.driving,
            mapObjects: mapObjects,
          ),
        ),
        SafeArea(
          minimum: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Set of $kPlacemarkCount placemarks'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ControlButton(
                    onPressed: () async {
                      if (mapObjects
                          .any((el) => el.mapId == largeMapObjectId)) {
                        return;
                      }
                      final image = await _buildPlacemarkAppearance();

                      final largeMapObject = ClusterizedPlacemarkCollection(
                        mapId: largeMapObjectId,
                        radius: 10,
                        minZoom: 18,
                        onClusterAdded: (self, cluster) async {
                          return cluster.copyWith(
                            appearance: cluster.appearance.copyWith(
                              opacity: 1,
                              icon: PlacemarkIcon.single(
                                PlacemarkIconStyle(
                                  image: BitmapDescriptor.fromBytes(
                                    await _buildClusterAppearance(cluster),
                                  ),
                                  scale: 1,
                                ),
                              ),
                            ),
                          );
                        },
                        onClusterTap: (self, cluster) {
                          print('Tapped cluster');
                        },
                        placemarks: List<PlacemarkMapObject>.generate(
                          kPlacemarkCount,
                          (i) {
                            return PlacemarkMapObject(
                              opacity: 1,
                              mapId: MapObjectId('placemark_$i'),
                              point: Point(
                                latitude: 55.756 + _randomDouble(),
                                longitude: 37.618 + _randomDouble(),
                              ),
                              icon: PlacemarkIcon.single(
                                PlacemarkIconStyle(
                                  image: BitmapDescriptor.fromBytes(
                                    image,
                                  ),
                                  scale: 1,
                                ),
                              ),
                            );
                          },
                        ),
                        onTap: (self, point) => print('Tapped me at $point'),
                      );

                      setState(() {
                        mapObjects.add(largeMapObject);
                      });
                    },
                    title: 'Add',
                  ),
                  ControlButton(
                    onPressed: () async {
                      setState(() {
                        mapObjects.removeWhere(
                          (el) => el.mapId == largeMapObjectId,
                        );
                      });
                    },
                    title: 'Remove',
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
