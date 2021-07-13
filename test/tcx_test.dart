import 'package:tcx/src/tcx_base.dart';
import 'package:test/test.dart';

void main() {
  group('Simple TCX tests', () {
    test('Empty TCX', () {
      var tcx = Tcx();
      expect(tcx.toString(), equalsIgnoringWhitespace('''
<?xml version="1.0" encoding="UTF-8"?>
<TrainingCenterDatabase 
  xsi:schemaLocation="http://www.garmin.com/xmlschemas/TrainingCenterDatabase/v2 http://www.garmin.com/xmlschemas/TrainingCenterDatabasev2.xsd" 
  xmlns="http://www.garmin.com/xmlschemas/TrainingCenterDatabase/v2" 
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"></TrainingCenterDatabase>
      '''));
    });

    test('TCX specification v2 is supported', () {
      var tcx = Tcx();
      expect(tcx.version, TcxVersion.v2);
    });
  });
}
