import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:werd/constents.dart';
import 'package:werd/cubits/audio_cubit/audio_cubit.dart';
import 'package:werd/cubits/audio_cubit/audio_state.dart';
import 'package:werd/model/ayat_model.dart';
import 'package:werd/screens/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  Hive.registerAdapter(AyatModelAdapter());

  await Hive.openBox<AyatModel>(kBoxName);

  runApp(
    MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => AudioCubit(
          AudioInitial(),
        ),
      ), 
    ], child: WerdYawme()),
  );
}

class WerdYawme extends StatelessWidget {
  const WerdYawme({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
