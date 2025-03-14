import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:werd/constents.dart';
import 'package:werd/cubits/audio_cubit/audio_cubit.dart';
import 'package:werd/model/ayat_model.dart';
import 'package:werd/widgets/custom_tabBar_aoudio_player.dart';

class ShowSurahImage extends StatelessWidget {
  const ShowSurahImage(
      {super.key,
      required this.ayat,
      required this.ayatIndex,
      required this.surahName});
  final AyatModel ayat;
  final int ayatIndex;
  final String surahName;
  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<AudioCubit>(context).isPlaying();
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: Text(surahName,
            style: TextStyle(
              fontSize: 28,
              fontFamily: 'Amiri',
              color: Colors.white,
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('الايات من ${ayat.start} الى ${ayat.end}',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Amiri',
                  color: Colors.white,
                )),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: InteractiveViewer(
              panEnabled: true, // Enables panning
              boundaryMargin: EdgeInsets.all(20),
              minScale: 0.5, // Minimum zoom scale
              maxScale: 4.0, // Maximum zoom scale
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ayat.image),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          Container(
            color: kPrimaryColor,
            width: MediaQuery.sizeOf(context).width * 0.9,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: kPrimaryColor, // تغيير لون الخلفية

                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0), // تعديل شكل الحواف
                ),
              ),
              onPressed: () async {
            if (Hive.box<AyatModel>(kBoxName).containsKey(ayat.key)) return;
            var AyatBox = Hive.box<AyatModel>(kBoxName);
            await AyatBox.add(ayat);
          },
              child: Text(
                'اضف للمفضلة',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Amiri',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: CustomBottombarSound(
        mp3File: ayat.mp3File,
        ayatIndex: ayatIndex,
      ),
    
    );
  }
}
