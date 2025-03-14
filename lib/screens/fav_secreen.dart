import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:werd/constents.dart';
import 'package:werd/cubits/audio_cubit/audio_cubit.dart';
import 'package:werd/cubits/audio_cubit/audio_state.dart';
import 'package:werd/model/ayat_model.dart';
import 'package:werd/screens/show_surah_image.dart';
import 'package:werd/widgets/custom_tabBar_aoudio_player.dart';
import 'package:werd/widgets/surah_part_category.dart';

class FavSecreen extends StatefulWidget {
  const FavSecreen({super.key});

  @override
  State<FavSecreen> createState() => _FavSecreenState();
}

class _FavSecreenState extends State<FavSecreen> {
  List<AyatModel> FavList = [];
  @override
  void initState() {
    super.initState();
    getFavList();
    setState(() {});
  }

  void getFavList() async {
    FavList = await Hive.box<AyatModel>(kBoxName).values.toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        title: Text(
          'المفضلة',
          style: TextStyle(
            fontFamily: 'Amiri',
            color: Colors.white,
            fontSize: 28,
          ),
        ),
      ),
      body: FavList.isNotEmpty
          ? Column(
              children: [
                Text('اضغط مرة للقراءة ومرتين للحدف',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: 'Amiri')),
                Expanded(
                  child: ListView.builder(
                      itemCount: FavList.length,
                      itemBuilder: (context, index) {
                        return surahPartCategory(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ShowSurahImage(
                                    surahName: '',
                                        ayat: FavList[index],
                                        ayatIndex: index,
                                      )), // Replace with your next screen
                            );
                          },
                          ayatModel: FavList[index],
                          onDoubleTap: () {
                            FavList[index].delete();
                            getFavList();
                          },
                        );
                      }),
                ),
              ],
            )
          : Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                textAlign: TextAlign.right,
                'لا يوجد عناصر حتى الان, يمكنك الدخول للايات والضغط على الزر العائم لاضافتها للمفضلة',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'Amiri',
                ),
              ),
            ),
            bottomNavigationBar: BlocBuilder<AudioCubit,AudioState>(
        builder: (context, state) {
          if (state is IsPlaying) {
            return CustomBottombarSound(
              ayatIndex: 1,
              mp3File:  context.read<AudioCubit>().mp3File,
            );
          } else {
            return Text('d');
          }
        },
      ),
    );
  }
}
