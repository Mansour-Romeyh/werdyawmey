import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:werd/constents.dart';
import 'package:werd/cubits/audio_cubit/audio_cubit.dart';
import 'package:werd/widgets/custom_tabBar_aoudio_player.dart';

class PlayAlemranSurah extends StatelessWidget {
  const PlayAlemranSurah({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<AudioCubit>(context).isPlaying();
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text('ال عمران',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontFamily: 'Amiri',
            )),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            'عن أبي أمامة الباهلي رضي الله عنه قال: سمعتُ رسولَ اللهِ ﷺ يقولُ:\n\n'
            '«اقرؤوا الزَّهْرَاوَيْنِ: البَقَرَةَ، وسُورَةَ آلِ عِمْرَانَ، فإنهما تأْتِيانِ يومَ القيامةِ كأنهما غَمَامَتانِ، أوْ كأنهما غَيايَتانِ، أوْ كأنهما فِرْقانِ مِن طَيْرٍ صَوافَّ، تُحاجَّانِ عن أصحابهما».',
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'Amiri', // استخدم الخط المناسب هنا
              color: Colors.white, // يمكنك تغيير اللون حسب رغبتك
              height: 1.6, // لضبط المسافات بين الأسطر
            ),
            textAlign: TextAlign.center, // لضبط المحاذاة في النص
          ),
        ),
      ),
      bottomNavigationBar: Container(
        child: CustomBottombarSound(
          ayatIndex: 4,
          mp3File: null,
        ),
      ),
    );
  }
}
