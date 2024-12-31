import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

import '../model/user_model.dart';

class UserRepo {
  var db = Hive.box<UserModel>('dbUser');
  List<UserModel> allUsers = [];

  Future<void> saveUser(String userName , String userNumber) async{
    var userID = Uuid().v1();
    
    var newUser = UserModel(id: userID, userName: userName, userNumber: userNumber);

    await db.put(userID,newUser );

  }

  Future<List<UserModel>> getUsers() async{

    if(db.isNotEmpty){
    allUsers=db.values.toList();
    return allUsers ;
    }else {
      return allUsers;

    }
  }

}