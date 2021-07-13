enum TcxVersion { v2 }

class Tcx {
  final TcxVersion version = TcxVersion.v2;

  final String header = '''<?xml version="1.0" encoding="UTF-8"?>
<TrainingCenterDatabase 
  xsi:schemaLocation="http://www.garmin.com/xmlschemas/TrainingCenterDatabase/v2 http://www.garmin.com/xmlschemas/TrainingCenterDatabasev2.xsd" 
  xmlns="http://www.garmin.com/xmlschemas/TrainingCenterDatabase/v2" 
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">''';
  final String footer = '</TrainingCenterDatabase>';

  @override
  String toString() {
    return header + footer;
  }
}
