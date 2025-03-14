import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:werd/cubits/audio_cubit/audio_cubit.dart';
import 'package:werd/model/ayat_model.dart';

class surahPartCategory extends StatelessWidget {
  const surahPartCategory({
    super.key,
    required this.onTap,
    required this.ayatModel,
    this.onDoubleTap,
  });
  final Function()? onDoubleTap;
  final AyatModel ayatModel;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
     BlocProvider.of<AudioCubit>(context).isPlaying();
    return GestureDetector(
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.12,
            width: MediaQuery.of(context).size.width * 5,
            child: Image.asset(
              'assets/images/ayah_border.png',
            ),
          ),
          Positioned(
            child: Text(
              'الاية ${ayatModel.start} الى ${ayatModel.end}  ${ayatModel.surahName}',
              style: TextStyle(
                fontFamily: 'Amiri',
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            top: MediaQuery.of(context).size.height * 0.04,
            left: MediaQuery.of(context).size.width * 0.34,
          )
        ],
      ),
    );
  }
}