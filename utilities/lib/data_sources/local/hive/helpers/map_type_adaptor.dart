import 'package:hive_flutter/hive_flutter.dart';

class MapTypeAdaptor extends TypeAdapter<Map<String, dynamic>> {
  @override
  final int typeId = 0;

  @override
  Map<String, dynamic> read(BinaryReader reader) {
    final length = reader.readUint32();
    final map = <String, dynamic>{};
    for (var i = 0; i < length; i++) {
      final key = reader.readString();
      final value = reader.read();
      map[key] = value;
    }
    return map;
  }

  @override
  void write(BinaryWriter writer, Map<String, dynamic> map) {
    writer.writeUint32(map.length);
    for (final entry in map.entries) {
      writer
        ..writeString(entry.key)
        ..write(entry.value);
    }
  }
}
