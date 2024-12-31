import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled3/const/sbt_field.dart';
import 'package:untitled3/cubit/get_user.dart';
import 'package:untitled3/home_page.dart';

class KisiEkle extends StatefulWidget {
  const KisiEkle({super.key});

  @override
  State<KisiEkle> createState() => _KisiEkleState();
}

class _KisiEkleState extends State<KisiEkle> {
  var nameController = TextEditingController();
  var numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kisi Ekle Sayfasi'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SbtTextield(label: 'İsim', controller: nameController),
            SbtTextield(
              label: 'Numara',
              controller: numberController,
              klavyeNumber: true,
            ),
            ElevatedButton(onPressed: () {
              context.read<GetUserCubit>().saveUser(nameController.text, numberController.text.toString());
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
            }, child: Text('Kaydet'))
          ],
        ),
      ),
    );
  }
}
