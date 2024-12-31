import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:untitled3/cubit/get_user.dart';
import 'package:untitled3/model/user_model.dart';
import 'package:untitled3/page/kisi_ekle.dart';

void main() async{
  await Hive.initFlutter();

  Hive.registerAdapter(UserModelAdapter());
  await Hive.openBox<UserModel>('dbUser');

  runApp(const MyApp());


}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> GetUserCubit()),

      ],
      child: MaterialApp(

        home:  KisiEkle(),
      ),
    );
  }
}
