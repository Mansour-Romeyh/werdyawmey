import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:werd/constents.dart';
import 'package:werd/cubits/audio_cubit/audio_cubit.dart';
import 'package:werd/cubits/audio_cubit/audio_state.dart';
import 'package:werd/screens/play_alemran_surah.dart';
import 'package:werd/screens/surah_ayats_category_screen.dart';
import 'package:werd/widgets/custom_tabBar_aoudio_player.dart';
import 'package:werd/widgets/part_of_surah_widget.dart';

class AlEmaranTwoPartsScreen extends StatelessWidget {
  const AlEmaranTwoPartsScreen({super.key});

  @override
  Widget build(BuildContext context) {
     var cubit = BlocProvider.of<AudioCubit>(context).isPlaying();
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text(
          'ال عمران',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontFamily: 'Amiri',
          ),
        ),
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PartOfSurahWidget(
            text: 'الجزء الثالث',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SurahAyatsCategoryScreen(
                    surahName: 'سورة ال عممران',
                    surahPart: 4,
                  ),
                ), // Replace with your next screen
              );
            },
          ),
          PartOfSurahWidget(
            text: 'الجزء الرابع',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SurahAyatsCategoryScreen(
                    surahName: 'سورة ال عمران',
                    surahPart: 5,
                  ),
                ), // Replace with your next screen
              );
            },
          ),
           PartOfSurahWidget(
            text: 'تشغيل ال عمران كاملة',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return PlayAlemranSurah();
                  },
                ), // Replace with your next screen
              );
            },
          ),
        
        ],

      ),
      bottomNavigationBar: BlocBuilder<AudioCubit,AudioState>(
        builder: (context, state) {
          if (state is IsPlaying) {
            return CustomBottombarSound(
              ayatIndex: 1,
              mp3File:  context.read<AudioCubit>().mp3File,
            );
          } else {
            return Text('');
          }
        },
      ),
    );
  }
}
