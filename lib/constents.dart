import 'dart:ui';


import 'package:werd/model/ayat_model.dart';

var kPrimaryColor = Color(0xff0C7B75);
final List<AyatModel> baqarahAyatList = [
  // 37
];

String kBoxName = 'FavBox';



//baqarah
//1
List<AyatModel> baqarhPartOneList = [
  AyatModel(
      surahName: 'البقرة',
      start: 1,
      end: 5,
      image: 'assets/images/al-baqarah/1-5.webp',
      mp3File: 'audio/AlBaqara mp3/1-5.mp3'), // 1
  AyatModel(
      surahName: 'البقرة',
      start: 6,
      end: 12,
      image: 'assets/images/al-baqarah/6-12.webp',
      mp3File: 'audio/AlBaqara mp3/6-12.mp3'), // 2
  AyatModel(
      surahName: 'البقرة',
      start: 13,
      end: 16,
      image: 'assets/images/al-baqarah/13-16.webp',
      mp3File: 'audio/AlBaqara mp3/13-16.mp3'), // 3
  AyatModel(
      surahName: 'البقرة',
      start: 17,
      end: 19,
      image: 'assets/images/al-baqarah/17-19.webp',
      mp3File: 'audio/AlBaqara mp3/17-19.mp3'), // 4
  AyatModel(
      surahName: 'البقرة',
      start: 20,
      end: 22,
      image: 'assets/images/al-baqarah/20-22.webp',
      mp3File: 'audio/AlBaqara mp3/20-22.mp3'), // 5
  AyatModel(
      surahName: 'البقرة',
      start: 23,
      end: 25,
      image: 'assets/images/al-baqarah/23-25.webp',
      mp3File: 'audio/AlBaqara mp3/23-25.mp3'), // 6
  AyatModel(
      surahName: 'البقرة',
      start: 26,
      end: 29,
      image: 'assets/images/al-baqarah/26-29.webp',
      mp3File: 'audio/AlBaqara mp3/26-29.mp3'), // 7
  AyatModel(
      surahName: 'البقرة',
      start: 30,
      end: 33,
      image: 'assets/images/al-baqarah/30-33.webp',
      mp3File: 'audio/AlBaqara mp3/30-33.mp3'), // 8
  AyatModel(
      surahName: 'البقرة',
      start: 34,
      end: 39,
      image: 'assets/images/al-baqarah/34-39.webp',
      mp3File: 'audio/AlBaqara mp3/34-39.mp3'), // 9
  AyatModel(
      surahName: 'البقرة',
      start: 40,
      end: 46,
      image: 'assets/images/al-baqarah/40-46.webp',
      mp3File: 'audio/AlBaqara mp3/40-46.mp3'), // 10
  AyatModel(
      surahName: 'البقرة',
      start: 47,
      end: 48,
      image: 'assets/images/al-baqarah/47-48.webp',
      mp3File: 'audio/AlBaqara mp3/47-48.mp3'), // 11
  AyatModel(
      surahName: 'البقرة',
      start: 49,
      end: 54,
      image: 'assets/images/al-baqarah/49-54.webp',
      mp3File: 'audio/AlBaqara mp3/49-54.mp3'), // 12
  AyatModel(
      surahName: 'البقرة',
      start: 55,
      end: 57,
      image: 'assets/images/al-baqarah/55-57.webp',
      mp3File: 'audio/AlBaqara mp3/55-57.mp3'), // 13
  AyatModel(
      surahName: 'البقرة',
      start: 58,
      end: 60,
      image: 'assets/images/al-baqarah/58-60.webp',
      mp3File: 'audio/AlBaqara mp3/58-60.mp3'), // 14
  AyatModel(
      surahName: 'البقرة',
      start: 61,
      end: 61,
      image: 'assets/images/al-baqarah/61-61.webp',
      mp3File: 'audio/AlBaqara mp3/61-61.mp3'), // 15
  AyatModel(
      surahName: 'البقرة',
      start: 62,
      end: 66,
      image: 'assets/images/al-baqarah/62-66.webp',
      mp3File: 'audio/AlBaqara mp3/62-66.mp3'), // 16
  AyatModel(
      surahName: 'البقرة',
      start: 67,
      end: 71,
      image: 'assets/images/al-baqarah/67-71.webp',
      mp3File: 'audio/AlBaqara mp3/67-71.mp3'), // 17
  AyatModel(
      surahName: 'البقرة',
      start: 72,
      end: 74,
      image: 'assets/images/al-baqarah/72-74.webp',
      mp3File: 'audio/AlBaqara mp3/72-74.mp3'), // 18
  AyatModel(
      surahName: 'البقرة',
      start: 75,
      end: 79,
      image: 'assets/images/al-baqarah/75-79.webp',
      mp3File: 'audio/AlBaqara mp3/75-79.mp3'), // 19
  AyatModel(
      surahName: 'البقرة',
      start: 80,
      end: 82,
      image: 'assets/images/al-baqarah/80-82.webp',
      mp3File: 'audio/AlBaqara mp3/80-82.mp3'), // 20
  AyatModel(
      surahName: 'البقرة',
      start: 83,
      end: 83,
      image: 'assets/images/al-baqarah/83-83.webp',
      mp3File: 'audio/AlBaqara mp3/83-83.mp3'), // 21
  AyatModel(
      surahName: 'البقرة',
      start: 84,
      end: 86,
      image: 'assets/images/al-baqarah/84-86.webp',
      mp3File: 'audio/AlBaqara mp3/84-86.mp3'), // 22
  AyatModel(
      surahName: 'البقرة',
      start: 87,
      end: 88,
      image: 'assets/images/al-baqarah/87-88.webp',
      mp3File: 'audio/AlBaqara mp3/87-88.mp3'), // 23
  AyatModel(
      surahName: 'البقرة',
      start: 89,
      end: 91,
      image: 'assets/images/al-baqarah/89-91.webp',
      mp3File: 'audio/AlBaqara mp3/89-91.mp3'), // 24
  AyatModel(
    start: 92,
    end: 93,
    image: 'assets/images/al-baqarah/92-93.webp',
    mp3File: 'audio/AlBaqara mp3/92-93.mp3',
    surahName: 'البقرة',
  ), // 25
  AyatModel(
    start: 94,
    end: 98,
    image: 'assets/images/al-baqarah/94-98.webp',
    mp3File: 'audio/AlBaqara mp3/94-98.mp3',
    surahName: 'البقرة',
  ), // 26
  AyatModel(
    start: 99,
    end: 101,
    image: 'assets/images/al-baqarah/99-101.webp',
    mp3File: 'audio/AlBaqara mp3/99-101.mp3',
    surahName: 'البقرة',
  ), // 27
  AyatModel(
    start: 102,
    end: 103,
    image: 'assets/images/al-baqarah/102-103.webp',
    mp3File: 'audio/AlBaqara mp3/102-103.mp3',
    surahName: 'البقرة',
  ), // 28
  AyatModel(
    start: 104,
    end: 105,
    image: 'assets/images/al-baqarah/104-105.webp',
    mp3File: 'audio/AlBaqara mp3/104-105.mp3',
    surahName: 'البقرة',
  ), // 29
  AyatModel(
    start: 106,
    end: 110,
    image: 'assets/images/al-baqarah/106-110.webp',
    mp3File: 'audio/AlBaqara mp3/106-110.mp3',
    surahName: 'البقرة',
  ), // 30
  AyatModel(
    start: 111,
    end: 112,
    image: 'assets/images/al-baqarah/111-112.webp',
    mp3File: 'audio/AlBaqara mp3/111-112.mp3',
    surahName: 'البقرة',
  ), // 31
  AyatModel(
    start: 113,
    end: 117,
    image: 'assets/images/al-baqarah/113-117.webp',
    mp3File: 'audio/AlBaqara mp3/113-117.mp3',
    surahName: 'البقرة',
  ), // 32
  AyatModel(
    start: 118,
    end: 119,
    image: 'assets/images/al-baqarah/118-119.webp',
    mp3File: 'audio/AlBaqara mp3/118-119.mp3',
    surahName: 'البقرة',
  ), // 33
  AyatModel(
    start: 120,
    end: 123,
    image: 'assets/images/al-baqarah/120-123.webp',
    mp3File: 'audio/AlBaqara mp3/120-123.mp3',
    surahName: 'البقرة',
  ), // 34
  AyatModel(
    start: 124,
    end: 126,
    image: 'assets/images/al-baqarah/124-126.webp',
    mp3File: 'audio/AlBaqara mp3/124-126.mp3',
    surahName: 'البقرة',
  ), // 35
  AyatModel(
    start: 127,
    end: 134,
    image: 'assets/images/al-baqarah/127-134.webp',
    mp3File: 'audio/AlBaqara mp3/127-134.mp3',
    surahName: 'البقرة',
  ), // 36
  AyatModel(
    start: 135,
    end: 141,
    image: 'assets/images/al-baqarah/135-141.webp',
    mp3File: 'audio/AlBaqara mp3/135-141.mp3',
    surahName: 'البقرة',
  ),
];
//2
List<AyatModel> baqarhPartTwoList = [
  AyatModel(
    start: 142,
    end: 143,
    image: 'assets/images/al-baqarah/142-143.webp',
    mp3File: 'audio/AlBaqara mp3/142-143.mp3',
    surahName: 'البقرة',
  ), // 38
  AyatModel(
    start: 144,
    end: 148,
    image: 'assets/images/al-baqarah/144-148.webp',
    mp3File: 'audio/AlBaqara mp3/144-148.mp3',
    surahName: 'البقرة',
  ), // 39
  AyatModel(
    start: 149,
    end: 152,
    image: 'assets/images/al-baqarah/149-152.webp',
    mp3File: 'audio/AlBaqara mp3/149-152.mp3',
    surahName: 'البقرة',
  ), // 40
  AyatModel(
    start: 153,
    end: 157,
    image: 'assets/images/al-baqarah/153-157.webp',
    mp3File: 'audio/AlBaqara mp3/153-157.mp3',
    surahName: 'البقرة',
  ), // 41
  AyatModel(
    start: 158,
    end: 163,
    image: 'assets/images/al-baqarah/158-163.webp',
    mp3File: 'audio/AlBaqara mp3/158-163.mp3',
    surahName: 'البقرة',
  ), // 42
  AyatModel(
    start: 164,
    end: 167,
    image: 'assets/images/al-baqarah/164-167.webp',
    mp3File: 'audio/AlBaqara mp3/164-167.mp3',
    surahName: 'البقرة',
  ), // 43
  AyatModel(
    start: 168,
    end: 169,
    image: 'assets/images/al-baqarah/168-169.webp',
    mp3File: 'audio/AlBaqara mp3/168-169.mp3',
    surahName: 'البقرة',
  ), // 44
  AyatModel(
    start: 170,
    end: 176,
    image: 'assets/images/al-baqarah/170-176.webp',
    mp3File: 'audio/AlBaqara mp3/170-176.mp3',
    surahName: 'البقرة',
  ), // 45
  AyatModel(
    start: 177,
    end: 177,
    image: 'assets/images/al-baqarah/177-177.webp',
    mp3File: 'audio/AlBaqara mp3/177-177.mp3',
    surahName: 'البقرة',
  ), // 46
  AyatModel(
    start: 178,
    end: 182,
    image: 'assets/images/al-baqarah/178-182.webp',
    mp3File: 'audio/AlBaqara mp3/178-182.mp3',
    surahName: 'البقرة',
  ), // 47
  AyatModel(
    start: 183,
    end: 186,
    image: 'assets/images/al-baqarah/183-186.webp',
    mp3File: 'audio/AlBaqara mp3/183-186.mp3',
    surahName: 'البقرة',
  ), // 48
  AyatModel(
    start: 187,
    end: 188,
    image: 'assets/images/al-baqarah/187-188.webp',
    mp3File: 'audio/AlBaqara mp3/187-188.mp3',
    surahName: 'البقرة',
  ), // 49
  AyatModel(
    start: 189,
    end: 190,
    image: 'assets/images/al-baqarah/189-190.webp',
    mp3File: 'audio/AlBaqara mp3/189-190.mp3',
    surahName: 'البقرة',
  ), // 50
  AyatModel(
    start: 191,
    end: 194,
    image: 'assets/images/al-baqarah/191-194.webp',
    mp3File: 'audio/AlBaqara mp3/191-194.mp3',
    surahName: 'البقرة',
  ), // 51
  AyatModel(
    start: 195,
    end: 196,
    image: 'assets/images/al-baqarah/195-196.webp',
    mp3File: 'audio/AlBaqara mp3/195-196.mp3',
    surahName: 'البقرة',
  ), // 52
  AyatModel(
    start: 197,
    end: 202,
    image: 'assets/images/al-baqarah/197-202.webp',
    mp3File: 'audio/AlBaqara mp3/197-202.mp3',
    surahName: 'البقرة',
  ), // 53
  AyatModel(
      start: 203,
      end: 210,
      image: 'assets/images/al-baqarah/203-210.webp',
      mp3File: 'audio/AlBaqara mp3/203-210.mp3',
      surahName: 'البقرة'), // 54
  AyatModel(
      start: 211,
      end: 212,
      image: 'assets/images/al-baqarah/211-212.webp',
      mp3File: 'audio/AlBaqara mp3/211-212.mp3',
      surahName: 'البقرة'), // 55
  AyatModel(
      start: 213,
      end: 214,
      image: 'assets/images/al-baqarah/213-214.webp',
      mp3File: 'audio/AlBaqara mp3/213-214.mp3',
      surahName: 'البقرة'), // 56
  AyatModel(
      start: 215,
      end: 216,
      image: 'assets/images/al-baqarah/215-216.webp',
      mp3File: 'audio/AlBaqara mp3/215-216.mp3',
      surahName: 'البقرة'), // 57
  AyatModel(
      start: 217,
      end: 218,
      image: 'assets/images/al-baqarah/217-218.webp',
      mp3File: 'audio/AlBaqara mp3/217-218.mp3',
      surahName: 'البقرة'), // 58
  AyatModel(
      start: 219,
      end: 221,
      image: 'assets/images/al-baqarah/219-221.webp',
      mp3File: 'audio/AlBaqara mp3/219-221.mp3',
      surahName: 'البقرة'), // 59
  AyatModel(
      start: 222,
      end: 224,
      image: 'assets/images/al-baqarah/222-224.webp',
      mp3File: 'audio/AlBaqara mp3/222-224.mp3',
      surahName: 'البقرة'), // 60
  AyatModel(
      start: 225,
      end: 228,
      image: 'assets/images/al-baqarah/225-228.webp',
      mp3File: 'audio/AlBaqara mp3/225-228.mp3',
      surahName: 'البقرة'), // 61
  AyatModel(
      start: 229,
      end: 230,
      image: 'assets/images/al-baqarah/229-230.webp',
      mp3File: 'audio/AlBaqara mp3/229-230.mp3',
      surahName: 'البقرة'), // 62
  AyatModel(
      start: 231,
      end: 232,
      image: 'assets/images/al-baqarah/231-232.webp',
      mp3File: 'audio/AlBaqara mp3/231-232.mp3',
      surahName: 'البقرة'), // 63
  AyatModel(
      start: 233,
      end: 233,
      image: 'assets/images/al-baqarah/233-233.webp',
      mp3File: 'audio/AlBaqara mp3/233-233.mp3',
      surahName: 'البقرة'), // 64
  AyatModel(
      start: 234,
      end: 235,
      image: 'assets/images/al-baqarah/234-235.webp',
      mp3File: 'audio/AlBaqara mp3/234-235.mp3',
      surahName: 'البقرة'), // 65
  AyatModel(
      start: 236,
      end: 237,
      image: 'assets/images/al-baqarah/236-237.webp',
      mp3File: 'audio/AlBaqara mp3/236-237.mp3',
      surahName: 'البقرة'), // 66
  AyatModel(
      start: 238,
      end: 242,
      image: 'assets/images/al-baqarah/238-242.webp',
      mp3File: 'audio/AlBaqara mp3/238-242.mp3',
      surahName: 'البقرة'), // 67
  AyatModel(
      start: 243,
      end: 245,
      image: 'assets/images/al-baqarah/243-245.webp',
      mp3File: 'audio/AlBaqara mp3/243-245.mp3',
      surahName: 'البقرة'), // 68
  AyatModel(
      start: 246,
      end: 248,
      image: 'assets/images/al-baqarah/246-248.webp',
      mp3File: 'audio/AlBaqara mp3/246-248.mp3',
      surahName: 'البقرة'), // 69
  AyatModel(
      start: 249,
      end: 252,
      image: 'assets/images/al-baqarah/249-252.webp',
      mp3File: 'audio/AlBaqara mp3/249-252.mp3',
      surahName: 'البقرة'), // 70
];
//3
List<AyatModel> baqarhPartThreeList = [
  AyatModel(
      start: 253,
      end: 253,
      image: 'assets/images/al-baqarah/253-253.webp',
      mp3File: 'audio/AlBaqara mp3/253-253.mp3',
      surahName: 'البقرة'), // 71
  AyatModel(
      start: 254,
      end: 255,
      image: 'assets/images/al-baqarah/254-255.webp',
      mp3File: 'audio/AlBaqara mp3/254-255.mp3',
      surahName: 'البقرة'), // 72
  AyatModel(
      start: 256,
      end: 257,
      image: 'assets/images/al-baqarah/256-257.webp',
      mp3File: 'audio/AlBaqara mp3/256-257.mp3',
      surahName: 'البقرة'), // 73
  AyatModel(
      start: 258,
      end: 259,
      image: 'assets/images/al-baqarah/258-259.webp',
      mp3File: 'audio/AlBaqara mp3/258-259.mp3',
      surahName: 'البقرة'), // 74
  AyatModel(
      start: 260,
      end: 260,
      image: 'assets/images/al-baqarah/260-260.webp',
      mp3File: 'audio/AlBaqara mp3/260-260.mp3',
      surahName: 'البقرة'), // 75
  AyatModel(
      start: 261,
      end: 264,
      image: 'assets/images/al-baqarah/261-264.webp',
      mp3File: 'audio/AlBaqara mp3/261-264.mp3',
      surahName: 'البقرة'), // 76
  AyatModel(
      start: 265,
      end: 266,
      image: 'assets/images/al-baqarah/265-266.webp',
      mp3File: 'audio/AlBaqara mp3/265-266.mp3',
      surahName: 'البقرة'), // 77
  AyatModel(
      start: 267,
      end: 269,
      image: 'assets/images/al-baqarah/267-269.webp',
      mp3File: 'audio/AlBaqara mp3/267-269.mp3',
      surahName: 'البقرة'), // 78
  AyatModel(
      start: 270,
      end: 272,
      surahName: 'البقرة',
      image: 'assets/images/al-baqarah/270-272.webp',
      mp3File: 'audio/AlBaqara mp3/270-272.mp3'), // 79
  AyatModel(
      surahName: 'البقرة',
      start: 273,
      end: 277,
      image: 'assets/images/al-baqarah/273-277.webp',
      mp3File: 'audio/AlBaqara mp3/273-277.mp3'), // 80
  AyatModel(
      surahName: 'البقرة',
      start: 278,
      end: 281,
      image: 'assets/images/al-baqarah/278-281.webp',
      mp3File: 'audio/AlBaqara mp3/278-281.mp3'), // 81
  AyatModel(
      surahName: 'البقرة',
      start: 282,
      end: 282,
      image: 'assets/images/al-baqarah/282-282.webp',
      mp3File: 'audio/AlBaqara mp3/282-282.mp3'), // 82
  AyatModel(
      surahName: 'البقرة',
      start: 283,
      end: 283,
      image: 'assets/images/al-baqarah/283-283.webp',
      mp3File: 'audio/AlBaqara mp3/283-283.mp3'), // 83
  AyatModel(
      surahName: 'البقرة',
      start: 284,
      end: 286,
      image: 'assets/images/al-baqarah/284-286.webp',
      mp3File: 'audio/AlBaqara mp3/284-286.mp3'), // 84
];

