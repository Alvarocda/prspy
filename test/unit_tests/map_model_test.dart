import 'package:flutter_test/flutter_test.dart';
import 'package:prspy/models/map_model.dart';

import '../test_jsons.dart';

///
///
///
void main() {
  ///
  ///
  ///
  test('Create a MapModel object from a json', () {
    MapModel mapModel = MapModel.fromJson(TestJsons.serverPropertiesJson);

    expect(mapModel.layout, 'Std');
    expect(mapModel.gameType, 'AAS');
    expect(mapModel.name, 'Kashan Desert');
    expect(mapModel.faction2.name, 'United States Army');
    expect(mapModel.faction1.name, 'Middle Eastern Coalition');
    expect(mapModel.size, 64);
    expect(
      mapModel.mapGaleryUrl,
      'https://www.realitymod.com/mapgallery/#!/kashandesert/gpm_cq/64',
    );
    expect(
      mapModel.mapOverviewUrl,
      'https://www.realitymod.com/mapgallery/images/maps/kashandesert/mapoverview_gpm_cq_64.jpg',
    );
  });
}
