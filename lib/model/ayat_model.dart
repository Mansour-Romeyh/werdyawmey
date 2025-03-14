import 'package:hive/hive.dart';

part 'ayat_model.g.dart';

@HiveType(typeId: 1)
class AyatModel extends HiveObject {
  @HiveField(0)
  final String surahName;
  @HiveField(1)
  final int start;
  @HiveField(2)
  final int end;
  @HiveField(3)
  final String image;
  @HiveField(4)
  final String mp3File;

  AyatModel(
      {required this.start,
      required this.end,
      required this.image,
      required this.mp3File,
      required this.surahName});
}
