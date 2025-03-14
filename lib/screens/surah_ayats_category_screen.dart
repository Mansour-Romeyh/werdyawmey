import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:werd/constents.dart';
import 'package:werd/cubits/audio_cubit/audio_cubit.dart';
import 'package:werd/cubits/audio_cubit/audio_state.dart';
import 'package:werd/widgets/customFavButton.dart';
import 'package:werd/widgets/custom_tabBar_aoudio_player.dart';
import 'package:werd/widgets/surah_part_category.dart';

import 'show_surah_image.dart';

class SurahAyatsCategoryScreen extends StatefulWidget {
  const SurahAyatsCategoryScreen({
    super.key,
    required this.surahPart,
    required this.surahName,
  });
  final int surahPart;
  final String surahName;

  @override
  State<SurahAyatsCategoryScreen> createState() =>
      _SurahAyatsCategoryScreenState();
}

class _SurahAyatsCategoryScreenState extends State<SurahAyatsCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<AudioCubit>(context).isPlaying();
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: kPrimaryColor,
        title: Text(
          widget.surahName,
          style: TextStyle(
            fontSize: 28,
            fontFamily: 'Amiri',
            color: Colors.white,
          ),
        ),
        actions: [
          Customfavbutton(),
        ],
      ),
      body: ayatListView(
        ayatPart: widget.surahPart,
      ),
      bottomNavigationBar: BlocBuilder<AudioCubit, AudioState>(
        builder: (context, state) {
          if (state is IsPlaying) {
            return CustomBottombarSound(
              ayatIndex: 1,
              mp3File: context.read<AudioCubit>().mp3File,
            );
          } else {
            return Text('');
          }
        },
      ),
    );
  }
}

class ayatListView extends StatelessWidget {
  const ayatListView({
    super.key,
    required this.ayatPart,
  });
  final int ayatPart;
  @override
  Widget build(BuildContext context) {
    if (ayatPart == 1) {
      
      return ListView.builder(
        itemCount: baqarhPartOneList.length,
        itemBuilder: (context, index) {
       
          return surahPartCategory(
            ayatModel: baqarhPartOneList[index],
            onTap: () {
                
              context.read<AudioCubit>().mp3File =
                  baqarhPartOneList[index].mp3File;
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ShowSurahImage(
                    surahName: 'البقرة',
                    ayat: baqarhPartOneList[index],
                    ayatIndex: index,
                  ),
                ), // Replace with your next screen
              );
            },
          );
        },
      );
    } else if (ayatPart == 2) {
      return ListView.builder(
        itemCount: baqarhPartTwoList.length,
        itemBuilder: (context, index) {
           
          return surahPartCategory(
            ayatModel: baqarhPartTwoList[index],
            onTap: () {
                 context.read<AudioCubit>().mp3File =
                  baqarhPartTwoList[index].mp3File;
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ShowSurahImage(
                    surahName: 'البقرة',
                    ayat: baqarhPartTwoList[index],
                    ayatIndex: index,
                  ),
                ), // Replace with your next screen
              );
            },
          );
        },
      );
    } else if (ayatPart == 3) {
      return ListView.builder(
        itemCount: baqarhPartThreeList.length,
        itemBuilder: (context, index) {
        
          return surahPartCategory(
            ayatModel: baqarhPartThreeList[index],
            onTap: () {
               context.read<AudioCubit>().mp3File =
                  baqarhPartThreeList[index].mp3File;
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ShowSurahImage(
                    surahName: 'البقرة',
                    ayat: baqarhPartThreeList[index],
                    ayatIndex: index,
                  ),
                ), // Replace with your next screen
              );
            },
          );
        },
      );
    } else if (ayatPart == 4) {
      return ListView.builder(
        itemCount: alEmranPartThreeList.length,
        itemBuilder: (context, index) {
          
          return surahPartCategory(
            ayatModel: alEmranPartThreeList[index],
            onTap: () {
               context.read<AudioCubit>().mp3File =
                  alEmranPartThreeList[index].mp3File;
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ShowSurahImage(
                    surahName: 'ال عمران',
                    ayat: alEmranPartThreeList[index],
                    ayatIndex: index,
                  ),
                ), // Replace with your next screen
              );
            },
          );
        },
      );
    } else if (ayatPart == 5) {
      return ListView.builder(
        itemCount: alEmranPartFourList.length,
        itemBuilder: (context, index) {
          
          return surahPartCategory(
            ayatModel: alEmranPartFourList[index],
            onTap: () {
                context.read<AudioCubit>().mp3File =
                  alEmranPartFourList[index].mp3File;
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ShowSurahImage(
                    surahName: 'ال عمران',
                    ayat: alEmranPartFourList[index],
                    ayatIndex: index,
                  ),
                ), // Replace with your next screen
              );
            },
          );
        },
      );
    } else {
      return Text('حدث خطا ما, اغلق التطبيق ثم افتحه مرة اخرى');
    }
  }
}
