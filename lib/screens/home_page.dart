import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:werd/constents.dart';
import 'package:werd/cubits/audio_cubit/audio_cubit.dart';
import 'package:werd/cubits/audio_cubit/audio_state.dart';
import 'package:werd/screens/al_emaran_two_parts_screen.dart';
import 'package:werd/screens/baqarah_three_parts.dart';
import 'package:werd/widgets/custom_tabBar_aoudio_player.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          'الورد اليومي',
          style: TextStyle(
            fontSize: 28,
            fontFamily: 'Amiri',
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BaqarahThreeParts(),
                    ),
                  );
                },
                child: Text(
                  'سورة البقرة',
                  style: TextStyle(
                    fontSize: 28,
                    fontFamily: 'Amiri',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AlEmaranTwoPartsScreen(),
                    ),
                  );
                },
                child: Text(
                  'سورة آل عمران',
                  style: TextStyle(
                    fontSize: 28,
                    fontFamily: 'Amiri',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'عن أبي أمامة الباهلي رضي الله عنه قال: سمعتُ رسولَ اللهِ ﷺ يقولُ:\n\n'
                '«اقرؤوا الزَّهْرَاوَيْنِ: البَقَرَةَ، وسُورَةَ آلِ عِمْرَانَ، فإنهما تأْتِيانِ يومَ القيامةِ كأنهما غَمَامَتانِ، أوْ كأنهما غَيايَتانِ، أوْ كأنهما فِرْقانِ مِن طَيْرٍ صَوافَّ، تُحاجَّانِ عن أصحابهما».',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Amiri',
                  color: Colors.white,
                  height: 1.6,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BlocBuilder<AudioCubit, AudioState>(
        builder: (context, state) {
          if (state is IsPlaying || state is IsPaused || state is IsLoading) {
            return CustomBottombarSound(
              ayatIndex: 1, // تأكد من تمرير القيم الصحيحة
              mp3File: context.read<AudioCubit>().mp3File,
            );
          } else {
            return Text(
              'صلي على رسول الله',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontFamily: 'Amiri',
              ),
              textAlign: TextAlign.center,
            ); // لتجنب مساحة فارغة
          }
        },
      ),
    );
  }
}
