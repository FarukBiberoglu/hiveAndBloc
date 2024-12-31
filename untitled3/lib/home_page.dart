import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled3/cubit/get_user.dart';
import 'package:untitled3/model/user_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {





  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<GetUserCubit>().getAllUser();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: BlocBuilder<GetUserCubit,List<UserModel>>
          (builder:(context,state){
            if(state.isNotEmpty){
              return ListView.builder(
                itemCount: state.length,
                itemBuilder: (context, index) {
                  UserModel item = state[index];

                  return Card(
                    child: ListTile(
                      title: Text(item.userName),
                      subtitle: Text(item.userNumber),

                    ),
                  );
                },
              );
            }else {
              return Text('Kişi Yok !');
            }
        }
        ),
      ),
    );
  }
}