//al emran
//4
List<AyatModel> alEmranPartThreeList = [
  AyatModel(
      start: 1,
      end: 6,
      image: 'assets/images/al-emran/${1}-${6}.webp',
      mp3File: 'audio/al emran mp3/${1}-${6}.MP3',
      surahName: 'ال عمران'), // 1
  AyatModel(
      start: 7,
      end: 9,
      image: 'assets/images/al-emran/${7}-${9}.webp',
      mp3File: 'audio/al emran mp3/${7}-${9}.MP3',
      surahName: 'ال عمران'), // 2
  AyatModel(
      start: 10,
      end: 13,
      image: 'assets/images/al-emran/${10}-${13}.webp',
      mp3File: 'audio/al emran mp3/${10}-${13}.MP3',
      surahName: 'ال عمران'), // 3
  AyatModel(
      start: 14,
      end: 18,
      image: 'assets/images/al-emran/${14}-${18}.webp',
      mp3File: 'audio/al emran mp3/${14}-${18}.MP3',
      surahName: 'ال عمران'), // 4
  AyatModel(
      start: 19,
      end: 22,
      image: 'assets/images/al-emran/${19}-${22}.webp',
      mp3File: 'audio/al emran mp3/${19}-${22}.MP3',
      surahName: 'ال عمران'), // 5
  AyatModel(
      start: 23,
      end: 27,
      image: 'assets/images/al-emran/${23}-${27}.webp',
      mp3File: 'audio/al emran mp3/${23}-${27}.MP3',
      surahName: 'ال عمران'), // 6
  AyatModel(
      start: 28,
      end: 32,
      image: 'assets/images/al-emran/${28}-${32}.webp',
      mp3File: 'audio/al emran mp3/${28}-${32}.MP3',
      surahName: 'ال عمران'), // 7
  AyatModel(
      start: 33,
      end: 37,
      image: 'assets/images/al-emran/${33}-${37}.webp',
      mp3File: 'audio/al emran mp3/${33}-${37}.MP3',
      surahName: 'ال عمران'), // 8
  AyatModel(
      start: 38,
      end: 41,
      image: 'assets/images/al-emran/${38}-${41}.webp',
      mp3File: 'audio/al emran mp3/${38}-${41}.MP3',
      surahName: 'ال عمران'), // 9
  AyatModel(
      start: 42,
      end: 44,
      image: 'assets/images/al-emran/${42}-${44}.webp',
      mp3File: 'audio/al emran mp3/${42}-${44}.MP3',
      surahName: 'ال عمران'), // 10
  AyatModel(
      start: 45,
      end: 51,
      image: 'assets/images/al-emran/${45}-${51}.webp',
      mp3File: 'audio/al emran mp3/${45}-${51}.MP3',
      surahName: 'ال عمران'), // 11
  AyatModel(
      start: 52,
      end: 54,
      image: 'assets/images/al-emran/${52}-${54}.webp',
      mp3File: 'audio/al emran mp3/${52}-${54}.MP3',
      surahName: 'ال عمران'), // 12
  AyatModel(
      start: 55,
      end: 63,
      image: 'assets/images/al-emran/${55}-${63}.webp',
      mp3File: 'audio/al emran mp3/${55}-${63}.MP3',
      surahName: 'ال عمران'), // 13
  AyatModel(
      start: 64,
      end: 66,
      image: 'assets/images/al-emran/${64}-${66}.webp',
      mp3File: 'audio/al emran mp3/${64}-${66}.MP3',
      surahName: 'ال عمران'), // 14
  AyatModel(
      start: 67,
      end: 74,
      image: 'assets/images/al-emran/${67}-${74}.webp',
      mp3File: 'audio/al emran mp3/${67}-${74}.MP3',
      surahName: 'ال عمران'), // 15
  AyatModel(
      start: 75,
      end: 78,
      image: 'assets/images/al-emran/${75}-${78}.webp',
      mp3File: 'audio/al emran mp3/${75}-${78}.MP3',
      surahName: 'ال عمران'), // 16
  AyatModel(
      start: 79,
      end: 83,
      image: 'assets/images/al-emran/${79}-${83}.webp',
      mp3File: 'audio/al emran mp3/${79}-${83}.MP3',
      surahName: 'ال عمران'), // 17
  AyatModel(
      start: 84,
      end: 92,
      image: 'assets/images/al-emran/${84}-${92}.webp',
      mp3File: 'audio/al emran mp3/${84}-${92}.MP3',
      surahName: 'ال عمران'), // 18
];
//5
List<AyatModel> alEmranPartFourList = [
  AyatModel(
      start: 93,
      end: 97,
      image: 'assets/images/al-emran/${93}-${97}.webp',
      mp3File: 'audio/al emran mp3/${93}-${97}.MP3',
      surahName: 'ال عمران'), // 19
  AyatModel(
      start: 98,
      end: 101,
      image: 'assets/images/al-emran/${98}-${101}.webp',
      mp3File: 'audio/al emran mp3/${98}-${101}.MP3',
      surahName: 'ال عمران'), // 20
  AyatModel(
      start: 102,
      end: 108,
      image: 'assets/images/al-emran/${102}-${108}.webp',
      mp3File: 'audio/al emran mp3/${102}-${108}.MP3',
      surahName: 'ال عمران'), // 21
  AyatModel(
      start: 109,
      end: 112,
      image: 'assets/images/al-emran/${109}-${112}.webp',
      mp3File: 'audio/al emran mp3/${109}-${112}.MP3',
      surahName: 'ال عمران'), // 22
  AyatModel(
      start: 113,
      end: 115,
      image: 'assets/images/al-emran/${113}-${115}.webp',
      mp3File: 'audio/al emran mp3/${113}-${115}.MP3',
      surahName: 'ال عمران'), // 23
  AyatModel(
      start: 116,
      end: 117,
      image: 'assets/images/al-emran/${116}-${117}.webp',
      mp3File: 'audio/al emran mp3/${116}-${117}.MP3',
      surahName: 'ال عمران'), // 24
  AyatModel(
      start: 118,
      end: 120,
      image: 'assets/images/al-emran/${118}-${120}.webp',
      mp3File: 'audio/al emran mp3/${118}-${120}.MP3',
      surahName: 'ال عمران'), // 25
  AyatModel(
      start: 121,
      end: 129,
      image: 'assets/images/al-emran/${121}-${129}.webp',
      mp3File: 'audio/al emran mp3/${121}-${129}.MP3',
      surahName: 'ال عمران'), // 26
  AyatModel(
      start: 130,
      end: 136,
      image: 'assets/images/al-emran/${130}-${136}.webp',
      mp3File: 'audio/al emran mp3/${130}-${136}.MP3',
      surahName: 'ال عمران'), // 27
  AyatModel(
      start: 137,
      end: 143,
      image: 'assets/images/al-emran/${137}-${143}.webp',
      mp3File: 'audio/al emran mp3/${137}-${143}.MP3',
      surahName: 'ال عمران'), // 28
  AyatModel(
      start: 144,
      end: 148,
      image: 'assets/images/al-emran/${144}-${148}.webp',
      mp3File: 'audio/al emran mp3/${144}-${148}.MP3',
      surahName: 'ال عمران'), // 29
  AyatModel(
      start: 149,
      end: 153,
      image: 'assets/images/al-emran/${149}-${153}.webp',
      mp3File: 'audio/al emran mp3/${149}-${153}.MP3',
      surahName: 'ال عمران'), // 30
  AyatModel(
      start: 154,
      end: 155,
      image: 'assets/images/al-emran/${154}-${155}.webp',
      mp3File: 'audio/al emran mp3/${154}-${155}.MP3',
      surahName: 'ال عمران'), // 31
  AyatModel(
      start: 156,
      end: 160,
      image: 'assets/images/al-emran/${156}-${160}.webp',
      mp3File: 'audio/al emran mp3/${156}-${160}.MP3',
      surahName: 'ال عمران'), // 32
  AyatModel(
      start: 161,
      end: 163,
      image: 'assets/images/al-emran/${161}-${163}.webp',
      mp3File: 'audio/al emran mp3/${161}-${163}.MP3',
      surahName: 'ال عمران'), // 33
  AyatModel(
      start: 164,
      end: 168,
      image: 'assets/images/al-emran/${164}-${168}.webp',
      mp3File: 'audio/al emran mp3/${164}-${168}.MP3',
      surahName: 'ال عمران'), // 34
  AyatModel(
      start: 169,
      end: 175,
      image: 'assets/images/al-emran/${169}-${175}.webp',
      mp3File: 'audio/al emran mp3/${169}-${175}.MP3',
      surahName: 'ال عمران'), // 35
  AyatModel(
      start: 176,
      end: 180,
      image: 'assets/images/al-emran/${176}-${180}.webp',
      mp3File: 'audio/al emran mp3/${176}-${180}.MP3',
      surahName: 'ال عمران'), // 36
  AyatModel(
      start: 181,
      end: 184,
      image: 'assets/images/al-emran/${181}-${184}.webp',
      mp3File: 'audio/al emran mp3/${181}-${184}.MP3',
      surahName: 'ال عمران'), // 37
  AyatModel(
      start: 185,
      end: 186,
      image: 'assets/images/al-emran/${185}-${186}.webp',
      mp3File: 'audio/al emran mp3/${185}-${186}.MP3',
      surahName: 'ال عمران'), // 38
  AyatModel(
      start: 187,
      end: 189,
      image: 'assets/images/al-emran/${187}-${189}.webp',
      mp3File: 'audio/al emran mp3/${187}-${189}.MP3',
      surahName: 'ال عمران'), // 39
  AyatModel(
      start: 190,
      end: 195,
      image: 'assets/images/al-emran/${190}-${195}.webp',
      mp3File: 'audio/al emran mp3/${190}-${195}.MP3',
      surahName: 'ال عمران'), // 40
  AyatModel(
      start: 196,
      end: 200,
      image: 'assets/images/al-emran/${196}-${200}.webp',
      mp3File: 'audio/al emran mp3/${196}-${200}.MP3',
      surahName: 'ال عمران'), // 41
];
